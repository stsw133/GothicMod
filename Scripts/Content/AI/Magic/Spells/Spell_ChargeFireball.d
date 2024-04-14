///******************************************************************************************
/// SPL_ChargeFireball
///******************************************************************************************

const int SPL_Cost_ChargeFireball		=	50;
const int SPL_Damage_ChargeFireball 	=	125;

///******************************************************************************************
instance Spell_ChargeFireball (C_Spell_Proto)
{
	time_per_mana						=	30;
	damage_per_level					=	SPL_Damage_ChargeFireball;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_ChargeFireball (var int manaInvested) 
{
	return B_SpellLogic (self, 1, SPL_Cost_ChargeFireball, manaInvested);
};

func void Spell_Cast_ChargeFireball (var int spellLevel)
{
	B_SpellCast (self, 1, SPL_Cost_ChargeFireball);
};
