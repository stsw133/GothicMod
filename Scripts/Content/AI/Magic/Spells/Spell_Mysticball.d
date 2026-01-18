///******************************************************************************************
/// SPL_Mysticball
///******************************************************************************************

const int SPL_Cost_Mysticball			=	15;
const int SPL_Damage_Mysticball			=	50;

///******************************************************************************************
instance Spell_Mysticball (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Mysticball;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Mysticball (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Mysticball, manaInvested);
};

func void Spell_Cast_Mysticball()
{
	B_SpellCast (self, default, SPL_Cost_Mysticball);
};
