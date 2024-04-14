///******************************************************************************************
/// SPL_Light
///******************************************************************************************

const int SPL_Cost_Light				=	10;
const int SPL_Time_Light				=	300;

///******************************************************************************************
instance Spell_Light (C_Spell_Proto)
{
	time_per_mana						=	500;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_Light (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Light, manaInvested);
};

func void Spell_Cast_nLight()
{
	B_SpellCast (self, default, SPL_Cost_Light);
};
