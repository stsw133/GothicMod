///******************************************************************************************
///	SPL_MassDeath
///******************************************************************************************

const int SPL_Cost_MassDeath			=	150;	//150
const int SPL_Damage_MassDeath			=	150;	//500
const int SPL_Scaling_MassDeath			=	200;

///******************************************************************************************
instance Spell_MassDeath (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_MassDeath;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_MassDeath (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_MassDeath/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MassDeath)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_MassDeath()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassDeath/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassDeath;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
