///******************************************************************************************
///	Wartoœci u¿ywane w Tick Tocku
///******************************************************************************************

var int TimeDust_WAIT;
var string TimeDust_WP;

var int keySprint1, keySprint2;
var int keyNoanimtake1, keyNoanimtake2;
var int keyInteract1, keyInteract2;
var int keyShortcuts1, keyShortcuts2;

///******************************************************************************************
///	Wywo³ywane co 5 sekund
///******************************************************************************************
func void TT_5000()
{
	if (MEM_Game.pause_screen)
	{
		return;
	};
	
	if (!Npc_IsDead(hero))
	{
		/// magiczny py³ do zaklêcia spowolnienia czasu
		TimeDust_WAIT += 1;
		if (TimeDust_WAIT == 360)	/// co 30 minut
		{
			TimeDust_WAIT = 0;
			if (enableTimeDust)
			{
				Wld_InsertItem (ItMi_TimeDust, TimeDust_WP);
			};
			TimeDust_WP = Npc_GetNearestWP(hero);
		};
		
		/// skalowanie prêdkoœci postaci
		NPC_SetTimeScale (hero, 95 + hero.attribute[ATR_DEXTERITY]/10);
	};
};

///******************************************************************************************
///	Regeneracja ¿ycia, many, energii
///******************************************************************************************
func void TT_1000_RGHP()
{
	/// gdy postaæ jest zatruta
	if (bsPoison > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, -bsPoison);
	}
	else
	{
		hpRegenPoints += hpRegenPower;
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, hpRegenPoints/10);
		hpRegenPoints -= hpRegenPoints/10*10;
	};
};
func void TT_1000_RGMP()
{
	/// gdy postaæ NIE jest pod wp³ywem kl¹twy poszukiwaczy
	if (bsObsession == 0)
	{
		mpRegenPoints += Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC)*10 + mpRegenPower;
		Npc_ChangeAttribute (hero, ATR_MANA, mpRegenPoints/10);
		mpRegenPoints -= mpRegenPoints/10*10;
	};
};
func void TT_1000_RGSP()
{
	/// dzia³anie Szybkiego Œledzia
	if (SchnellerHeringTime > 0)
	{
		SchnellerHeringTime -= 1;
		if (SchnellerHeringTime == 0)
		{
			End_ItFo_Addon_SchnellerHering();
		};
	}
	/// gdy postaæ NIE biegnie sprintem ani NIE skacze
	else if (!(C_BodyStateContains(hero, BS_RUN) && bsSprint) && !C_BodyStateContains(hero, BS_JUMP))
	{
		spRegenPoints += 50 + spRegenPower;
		hero.aivar[AIV_Stamina] += spRegenPoints/10;
		spRegenPoints -= spRegenPoints/10*10;
		Npc_StaminaRefresh(hero);
	};
};

