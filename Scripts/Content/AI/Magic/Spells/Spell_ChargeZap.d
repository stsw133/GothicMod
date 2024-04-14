///******************************************************************************************
/// SPL_ChargeZap
///******************************************************************************************

const int SPL_Cost_ChargeZap			=	30;
const int SPL_Damage_ChargeZap 			=	60;

///******************************************************************************************
instance Spell_ChargeZap (C_Spell_Proto)
{
	time_per_mana						=	100;
	damage_per_level					=	SPL_Damage_ChargeZap;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_ChargeZap (var int manaInvested)
{
	return B_SpellLogic (self, 1, SPL_Cost_ChargeZap, manaInvested);
};

func void Spell_Cast_ChargeZap (var int spellLevel)
{
	B_SpellCast (self, 1, SPL_Cost_ChargeZap);
};
