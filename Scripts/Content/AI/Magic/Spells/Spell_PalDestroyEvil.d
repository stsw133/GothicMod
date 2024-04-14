///******************************************************************************************
/// SPL_PalDestroyEvil
///******************************************************************************************

const int SPL_Cost_PalDestroyEvil		=	200;
const int SPL_Damage_PalDestroyEvil		=	1000;

///******************************************************************************************
instance Spell_PalDestroyEvil (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	damage_per_level					=	SPL_Damage_PalDestroyEvil;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PalDestroyEvil (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_PalDestroyEvil, manaInvested);
};

func void Spell_Cast_PalDestroyEvil()
{
	B_SpellCast (self, default, SPL_Cost_PalDestroyEvil);
};
