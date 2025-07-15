///******************************************************************************************
/// MOBSI_MAKERUNE / MOBSI_MAKESCROLL
///******************************************************************************************
func void MAKERUNE_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_MAKERUNE;
		Ai_ProcessInfos(self);
	};
};

func void MOBSI_MAKESCROLL_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_MAKESCROLL;
		Ai_ProcessInfos(self);
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
	information							=	B_ENDPRODUCTIONDIALOG;
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

///******************************************************************************************\
/// Neutral
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
	
	if (PLAYER_TALENT_ENCHANTING[SPL_Light])
	{
		Info_AddChoice (PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_Light, " (z³ota moneta)"), PC_ItRu_Light_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Heal])
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
/// SPL_Light
func void PC_ItRu_Light_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Gold) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Gold);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Light);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Light, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_Heal
func void PC_ItRu_Heal_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_Health_Herb_02);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Heal);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_LightHeal, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_SlowTime
func void PC_ItRu_SlowTime_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Emerald) >= 1)
	&& (Npc_HasItems(hero, ItMi_TimeDust) >= 10)
	{
		Npc_RemoveInvItem (hero, ItMi_Emerald);
		Npc_RemoveInvItems (hero, ItMi_TimeDust, 10);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_SlowTime);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_SlowTime, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_NightToDay
func void PC_ItRu_NightToDay_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_SheepFur) >= 1)
	&& (Npc_HasItems(hero, ItMi_TimeDust) >= 5)
	{
		Npc_RemoveInvItem (hero, ItAt_SheepFur);
		Npc_RemoveInvItems (hero, ItMi_TimeDust, 5);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_NightToDay);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_NightToDay, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_Telekinesis
func void PC_ItRu_Telekinesis_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_FortuneCoin) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_FortuneCoin);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Telekinesis);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Telekinesis, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_Sleep
func void PC_ItRu_Sleep_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItPl_Swampherb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_Swampherb);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Sleep);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Sleep, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_Charm
func void PC_ItRu_Charm_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItPl_Swampherb) >= 1)
	&& (Npc_HasItems(hero, ItAt_BugMandibles) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_Swampherb);
		Npc_RemoveInvItem (hero, ItAt_BugMandibles);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Charm);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Charm, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_Fear
func void PC_ItRu_Fear_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_Wing) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_Wing);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Fear);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Fear, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_Rage
func void PC_ItRu_Rage_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_DemonBlood) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_DemonBlood);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Rage);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Rage, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_Shrink
func void PC_ItRu_Shrink_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_TrollTooth) >= 1)
	&& (Npc_HasItems(hero, ItAt_CrawlerEgg) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_TrollTooth);
		Npc_RemoveInvItem (hero, ItAt_CrawlerEgg);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Shrink);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Shrink, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};

///******************************************************************************************
/// Battle
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
	/*
	if (PLAYER_TALENT_ENCHANTING[SPL_DragonBall])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_DragonBall, " (serce smoka)"), PC_ItRu_DragonBall_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_BlackDragonBall])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_BlackDragonBall, " (kamieñ duszy smoka-o¿ywieñca)"), PC_ItRu_BlackDragonBall_Info);
	};
	*/
	if (PLAYER_TALENT_ENCHANTING[SPL_BreathOfDeath])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_BreathOfDeath, " (wêgiel, czarna per³a)"), PC_ItRu_BreathOfDeath_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MassDeath])
	{
		Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_MassDeath, " (krew demona, czarna per³a)"), PC_ItRu_MassDeath_Info);
	};
	//if (PLAYER_TALENT_ENCHANTING[SPL_ArmyOfDarkness])
	//{
	//	Info_AddChoice (PC_MakeRune_Battle, ConcatStrings(NAME_SPL_ArmyOfDarkness, " (koœæ szkieletu, czarna per³a)"), PC_ItRu_ArmyOfDarkness_Info);
	//};
};
///******************************************************************************************
func void PC_MakeRune_Battle_BACK()
{
	Info_ClearChoices(PC_MakeRune_Battle);
};
/// SPL_FireBolt
func void PC_ItRu_FireBolt_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_FireBolt);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_FireBolt, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_IceBolt
func void PC_ItRu_IceBolt_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_IceBolt);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_IceBolt, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_Zap
func void PC_ItRu_Zap_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_SilverNugget) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_SilverNugget);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Zap);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Zap, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_SkullBolt
func void PC_ItRu_SkullBolt_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_SkullBolt);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Zap, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_WindFist
func void PC_ItRu_WindFist_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Coal) >= 1)
	&& (Npc_HasItems(hero, ItAt_Claw) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Coal);
		Npc_RemoveInvItem (hero, ItAt_Claw);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_WindFist);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_WindFist, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_LightningFlash
