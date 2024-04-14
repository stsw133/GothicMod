///******************************************************************************************
/// SPL_Slimeball
///******************************************************************************************

const int SPL_Cost_Slimeball			=	25;
const int SPL_Damage_Slimeball			=	25;

///******************************************************************************************
instance Spell_Slimeball (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Slimeball;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Slimeball (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Slimeball, manaInvested);
};

func void Spell_Cast_Slimeball()
{
	B_SpellCast (self, default, SPL_Cost_Slimeball);
};
