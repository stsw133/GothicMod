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
	};
	/// gdy posta� co� jad�a
	if (foodTime > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, 1);	/// +1 hp co sekund�
		foodTime -= 1;
	};
};
func void TT_1000_RGMP()
{
	/// gdy posta� nie jest pod wp�ywem kl�twy poszukiwaczy
	if (!bState[BS_Obsession])
	{
		Npc_ChangeAttribute (hero, ATR_MANA, Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC));	/// +1 many za ka�dy kr�g magii (max. 6) co sekund�
	};
};
func void TT_200_RGEN()
{
	/// gdy posta� biegnie bez sprintu...
	if (C_BodyStateContains(hero, BS_RUN))
	{
		hero.aivar[AIV_Energy] += hero.aivar[AIV_Energy_MAX] / 100;	/// +1% energii co 0.2 sekundy
	}
	/// ...lub gdy posta� nie biegnie (i nie skacze) w og�le
	else if (!C_BodyStateContains(hero, BS_JUMP))
	{
		hero.aivar[AIV_Energy] += hero.aivar[AIV_Energy_MAX] / 50;	/// +2% energii co 0.2 sekundy
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
		Spell_Active_MysGhost();
		Spell_Active_GeoSkin();
		
		/// magiczny py� do zakl�cia spowolnienia czasu
		/*
		TimeDust_WAIT += 1;
		if (TimeDust_WAIT == 600)	/// co 10 minut
		{
			TimeDust_WAIT = 0;
			if (SPL_Enabled_SlowTime)
			{
				Wld_InsertItem (ItMi_TimeDust, TimeDust_WP);
			};
			TimeDust_WP = Npc_GetNearestWP(hero);
		};
		*/
	};
};
///******************************************************************************************
///	Wywo�ywane co 200 milisekund
///******************************************************************************************
func void TT_200()
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
		};
	}
	else
	{
		/// regeneracja i zu�ycie energii
		if (bState[BS_fRun])
		{
			hero.aivar[AIV_Energy] -= (4 + bState[BS_hArmor]*2 - Npc_GetTalentSkill(hero, NPC_TALENT_LONGRUN)*2);
		}
		else
		{
			TT_200_RGEN();
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
	&& (C_BodyStateContains(hero, BS_RUN))
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
	
	/// ------ Klawisz szybkiego obrotu ------
	if (MEM_KeyState(keyShortcuts1) == KEY_PRESSED || MEM_KeyState(keyShortcuts2) == KEY_PRESSED)
	{
		AI_PlayAni (hero, "T_QUICKTURN");
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
		else if (MemoKey1 != -1)								{	MemoKey1 = -1;	MemoKey2 = -1;	};	/// wyzerowanie klawiszy wspomagaj�cych
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
		/// kradzie� kieszonkowa
		if (Npc_GetTalentSkill(hero, NPC_TALENT_PICKPOCKET))
		{
			o_other = MEM_PtrToInst(o_hero.focus_vob);
			
			if (!Npc_CanSeeNpc(o_other, hero) || Npc_IsInState(o_other, ZS_Sleep))
			&& (Npc_GetDistToNpc(hero, o_other) < NPC_ATTACK_FINISH_DISTANCE)
			{
				MOD_Pickpocket (hero, o_other);
			};/*
			else
			{
				o_string = ConcatStrings ("Potrzeba ", IntToString(MOD_Pickpocket_DexToSteal(o_other)));
				o_string = ConcatStrings (o_string, " pkt. zr�czno�ci by dokona� udanej kradzie�y.");
				Print(o_string);
			};*/
		};
		/// szybkie podnoszenie przedmiot�w
		if (noAnimTake && !C_BodyStateContains(hero, BS_INVENTORY) && !C_BodyStateContains(hero, BS_TAKEITEM))
		{
			o_item = MEM_PtrToInst(o_hero.focus_vob);
			
			if (Hlp_IsValidItem(o_item))
			&& (o_item.flags != ITEM_NFOCUS)
			{
				if (Npc_GetDistToItem(hero, o_item) < (NPC_ATTACK_FINISH_DISTANCE * 2))
				{
					o_item.flags = ITEM_NFOCUS;
					Wld_RemoveItem(o_item);
					CreateInvItems (hero, Hlp_GetInstanceID(o_item), o_item.amount);
					ITEMS_CHECK(o_item);
				}
				else
				{
					Print("Przedmiot jest za daleko!");
				};
			};
		};
	};
};
