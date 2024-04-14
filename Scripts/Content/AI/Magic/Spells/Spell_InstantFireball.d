///******************************************************************************************
/// SPL_InstantFireball
///******************************************************************************************

const int SPL_Cost_InstantFireball		=	25;
const int SPL_Damage_InstantFireball	=	100;

///******************************************************************************************
instance Spell_InstantFireball (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_InstantFireball;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_InstantFireball (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_InstantFireball, manaInvested);
};

func void Spell_Cast_InstantFireball()
{
	B_SpellCast (self, default, SPL_Cost_InstantFireball);
};
