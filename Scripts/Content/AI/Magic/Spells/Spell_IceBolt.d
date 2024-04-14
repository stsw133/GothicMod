///******************************************************************************************
/// SPL_IceBolt
///******************************************************************************************

const int SPL_Cost_IceBolt				=	10;
const int SPL_Damage_IceBolt			=	50;

///******************************************************************************************
instance Spell_IceBolt (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_IceBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_IceBolt (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_IceBolt, manaInvested);
};

func void Spell_Cast_IceBolt()
{
	B_SpellCast (self, default, SPL_Cost_IceBolt);
};
