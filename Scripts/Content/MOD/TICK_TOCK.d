///******************************************************************************************
/// TICK_TOCK
///******************************************************************************************

var int TimeDust_WAIT;
var string TimeDust_WP;

///******************************************************************************************
/// Natural regeneration
///******************************************************************************************

/// ------ HP regen ------
func void TT_1000_RGHP()
{
	/// if player IS poisoned
	if (ATS[ATS_PoisonPoints] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, -ATS[ATS_PoisonPoints]);
	}
	/// if player IS NOT poisoned
	else
	{
		regenPoints[BarOrderHP] += regenPower[BarOrderHP];
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, regenPoints[BarOrderHP]/10);
		regenPoints[BarOrderHP] -= regenPoints[BarOrderHP]/10*10;
	};
};

/// ------ MP regen ------
func void TT_1000_RGMP()
{
	/// if player IS NOT obsessed
	if (!ATS[ATS_IsObsessed])
	{
		regenPoints[BarOrderMP] += regenPower[BarOrderMP] + Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC)*10;
		Npc_ChangeAttribute (hero, ATR_MANA, regenPoints[BarOrderMP]/10);
		regenPoints[BarOrderMP] -= regenPoints[BarOrderMP]/10*10;
	};
};

/// ------ SP regen ------
func void TT_1000_RGSP()
{
	/// SchnellerHering effect
	if (SchnellerHeringTime > 0)
	{
		SchnellerHeringTime -= 1;
		if (SchnellerHeringTime == 0)
		{
			End_ItFo_Addon_SchnellerHering();
		};
	}
	/// if player DO NOT sprint and DO NOT jump
	else if (!(C_BodyStateContains(hero, BS_RUN) && ATS[ATS_SprintState]) && !C_BodyStateContains(hero, BS_JUMP))
	{
		regenPoints[BarOrderSP] += 50 + regenPower[BarOrderSP];
		hero.aivar[AIV_Stamina] += regenPoints[BarOrderSP]/10;
		regenPoints[BarOrderSP] -= regenPoints[BarOrderSP]/10*10;
		Npc_StaminaRefresh(hero);
	};
};

/// ------ counters drop ------
func void TT_1000_CsDrop()
{
	/// if player has magical shield
	if (ATS[ATS_ShieldPoints] > 0)
	{
		ATS[ATS_ShieldPoints] -= 1;
	};
	/// if player has underwater time
	if (ATS[ATS_UnderwaterTime] > 0)
	{
		ATS[ATS_UnderwaterTime] -= 1;
		if (ATS[ATS_UnderwaterTime] == 0)
		{
			End_ItPo_Underwater();
		};
	};
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
	
	if (!Npc_IsDead(hero))
	{
		/// magic dust for time slow spell
		TimeDust_WAIT += 1;
		if (TimeDust_WAIT == 360)	/// every 30 minutes
		{
			TimeDust_WAIT = 0;
			if (enableTimeDust)
			{
				Wld_InsertItem (ItMi_TimeDust, TimeDust_WP);
			};
			TimeDust_WP = Npc_GetNearestWP(hero);
		};
		
		/// player speed scale
		//Npc_SetSpeed (hero, 1000 + hero.attribute[ATR_DEXTERITY]);
	};
	
	/// sleep timer
	if (ATS[ATS_RestedTime] > 0)
	{
		ATS[ATS_RestedTime] -= 1;
		if (ATS[ATS_RestedTime] == 0)
		{
			Print("Jesteœ ju¿ dostatecznie zmêczony by zasn¹æ.");
		};
	};
	
	/// alcohol timer
	if (alcoholTime > 0)
	{
		hero.exp += 1;
		if (hero.exp >= hero.exp_next)
		{
			B_GivePlayerExp(0);
		};
		
		alcoholTime -= 1;
		if (alcoholTime == 0)
		{
			Mdl_RemoveOverlayMDS (hero, "HUMANS_DRUNKEN.mds");
		};
	};
	
	/// Gregy
	GregyRefreshStatus();
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
		TT_1000_RGHP();
		TT_1000_RGMP();
		TT_1000_RGSP();
		TT_1000_CsDrop();
		
		///	potions process & food
		Potions_Process();
		
		/// spell effects
		if (mAuraPalTime > 0) { mAuraPalTime -= 1; };
		if (ATS[ATS_StealthTime] > 0) { MOD_SetStealth(hero, ATS[ATS_StealthTime] - 1); };
		if (mAuraTime > 0)
		{
			if (mAuraType == MAGIC_MYS) { Npc_ChangeAttribute(hero, ATR_HITPOINTS, 5); };
			
			mAuraTime -= 1;
			if (mAuraTime == 0)
			{
				B_SetMagicAura (default, 0, 0);
			};
		};
	};
	
	/// in fight time & hits
	if (ATS[ATS_InFightTime] > 0)
	{
		ATS[ATS_InFightTime] -= 1;
		ATS[ATS_OverloadTime] += 1;
		
		if (ATS[ATS_InFightTime] == 0)
		{
			ATS[ATS_InFightHits] = 0;
			ATS[ATS_OverloadTime] = 0;
		};
	};
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
	
	/// reduce slowdown
	if (mSlowPoints > 0)	{	mSlowPoints -= 1;	};
	if (mSlowTime > 0)		{	mSlowTime -= 1;		};
	
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
	
	/// use mobs
	MOD_Mobs();
};

