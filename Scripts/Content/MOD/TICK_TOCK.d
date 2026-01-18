///******************************************************************************************
/// TICK_TOCK
///      Variables
///******************************************************************************************

var int TimeDust_WAIT;
var string TimeDust_WP;

///******************************************************************************************
/// TICK_TOCK
///      Natural regeneration
///******************************************************************************************

/// ------ HP regen ------
func void TT_1000_RegenHP()
{
	/// if player IS poisoned
	if (ATS[ATS_PoisonPoints] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, -ATS[ATS_PoisonPoints]);
	}
	/// HP regen (if player IS NOT poisoned)
	else
	{
		regenPoints[BarOrderHP] += regenPower[BarOrderHP];
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, regenPoints[BarOrderHP]/10);
		regenPoints[BarOrderHP] -= regenPoints[BarOrderHP]/10*10;
	};
};

/// ------ MP regen ------
func void TT_1000_RegenMP()
{
	/// no regen if player IS obsessed
	if (ATS[ATS_IsObsessed])
	{
		return;
	};
	
	/// MP regen
	regenPoints[BarOrderMP] += regenPower[BarOrderMP];
	Npc_ChangeAttribute (hero, ATR_MANA, regenPoints[BarOrderMP]/10);
	regenPoints[BarOrderMP] -= regenPoints[BarOrderMP]/10*10;
};

/// ------ SP regen ------
func void TT_1000_RegenSP()
{
	/// no regen if player runs
	if (C_BodyStateContains(hero, BS_RUN) && ATS[ATS_SprintState])
	{
		return;
	};
	
	/// no regen if player jumps
	if (C_BodyStateContains(hero, BS_JUMP))
	{
		return;
	};
	
	/// no regen if player has SchnellerHering effect
	if (Buff_Has(hero, Buff_SchnellerHering))
	{
		return;
	};
	
	/// SP regen
	regenPoints[BarOrderSP] += 50 + regenPower[BarOrderSP];
	hero.aivar[AIV_Stamina] += regenPoints[BarOrderSP]/10;
	regenPoints[BarOrderSP] -= regenPoints[BarOrderSP]/10*10;
	Npc_StaminaRefresh(hero);
};

/// ------ Potions ------
func void TT_1000_PotionsProcess()
{
	/// REGEN POTIONS or FOOD & DRINKS
	/// hp
	if (regenPotionTime[BarOrderHP] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, regenPotionPointsPerSec[BarOrderHP]);
		regenPotionTime[BarOrderHP] -= 1;
		if (regenPotionTime[BarOrderHP] == 0) { Wld_StopEffect("SPELLFX_HEALTHPOTION_NPC"); };
	}
	else if (foodTime[BarOrderHP] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, 1);
		foodTime[BarOrderHP] -= 1;
	};
	/// mp
	if (regenPotionTime[BarOrderMP] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_MANA, regenPotionPointsPerSec[BarOrderMP]);
		regenPotionTime[BarOrderMP] -= 1;
		if (regenPotionTime[BarOrderMP] == 0) { Wld_StopEffect("SPELLFX_MANAPOTION_NPC"); };
	}
	else if (foodTime[BarOrderMP] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_MANA, 1);
		foodTime[BarOrderMP] -= 1;
	};
	/// sp
	if (regenPotionTime[BarOrderSP] > 0)
	{
		hero.aivar[AIV_Stamina] += regenPotionPointsPerSec[BarOrderSP];
		regenPotionTime[BarOrderSP] -= 1;
		if (regenPotionTime[BarOrderSP] == 0) { Wld_StopEffect("SPELLFX_YELLOWPOTION_NPC"); };
	}
	else if (foodTime[BarOrderSP] > 0)
	{
		hero.aivar[AIV_Stamina] += 1;
		foodTime[BarOrderSP] -= 1;
	};
	/// xp
	if (foodTime[BarOrderXP] > 0)
	{
		hero.exp += 1;
		if (hero.exp >= hero.exp_next)
		{
			B_GivePlayerExp(0);
		};
		foodTime[BarOrderXP] -= 1;
	};
};

///******************************************************************************************
/// TICK_TOCK
///      Counter drops
///******************************************************************************************

/// ------ time dust ------
func void TT_5000_HandleTimeDust()
{
	if (Npc_IsDead(hero))
	{
		return;
	};
	
	TimeDust_WAIT += 1;
	if (TimeDust_WAIT == 360) /// every 30 minutes (360*5s=1800s)
	{
		TimeDust_WAIT = 0;
		if (enableTimeDust)
		{
			Wld_InsertItem (ItMi_TimeDust, TimeDust_WP);
		};
		TimeDust_WP = Npc_GetNearestWP(hero);
	};
};

/// ------ rest timer ------
func void TT_5000_HandleRestTimer()
{
	if (ATS[ATS_RestedTime] <= 0)
	{
		return;
	};
	
	ATS[ATS_RestedTime] -= 1;
	if (ATS[ATS_RestedTime] == 0)
	{
		Print("Jesteœ ju¿ dostatecznie zmêczony by zasn¹æ.");
	};
};

