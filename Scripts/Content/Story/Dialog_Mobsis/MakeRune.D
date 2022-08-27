///******************************************************************************************
///	MOBSI_MAKERUNE / MOBSI_MAKESCROLL
///******************************************************************************************
func void MAKERUNE_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_MAKERUNE;
		Ai_ProcessInfos(her);
	};
};
func void MOBSI_MAKESCROLL_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_MAKESCROLL;
		Ai_ProcessInfos(her);
	};
};
///******************************************************************************************
instance PC_MakeRune_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_MakeRune_End_Condition;
	information							=	PC_MakeRune_End_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int PC_MakeRune_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		return true;
	};
};
func void PC_MakeRune_End_Info()
{
	CreateInvItem (hero, ItMi_RuneBlank);
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
instance PC_MakeScroll_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_MakeScroll_End_Condition;
	information							=	PC_MakeScroll_End_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int PC_MakeScroll_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	{
		return true;
	};
};
func void PC_MakeScroll_End_Info()
{
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************\
///	neutral
///******************************************************************************************
instance PC_MakeRune_Neutral (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_Neutral_Condition;
	information							=	PC_MakeRune_Neutral_Info;
	permanent							=	true;
	description							=	"Twórz zaklêcia neutralne"; 
};
func int PC_MakeRune_Neutral_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	{	
		return true;
	};
};
func void PC_MakeRune_Neutral_Info()
{
	Info_ClearChoices	(PC_MakeRune_Neutral);
	Info_AddChoice		(PC_MakeRune_Neutral, DIALOG_BACK, PC_MakeRune_Neutral_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_nLight])
	{
		Info_AddChoice (PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_Light, " (z³ota moneta)"), PC_ItRu_Light_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_nHeal])
	{
		Info_AddChoice (PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_Heal, " (ziele lecznicze)"), PC_ItRu_Heal_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_SlowTime])
	{
		Info_AddChoice (PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_SlowTime, " (szmaragd, 10 cz¹steczek czasu)"), PC_ItRu_SlowTime_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NightToDay])
	{
		Info_AddChoice (PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_NightToDay, " (owcza skóra, 5 cz¹steczek czasu)"), PC_ItRu_NightToDay_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Telekinesis])
	{
		Info_AddChoice (PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_Telekinesis, " (moneta fortuny)"), PC_ItRu_Telekinesis_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Sleep])
	{
		Info_AddChoice (PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_Sleep, " (bagienne ziele)"), PC_ItRu_Sleep_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Charm])
	{
		Info_AddChoice (PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_Charm, " (bagienne ziele, ¿uwaczki polnej bestii)"), PC_ItRu_Charm_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Fear])
	{
		Info_AddChoice (PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_Fear, " (skrzyd³a)"), PC_ItRu_Fear_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Rage])
	{
		Info_AddChoice (PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_Rage, " (krew demona)"), PC_ItRu_Rage_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Shrink])
	{
		Info_AddChoice (PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_Shrink, " (kie³ trolla, jajo pe³zacza)"), PC_ItRu_Shrink_Info);
	};
};
///******************************************************************************************
func void PC_MakeRune_Neutral_BACK()
{
	Info_ClearChoices(PC_MakeRune_Neutral);
};
func void PC_ItRu_Light_Info()
{
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE && Npc_HasItems(hero, ItSc_Light) >= 1)
	 || (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scroll) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1))
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Gold);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			Npc_RemoveInvItem (hero, ItSc_Light);
			CreateInvItem (hero, ItRu_Light);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);	Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItem (hero, ItSc_Light);
			Print(PRINT_ScrollSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{	CreateInvItem (hero, ItMi_RuneBlank);	};
		
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Heal_Info()
{
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE && Npc_HasItems(hero, ItSc_LightHeal) >= 1)
	 || (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scroll) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1))
	&& (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_Health_Herb_02);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			Npc_RemoveInvItem (hero, ItSc_LightHeal);
			CreateInvItem (hero, ItRu_Heal);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);	Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItem (hero, ItSc_LightHeal);
			Print(PRINT_ScrollSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{	CreateInvItem (hero, ItMi_RuneBlank);	};
		
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_SlowTime_Info()
{
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE && Npc_HasItems(hero, ItSc_SlowTime) >= 1)
	 || (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scroll) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1))
	&& (Npc_HasItems(hero, ItMi_Emerald) >= 1)
	&& (Npc_HasItems(hero, ItMi_TimeDust) >= 10)
	{
		Npc_RemoveInvItem (hero, ItMi_Emerald);
		Npc_RemoveInvItems (hero, ItMi_TimeDust, 10);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			Npc_RemoveInvItem (hero, ItSc_SlowTime);
			CreateInvItem (hero, ItRu_SlowTime);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);	Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItem (hero, ItSc_SlowTime);
			Print(PRINT_ScrollSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{	CreateInvItem (hero, ItMi_RuneBlank);	};
		
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_NightToDay_Info()
{
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE && Npc_HasItems(hero, ItSc_NightToDay) >= 1)
	 || (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scroll) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1))
	&& (Npc_HasItems(hero, ItAt_SheepFur) >= 1)
	&& (Npc_HasItems(hero, ItMi_TimeDust) >= 5)
	{
		Npc_RemoveInvItem (hero, ItAt_SheepFur);
		Npc_RemoveInvItems (hero, ItMi_TimeDust, 5);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			Npc_RemoveInvItem (hero, ItSc_NightToDay);
			CreateInvItem (hero, ItRu_NightToDay);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);	Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItem (hero, ItSc_NightToDay);
			Print(PRINT_ScrollSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{	CreateInvItem (hero, ItMi_RuneBlank);	};
		
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Telekinesis_Info()
{
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE && Npc_HasItems(hero, ItSc_Telekinesis) >= 1)
	 || (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scroll) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1))
	&& (Npc_HasItems(hero, ItMi_FortuneCoin) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_FortuneCoin);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			Npc_RemoveInvItem (hero, ItSc_Telekinesis);
			CreateInvItem (hero, ItRu_Telekinesis);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);	Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItem (hero, ItSc_Telekinesis);
			Print(PRINT_ScrollSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{	CreateInvItem (hero, ItMi_RuneBlank);	};
		
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Sleep_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_Sleep) >= 1)
		&& (Npc_HasItems(hero, ItPl_Swampherb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_Sleep);
			Npc_RemoveInvItem (hero, ItPl_Swampherb);
			
			CreateInvItem (hero, ItRu_Sleep);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItPl_Swampherb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItPl_Swampherb);
			
			CreateInvItem (hero, ItSc_Sleep);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Charm_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_Charm) >= 1)
		&& (Npc_HasItems(hero, ItPl_Swampherb) >= 1)
		&& (Npc_HasItems(hero, ItAt_BugMandibles) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_Charm);
			Npc_RemoveInvItem (hero, ItPl_Swampherb);
			Npc_RemoveInvItem (hero, ItAt_BugMandibles);
			
			CreateInvItem (hero, ItRu_Charm);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItPl_Swampherb) >= 1)
		&& (Npc_HasItems(hero, ItAt_BugMandibles) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItPl_Swampherb);
			Npc_RemoveInvItem (hero, ItAt_BugMandibles);
			
			CreateInvItem (hero, ItSc_Charm);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Fear_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_Fear) >= 1)
		&& (Npc_HasItems(hero, ItAt_Wing) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_Fear);
			Npc_RemoveInvItem (hero, ItAt_Wing);
			
			CreateInvItem (hero, ItRu_Fear);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_Wing) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_Wing);
			
			CreateInvItem (hero, ItSc_Fear);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Rage_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_Rage) >= 1)
		&& (Npc_HasItems(hero, ItAt_DemonBlood) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_Rage);
			Npc_RemoveInvItem (hero, ItAt_DemonBlood);
			
			CreateInvItem (hero, ItRu_Rage);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_DemonBlood) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_DemonBlood);
			
			CreateInvItem (hero, ItSc_Rage);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Shrink_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_Shrink) >= 1)
		&& (Npc_HasItems(hero, ItAt_TrollTooth) >= 1)
		&& (Npc_HasItems(hero, ItAt_CrawlerEgg) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_Shrink);
			Npc_RemoveInvItem (hero, ItAt_TrollTooth);
			Npc_RemoveInvItem (hero, ItAt_CrawlerEgg);
			
			CreateInvItem (hero, ItRu_Shrink);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_TrollTooth) >= 1)
		&& (Npc_HasItems(hero, ItAt_CrawlerEgg) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_TrollTooth);
			Npc_RemoveInvItem (hero, ItAt_CrawlerEgg);
			
			CreateInvItem (hero, ItSc_Shrink);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
