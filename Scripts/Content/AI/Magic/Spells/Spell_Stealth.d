///******************************************************************************************
/// SPL_Stealth
///******************************************************************************************

const int SPL_Cost_Stealth				=	125;
const int SPL_Time_Stealth				=	30;

///******************************************************************************************
instance Spell_Stealth (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_Stealth (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Stealth, manaInvested);
};

func void Spell_Cast_Stealth()
{
	B_SpellCast (self, default, SPL_Cost_Stealth);
	
	MOD_SetStealth (self, SPL_Time_Stealth);
};
