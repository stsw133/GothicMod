///******************************************************************************************
///	Warto�ci u�ywane w Tick Tocku
///******************************************************************************************

var int TimeDust_WAIT;
var string TimeDust_WP;

var int keySprint1;
var int keySprint2;
var int keyNoanimtake1;
var int keyNoanimtake2;
var int keyInteract1;
var int keyInteract2;
var int keyShortcuts1;
var int keyShortcuts2;

///******************************************************************************************
///	Regeneracja
///******************************************************************************************
func void TT_1000_RGHP()
{
	/// gdy posta� jest zatruta
	if (bState[BS_Poison])
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, -2);	/// -2 hp co sekund�
	}
	else if (hpRegenPower > 0)
	{
		hpRegenPoints += hpRegenPower;
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, hpRegenPoints/10);
		hpRegenPoints -= hpRegenPoints/10*10;
	};
	/// gdy posta� co� jad�a
	if (foodTime > 0)
	{
		if (digestionTime > 0 && foodTime >= 3)
		{
			Npc_ChangeAttribute (hero, ATR_HITPOINTS, 3);	/// +3 hp co sekund�
			foodTime -= 3;
		}
		else
		{
			Npc_ChangeAttribute (hero, ATR_HITPOINTS, 1);	/// +1 hp co sekund�
			foodTime -= 1;
		};
	};
	/// gdy posta� co� pi�a
	if (drunkTime > 0)
	{
		drunkTime -= 1;
	};
};
func void TT_1000_RGMP()
{
	/// gdy posta� nie jest pod wp�ywem kl�twy poszukiwaczy
	if (!bState[BS_Obsession])
	{
		mpRegenPoints += Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) * 5 + mpRegenPower;	/// +0.5 many za ka�dy kr�g magii (max. 3) co sekund�
		Npc_ChangeAttribute (hero, ATR_MANA, mpRegenPoints/10);
		mpRegenPoints -= mpRegenPoints/10*10;
	};
};
func void TT_500_RGEN()
{
	/// gdy posta� biegnie (bez sprintu)...
	if (C_BodyStateContains(hero, BS_RUN))
	{
		hero.aivar[AIV_Energy] += 1;	/// +1 energii co 0.5 sekundy
	}
	/// ...lub gdy posta� nie biegnie (i nie skacze) w og�le
	else if (!C_BodyStateContains(hero, BS_JUMP))
	{
		hero.aivar[AIV_Energy] += 5;	/// +5 energii co 0.5 sekundy
	};
};
///******************************************************************************************
///	Wywo�ywane co sekund�
///******************************************************************************************
func void TT_1000()
{
	if (MEM_Game.pause_screen)
	{
		return;
	};
	
	if (hero.attribute[ATR_HITPOINTS] > 0)
	{
		/// regeneracja
		TT_1000_RGHP();
		TT_1000_RGMP();
		
		///	dzia�anie mikstur
		Potions_Process();
		
		/// efekty zakl��
		Spell_Active_MysProtection();
		Spell_Active_GeoProtection();
		Spell_Active_EleProtection();
		Spell_Active_PyrProtection();
		Spell_Active_NecProtection();
		
		/// magiczny py� do zakl�cia spowolnienia czasu
		TimeDust_WAIT += 1;
		if (TimeDust_WAIT == 1800)	/// co 30 minut
		{
			TimeDust_WAIT = 0;
			if (SPL_IsEnabled_SlowTime)
			{
				Wld_InsertItem (ItMi_TimeDust, TimeDust_WP);
			};
			TimeDust_WP = Npc_GetNearestWP(hero);
		};
	};
};
///******************************************************************************************
///	Wywo�ywane co 500 milisekund
///******************************************************************************************
func void TT_500()
{
	if (MEM_Game.pause_screen)
	{
		return;
	};
	
	/// dzia�anie Szybkiego �ledzia
	if (Hering_Time > 0)
	{
		Hering_Time -= 1;
		if (Hering_Time == 0)
		{
			hero.aivar[AIV_Energy] = 0;
			Npc_AddDrunkTime (hero, 125);
		};
	}
	else
	{
		/// regeneracja i zu�ycie energii
		if (bState[BS_fRun])
		{
			hero.aivar[AIV_Energy] -= ((5 + bState[BS_hArmor]*5) / (Npc_GetTalentSkill(hero, NPC_TALENT_LONGRUN) + 1));
		}
		else
		{
			TT_500_RGEN();
		};
		Npc_EnergyRefresh(hero);
	};
	
	ShowBarText();
};
///******************************************************************************************
///	Wywo�ywane co 5 milisekund
///******************************************************************************************
func void TT_5()
{
	if (MEM_Game.pause_screen)
	{
		return;
	};
	
	/// ------ Klawisz sprintu ------
	if (MEM_KeyState(keySprint1) == KEY_HOLD || MEM_KeyState(keySprint2) == KEY_HOLD)
	&& (C_BodyStateContains(hero, BS_RUN) && drunkTime < 50)
	&& (hero.aivar[AIV_Energy] > 0 || movieMode)
	{
		if (!bState[BS_fRun])
		{
			Mdl_ApplyOverlayMDS (hero, "HUMANS_FASTRUN.MDS");
			bState[BS_fRun] = true;
		};
	}
	else if (bState[BS_fRun])
	{
		Mdl_RemoveOverlayMDS (hero, "HUMANS_FASTRUN.MDS");
		bState[BS_fRun] = false;
	};
	
	/// ------ Klawisz skr�t�w ------
	if (MEM_KeyState(keyShortcuts1) == KEY_PRESSED || MEM_KeyState(keyShortcuts2) == KEY_PRESSED)
	{
		//AI_PlayAni (hero, "T_QUICKTURN");
	};
	
	/// ------ Tryb filmowy ------
	if (movieMode)
	{
		B_ScaleTime(75 + scaleTime);
		
		/// ------ Klawisze do skr�t�w animacji etc. ------
		if		(MEM_KeyState(keyShortcuts1) == KEY_HOLD)	{	MovieMode_SetFaceAni();			}	/// animacje twarzy
		else if (MEM_KeyState(KEY_Z) == KEY_HOLD)			{	MovieMode_DialogGesture();		}	/// dialogi
		else if (MEM_KeyState(keyInteract1) == KEY_HOLD)	{	MovieMode_ExecSubScript();		}	/// mniejsze skrypty
		else if (MEM_KeyState(KEY_COMMA) == KEY_HOLD)		{	MovieMode_SetHeadDirection();	}	/// kierunek g�owy
		else if (MEM_KeyState(KEY_PERIOD) == KEY_HOLD)		{	MovieMode_SetArmDirection();	}	/// kierunek r�ki
		else if (MemoKey1 != -1)							{	MemoKey1 = -1;	MemoKey2 = -1;	};	/// wyzerowanie klawiszy wspomagaj�cych
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
	
	/// ------ PPM ------
	if (MEM_KeyState(keyNoanimtake1) == KEY_PRESSED || MEM_KeyState(keyNoanimtake2) == KEY_PRESSED)
	{
		/// pokonanie przeciwnika
		if (Npc_IsInFightMode(hero, FMODE_MELEE)) //Npc_HasReadiedMeleeWeapon(hero)
		{
			o_item = Npc_GetReadiedWeapon(hero);
			o_other = MEM_PtrToInst(o_hero.focus_vob);
			
			MOD_Assassination (hero, o_other, o_item);
		}
		/// kradzie� kieszonkowa
		else if (Npc_GetTalentSkill(hero, NPC_TALENT_PICKPOCKET))
		{
			o_other = MEM_PtrToInst(o_hero.focus_vob);
			
			if (!Npc_CanSeeNpc(o_other, hero) || Npc_IsInState(o_other, ZS_Sleep))
			&& (Npc_GetDistToNpc(hero, o_other) < NPC_ATTACK_FINISH_DISTANCE)
			{
				MOD_Pickpocket (hero, o_other);
			};
		};
		
		/// szybkie podnoszenie przedmiot�w
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
};
