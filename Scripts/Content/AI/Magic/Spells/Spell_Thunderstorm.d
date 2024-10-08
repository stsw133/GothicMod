///******************************************************************************************
/// SPL_Thunderstorm
///******************************************************************************************

const int SPL_Cost_Thunderstorm			=	200;
const int SPL_Damage_Thunderstorm		=	400;

///******************************************************************************************
instance Spell_Thunderstorm (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Thunderstorm;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_Thunderstorm (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Thunderstorm, manaInvested);
};

func void Spell_Cast_Thunderstorm()
{
	B_SpellCast (self, default, SPL_Cost_Thunderstorm);
};
