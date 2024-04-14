///******************************************************************************************
/// SPL_SlowTime
///******************************************************************************************

const int SPL_Cost_SlowTime				=	300;
const int SPL_Time_SlowTime				=	10;

///******************************************************************************************
instance Spell_SlowTime (C_Spell_Proto)
{
	spelltype 							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_SlowTime (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_SlowTime, manaInvested);
};

func void Spell_Cast_SlowTime()
{
	B_SpellCast (self, default, SPL_Cost_SlowTime);
	
	mSlowTime = SPL_Time_SlowTime * 10;
	Wld_PlayEffect ("spellFX_SlowTime_MOTION", self, self, 0, 0, 0, false);
};
