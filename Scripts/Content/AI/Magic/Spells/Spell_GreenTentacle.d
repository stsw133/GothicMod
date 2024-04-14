///******************************************************************************************
/// SPL_Greententacle
///******************************************************************************************

const int SPL_Cost_Greententacle		=	75;
const int SPL_Time_Greententacle		=	20;
const int SPL_Damage_Greententacle		=	0;

///******************************************************************************************
instance Spell_Greententacle (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Greententacle;
	spelltype							=	SPELL_BAD;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1500;
};

func int Spell_Logic_Greententacle (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Greententacle, manaInvested);
};

func void Spell_Cast_Greententacle()
{
	B_SpellCast (self, default, SPL_Cost_Greententacle);
};