///	battle
///******************************************************************************************
instance PC_MakeRune_Battle (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_Battle_Condition;
	information							=	PC_MakeRune_Battle_Info;
	permanent							=	true;
	description							=	"Twórz runy bojowe"; 
};
func int PC_MakeRune_Battle_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	{
		return true;
	};
};
func void PC_MakeRune_Battle_Info()
{
	Info_ClearChoices	(PC_MakeRune_Battle);
	Info_AddChoice		(PC_MakeRune_Battle, DIALOG_BACK, PC_MakeRune_Battle_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_FireBolt])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_FireBolt, " (siarka)"), PC_ItRu_FireBolt_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_IceBolt])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_IceBolt, " (kryszta³)"), PC_ItRu_IceBolt_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Zap])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_Zap, " (bry³ka srebra)"), PC_ItRu_Zap_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_SkullBolt])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_SkullBolt, " (czaszka)"), PC_ItRu_SkullBolt_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_WindFist])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_WindFist, " (wêgiel, pazury)"), PC_ItRu_WindFist_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_LightningFlash])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_LightningFlash, " (bry³ka srebra, szpony topielca)"), PC_ItRu_LightningFlash_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_ChargeFireball])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_ChargeFireball, " (ognisty kryszta³, smo³a)"), PC_ItRu_ChargeFireball_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Whirlwind])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_Whirlwind, " (skrzyd³a, woda)"), PC_ItRu_Whirlwind_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_ChargeZap])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_ChargeZap, " (bry³ka srebra, pazury)"), PC_ItRu_ChargeZap_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Geyser])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_Geyser, " (akwamaryn)"), PC_ItRu_Geyser_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_WaterFist])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_WaterFist, " (akwamaryn, woda)"), PC_ItRu_WaterFist_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_IceLance])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_IceLance, " (bia³a per³a)"), PC_ItRu_IceLance_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_IceWave])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_IceWave, " (bia³a per³a, akwamaryn)"), PC_ItRu_IceWave_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Inflate])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_Inflate, " (woda, ³ój kretoszczura)"), PC_ItRu_Inflate_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_DragonBall])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_DragonBall, " (serce smoka)"), PC_ItRu_DragonBall_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_BlackDragonBall])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_BlackDragonBall, " (kamieñ duszy smoka-o¿ywieñca)"), PC_ItRu_BlackDragonBall_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_BreathOfDeath])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_BreathOfDeath, " (wêgiel, czarna per³a)"), PC_ItRu_BreathOfDeath_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MassDeath])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_MassDeath, " (krew demona, czarna per³a)"), PC_ItRu_MassDeath_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_ArmyOfDarkness])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_ArmyOfDarkness, " (koœæ szkieletu, czarna per³a)"), PC_ItRu_ArmyOfDarkness_Info);
	};
};
///******************************************************************************************
func void PC_MakeRune_Battle_BACK()
{
	Info_ClearChoices(PC_MakeRune_Battle);
};
func void PC_ItRu_FireBolt_Info()
{
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE && Npc_HasItems(hero, ItSc_FireBolt) >= 1)
	 || (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scroll) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1))
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			Npc_RemoveInvItem (hero, ItSc_FireBolt);
			CreateInvItem (hero, ItRu_FireBolt);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);	Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItem (hero, ItSc_FireBolt);
			Print(PRINT_ScrollSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{	CreateInvItem (hero, ItMi_RuneBlank);	};
		
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_IceBolt_Info()
{
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE && Npc_HasItems(hero, ItSc_IceBolt) >= 1)
	 || (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scroll) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1))
	&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			Npc_RemoveInvItem (hero, ItSc_IceBolt);
			CreateInvItem (hero, ItRu_IceBolt);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);	Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItem (hero, ItSc_IceBolt);
			Print(PRINT_ScrollSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{	CreateInvItem (hero, ItMi_RuneBlank);	};
		
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Zap_Info()
{
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE && Npc_HasItems(hero, ItSc_Zap) >= 1)
	 || (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scroll) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1))
	&& (Npc_HasItems(hero, ItMi_SilverNugget) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_SilverNugget);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			Npc_RemoveInvItem (hero, ItSc_Zap);
			CreateInvItem (hero, ItRu_Zap);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);	Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItem (hero, ItSc_Zap);
			Print(PRINT_ScrollSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{	CreateInvItem (hero, ItMi_RuneBlank);	};
		
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_SkullBolt_Info()
{
	if ((PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE && Npc_HasItems(hero, ItSc_Zap) >= 1)
	 || (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scroll) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1))
	&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			Npc_RemoveInvItem (hero, ItSc_Zap);
			CreateInvItem (hero, ItRu_SkullBolt);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);	Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItem (hero, ItSc_Zap);
			Print(PRINT_ScrollSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{	CreateInvItem (hero, ItMi_RuneBlank);	};
		
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_WindFist_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_WindFist) >= 1)
		&& (Npc_HasItems(hero, ItMi_Coal) >= 1)
		&& (Npc_HasItems(hero, ItAt_Claw) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_WindFist);
			Npc_RemoveInvItem (hero, ItMi_Coal);
			Npc_RemoveInvItem (hero, ItAt_Claw);
			
			CreateInvItem (hero, ItRu_WindFist);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Coal) >= 1)
		&& (Npc_HasItems(hero, ItAt_Claw) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Coal);
			Npc_RemoveInvItem (hero, ItAt_Claw);
			
			CreateInvItem (hero, ItSc_WindFist);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_LightningFlash_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_LightningFlash) >= 1)
		&& (Npc_HasItems(hero, ItMi_SilverNugget) >= 1)
		&& (Npc_HasItems(hero, ItAt_LurkerClaw) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_LightningFlash);
			Npc_RemoveInvItem (hero, ItMi_SilverNugget);
			Npc_RemoveInvItem (hero, ItAt_LurkerClaw);
			
			CreateInvItem (hero, ItRu_LightningFlash);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_SilverNugget) >= 1)
		&& (Npc_HasItems(hero, ItAt_LurkerClaw) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_SilverNugget);
			Npc_RemoveInvItem (hero, ItAt_LurkerClaw);
			
			CreateInvItem (hero, ItSc_LightningFlash);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_ChargeFireball_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_ChargeFireball) >= 1)
		&& (Npc_HasItems(hero, ItMi_Firecrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_ChargeFireball);
			Npc_RemoveInvItem (hero, ItMi_Firecrystal);
			Npc_RemoveInvItem (hero, ItMi_Pitch);
			
			CreateInvItem (hero, ItRu_ChargeFireball);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Firecrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Firecrystal);
			Npc_RemoveInvItem (hero, ItMi_Pitch);
			
			CreateInvItem (hero, ItSc_ChargeFireball);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Whirlwind_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_Whirlwind) >= 1)
		&& (Npc_HasItems(hero, ItAt_Wing) >= 1)
		&& (Npc_HasItems(hero, ItFo_Water) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_Whirlwind);
			Npc_RemoveInvItem (hero, ItAt_Wing);
			Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
			
			CreateInvItem (hero, ItRu_Whirlwind);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_Wing) >= 1)
		&& (Npc_HasItems(hero, ItFo_Water) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_Wing);
			Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
			
			CreateInvItem (hero, ItSc_Whirlwind);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_ChargeZap_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_ChargeZap) >= 1)
		&& (Npc_HasItems(hero, ItMi_SilverNugget) >= 1)
		&& (Npc_HasItems(hero, ItAt_Claw) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_ChargeZap);
			Npc_RemoveInvItem (hero, ItMi_SilverNugget);
			Npc_RemoveInvItem (hero, ItAt_Claw);
			
			CreateInvItem (hero, ItRu_ChargeZap);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_SilverNugget) >= 1)
		&& (Npc_HasItems(hero, ItAt_Claw) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_SilverNugget);
			Npc_RemoveInvItem (hero, ItAt_Claw);
			
			CreateInvItem (hero, ItSc_ChargeZap);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Geyser_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_Geyser) >= 1)
		&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_Geyser);
			Npc_RemoveInvItem (hero, ItMi_Aquamarine);
			
			CreateInvItem (hero, ItRu_Geyser);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Aquamarine);
			
			CreateInvItem (hero, ItSc_Geyser);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_WaterFist_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_WaterFist) >= 1)
		&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
		&& (Npc_HasItems(hero, ItFo_Water) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_WaterFist);
			Npc_RemoveInvItem (hero, ItMi_Aquamarine);
			Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
			
			CreateInvItem (hero, ItRu_WaterFist);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
		&& (Npc_HasItems(hero, ItFo_Water) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Aquamarine);
			Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
			
			CreateInvItem (hero, ItSc_WaterFist);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_IceLance_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_IceLance) >= 1)
		&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_IceLance);
			Npc_RemoveInvItem (hero, ItMi_WhitePearl);
			
			CreateInvItem (hero, ItRu_IceLance);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_WhitePearl);
			
			CreateInvItem (hero, ItSc_IceLance);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_IceWave_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
		&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
		&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_IceWave);
			Npc_RemoveInvItem (hero, ItMi_WhitePearl);
			Npc_RemoveInvItem (hero, ItMi_Aquamarine);
			
			CreateInvItem (hero, ItRu_IceWave);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
		&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_WhitePearl);
			Npc_RemoveInvItem (hero, ItMi_Aquamarine);
			
			CreateInvItem (hero, ItSc_IceWave);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Inflate_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_Inflate) >= 1)
		&& (Npc_HasItems(hero, ItAt_MoleratLubric) >= 1)
		&& (Npc_HasItems(hero, ItFo_Water) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_Inflate);
			Npc_RemoveInvItem (hero, ItAt_MoleratLubric);
			Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
			
			CreateInvItem (hero, ItRu_Inflate);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_MoleratLubric) >= 1)
		&& (Npc_HasItems(hero, ItFo_Water) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_MoleratLubric);
			Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
			
			CreateInvItem (hero, ItSc_Inflate);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_DragonBall_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_DragonBall) >= 1)
		&& (Npc_HasItems(hero, ItAt_DragonHeart) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_DragonBall);
			Npc_RemoveInvItem (hero, ItAt_DragonHeart);
			
			CreateInvItem (hero, ItRu_DragonBall);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_DragonHeart) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_DragonHeart);
			
			CreateInvItem (hero, ItSc_DragonBall);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_BlackDragonBall_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_BlackDragonBall) >= 1)
		&& (Npc_HasItems(hero, ItAt_UndeadDragonSoulStone) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_BlackDragonBall);
			Npc_RemoveInvItem (hero, ItAt_UndeadDragonSoulStone);
			
			CreateInvItem (hero, ItRu_BlackDragonBall);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_UndeadDragonSoulStone) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_UndeadDragonSoulStone);
			
			CreateInvItem (hero, ItSc_BlackDragonBall);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_BreathOfDeath_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_BreathOfDeath) >= 1)
		&& (Npc_HasItems(hero, ItMi_Coal) >= 1)
		&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_BreathOfDeath);
			Npc_RemoveInvItem (hero, ItMi_Coal);
			Npc_RemoveInvItem (hero, ItMi_DarkPearl);
			
			CreateInvItem (hero, ItRu_BreathOfDeath);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Coal) >= 1)
		&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Coal);
			Npc_RemoveInvItem (hero, ItMi_DarkPearl);
			
			CreateInvItem (hero, ItSc_BreathOfDeath);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_MassDeath_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_MassDeath) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 1)
		&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_MassDeath);
			Npc_RemoveInvItem (hero, ItAt_SkeletonBone);
			Npc_RemoveInvItem (hero, ItMi_DarkPearl);
			
			CreateInvItem (hero, ItRu_MassDeath);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 1)
		&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_SkeletonBone);
			Npc_RemoveInvItem (hero, ItMi_DarkPearl);
			
			CreateInvItem (hero, ItSc_MassDeath);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_ArmyOfDarkness_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_ArmyOfDarkness) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 1)
		&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_ArmyOfDarkness);
			Npc_RemoveInvItem (hero, ItAt_SkeletonBone);
			Npc_RemoveInvItem (hero, ItMi_DarkPearl);
			
			CreateInvItem (hero, ItRu_ArmyOfDarkness);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 1)
		&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_SkeletonBone);
			Npc_RemoveInvItem (hero, ItMi_DarkPearl);
			
			CreateInvItem (hero, ItSc_ArmyOfDarkness);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
