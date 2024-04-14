///******************************************************************************************
/// SPL_LightFlash
///******************************************************************************************

const int SPL_Cost_LightFlash			=	200;
const int SPL_Damage_LightFlash			=	5;

///******************************************************************************************
instance Spell_LightFlash (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_LightFlash;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	1000;
};

func int Spell_Logic_LightFlash (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_LightFlash, manaInvested);
};

func void Spell_Cast_LightFlash()
{
	B_SpellCast (self, default, SPL_Cost_LightFlash);
};