func void PC_ItRu_LightningFlash_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_SilverNugget) >= 1)
	&& (Npc_HasItems(hero, ItAt_LurkerClaw) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_SilverNugget);
		Npc_RemoveInvItem (hero, ItAt_LurkerClaw);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_LightningFlash);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_LightningFlash, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_ChargeFireball
func void PC_ItRu_ChargeFireball_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Firecrystal) >= 1)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Firecrystal);
		Npc_RemoveInvItem (hero, ItMi_Pitch);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_ChargeFireball);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_ChargeFireball, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_Whirlwind
func void PC_ItRu_Whirlwind_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_Wing) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_Wing);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Whirlwind);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Whirlwind, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_ChargeZap
func void PC_ItRu_ChargeZap_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_SilverNugget) >= 1)
	&& (Npc_HasItems(hero, ItAt_Claw) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_SilverNugget);
		Npc_RemoveInvItem (hero, ItAt_Claw);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_ChargeZap);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_ChargeZap, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_Geyser
func void PC_ItRu_Geyser_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Aquamarine);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Geyser);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Geyser, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_WaterFist
func void PC_ItRu_WaterFist_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Aquamarine);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_WaterFist);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_WaterFist, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_IceLance
func void PC_ItRu_IceLance_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_WhitePearl);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_IceLance);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_IceLance, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_IceWave
func void PC_ItRu_IceWave_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
	&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_WhitePearl);
		Npc_RemoveInvItem (hero, ItMi_Aquamarine);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_IceWave);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_IceWave, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_Inflate
func void PC_ItRu_Inflate_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_MoleratLubric) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_MoleratLubric);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_Inflate);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_Inflate, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/*
/// SPL_DragonBall
func void PC_ItRu_DragonBall_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_DragonHeart) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_DragonHeart);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_DragonBall);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_DragonBall, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_BlackDragonBall
func void PC_ItRu_BlackDragonBall_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_UndeadDragonSoulStone) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_UndeadDragonSoulStone);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_BlackDragonBall);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_BlackDragonBall, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
*/
/// SPL_BreathOfDeath
func void PC_ItRu_BreathOfDeath_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Coal) >= 1)
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Coal);
		Npc_RemoveInvItem (hero, ItMi_DarkPearl);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_BreathOfDeath);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_BreathOfDeath, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_MassDeath
func void PC_ItRu_MassDeath_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_SkeletonBone) >= 1)
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_SkeletonBone);
		Npc_RemoveInvItem (hero, ItMi_DarkPearl);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_MassDeath);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_MassDeath, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/*
/// SPL_ArmyOfDarkness
func void PC_ItRu_ArmyOfDarkness_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_SkeletonBone) >= 1)
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_SkeletonBone);
		Npc_RemoveInvItem (hero, ItMi_DarkPearl);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_ArmyOfDarkness);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_ArmyOfDarkness, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
*/