///	special
///******************************************************************************************
instance PC_MakeRune_Special (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_Special_Condition;
	information							=	PC_MakeRune_Special_Info;
	permanent							=	true;
	description							=	"Twórz runy specjalne"; 
};
func int PC_MakeRune_Special_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (MakeRune_MasterOfDisaster || MakeRune_SecretTeleport)
	{
		return true;
	};
};
func void PC_MakeRune_Special_Info()
{
	Info_ClearChoices	(PC_MakeRune_Special);
	Info_AddChoice		(PC_MakeRune_Special, DIALOG_BACK, PC_MakeRune_Special_BACK);
	if (MakeRune_MasterOfDisaster)
	{
		Info_AddChoice	(PC_MakeRune_Special, "Tajemnica biblioteki! (woda œwiêcona)", PC_SPL_MasterOfDisaster_Create);
	};
	if (MakeRune_SecretTeleport)
	{
		Info_AddChoice	(PC_MakeRune_Special, "Tajemnica biblioteki! (woda œwiêcona)", PC_SPL_PalTeleportSecret_Create);
	};
};
///******************************************************************************************
func void PC_MakeRune_Special_BACK()
{
	Info_ClearChoices(PC_MakeRune_Special);
};
func void PC_SPL_MasterOfDisaster_Create()
{
	if (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_HolyWater);
		CreateInvItem (hero, ItRu_MasterOfDisaster);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_SPL_PalTeleportSecret_Create()
{
	if (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_HolyWater);
		CreateInvItem (hero, ItTe_MonasteryUnderground);
		Print(PRINT_RuneSuccess);
	}
	else 
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
///	MYS
///******************************************************************************************
instance PC_MakeRune_MYS (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_MYS_Condition;
	information							=	PC_MakeRune_MYS_Info;
	permanent							=	true;
	description							=	"Twórz runy mistycyzmu"; 
};
func int PC_MakeRune_MYS_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_TYPEOFMAGIC) == MAGIC_MYS)
	{
		return true;
	};
};
func void PC_MakeRune_MYS_Info()
{
	Info_ClearChoices	(PC_MakeRune_MYS);
	Info_AddChoice		(PC_MakeRune_MYS, DIALOG_BACK, PC_MakeRune_MYS_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_MysBolt])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysBolt, " (¿ywica, serafis)"), PC_ItRu_MysBolt_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MysProtection])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysProtection, " (¿ywica, rtêæ)"), PC_ItRu_MysProtection_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MysRoot])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysRoot, " (¿ywica, rdest polny)"), PC_ItRu_MysRoot_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MysTame])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysTame, " (¿ywica, skóra tygrysa)"), PC_ItRu_MysTame_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MysAura])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysAura, " (¿ywica, szmaragd)"), PC_ItRu_MysAura_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MysEchoes])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysEchoes, " (¿ywica, diament)"), PC_ItRu_MysEchoes_Info);
	};
};
///******************************************************************************************
func void PC_MakeRune_MYS_BACK()
{
	Info_ClearChoices(PC_MakeRune_MYS);
};
func void PC_ItRu_MysBolt_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_MysBolt) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItPl_Blueplant) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_MysBolt);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItPl_Blueplant);
			
			CreateInvItem (hero, ItRu_MysBolt);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItPl_Blueplant) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItPl_Blueplant);
			
			CreateInvItem (hero, ItSc_MysBolt);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_MysProtection_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_MysProtection) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_MysProtection);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItMi_Quicksilver);
			
			CreateInvItem (hero, ItRu_MysProtection);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItMi_Quicksilver);
			
			CreateInvItem (hero, ItSc_MysProtection);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_MysRoot_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_MysRoot) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_MysRoot);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
			
			CreateInvItem (hero, ItRu_MysRoot);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
			
			CreateInvItem (hero, ItSc_MysRoot);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_MysTame_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_MysTame) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItAt_TigerFur) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_MysTame);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItAt_TigerFur);
			
			CreateInvItem (hero, ItRu_MysTame);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItAt_TigerFur) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItAt_TigerFur);
			
			CreateInvItem (hero, ItSc_MysTame);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_MysAura_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_MysAura) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItMi_Emerald) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_MysAura);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItMi_Emerald);
			
			CreateInvItem (hero, ItRu_MysAura);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItMi_Emerald) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItMi_Emerald);
			
			CreateInvItem (hero, ItSc_MysAura);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_MysEchoes_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_MysEchoes) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItMi_Diamond) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_MysEchoes);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItMi_Diamond);
			
			CreateInvItem (hero, ItRu_MysEchoes);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Resin) >= 1)
		&& (Npc_HasItems(hero, ItMi_Diamond) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Resin);
			Npc_RemoveInvItem (hero, ItMi_Diamond);
			
			CreateInvItem (hero, ItSc_MysEchoes);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
