///******************************************************************************************
/// SPL_WaterFist
///******************************************************************************************

const int SPL_Cost_WaterFist			=	100;
const int SPL_Damage_WaterFist			=	100;

///******************************************************************************************
instance Spell_WaterFist (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_WaterFist;
	damageType							=	DAM_FLY;
};

func int Spell_Logic_WaterFist (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_WaterFist, manaInvested);
};

func void Spell_Cast_WaterFist()
{
	B_SpellCast (self, default, SPL_Cost_WaterFist);
};