///******************************************************************************************
/// Special
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
		CreateInvItem (hero, ItTe_SecretChamber);
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
/// MYS
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
	&& (hero.aivar[AIV_MagicUser] == MAGIC_MYS)
	{
		return true;
	};
};
func void PC_MakeRune_MYS_Info()
{
	Info_ClearChoices	(PC_MakeRune_MYS);
	Info_AddChoice		(PC_MakeRune_MYS, DIALOG_BACK, PC_MakeRune_MYS_BACK);
	/*
	if (PLAYER_TALENT_ENCHANTING[SPL_MysBall])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysBall, " (¿ywica)"), PC_ItRu_MysBall_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MysAura])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysAura, " (¿ywica, rtêæ)"), PC_ItRu_MysAura_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MysRoot])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysRoot, " (¿ywica, rdest polny)"), PC_ItRu_MysRoot_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MysTame])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysTame, " (¿ywica, skóra tygrysa)"), PC_ItRu_MysTame_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MysEcho])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysEcho, " (¿ywica, szmaragd)"), PC_ItRu_MysEcho_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MysSlow])
	{
		Info_AddChoice (PC_MakeRune_MYS, ConcatStrings(NAME_SPL_MysSlow, " (¿ywica, diament)"), PC_ItRu_MysSlow_Info);
	};
	*/
};
///******************************************************************************************
func void PC_MakeRune_MYS_BACK()
{
	Info_ClearChoices(PC_MakeRune_MYS);
};
/*
/// SPL_MysBall
func void PC_ItRu_MysBall_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Resin) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Resin);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_MysBall);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_MysBall, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_MysAura
func void PC_ItRu_MysAura_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Resin) >= 1)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Resin);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_MysAura);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_MysAura, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_MysRoot
func void PC_ItRu_MysRoot_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Resin) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Resin);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_MysRoot);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_MysRoot, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_MysTame
func void PC_ItRu_MysTame_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Resin) >= 1)
	&& (Npc_HasItems(hero, ItAt_TigerFur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Resin);
		Npc_RemoveInvItem (hero, ItAt_TigerFur);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_MysTame);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_MysTame, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_MysEcho
func void PC_ItRu_MysEcho_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Resin) >= 1)
	&& (Npc_HasItems(hero, ItMi_Emerald) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Resin);
		Npc_RemoveInvItem (hero, ItMi_Emerald);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_MysEcho);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_MysEcho, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_MysSlow
func void PC_ItRu_MysSlow_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Resin) >= 1)
	&& (Npc_HasItems(hero, ItMi_Diamond) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Resin);
		Npc_RemoveInvItem (hero, ItMi_Diamond);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_MysSlow);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_MysSlow, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
*/

