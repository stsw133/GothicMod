///******************************************************************************************
/// SPL_NightToDay
///******************************************************************************************

const int SPL_Cost_NightToDay			=	50;
var int SPL_IsActive_NightToDay;

///******************************************************************************************
instance Spell_NightToDay (C_Spell_Proto)
{
	time_per_mana						=	250;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func void Spell_Effect_NightToDay()
{
	if (SPL_IsActive_NightToDay)
	{
		if (Wld_IsTime(20,00, 08,00))
		{
			B_ScaleTime(20000);
		}
		else
		{
			SPL_IsActive_NightToDay = false;
		};
	};
};

func int Spell_Logic_NightToDay (var int manaInvested)
{
	if (B_SpellLogic(self, default, SPL_Cost_NightToDay, manaInvested) == SPL_SENDCAST)
	{
		if (!SPL_IsActive_NightToDay && Wld_IsTime(20,00, 08,00))
		{
			return SPL_SENDCAST;
		}
		else
		{
			//Print("U¿ycie dozwolone w godzinach od 20:00 do 8:00");
		};
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_NightToDay()
{
	B_SpellCast (self, default, SPL_Cost_NightToDay);
	
	SPL_IsActive_NightToDay = true;
	if (!FF_Active(Spell_Effect_NightToDay))
	{
		FF_ApplyOnceExt (Spell_Effect_NightToDay, 5, 1000);
	};
};
