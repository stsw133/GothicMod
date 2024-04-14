///******************************************************************************************
/// SPL_Zap
///******************************************************************************************

const int SPL_Cost_Zap					=	15;
const int SPL_Damage_Zap				=	60;

///******************************************************************************************
instance Spell_Zap (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Zap;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Zap (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Zap, manaInvested);
};

func void Spell_Cast_Zap (var int spellLevel)
{
	B_SpellCast (self, default, SPL_Cost_Zap);
};