///******************************************************************************************
/// GEO
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
	&& (hero.aivar[AIV_MagicUser] == MAGIC_GEO)
	{
		return true;
	};
};
func void PC_MakeRune_GEO_Info()
{
	Info_ClearChoices	(PC_MakeRune_GEO);
	Info_AddChoice		(PC_MakeRune_GEO, DIALOG_BACK, PC_MakeRune_GEO_BACK);
	/*
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoStone])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoStone, " (kwarc)"), PC_ItRu_GeoStone_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoAura])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoAura, " (kwarc, rtêæ)"), PC_ItRu_GeoAura_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoElevate])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoElevate, " (kwarc, sztabka ¿elaza)"), PC_ItRu_GeoElevate_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoGolem])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoGolem, " (kwarc, serce golema)"), PC_ItRu_GeoGolem_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoQuake])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoQuake, " (kwarc, 5 kawa³ków saletry)"), PC_ItRu_GeoQuake_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_GeoCollapse])
	{
		Info_AddChoice (PC_MakeRune_GEO, ConcatStrings(NAME_SPL_GeoCollapse, " (kwarc, skóra trolla)"), PC_ItRu_GeoCollapse_Info);
	};
	*/
};
///******************************************************************************************
func void PC_MakeRune_GEO_BACK()
{
	Info_ClearChoices(PC_MakeRune_GEO);
};
/*
/// SPL_GeoStone
func void PC_ItRu_GeoStone_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Quartz) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quartz);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_GeoStone);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_GeoStone, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_GeoAura
func void PC_ItRu_GeoAura_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Quartz) >= 1)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quartz);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_GeoAura);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_GeoAura, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_GeoElevate
func void PC_ItRu_GeoElevate_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Quartz) >= 1)
	&& (Npc_HasItems(hero, ItMi_IronBar) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quartz);
		Npc_RemoveInvItem (hero, ItMi_IronBar);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_GeoElevate);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_GeoElevate, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_GeoGolem
func void PC_ItRu_GeoGolem_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Quartz) >= 1)
	&& (Npc_HasItems(hero, ItAt_GolemHeart) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quartz);
		Npc_RemoveInvItem (hero, ItAt_GolemHeart);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_GeoGolem);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_GeoGolem, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_GeoQuake
func void PC_ItRu_GeoQuake_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Quartz) >= 1)
	&& (Npc_HasItems(hero, ItMi_Saltpeter) >= 5)
	{
		Npc_RemoveInvItem (hero, ItMi_Quartz);
		Npc_RemoveInvItems (hero, ItMi_Saltpeter, 5);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_GeoQuake);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_GeoQuake, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_GeoCollapse
func void PC_ItRu_GeoCollapse_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Quartz) >= 1)
	&& (Npc_HasItems(hero, ItAt_TrollFur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quartz);
		Npc_RemoveInvItem (hero, ItAt_TrollFur);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_GeoCollapse);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_GeoCollapse, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
*/

///******************************************************************************************
/// ELE
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
	&& (hero.aivar[AIV_MagicUser] == MAGIC_ELE)
	{
		return true;
	};
};
func void PC_MakeRune_ELE_Info()
{
	Info_ClearChoices	(PC_MakeRune_ELE);
	Info_AddChoice		(PC_MakeRune_ELE, DIALOG_BACK, PC_MakeRune_ELE_BACK);
	/*
	if (PLAYER_TALENT_ENCHANTING[SPL_EleLance])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleLance, " (kryszta³)"), PC_ItRu_EleLance_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_EleAura])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleAura, " (kryszta³, rtêæ)"), PC_ItRu_EleAura_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_EleFreeze])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleFreeze, " (kryszta³, bia³a per³a)"), PC_ItRu_EleFreeze_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_EleHurricane])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleHurricane, " (kryszta³, 10 kawa³ków wêgla)"), PC_ItRu_EleHurricane_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_EleLightning])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleLightning, " (kryszta³, róg smoczego zêbacza)"), PC_ItRu_EleLightning_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_EleThunderstorm])
	{
		Info_AddChoice (PC_MakeRune_ELE, ConcatStrings(NAME_SPL_EleThunderstorm, " (kryszta³, 5 bry³ek niebieskiej rudy)"), PC_ItRu_EleThunderstorm_Info);
	};
	*/
};
///******************************************************************************************
func void PC_MakeRune_ELE_BACK()
{
	Info_ClearChoices(PC_MakeRune_ELE);
};
/*
/// SPL_EleLance
func void PC_ItRu_EleLance_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_EleLance);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_EleLance, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_EleAura
func void PC_ItRu_EleAura_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_EleAura);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_EleAura, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_EleFreeze
func void PC_ItRu_EleFreeze_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		Npc_RemoveInvItem (hero, ItMi_WhitePearl);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_EleFreeze);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_EleFreeze, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_EleHurricane
func void PC_ItRu_EleHurricane_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	&& (Npc_HasItems(hero, ItMi_Coal) >= 10)
	{
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		Npc_RemoveInvItems (hero, ItMi_Coal, 10);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_EleHurricane);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_EleHurricane, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_EleLightning
func void PC_ItRu_EleLightning_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	&& (Npc_HasItems(hero, ItAt_DrgSnapperHorn) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		Npc_RemoveInvItem (hero, ItAt_DrgSnapperHorn);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_EleLightning);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_EleLightning, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_EleThunderstorm
func void PC_ItRu_EleThunderstorm_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 5)
	{
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		Npc_RemoveInvItems (hero, ItMi_Nugget, 5);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_EleThunderstorm);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_EleThunderstorm, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
*/

