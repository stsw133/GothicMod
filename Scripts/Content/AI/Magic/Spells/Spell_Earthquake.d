///******************************************************************************************
/// SPL_Earthquake
///******************************************************************************************

const int SPL_Cost_Earthquake			=	200;
const int SPL_Damage_Earthquake			=	400;

///******************************************************************************************
instance Spell_Earthquake (C_Spell_Proto)
{
    damage_per_level					=	SPL_Damage_Earthquake;
    damageType							=	DAM_BARRIER;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_Earthquake (var int manaInvested)
{
    return B_SpellLogic (self, default, SPL_Cost_Earthquake, manaInvested);
};

func void Spell_Cast_Earthquake()
{
    B_SpellCast (self, default, SPL_Cost_Earthquake);
};
