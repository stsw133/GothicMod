///******************************************************************************************
///	SPL_EleLance
///******************************************************************************************

const int SPL_Cost_EleLance				=	25;
const int SPL_Damage_EleLance			=	25;
const int SPL_Scaling_EleLance			=	110;

///******************************************************************************************
instance Spell_EleLance (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_EleLance;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_EleLance (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_EleLance/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_EleLance)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_EleLance()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleLance/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleLance;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
