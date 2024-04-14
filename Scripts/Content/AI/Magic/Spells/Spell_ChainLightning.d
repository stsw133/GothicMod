///******************************************************************************************
/// SPL_ChainLightning
///******************************************************************************************

const int SPL_Cost_ChainLightning		=	125;
const int SPL_Damage_ChainLightning		=	125;

///******************************************************************************************
instance Spell_ChainLightning (C_Spell_Proto)
{
	time_per_mana						=	500;
	damage_per_level					=	0;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1500;
	canTurnDuringInvest					=	false;
	canChangeTargetDuringInvest			=	false;
	isMultiEffect						=	true;
};

func int Spell_Logic_ChainLightning (var int manaInvested)
{
	var int state; state = B_SpellLogic (self, 2, SPL_Cost_ChainLightning, manaInvested);
	if (manaInvested > 0 && other.protection[PROT_MAGIC] >= 0)
	{
		B_MagicHurtNpc (self, other, SPL_Damage_ChainLightning + self.attribute[ATR_POWER]/2 - other.protection[PROT_MAGIC]);
	};
	return state;
};

func void Spell_Cast_ChainLightning()
{
	B_SpellCast (self, 2, SPL_Cost_ChainLightning);
};
