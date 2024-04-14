///******************************************************************************************
/// SPL_Rock
///******************************************************************************************

const int SPL_Cost_Rock					=	25;
const int SPL_Damage_Rock				=	100;

///******************************************************************************************
instance Spell_Rock (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Rock;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Rock (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Rock, manaInvested);
};

func void Spell_Cast_Rock()
{
	B_SpellCast (self, default, SPL_Cost_Rock);
};
