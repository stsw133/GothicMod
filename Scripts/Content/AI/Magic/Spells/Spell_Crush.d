///******************************************************************************************
/// SPL_Crush
///******************************************************************************************

const int SPL_Cost_Crush				=	300;
const int SPL_Damage_Crush				=	750;

///******************************************************************************************
instance Spell_Crush (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Crush;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_Crush (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Crush, manaInvested);
};

func void Spell_Cast_Crush()
{
	B_SpellCast (self, default, SPL_Cost_Crush);
};
