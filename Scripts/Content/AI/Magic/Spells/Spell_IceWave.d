///******************************************************************************************
/// SPL_IceWave
///******************************************************************************************

const int SPL_Cost_IceWave				=	200;
const int SPL_Damage_IceWave			=	25;

///******************************************************************************************
instance Spell_IceWave (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_IceWave;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_IceWave (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_IceWave, manaInvested);
};

func void Spell_Cast_IceWave()
{
	B_SpellCast (self, default, SPL_Cost_IceWave);
};
