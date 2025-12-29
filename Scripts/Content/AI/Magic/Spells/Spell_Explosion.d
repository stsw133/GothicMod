///******************************************************************************************
/// SPL_Explosion
///******************************************************************************************

const int SPL_Cost_Explosion			=	200;
const int SPL_Damage_Explosion			=	100;

///******************************************************************************************
instance Spell_Explosion (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Explosion;
	damageType							=	DAM_FLY;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_Explosion (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Explosion, manaInvested);
};

func void Spell_Cast_Explosion()
{
	B_SpellCast (self, default, SPL_Cost_Explosion);
};
