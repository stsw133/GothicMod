///******************************************************************************************
///	SPL_SlowTime
///******************************************************************************************

const int SPL_Cost_SlowTime				=	200;
const int SPL_Time_SlowTime				=	10;

///******************************************************************************************
instance Spell_SlowTime (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_SlowTime (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_SlowTime/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_SlowTime)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_SlowTime()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SlowTime/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SlowTime;
	};
	
	Snd_Play("MFX_Telekinesis_StartInvest");
	Wld_PlayEffect ("spellFX_SlowTime_MOTION", self, self, 0, 0, 0, false);
	
	self.aivar[AIV_SelectSpell] += 1;
};