///******************************************************************************************
///	Wywo³ywane co 1 sekundê
///******************************************************************************************
func void TT_1000()
{
	if (MEM_Game.pause_screen)
	{
		return;
	};
	
	if (!Npc_IsDead(hero))
	{
		/// regeneracja
		TT_1000_RGHP();
		TT_1000_RGMP();
		TT_1000_RGSP();
		
		///	dzia³anie mikstur (i jedzenia)
		Potions_Process();
		
		/// efekty zaklêæ
		if (mAuraTime > 0)
		{
			if (mAuraType == MAGIC_MYS) { Npc_ChangeAttribute (hero, ATR_HITPOINTS, 5); };
			
			mAuraTime -= 1;
			if (mAuraTime == 0)
			{
				B_SetMagicAura (0, 0, 0);
			};
		};
	};
};
///******************************************************************************************
///	Wywo³ywane co 200 milisekund
///******************************************************************************************
func void TT_200()
{
	if (MEM_Game.pause_screen)
	{
		return;
	};
	
	if (inFightCounter > 0)
	{
		inFightCounter -= 1;
		if (inFightCounter == 0)
		{
			SPL_AllDamage_MysBall = 0;
		};
	};
	
	/// zu¿ycie energii
	if (bsSprint && C_BodyStateContains(hero, BS_RUN))
	{
		hero.aivar[AIV_Stamina] -= 2+bsArmor;
	};
	if (C_BodyStateContains(hero, BS_HIT) || C_BodyStateContains(hero, BS_PARADE))
	{
		hero.aivar[AIV_Stamina] -= 3-usingForgedWeapon;
	};
	Npc_StaminaRefresh(hero);
	
	/// stan atrybutów
	ShowBarText();
};
///******************************************************************************************
///	Wywo³ywane co 5 milisekund
///******************************************************************************************
func void TT_5()
{
	if (MEM_Game.pause_screen || Npc_IsDead(hero))
	{
		return;
	};
	
	/// ------ Klawisz sprintu ------
	if (MEM_KeyState(keySprint1) == KEY_HOLD || MEM_KeyState(keySprint2) == KEY_HOLD)
	&& (hero.aivar[AIV_Stamina] > 0 && bsArmor < 1 && alcoholTime <= 0)
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
	
	/// ------ Klawisz skrótów ------
	if (MEM_KeyState(keyShortcuts1) == KEY_PRESSED || MEM_KeyState(keyShortcuts2) == KEY_PRESSED)
	{
		//AI_PlayAni (hero, "T_QUICKTURN");
	};
	
	/// ------ PPM ------
	if (MEM_KeyState(keyNoanimtake1) == KEY_PRESSED || MEM_KeyState(keyNoanimtake2) == KEY_PRESSED)
	{
		/// pokonanie przeciwnika
		if (Npc_IsInFightMode(hero, FMODE_MELEE)) //Npc_HasReadiedMeleeWeapon(hero)
		{
			o_item = Npc_GetReadiedWeapon(hero);
			o_other = MEM_PtrToInst(o_hero.focus_vob);
			
			//MOD_Assassination (hero, o_other, o_item);
		}
		/// kradzie¿ kieszonkowa
		else if (Npc_GetTalentSkill(hero, NPC_TALENT_PICKPOCKET))
		{
			o_other = MEM_PtrToInst(o_hero.focus_vob);
			
			if (!Npc_IsDead(o_other))
			&& (!Npc_CanSeeNpc(o_other, hero) || Npc_IsInState(o_other, ZS_Sleep))
			&& (Npc_GetDistToNpc(hero, o_other) < NPC_ATTACK_FINISH_DISTANCE)
			{
				MOD_Pickpocket (hero, o_other);
			};
		};
		
		/// szybkie podnoszenie przedmiotów
		if (noAnimTake && !C_BodyStateContains(hero, BS_INVENTORY) && !C_BodyStateContains(hero, BS_TAKEITEM))
		{
			o_item = MEM_PtrToInst(o_hero.focus_vob);
			
			if (Hlp_IsValidItem(o_item))
			{
				if (Npc_GetDistToItem(hero, o_item) < (NPC_ATTACK_FINISH_DISTANCE * 2))
				{
					MOD_MoveItemIntoInventory (hero, o_item);
				}
				else
				{
					Print("Przedmiot jest za daleko!");
				};
			};
		};
	};
	
	/// ------ Efekty zaklêæ ------
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
	
	/// ------ Tryb filmowy ------
	if (movieMode)
	{
		B_ScaleTime(75 + scaleTime);
		
		/// ------ Klawisze do skrótów animacji etc. ------
		if		(MEM_KeyState(keyShortcuts1) == KEY_HOLD)	{	MovieMode_SetFaceAni();			}	/// animacje twarzy
		else if (MEM_KeyState(KEY_Z) == KEY_HOLD)			{	MovieMode_DialogGesture();		}	/// dialogi
		else if (MEM_KeyState(keyInteract1) == KEY_HOLD)	{	MovieMode_ExecSubScript();		}	/// mniejsze skrypty
		else if (MEM_KeyState(KEY_COMMA) == KEY_HOLD)		{	MovieMode_SetHeadDirection();	}	/// kierunek g³owy
		else if (MEM_KeyState(KEY_PERIOD) == KEY_HOLD)		{	MovieMode_SetArmDirection();	}	/// kierunek rêki
		else if (MemoKey1 != -1)								{	MemoKey1 = -1;	MemoKey2 = -1;	};	/// wyzerowanie klawiszy wspomagaj¹cych
	};
	
	/// ------ Klawisz ukrycia interfejsu / klawisze kamery ------
	if (MEM_KeyState(KEY_F1) == KEY_PRESSED)
	{
		if (MEM_Game.game_drawall)	{	MEM_Game.game_drawall = false;	}
		else						{	MEM_Game.game_drawall = true;	};
	};
	if (MEM_KeyState(KEY_F9) == KEY_PRESSED)
	{
		AI_Wait (hero, 0.1);
	};
};
