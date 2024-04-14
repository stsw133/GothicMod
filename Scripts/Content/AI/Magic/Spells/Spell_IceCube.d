///******************************************************************************************
/// SPL_IceCube
///******************************************************************************************

const int SPL_Cost_IceCube				=	75;
const int SPL_Damage_IceCube			=	25;

///******************************************************************************************
instance Spell_IceCube (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_IceCube;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_IceCube (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_IceCube, manaInvested);
};

func void Spell_Cast_IceCube()
{
	B_SpellCast (self, default, SPL_Cost_IceCube);
};