///	GEO
///******************************************************************************************
instance PC_MakeRune_GEO (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_GEO_Condition;
	information							=	PC_MakeRune_GEO_Info;
	permanent							=	true;
	description							=	"Twórz runy geomancji"; 
};
func int PC_MakeRune_GEO_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_TYPEOFMAGIC) == MAGIC_GEO)
	{
		return true;
	};
};
func void PC_MakeRune_GEO_Info()
{
	Info_ClearChoices	(PC_MakeRune_GEO);
	Info_AddChoice		(PC_MakeRune_GEO, DIALOG_BACK, PC_MakeRune_GEO_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoStone])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoStone, " (kwarc, 5 kamieni)"), PC_ItRu_GeoStone_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoProtection])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoProtection, " (kwarc, rtêæ)"), PC_ItRu_GeoProtection_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoElevate])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoElevate, " (kwarc, sztabka ¿elaza)"), PC_ItRu_GeoElevate_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoGolem])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoGolem, " (kwarc, serce golema)"), PC_ItRu_GeoGolem_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoExplosion])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoExplosion, " (kwarc, 5 kawa³ków saletry)"), PC_ItRu_GeoExplosion_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoWall])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoWall, " (kwarc, skóra trolla)"), PC_ItRu_GeoWall_Info);
	};
};
///******************************************************************************************
func void PC_MakeRune_GEO_BACK()
{
	Info_ClearChoices(PC_MakeRune_GEO);
};
func void PC_ItRu_GeoStone_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_GeoStone) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItMi_Stone) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_GeoStone);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItem (hero, ItMi_Stone);
			
			CreateInvItem (hero, ItRu_GeoStone);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItMi_Stone) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItem (hero, ItMi_Stone);
			
			CreateInvItem (hero, ItSc_GeoStone);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_GeoProtection_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_GeoProtection) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_GeoProtection);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItem (hero, ItMi_Quicksilver);
			
			CreateInvItem (hero, ItRu_GeoProtection);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItem (hero, ItMi_Quicksilver);
			
			CreateInvItem (hero, ItSc_GeoProtection);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_GeoElevate_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_GeoElevate) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItMi_IronBar) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_GeoElevate);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItem (hero, ItMi_IronBar);
			
			CreateInvItem (hero, ItRu_GeoElevate);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItMi_IronBar) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItem (hero, ItMi_IronBar);
			
			CreateInvItem (hero, ItSc_GeoElevate);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_GeoGolem_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_GeoGolem) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItAt_GolemHeart) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_GeoGolem);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItem (hero, ItAt_GolemHeart);
			
			CreateInvItem (hero, ItRu_GeoGolem);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItAt_GolemHeart) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItem (hero, ItAt_GolemHeart);
			
			CreateInvItem (hero, ItSc_GeoGolem);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_GeoExplosion_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_GeoExplosion) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItMi_Saltpeter) >= 5)
		{
			Npc_RemoveInvItem (hero, ItSc_GeoExplosion);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItems (hero, ItMi_Saltpeter, 5);
			
			CreateInvItem (hero, ItRu_GeoExplosion);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItMi_Saltpeter) >= 5)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItems (hero, ItMi_Saltpeter, 5);
			
			CreateInvItem (hero, ItSc_GeoExplosion);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_GeoWall_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_GeoWall) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItAt_TrollFur) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_GeoWall);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItem (hero, ItAt_TrollFur);
			
			CreateInvItem (hero, ItRu_GeoWall);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
		&& (Npc_HasItems(hero, ItAt_TrollFur) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Quartz);
			Npc_RemoveInvItem (hero, ItAt_TrollFur);
			
			CreateInvItem (hero, ItSc_GeoWall);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
