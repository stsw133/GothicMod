///******************************************************************************************
/// SPL_Whirlwind
///******************************************************************************************

const int SPL_Cost_Whirlwind			=	50;
const int SPL_Damage_Whirlwind			=	0;
const int SPL_Time_Whirlwind			=	10;

///******************************************************************************************
instance Spell_Whirlwind (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Whirlwind;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Whirlwind (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Whirlwind, manaInvested);
};

func void Spell_Cast_Whirlwind()
{
	B_SpellCast (self, default, SPL_Cost_Whirlwind);
};