///******************************************************************************************
/// Every 5 miliseconds
///******************************************************************************************
func void TT_5()
{
	if (MEM_Game.pause_screen || Npc_IsDead(hero))
	{
		return;
	};
	
	/// ------ interaction key ------
	MOD_HandleInteractionHotkey();
	
	/// ------ sprint key ------
	if (MEM_KeyState(MEM_GetKey("keySprint")) == KEY_HOLD || MEM_KeyState(MEM_GetSecondaryKey("keySprint")) == KEY_HOLD)
	&& ((hero.aivar[AIV_Stamina] > 0 && ATS[ATS_HeavyArmor] < 1 && !alcoholTime && !ATS[ATS_InFightTime]) || movieMode)
	{
		if (ATS[ATS_SprintState] == 0)
		{
			ATS[ATS_SprintState] = 1;
		};
		if (ATS[ATS_SprintState] == 1)
		{
			if (!C_BodyStateContains(hero, BS_FALL) && !C_BodyStateContains(hero, BS_JUMP))
			{
				ATS[ATS_SprintState] = 2;
				Mdl_ApplyOverlayMDS (hero, "HUMANS_FASTRUN.MDS");
			};
		};
	}
	else
	{
		if (ATS[ATS_SprintState] == 2)
		{
			ATS[ATS_SprintState] = 3;
		};
		if (ATS[ATS_SprintState] == 3)
		{
			ATS[ATS_SprintState] = 0;
			Mdl_RemoveOverlayMDS (hero, "HUMANS_FASTRUN.MDS");
		};
	};
	
	/// ------ movie mode ------
	if (movieMode)
	{
		Wld_AddWorldTime(75 + scaleWorldTime);
		
		/// ------ ani shortcut keys etc. ------
		if		(MOD_IsKeyHold("keyMovieModeAni"))		{	MOD_MovieMode_DoAni();				}	/// ani
		else if	(MOD_IsKeyHold("keyMovieModeDialog"))	{	MOD_MovieMode_DoDialogGesture();	}	/// dialogs
		else if	(MOD_IsKeyHold("keyMovieModeFace"))		{	MOD_MovieMode_DoFaceAni();			}	/// face ani
		else if	(MOD_IsKeyHold("keyMovieModeScript"))	{	MOD_MovieMode_ExecSubScript();		}	/// sub scripts
		else if	(MOD_MemoKey1 != -1)						{	MOD_MemoKey1 = -1; MOD_MemoKey2 = -1;	};	/// reset helper keys
	};
	
	/// ------ hide GUI & camera keys ------
	if (MEM_KeyState(KEY_F1) == KEY_PRESSED)
	{
		MEM_Game.game_drawall = !MEM_Game.game_drawall;
	}
	else if (MEM_KeyState(KEY_F9) == KEY_PRESSED)
	{
		AI_Wait (hero, 0.1);
	}
	else if (MEM_KeyState(KEY_F10) == KEY_HOLD)
	{
		MOD_MovieMode_GetCamera();
	};
};