///	ELE
///******************************************************************************************
instance PC_MakeRune_ELE (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_ELE_Condition;
	information							=	PC_MakeRune_ELE_Info;
	permanent							=	true;
	description							=	"Twórz runy elementaryzmu"; 
};
func int PC_MakeRune_ELE_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_TYPEOFMAGIC) == MAGIC_ELE)
	{
		return true;
	};
};
func void PC_MakeRune_ELE_Info()
{
	Info_ClearChoices	(PC_MakeRune_ELE);
	Info_AddChoice		(PC_MakeRune_ELE, DIALOG_BACK, PC_MakeRune_ELE_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_EleLightning])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleLightning, " (kryszta³, bry³ka srebra)"), PC_ItRu_EleLightning_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_EleProtection])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleProtection, " (kryszta³, rtêæ)"), PC_ItRu_EleProtection_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_EleFreeze])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleFreeze, " (kryszta³, bia³a per³a)"), PC_ItRu_EleFreeze_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_EleHurricane])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleHurricane, " (kryszta³, 10 kawa³ków wêgla)"), PC_ItRu_EleHurricane_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_EleKinesis])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleKinesis, " (kryszta³, róg smoczego zêbacza)"), PC_ItRu_EleKinesis_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_EleThunderstorm])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleThunderstorm, " (kryszta³, 5 bry³ek niebieskiej rudy)"), PC_ItRu_EleThunderstorm_Info);
	};
};
///******************************************************************************************
func void PC_MakeRune_ELE_BACK()
{
	Info_ClearChoices(PC_MakeRune_ELE);
};
func void PC_ItRu_EleLightning_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_EleLightning) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_SilverNugget) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_EleLightning);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItem (hero, ItMi_SilverNugget);
			
			CreateInvItem (hero, ItRu_EleLightning);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_SilverNugget) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItem (hero, ItMi_SilverNugget);
			
			CreateInvItem (hero, ItSc_EleLightning);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_EleProtection_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_EleProtection) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_EleProtection);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItem (hero, ItMi_Quicksilver);
			
			CreateInvItem (hero, ItRu_EleProtection);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItem (hero, ItMi_Quicksilver);
			
			CreateInvItem (hero, ItSc_EleProtection);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_EleFreeze_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_EleFreeze) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_EleFreeze);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItem (hero, ItMi_WhitePearl);
			
			CreateInvItem (hero, ItRu_EleFreeze);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItem (hero, ItMi_WhitePearl);
			
			CreateInvItem (hero, ItSc_EleFreeze);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_EleHurricane_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_EleHurricane) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_Coal) >= 10)
		{
			Npc_RemoveInvItem (hero, ItSc_EleHurricane);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItems (hero, ItMi_Coal, 10);
			
			CreateInvItem (hero, ItRu_EleHurricane);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_Coal) >= 10)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItems (hero, ItMi_Coal, 10);
			
			CreateInvItem (hero, ItSc_EleHurricane);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_EleKinesis_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_EleKinesis) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItAt_DrgSnapperHorn) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_EleKinesis);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItem (hero, ItAt_DrgSnapperHorn);
			
			CreateInvItem (hero, ItRu_EleKinesis);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItAt_DrgSnapperHorn) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItem (hero, ItAt_DrgSnapperHorn);
			
			CreateInvItem (hero, ItSc_EleKinesis);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_EleThunderstorm_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_EleThunderstorm) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_Nugget) >= 5)
		{
			Npc_RemoveInvItem (hero, ItSc_EleThunderstorm);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItems (hero, ItMi_Nugget, 5);
			
			CreateInvItem (hero, ItRu_EleThunderstorm);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
		&& (Npc_HasItems(hero, ItMi_Nugget) >= 5)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
			Npc_RemoveInvItems (hero, ItMi_Nugget, 5);
			
			CreateInvItem (hero, ItSc_EleThunderstorm);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
///	PYR
///******************************************************************************************
instance PC_MakeRune_PYR (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_PYR_Condition;
	information							=	PC_MakeRune_PYR_Info;
	permanent							=	true;
	description							=	"Twórz runy pyromancji"; 
};
func int PC_MakeRune_PYR_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_TYPEOFMAGIC) == MAGIC_PYR)
	{
		return true;
	};
};
func void PC_MakeRune_PYR_Info()
{
	Info_ClearChoices	(PC_MakeRune_PYR);
	Info_AddChoice		(PC_MakeRune_PYR, DIALOG_BACK, PC_MakeRune_PYR_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrFireball])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrFireball, " (siarka, smo³a)"), PC_ItRu_PyrFireball_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrProtection])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrProtection, " (siarka, rtêæ)"), PC_ItRu_PyrProtection_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrFirestorm])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrFirestorm, " (siarka, ognisty kryszta³)"), PC_ItRu_PyrFirestorm_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrKinesis])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrKinesis, " (siarka, jêzyk ognistego jaszczura)"), PC_ItRu_PyrKinesis_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrExplosion])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrExplosion, " (siarka, 5 kawa³ków saletry)"), PC_ItRu_PyrExplosion_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrFirerain])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrFirerain, " (siarka, 5 bry³ek czerwonej rudy)"), PC_ItRu_PyrFirerain_Info);
	};
};
///******************************************************************************************
func void PC_MakeRune_PYR_BACK()
{
	Info_ClearChoices(PC_MakeRune_PYR);
};
func void PC_ItRu_PyrFireball_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_PyrFireball) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_PyrFireball);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItem (hero, ItMi_Pitch);
			
			CreateInvItem (hero, ItRu_PyrFireball);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItem (hero, ItMi_Pitch);
			
			CreateInvItem (hero, ItSc_PyrFireball);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_PyrProtection_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_PyrProtection) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_PyrProtection);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItem (hero, ItMi_Quicksilver);
			
			CreateInvItem (hero, ItRu_PyrProtection);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItem (hero, ItMi_Quicksilver);
			
			CreateInvItem (hero, ItSc_PyrProtection);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_PyrFirestorm_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_PyrFirestorm) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItMi_Firecrystal) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_PyrFirestorm);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItem (hero, ItMi_Firecrystal);
			
			CreateInvItem (hero, ItRu_PyrFirestorm);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItMi_Firecrystal) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItem (hero, ItMi_Firecrystal);
			
			CreateInvItem (hero, ItSc_PyrFirestorm);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_PyrKinesis_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_PyrKinesis) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItAt_WaranFireTongue) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_PyrKinesis);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItem (hero, ItAt_WaranFireTongue);
			
			CreateInvItem (hero, ItRu_PyrKinesis);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItAt_WaranFireTongue) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItem (hero, ItAt_WaranFireTongue);
			
			CreateInvItem (hero, ItSc_PyrKinesis);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_PyrExplosion_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_PyrExplosion) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItMi_Saltpeter) >= 5)
		{
			Npc_RemoveInvItem (hero, ItSc_PyrExplosion);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItems (hero, ItMi_Saltpeter, 5);
			
			CreateInvItem (hero, ItRu_PyrExplosion);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItMi_Saltpeter) >= 5)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItems (hero, ItMi_Saltpeter, 5);
			
			CreateInvItem (hero, ItSc_PyrExplosion);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_PyrFirerain_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_PyrFirerain) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItMi_RedNugget) >= 5)
		{
			Npc_RemoveInvItem (hero, ItSc_PyrFirerain);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItems (hero, ItMi_RedNugget, 5);
			
			CreateInvItem (hero, ItRu_PyrFirerain);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
		&& (Npc_HasItems(hero, ItMi_RedNugget) >= 5)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_Sulfur);
			Npc_RemoveInvItems (hero, ItMi_RedNugget, 5);
			
			CreateInvItem (hero, ItSc_PyrFirerain);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
