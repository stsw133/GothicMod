///******************************************************************************************
///	SPL_NecDeath
///******************************************************************************************

const int SPL_Cost_NecDeath				=	300;
const int SPL_Damage_NecDeath			=	300;
const int SPL_Scaling_NecDeath			=	100;
const int SPL_Percent_NecDeath			=	20;

///******************************************************************************************
instance Spell_NecDeath (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_NecDeath;
	damageType							=	DAM_MAGIC;
	targetCollectRange					=	1000;
};

func int Spell_Logic_NecDeath (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_NecDeath/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_NecDeath)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_NecDeath()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecDeath/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecDeath;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
