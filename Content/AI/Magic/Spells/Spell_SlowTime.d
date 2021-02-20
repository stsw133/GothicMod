///******************************************************************************************
///	SPL_SlowTime
///******************************************************************************************

const int SPL_Cost_SlowTime				=	300;
const int SPL_Time_SlowTime				=	15;

var int SPL_Enabled_SlowTime;

///******************************************************************************************
INSTANCE Spell_SlowTime (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_SlowTime (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_SlowTime/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_SlowTime)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_SlowTime()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_SlowTime/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SlowTime/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_SlowTime)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_SlowTime;
	};
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	Snd_Play("MFX_Telekinesis_StartInvest");
	Wld_PlayEffect ("spellFX_SlowTime_MOTION", self, self, 0, 0, 0, false);
};
