///******************************************************************************************
/// SPL_DestroyUndead
///******************************************************************************************

const int SPL_Cost_DestroyUndead		=	125;
const int SPL_Damage_DestroyUndead		=	1500;

///******************************************************************************************
instance Spell_DestroyUndead (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_DestroyUndead;
	damageType							=	DAM_MAGIC;
	spelltype							=	SPELL_NEUTRAL;
};

func int Spell_Logic_DestroyUndead (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_DestroyUndead, manaInvested);
};

func void Spell_Cast_DestroyUndead()
{
	B_SpellCast (self, default, SPL_Cost_DestroyUndead);
};
