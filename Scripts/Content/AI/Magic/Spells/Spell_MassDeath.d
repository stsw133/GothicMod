///******************************************************************************************
/// SPL_MassDeath
///******************************************************************************************

const int SPL_Cost_MassDeath			=	400;
const int SPL_Damage_MassDeath			=	400;

///******************************************************************************************
instance Spell_MassDeath (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_MassDeath;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_MassDeath (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_MassDeath, manaInvested);
};

func void Spell_Cast_MassDeath()
{
	B_SpellCast (self, default, SPL_Cost_MassDeath);
};
