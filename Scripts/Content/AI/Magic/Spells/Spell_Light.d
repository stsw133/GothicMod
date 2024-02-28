///******************************************************************************************
///	SPL_Light
///******************************************************************************************

const int SPL_Cost_Light				=	10;		//10
const int SPL_Time_Light				=	300;	//300

///******************************************************************************************
instance Spell_Light (C_Spell_Proto)
{
	time_per_mana						=	500;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_Light (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_Light/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Light)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Light()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Light/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Light;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
