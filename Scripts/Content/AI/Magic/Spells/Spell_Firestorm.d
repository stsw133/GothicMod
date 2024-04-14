///******************************************************************************************
/// SPL_Firestorm
///******************************************************************************************

const int SPL_Cost_Firestorm			=	50;
const int SPL_Damage_Firestorm			=	200;

///******************************************************************************************
instance Spell_Firestorm (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Firestorm;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Firestorm (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Firestorm, manaInvested);
};

func void Spell_Cast_Firestorm()
{
	B_SpellCast (self, default, SPL_Cost_Firestorm);
};
