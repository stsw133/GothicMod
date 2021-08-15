///******************************************************************************************
///	SPL_IceLance
///******************************************************************************************

const int SPL_Cost_IceLance				=	20;
const int SPL_Damage_IceLance			=	100;

///******************************************************************************************
instance Spell_IceLance (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_IceLance;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_IceLance (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_IceLance/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_IceLance)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_IceLance()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceLance/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_IceLance;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
