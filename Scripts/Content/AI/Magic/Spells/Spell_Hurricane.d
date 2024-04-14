///******************************************************************************************
/// SPL_Hurricane
///******************************************************************************************

const int SPL_Cost_Hurricane			=	125;
const int SPL_Damage_Hurricane			=	125;

///******************************************************************************************
instance Spell_Hurricane (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Hurricane;
	damageType							=	DAM_FLY;
	targetCollectAlgo					=	TARGET_COLLECT_ALL_FALLBACK_NONE;
	targetCollectRange					=	1000;
};

func int Spell_Logic_Hurricane (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Hurricane, manaInvested);
};

func void Spell_Cast_Hurricane()
{
	B_SpellCast (self, default, SPL_Cost_Hurricane);
};
