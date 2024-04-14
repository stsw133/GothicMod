///******************************************************************************************
/// SPL_BreathOfDeath
///******************************************************************************************

const int SPL_Cost_BreathOfDeath		=	300;
const int SPL_Damage_BreathOfDeath		=	900;

///******************************************************************************************
instance Spell_BreathOfDeath (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_BreathOfDeath;
	damageType							=	DAM_MAGIC;
	targetCollectRange					=	1000;
};

func int Spell_Logic_BreathOfDeath (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_BreathOfDeath, manaInvested);
};

func void Spell_Cast_BreathOfDeath (var int spellLevel)
{
	B_SpellCast (self, default, SPL_Cost_BreathOfDeath);
};
