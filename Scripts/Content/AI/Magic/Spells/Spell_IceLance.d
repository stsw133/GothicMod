///******************************************************************************************
/// SPL_IceLance
///******************************************************************************************

const int SPL_Cost_IceLance				=	25;
const int SPL_Damage_IceLance			=	100;

///******************************************************************************************
instance Spell_IceLance (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_IceLance;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_IceLance (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_IceLance, manaInvested);
};

func void Spell_Cast_IceLance()
{
	B_SpellCast (self, default, SPL_Cost_IceLance);
};
