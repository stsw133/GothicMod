///******************************************************************************************
/// SPL_BeliarRage
///******************************************************************************************

const int SPL_Cost_BeliarRage			=	20;
const int SPL_Damage_BeliarRage			=	20;

///******************************************************************************************
instance Spell_BeliarRage (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_BeliarRage+(BeliarWeapon_LastUpgradeLvl*3);
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_BeliarRage (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_BeliarRage, manaInvested);
};

func void Spell_Cast_BeliarRage()
{
	B_SpellCast (self, default, SPL_Cost_BeliarRage);
};
