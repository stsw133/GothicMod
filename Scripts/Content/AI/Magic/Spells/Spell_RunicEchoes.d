///******************************************************************************************
/// SPL_RunicEchoes
///******************************************************************************************

const int SPL_Cost_RunicEchoes			=	200;
const int SPL_Damage_RunicEchoes		=	200;

///******************************************************************************************
instance Spell_RunicEchoes (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_RunicEchoes;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_RunicEchoes (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_RunicEchoes, manaInvested);
};

func void Spell_Cast_RunicEchoes()
{
	B_SpellCast (self, default, SPL_Cost_RunicEchoes);
};
