///******************************************************************************************
/// TICK_TOCK
///******************************************************************************************

var int TimeDust_WAIT;
var string TimeDust_WP, LostGregy_WP;

///******************************************************************************************
/// Natural regeneration
///******************************************************************************************

/// ------ HP regen ------
func void TT_1000_RGHP()
{
	/// if player IS NOT poisoned
	if (bsPoison > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, -bsPoison);
	}
	else
	{
		regenPoints[BarOrderHP] += regenPower[BarOrderHP];
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, regenPoints[BarOrderHP]/10);
		regenPoints[BarOrderHP] -= regenPoints[BarOrderHP]/10*10;
	};
	
	/// if player has magical shield
	if (mShieldPoints > 0) { mShieldPoints -= 1; };
};

/// ------ MP regen ------
func void TT_1000_RGMP()
{
	/// if player IS NOT obsessed
	if (bsObsession == 0)
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
	else if (!(C_BodyStateContains(hero, BS_RUN) && bsSprint) && !C_BodyStateContains(hero, BS_JUMP))
	{
		regenPoints[BarOrderSP] += 50 + regenPower[BarOrderSP];
		hero.aivar[AIV_Stamina] += regenPoints[BarOrderSP]/10;
		regenPoints[BarOrderSP] -= regenPoints[BarOrderSP]/10*10;
		Npc_StaminaRefresh(hero);
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
	if (sleepTimer > 0)
	{
		sleepTimer -= 1;
		if (sleepTimer == 0)
		{
			Print("Jesteœ ju¿ dostatecznie zmêczony aby zasn¹æ.");
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
	if (GregyIsYourFollower)
	{
		if (Npc_IsDead(Gregy))
		{
			PIR_1302_Gregy_Rise(Gregy);
		};
		
		if (Npc_GetDistToNpc(Gregy, hero) > 10000 && Npc_GetDistToWP(hero, LostGregy_WP) > 1500)
		{
			AI_Teleport	(Gregy, LostGregy_WP);
		};
		LostGregy_WP = Npc_GetNearestWP(hero);
	};
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
		
		///	potions process & food
		Potions_Process();
		
		/// spell effects
		if (mAuraPalTime > 0) { mAuraPalTime -= 1; };
		if (bsStealth > 0) { MOD_SetStealth(hero, bsStealth - 1); };
		if (mAuraTime > 0)
		{
			if (mAuraType == MAGIC_MYS) { Npc_ChangeAttribute (hero, ATR_HITPOINTS, 5); };
			
			mAuraTime -= 1;
			if (mAuraTime == 0)
			{
				B_SetMagicAura (default, 0, 0);
			};
		};
	};
	
	if (inFightCounter > 0) { inFightCounter -= 1; };
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
	if (bsSprint && C_BodyStateContains(hero, BS_RUN))
	{
		hero.aivar[AIV_Stamina] -= 2+bsArmor;
	};
	
	/// reduce stamina while fighting & scale dexterity
	if (C_BodyStateContains(hero, BS_HIT) || C_BodyStateContains(hero, BS_PARADE))
	{
		if (C_BodyStateContains(hero, BS_HIT) && !movieMode)
		{
			if (hero.aivar[AIV_Stamina] < 10)	{	Npc_SetSpeed (hero, 800 - mSlowPoints*10 + hero.attribute[ATR_DEXTERITY]);	}
			else								{	Npc_SetSpeed (hero, 1000 - mSlowPoints*10 + hero.attribute[ATR_DEXTERITY]);	};
		};
		hero.aivar[AIV_Stamina] -= 3+bsArmor-usingForgedWeapon;
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
	
	/// ------ sprint key ------
	if (MEM_KeyState(MEM_GetKey("keySprint")) == KEY_HOLD || MEM_KeyState(MEM_GetSecondaryKey("keySprint")) == KEY_HOLD)
	&& (hero.aivar[AIV_Stamina] > 0 && bsArmor < 1 && !alcoholTime && !inFightCounter)
	{
		if (bsSprint == 0)
		{
			bsSprint = 1;
		};
		if (bsSprint == 1)
		{
			if (!C_BodyStateContains(hero, BS_FALL) && !C_BodyStateContains(hero, BS_JUMP))
			{
				bsSprint = 2;
				Mdl_ApplyOverlayMDS (hero, "HUMANS_FASTRUN.MDS");
			};
		};
	}
	else
	{
		if (bsSprint == 2)
		{
			bsSprint = 3;
		};
		if (bsSprint == 3)
		{
			bsSprint = 0;
			Mdl_RemoveOverlayMDS (hero, "HUMANS_FASTRUN.MDS");
		};
	};
	
	/// ------ movie mode ------
	if (movieMode)
	{
		Wld_AddWorldTime(75 + scaleWorldTime);
		
		/// ------ ani shortcut keys etc. ------
		if		(MEM_KeyState(KEY_F) == KEY_HOLD)			{	MovieMode_SetFaceAni();			}	/// face ani
		else if (MEM_KeyState(KEY_Z) == KEY_HOLD)			{	MovieMode_DialogGesture();		}	/// dialogs
		else if (MEM_KeyState(KEY_V) == KEY_HOLD)			{	MovieMode_ExecSubScript();		}	/// sub scripts
		else if (MEM_KeyState(KEY_COMMA) == KEY_HOLD)		{	MovieMode_SetHeadDirection();	}	/// head direction
		else if (MEM_KeyState(KEY_PERIOD) == KEY_HOLD)		{	MovieMode_SetArmDirection();	}	/// arm direction
		else if (MemoKey1 != -1)								{	MemoKey1 = -1; MemoKey2 = -1;	};	/// reset helper keys
	};
	
	/// ------ hide GUI key & camera key ------
	if (MEM_KeyState(KEY_F1) == KEY_PRESSED)
	{
		MEM_Game.game_drawall = !MEM_Game.game_drawall;
	};
	if (MEM_KeyState(KEY_F9) == KEY_PRESSED)
	{
		AI_Wait (hero, 0.1);
	};
};
