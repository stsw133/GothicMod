///******************************************************************************************
/// SPL_Fireburning
///******************************************************************************************

const int SPL_Cost_Fireburning			=	75;
const int SPL_Damage_Fireburning		=	75;

///******************************************************************************************
instance Spell_Fireburning (C_Spell_Proto)
{
	time_per_mana						=	500;
	damage_per_level					=	0;
	damageType							=	DAM_MAGIC;
	canTurnDuringInvest					=	false;
	canChangeTargetDuringInvest			=	false;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_Fireburning (var int manaInvested)
{
	var int state; state = B_SpellLogic (self, 2, SPL_Cost_Fireburning, manaInvested);
	if (manaInvested > 0 && other.protection[PROT_MAGIC] >= 0)
	{
		B_MagicHurtNpc (self, other, SPL_Damage_Fireburning + self.attribute[ATR_POWER]/2 - other.protection[PROT_MAGIC]);
	};
	return state;
};

func void Spell_Cast_Fireburning()
{
	B_SpellCast (self, 2, SPL_Cost_Fireburning);
};
