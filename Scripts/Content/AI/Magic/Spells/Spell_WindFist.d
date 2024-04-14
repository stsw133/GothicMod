///******************************************************************************************
/// SPL_WindFist
///******************************************************************************************

const int SPL_Cost_WindFist				=	20;
const int SPL_Damage_WindFist			=	20;

///******************************************************************************************
instance Spell_WindFist (C_Spell_Proto)
{
	time_per_mana						=	30;
	damage_per_level					=	SPL_Damage_WindFist;
	damageType							=	DAM_FLY;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectRange					=	1000;
};

func int Spell_Logic_WindFist (var int manaInvested)
{
	return B_SpellLogic (self, 1, SPL_Cost_WindFist, manaInvested);
};

func void Spell_Cast_WindFist (var int spellLevel)
{
	B_SpellCast (self, 1, SPL_Cost_WindFist);
};
