///******************************************************************************************
/// SPL_PalRepelEvil
///******************************************************************************************

const int SPL_Cost_PalRepelEvil			=	80;
const int SPL_Damage_PalRepelEvil		=	400;

///******************************************************************************************
instance Spell_PalRepelEvil (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	damage_per_level					=	SPL_Damage_PalRepelEvil;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PalRepelEvil (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_PalRepelEvil, manaInvested);
};

func void Spell_Cast_PalRepelEvil()
{
	B_SpellCast (self, default, SPL_Cost_PalRepelEvil);
};