///	NEC
///******************************************************************************************
instance PC_MakeRune_NEC (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_NEC_Condition;
	information							=	PC_MakeRune_NEC_Info;
	permanent							=	true;
	description							=	"Twórz runy nekromancji"; 
};
func int PC_MakeRune_NEC_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_TYPEOFMAGIC) == MAGIC_NEC)
	{
		return true;
	};
};
func void PC_MakeRune_NEC_Info()
{
	Info_ClearChoices	(PC_MakeRune_NEC);
	Info_AddChoice		(PC_MakeRune_NEC, DIALOG_BACK, PC_MakeRune_NEC_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_NecLifesteal])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecLifesteal, " (czaszka, ¿¹d³o)"), PC_ItRu_NecLifesteal_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NecProtection])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecProtection, " (czaszka, rtêæ)"), PC_ItRu_NecProtection_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NecSkeleton])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecSkeleton, " (czaszka, 10 koœci szkieletu)"), PC_ItRu_NecSkeleton_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NecSwarm])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecSwarm, " (czaszka, 10 sztuk zgni³ego miêsa)"), PC_ItRu_NecSwarm_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NecDemon])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecDemon, " (czaszka, serce demona)"), PC_ItRu_NecDemon_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NecDeath])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecDeath, " (czaszka, czarna per³a)"), PC_ItRu_NecDeath_Info);
	};
};
///******************************************************************************************
func void PC_MakeRune_NEC_BACK()
{
	Info_ClearChoices(PC_MakeRune_NEC);
};
func void PC_ItRu_NecLifesteal_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_NecLifesteal) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItAt_Sting) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_NecLifesteal);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItem (hero, ItAt_Sting);
			
			CreateInvItem (hero, ItRu_NecLifesteal);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItAt_Sting) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItem (hero, ItAt_Sting);
			
			CreateInvItem (hero, ItSc_NecLifesteal);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_NecProtection_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_NecProtection) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_NecProtection);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItem (hero, ItMi_Quicksilver);
			
			CreateInvItem (hero, ItRu_NecProtection);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItem (hero, ItMi_Quicksilver);
			
			CreateInvItem (hero, ItSc_NecProtection);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_NecSkeleton_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_NecSkeleton) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 10)
		{
			Npc_RemoveInvItem (hero, ItSc_NecSkeleton);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItems (hero, ItAt_SkeletonBone, 10);
			
			CreateInvItem (hero, ItRu_NecSkeleton);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 10)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItems (hero, ItAt_SkeletonBone, 10);
			
			CreateInvItem (hero, ItSc_NecSkeleton);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_NecSwarm_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_NecSwarm) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItFo_RottenMeat) >= 10)
		{
			Npc_RemoveInvItem (hero, ItSc_NecSwarm);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItems (hero, ItFo_RottenMeat, 10);
			
			CreateInvItem (hero, ItRu_NecSwarm);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItFo_RottenMeat) >= 10)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItems (hero, ItFo_RottenMeat, 10);
			
			CreateInvItem (hero, ItSc_NecSwarm);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_NecDemon_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_NecDemon) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItAt_DemonHeart) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_NecDemon);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItem (hero, ItAt_DemonHeart);
			
			CreateInvItem (hero, ItRu_NecDemon);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItAt_DemonHeart) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItem (hero, ItAt_DemonHeart);
			
			CreateInvItem (hero, ItSc_NecDemon);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_NecDeath_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_NecDeath) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_NecDeath);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItem (hero, ItMi_DarkPearl);
			
			CreateInvItem (hero, ItRu_NecDeath);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
		&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
			Npc_RemoveInvItem (hero, ItMi_DarkPearl);
			
			CreateInvItem (hero, ItSc_NecDeath);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
