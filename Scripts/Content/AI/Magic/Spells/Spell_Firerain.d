///******************************************************************************************
///	SPL_Firerain
///******************************************************************************************

const int SPL_Cost_Firerain				=	150;	//150
const int SPL_Damage_Firerain			=	150;	//500
const int SPL_Scaling_Firerain			=	200;

///******************************************************************************************
instance Spell_Firerain (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Firerain;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_Firerain (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_Firerain/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Firerain)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Firerain()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Firerain/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Firerain;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
