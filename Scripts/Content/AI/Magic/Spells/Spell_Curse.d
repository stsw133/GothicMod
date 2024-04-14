///******************************************************************************************
/// SPL_Curse
///******************************************************************************************

const int SPL_Cost_Curse				=	75;
const int SPL_Damage_Curse				=	75;

///******************************************************************************************
instance Spell_Curse (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Curse;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
	canTurnDuringInvest					=	false;
	canChangeTargetDuringInvest			=	false;
};

func int Spell_Logic_Curse (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Curse, manaInvested);
};

func void Spell_Cast_Curse()
{
	B_SpellCast (self, default, SPL_Cost_Curse);
};