///	PAL
///******************************************************************************************
instance PC_MakeRune_PAL (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_PAL_Condition;
	information							=	PC_MakeRune_PAL_Info;
	permanent							=	true;
	description							=	"Twórz runy paladyna"; 
};
func int PC_MakeRune_PAL_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (hero.guild == GIL_PAL)
	{
		return true;
	};
};
func void PC_MakeRune_PAL_Info()
{
	Info_ClearChoices	(PC_MakeRune_PAL);
	Info_AddChoice		(PC_MakeRune_PAL, DIALOG_BACK, PC_MakeRune_PAL_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_PalBless])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalBless, " (woda œwiêcona)"), PC_ItRu_PalBless_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PalHeal])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalHeal, " (woda œwiêcona, ziele lecznicze)"), PC_ItRu_PalHeal_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PalHolyBolt])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalHolyBolt, " (woda œwiêcona, bia³a per³a)"), PC_ItRu_PalHolyBolt_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PalJustice])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalJustice, " (woda œwiêcona, szczaw królewski)"), PC_ItRu_PalJustice_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PalDestroyEvil])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalDestroyEvil, " (woda œwiêcona, diament)"), PC_ItRu_PalDestroyEvil_Info);
	};
};
///******************************************************************************************
func void PC_MakeRune_PAL_BACK()
{
	Info_ClearChoices(PC_MakeRune_PAL);
};
func void PC_ItRu_PalBless_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_PalBless) >= 1)
		&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_PalBless);
			Npc_RemoveInvItem (hero, ItMi_HolyWater);
			
			CreateInvItem (hero, ItRu_PalBless);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_HolyWater);
			
			CreateInvItem (hero, ItSc_PalBless);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_PalHeal_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_PalHeal) >= 1)
		&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
		&& (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_PalHeal);
			Npc_RemoveInvItem (hero, ItMi_HolyWater);
			Npc_RemoveInvItem (hero, ItPl_Health_Herb_02);
			
			CreateInvItem (hero, ItRu_PalHeal);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
		&& (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_HolyWater);
			Npc_RemoveInvItem (hero, ItPl_Health_Herb_02);
			
			CreateInvItem (hero, ItSc_PalHeal);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_PalHolyBolt_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_PalHolyBolt) >= 1)
		&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
		&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_PalHolyBolt);
			Npc_RemoveInvItem (hero, ItMi_HolyWater);
			Npc_RemoveInvItem (hero, ItMi_WhitePearl);
			
			CreateInvItem (hero, ItRu_PalHolyBolt);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
		&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_HolyWater);
			Npc_RemoveInvItem (hero, ItMi_WhitePearl);
			
			CreateInvItem (hero, ItSc_PalHolyBolt);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_PalJustice_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_PalJustice) >= 1)
		&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
		&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_PalJustice);
			Npc_RemoveInvItem (hero, ItMi_HolyWater);
			Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
			
			CreateInvItem (hero, ItRu_PalJustice);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
		&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_HolyWater);
			Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
			
			CreateInvItem (hero, ItSc_PalJustice);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_PalDestroyEvil_Info()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		if (Npc_HasItems(hero, ItSc_PalDestroyEvil) >= 1)
		&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
		&& (Npc_HasItems(hero, ItMi_Diamond) >= 1)
		{
			Npc_RemoveInvItem (hero, ItSc_PalDestroyEvil);
			Npc_RemoveInvItem (hero, ItMi_HolyWater);
			Npc_RemoveInvItem (hero, ItMi_Diamond);
			
			CreateInvItem (hero, ItRu_PalDestroyEvil);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
			CreateInvItem (hero, ItMi_RuneBlank);
		};
	}
	else
	{
		if (Npc_HasItems(hero, ItMi_Scroll) >= 1)
		&& (Npc_HasItems(hero, ItMi_Ink) >= 1)
		&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
		&& (Npc_HasItems(hero, ItMi_Diamond) >= 1)
		{
			Npc_RemoveInvItem (hero, ItMi_Scroll);
			Npc_RemoveInvItem (hero, ItMi_Ink);
			Npc_RemoveInvItem (hero, ItMi_HolyWater);
			Npc_RemoveInvItem (hero, ItMi_Diamond);
			
			CreateInvItem (hero, ItSc_PalDestroyEvil);
			Print(PRINT_ScrollSuccess);
		}
		else
		{
			Print(PRINT_ProdItemsMissing);
		};
	};
	B_ENDPRODUCTIONDIALOG();
};