///******************************************************************************************
/// PYR
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
	&& (hero.aivar[AIV_MagicUser] == MAGIC_PYR)
	{
		return true;
	};
};
func void PC_MakeRune_PYR_Info()
{
	Info_ClearChoices	(PC_MakeRune_PYR);
	Info_AddChoice		(PC_MakeRune_PYR, DIALOG_BACK, PC_MakeRune_PYR_BACK);
	/*
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrFireball])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrFireball, " (siarka)"), PC_ItRu_PyrFireball_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrAura])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrAura, " (siarka, rtêæ)"), PC_ItRu_PyrAura_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrBurning])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrBurning, " (siarka, ognisty kryszta³)"), PC_ItRu_PyrBurning_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrFirebomb])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrFirebomb, " (siarka, jêzyk ognistego jaszczura)"), PC_ItRu_PyrFirebomb_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrExplosion])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrExplosion, " (siarka, 5 kawa³ków saletry)"), PC_ItRu_PyrExplosion_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PyrFirerain])
	{
		Info_AddChoice (PC_MakeRune_PYR, ConcatStrings(NAME_SPL_PyrFirerain, " (siarka, 5 bry³ek czerwonej rudy)"), PC_ItRu_PyrFirerain_Info);
	};
	*/
};
///******************************************************************************************
func void PC_MakeRune_PYR_BACK()
{
	Info_ClearChoices(PC_MakeRune_PYR);
};
/*
/// SPL_PyrFireball
func void PC_ItRu_PyrFireball_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_PyrFireball);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_PyrFireball, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_PyrAura
func void PC_ItRu_PyrAura_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_PyrAura);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_PyrAura, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_PyrBurning
func void PC_ItRu_PyrBurning_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems(hero, ItMi_Firecrystal) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		Npc_RemoveInvItem (hero, ItMi_Firecrystal);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_PyrBurning);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_PyrBurning, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_PyrFirebomb
func void PC_ItRu_PyrFirebomb_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems(hero, ItAt_FirewaranTongue) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		Npc_RemoveInvItem (hero, ItAt_FirewaranTongue);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_PyrFirebomb);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_PyrFirebomb, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_PyrExplosion
func void PC_ItRu_PyrExplosion_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems(hero, ItMi_Saltpeter) >= 5)
	{
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		Npc_RemoveInvItems (hero, ItMi_Saltpeter, 5);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_PyrExplosion);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_PyrExplosion, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_PyrFirerain
func void PC_ItRu_PyrFirerain_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems(hero, ItMi_RedNugget) >= 5)
	{
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		Npc_RemoveInvItems (hero, ItMi_RedNugget, 5);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_PyrFirerain);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_PyrFirerain, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
*/

