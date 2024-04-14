///******************************************************************************************
/// SPL_Firerain
///******************************************************************************************

const int SPL_Cost_Firerain				=	300;
const int SPL_Damage_Firerain			=	600;

///******************************************************************************************
instance Spell_Firerain (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Firerain;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_Firerain (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Firerain, manaInvested);
};

func void Spell_Cast_Firerain()
{
	B_SpellCast (self, default, SPL_Cost_Firerain);
};