/// ------ alcohol timer ------
func void TT_5000_HandleAlcoholTimer()
{
	if (alcoholTime <= 0)
	{
		return;
	};
	
	hero.exp += 1;
	if (hero.exp >= hero.exp_next) { B_GivePlayerExp(0); };
	
	alcoholTime -= 1;
	if (alcoholTime == 0)
	{
		Mdl_RemoveOverlayMDS (hero, "HUMANS_DRUNKEN.mds");
	};
};

/// ------ spell effects ------
func void TT_1000_HandleSpellEffects()
{
	if (ATS[ATS_ShieldPoints] > 0) { ATS[ATS_ShieldPoints] -= 1; }; /// if player has magical shield
	if (mAuraPalTime > 0) { mAuraPalTime -= 1; };
	if (ATS[ATS_StealthTime] > 0) { MOD_SetStealth(hero, ATS[ATS_StealthTime] - 1); };
	if (mAuraTime > 0)
	{
		if (mAuraType == MAGIC_MYS) { Npc_ChangeAttribute(hero, ATR_HITPOINTS, 5); };
		
		mAuraTime -= 1;
		if (mAuraTime == 0) { B_SetMagicAura (default, 0, 0); };
	};
};

/// ------ fight timers ------
func void TT_1000_HandleFightTimers()
{
	if (ATS[ATS_InFightTime] <= 0)
	{
		return;
	};
	
	ATS[ATS_InFightTime] -= 1;
	ATS[ATS_OverloadTime] += 1;
	
	if (ATS[ATS_InFightTime] == 0)
	{
		ATS[ATS_InFightHits] = 0;
		ATS[ATS_OverloadTime] = 0;
	};
};

/// ------ slowdown ------
func void TT_200_ReduceSlowdown()
{
	if (mSlowPoints > 0)	{	mSlowPoints -= 1;	};
	if (mSlowTime > 0)		{	mSlowTime -= 1;		};
};

/// ------ stamina ------
func void TT_200_HandleStamina()
{
	/// reduce stamina while sprinting
	if ((C_BodyStateContains(hero, BS_RUN) && ATS[ATS_SprintState]) || C_BodyStateContains(hero, BS_JUMP))
	{
		hero.aivar[AIV_Stamina] -= (2+ATS[ATS_HeavyArmor])*2;
	};
	
	/// reduce stamina while fighting & scale dexterity
	if (C_BodyStateContains(hero, BS_HIT) || C_BodyStateContains(hero, BS_PARADE))
	{
		if (C_BodyStateContains(hero, BS_HIT) && !movieMode)
		{
			if (hero.aivar[AIV_Stamina] < 10)	{	Npc_SetSpeed(hero, 800 - mSlowPoints*10 + hero.attribute[ATR_DEXTERITY]);	}
			else								{	Npc_SetSpeed(hero, 1000 - mSlowPoints*10 + hero.attribute[ATR_DEXTERITY]);	};
		};
		hero.aivar[AIV_Stamina] -= 3+ATS[ATS_HeavyArmor]-usingForgedWeapon;
	}
	else
	{
		Npc_SetSpeed (hero, 1000 - mSlowPoints*10);
	};
	
	/// refresh stamina
	Npc_StaminaRefresh(hero);
};

///******************************************************************************************
/// Every 5 seconds
///******************************************************************************************
func void TT_5000()
{
	if (MEM_Game.pause_screen)
	{
		return;
	};
	
	TT_5000_HandleTimeDust();
	TT_5000_HandleRestTimer();
	TT_5000_HandleAlcoholTimer();
	GregyRefreshStatus(); /// handle Gregy
};

///******************************************************************************************
/// Every 1 second
///******************************************************************************************
func void TT_1000()
{
	if (MEM_Game.pause_screen)
	{
		return;
	};
	
	if (!Npc_IsDead(hero))
	{
		/// natural regeneration
		TT_1000_RegenHP();
		TT_1000_RegenMP();
		TT_1000_RegenSP();
		TT_1000_PotionsProcess();
		/// spell effects
		TT_1000_HandleSpellEffects();
	};
	
	TT_1000_HandleFightTimers(); /// in fight time & hits
};

///******************************************************************************************
/// Every 200 miliseconds
///******************************************************************************************
func void TT_200()
{
	if (MEM_Game.pause_screen)
	{
		return;
	};
	
	TT_200_ReduceSlowdown();	/// reduce slowdown
	TT_200_HandleStamina();		/// reduce stamina
	MOD_Mobs();					/// use mobs
	
	/// time scale for movie mode
	if (movieMode)
	{
		Wld_AddWorldTime(75 + scaleWorldTime);
	};
};

///******************************************************************************************
/// Every 8 miliseconds
///******************************************************************************************
func void TT_8()
{
	if (MEM_Game.pause_screen)
	{
		return;
	};
	
	if (!Npc_IsDead(hero))
	{
		MOD_HandleInteractionHotkey();	/// interaction key
		MOD_HandleSprintHotkey();		/// sprint key
	};
	MOD_HandleGuiAndCameraKeys();	/// GUI and camera keys
};