///******************************************************************************************
/// NEC
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
	&& (hero.aivar[AIV_MagicUser] == MAGIC_NEC)
	{
		return true;
	};
};
func void PC_MakeRune_NEC_Info()
{
	Info_ClearChoices	(PC_MakeRune_NEC);
	Info_AddChoice		(PC_MakeRune_NEC, DIALOG_BACK, PC_MakeRune_NEC_BACK);
	/*
	if (PLAYER_TALENT_ENCHANTING[SPL_NecLifesteal])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecLifesteal, " (czaszka)"), PC_ItRu_NecLifesteal_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NecAura])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecAura, " (czaszka, rtêæ)"), PC_ItRu_NecAura_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NecCurse])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecCurse, " (czaszka, 10 koœci szkieletu)"), PC_ItRu_NecCurse_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NecPlague])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecPlague, " (czaszka, 10 sztuk zgni³ego miêsa)"), PC_ItRu_NecPlague_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NecDemon])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecDemon, " (czaszka, serce demona)"), PC_ItRu_NecDemon_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NecDeath])
	{
		Info_AddChoice (PC_MakeRune_NEC, ConcatStrings(NAME_SPL_NecDeath, " (czaszka, czarna per³a)"), PC_ItRu_NecDeath_Info);
	};
	*/
};
///******************************************************************************************
func void PC_MakeRune_NEC_BACK()
{
	Info_ClearChoices(PC_MakeRune_NEC);
};
/*
/// SPL_NecLifesteal
func void PC_ItRu_NecLifesteal_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_NecLifesteal);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_NecLifesteal, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_NecAura
func void PC_ItRu_NecAura_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_NecAura);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_NecAura, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_NecCurse
func void PC_ItRu_NecCurse_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
	&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 10)
	{
		Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
		Npc_RemoveInvItems (hero, ItAt_SkeletonBone, 10);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_NecCurse);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_NecCurse, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_NecPlague
func void PC_ItRu_NecPlague_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
	&& (Npc_HasItems(hero, ItFo_RottenMeat) >= 10)
	{
		Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
		Npc_RemoveInvItems (hero, ItFo_RottenMeat, 10);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_NecPlague);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_NecPlague, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_NecDemon
func void PC_ItRu_NecDemon_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
	&& (Npc_HasItems(hero, ItAt_DemonHeart) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
		Npc_RemoveInvItem (hero, ItAt_DemonHeart);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_NecDemon);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_NecDemon, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_NecDeath
func void PC_ItRu_NecDeath_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItAt_SkeletonSkull) >= 1)
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_SkeletonSkull);
		Npc_RemoveInvItem (hero, ItMi_DarkPearl);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_NecDeath);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_NecDeath, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
*/

///******************************************************************************************
/// PAL
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
	if (PLAYER_TALENT_ENCHANTING[SPL_PalFaith])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalFaith, " (woda œwiêcona, roœlina lecznicza)"), PC_ItRu_PalFaith_Info);
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
/// SPL_PalBless
func void PC_ItRu_PalBless_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_HolyWater);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_PalBless);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_PalBless, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_PalFaith
func void PC_ItRu_PalFaith_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_HolyWater);
		Npc_RemoveInvItem (hero, ItPl_Health_Herb_01);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_PalFaith);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_PalFaith, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_PalHolyBolt
func void PC_ItRu_PalHolyBolt_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
	&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_HolyWater);
		Npc_RemoveInvItem (hero, ItMi_WhitePearl);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_PalHolyBolt);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_PalHolyBolt, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_PalJustice
func void PC_ItRu_PalJustice_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_HolyWater);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_PalJustice);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_PalJustice, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
/// SPL_PalDestroyEvil
func void PC_ItRu_PalDestroyEvil_Info()
{
	if (PLAYER_MOBSI_PRODUCTION != MOBSI_MAKERUNE && Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1)
	{
		Print(PRINT_ProdItemsMissing);
	}
	else if (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
	&& (Npc_HasItems(hero, ItMi_Diamond) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_HolyWater);
		Npc_RemoveInvItem (hero, ItMi_Diamond);
		
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
		{
			CreateInvItem (hero, ItRu_PalDestroyEvil);
			Print(PRINT_RuneSuccess);
		}
		else
		{
			Npc_RemoveInvItem (hero, ItMi_Scrolls); Npc_RemoveInvItem (hero, ItMi_Ink);
			CreateInvItems (hero, ItSc_PalDestroyEvil, 4);
			Print(PRINT_ScrollsSuccess);
		};
	}
	else
	{
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE) { CreateInvItem (hero, ItMi_RuneBlank); };
		Print(PRINT_ProdItemsMissing);
	};
	
	B_ENDPRODUCTIONDIALOG();
};
