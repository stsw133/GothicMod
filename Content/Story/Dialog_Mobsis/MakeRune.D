///******************************************************************************************
///	MOBSI_MAKERUNE
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

///******************************************************************************************
instance PC_MakeRune_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_MakeRune_End_Condition;
	information							=	PC_MakeRune_End_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
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
instance PC_MakeRune_Neutral (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_Neutral_Condition;
	information							=	PC_MakeRune_Neutral_Info;
	permanent							=	true;
	description							=	"Twórz runy neutralne"; 
};

func int PC_MakeRune_Neutral_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{	
		return true;
	};
};

func void PC_MakeRune_Neutral_Info()
{
	Info_ClearChoices	(PC_MakeRune_Neutral);
	Info_AddChoice		(PC_MakeRune_Neutral, DIALOG_BACK, PC_MakeRune_Neutral_BACK);
	Info_AddChoice		(PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_Light, " (z³ota moneta)"), PC_ItRu_Light_Info);
	Info_AddChoice		(PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_LightHeal, " (roœlina lecznicza)"), PC_ItRu_LightHeal_Info);
	Info_AddChoice		(PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_MediumHeal, " (ziele lecznicze)"), PC_ItRu_MediumHeal_Info);
	Info_AddChoice		(PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_FullHeal, " (korzeñ leczniczy)"), PC_ItRu_FullHeal_Info);
	Info_AddChoice		(PC_MakeRune_Neutral, ConcatStrings(NAME_SPL_Shrink, " (kie³ trolla)"), PC_ItRu_Shrink_Info);
};

func void PC_MakeRune_Neutral_BACK()
{
	Info_ClearChoices(PC_MakeRune_Neutral);
};
func void PC_ItRu_Light_Info()
{
	if (Npc_HasItems(hero, ItSc_Light) >= 1)
	&& (Npc_HasItems(hero, ItMi_Gold) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Gold);
		Npc_RemoveInvItem (hero, ItSc_Light);
		CreateInvItem (hero, ItRu_Light);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_LightHeal_Info()
{
	if (Npc_HasItems(hero, ItSc_LightHeal) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_Health_Herb_01);
		Npc_RemoveInvItem (hero, ItSc_LightHeal);
		CreateInvItem (hero, ItRu_LightHeal);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_MediumHeal_Info()
{
	if (Npc_HasItems(hero, ItSc_MediumHeal) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_Health_Herb_02);
		Npc_RemoveInvItem (hero, ItSc_MediumHeal);
		CreateInvItem (hero, ItRu_MediumHeal);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_FullHeal_Info()
{
	if (Npc_HasItems(hero, ItSc_FullHeal) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_Health_Herb_03);
		Npc_RemoveInvItem (hero, ItSc_FullHeal);
		CreateInvItem (hero, ItRu_FullHeal);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Shrink_Info()
{
	if (Npc_HasItems(hero, ItSc_Shrink) >= 1)
	&& (Npc_HasItems(hero, ItAt_TrollTooth) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_TrollTooth);
		Npc_RemoveInvItem (hero, ItSc_Shrink);
		CreateInvItem (hero, ItRu_Shrink);
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
instance PC_MakeRune_MindControl (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_MindControl_Condition;
	information							=	PC_MakeRune_MindControl_Info;
	permanent							=	true;
	description							=	"Twórz runy kontroli umys³u"; 
};

func int PC_MakeRune_MindControl_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) > 0)
	{
		return true;
	};
};

func void PC_MakeRune_MindControl_Info()
{
	Info_ClearChoices	(PC_MakeRune_MindControl);
	Info_AddChoice		(PC_MakeRune_MindControl, DIALOG_BACK, PC_MakeRune_MindControl_BACK);
	Info_AddChoice		(PC_MakeRune_MindControl, ConcatStrings(NAME_SPL_Sleep, " (bagienne ziele)"), PC_ItRu_Sleep_Info);
	Info_AddChoice		(PC_MakeRune_MindControl, ConcatStrings(NAME_SPL_Fear, " (czarna per³a)"), PC_ItRu_Fear_Info);
};

func void PC_MakeRune_MindControl_BACK()
{
	Info_ClearChoices(PC_MakeRune_MindControl);
};
func void PC_ItRu_Sleep_Info()
{
	if (Npc_HasItems(hero, ItSc_Sleep) >= 1)
	&& (Npc_HasItems(hero, ItPl_Swampherb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_Swampherb);
		Npc_RemoveInvItem (hero, ItSc_Sleep);
		CreateInvItem (hero, ItRu_Sleep);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Fear_Info()
{
	if (Npc_HasItems(hero, ItSc_Fear) >= 1)
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_DarkPearl);
		Npc_RemoveInvItem (hero, ItSc_Fear);
		CreateInvItem (hero, ItRu_Fear);
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
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) > 0 || MakeRune_FireBolt)
	{
		return true;
	};
};

func void PC_MakeRune_Battle_Info()
{
	Info_ClearChoices	(PC_MakeRune_Battle);
	Info_AddChoice		(PC_MakeRune_Battle, DIALOG_BACK, PC_MakeRune_Battle_BACK);
	
	if (MakeRune_FireBolt)
	{
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_Firebolt, " (siarka)"), PC_ItRu_Firebolt_Info);
	};
	if (Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) > 0)
	{
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_Zap, " (ska³a krystaliczna)"), PC_ItRu_Zap_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_InstantFireball, " (smo³a)"), PC_ItRu_InstFireball_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_Icebolt, " (kwarc)"), PC_ItRu_Icebolt_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_WindFist, " (wêgiel)"), PC_ItRu_Windfist_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_IceCube, " (kwarc, akwamaryn)"), PC_ItRu_IceCube_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_ChargeZap, " (ska³a krystaliczna, siarka)"), PC_ItRu_ThunderBall_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_Firestorm, " (smo³a, siarka)"), PC_ItRu_Firestorm_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_DestroyUndead, " (woda œwiêcona)"), PC_ItRu_HarmUndead_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_ChargeFireball, " (jêzyk ognistego jaszczura)"), PC_ItRu_ChargeFireball_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_LightningFlash, " (ska³a krystaliczna, kwarc)"), PC_ItRu_LightningFlash_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_IceWave, " (diament)"), PC_ItRu_IceWave_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_Pyrokinesis, " (siarka, jêzyk ognistego jaszczura)"), PC_ItRu_Pyrokinesis_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_Firerain, " (smo³a, jêzyk ognistego jaszczura)"), PC_ItRu_Firerain_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_BreathOfDeath, " (wêgiel, czarna per³a)"), PC_ItRu_BreathOfDeath_Info);
		Info_AddChoice	(PC_MakeRune_Battle, ConcatStrings(NAME_SPL_MassDeath, " (czaszka, czarna per³a)"), PC_ItRu_MassDeath_Info);
	};
};

func void PC_MakeRune_Battle_BACK()
{
	Info_ClearChoices(PC_MakeRune_Battle);
};
func void PC_ItRu_Firebolt_Info()
{
	if (Npc_HasItems(hero, ItSc_Firebolt) >= 1)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		Npc_RemoveInvItem (hero, ItSc_Firebolt);
		CreateInvItem (hero, ItRu_Firebolt);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Zap_Info()
{
	if (Npc_HasItems(hero, ItSc_Zap) >= 1)
	&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		Npc_RemoveInvItem (hero, ItSc_Zap);
		CreateInvItem (hero,ItRu_Zap);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};	
	B_ENDPRODUCTIONDIALOG();		
};
func void PC_ItRu_InstFireball_Info()
{
	if (Npc_HasItems(hero, ItSc_InstantFireball) >= 1)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Pitch);
		Npc_RemoveInvItem (hero, ItSc_InstantFireball);
		CreateInvItem (hero, ItRu_InstantFireball);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Icebolt_Info()
{
	if (Npc_HasItems(hero, ItSc_Icebolt) >= 1)
	&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quartz);
		Npc_RemoveInvItem (hero, ItSc_Icebolt);
		CreateInvItem (hero, ItRu_Icebolt);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Windfist_Info()
{
	if (Npc_HasItems(hero, ItSc_Windfist) >= 1)
	&& (Npc_HasItems(hero, ItMi_Coal) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Coal);
		Npc_RemoveInvItem (hero, ItSc_Windfist);
		CreateInvItem (hero, ItRu_Windfist);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_IceCube_Info()
{
	if (Npc_HasItems(hero, ItSc_IceCube) >= 1)
	&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
	&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quartz);
		Npc_RemoveInvItem (hero, ItMi_Aquamarine);
		Npc_RemoveInvItem (hero, ItSc_IceCube);
		CreateInvItem (hero, ItRu_IceCube);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Firestorm_Info()
{
	if (Npc_HasItems(hero, ItSc_Firestorm) >= 1)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Pitch);
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		Npc_RemoveInvItem (hero, ItSc_Firestorm);
		CreateInvItem (hero, ItRu_Firestorm);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_ThunderBall_Info()
{
	if (Npc_HasItems(hero, ItSc_ThunderBall) >= 1)
	&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		Npc_RemoveInvItem (hero, ItSc_ThunderBall);
		CreateInvItem (hero, ItRu_ThunderBall);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_HarmUndead_Info()
{
	if (Npc_HasItems(hero, ItSc_HarmUndead) >= 1)
	&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_HolyWater);
		Npc_RemoveInvItem (hero, ItSc_HarmUndead);
		CreateInvItem (hero, ItRu_HarmUndead);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_ChargeFireball_Info()
{
	if (Npc_HasItems(hero, ItSc_ChargeFireball) >= 1)
	&& (Npc_HasItems(hero, ItAt_WaranFiretongue) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_WaranFiretongue);
		Npc_RemoveInvItem (hero, ItSc_ChargeFireball);
		CreateInvItem (hero, ItRu_ChargeFireball);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_LightningFlash_Info()
{
	if (Npc_HasItems(hero, ItSc_LightningFlash) >= 1)
	&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		Npc_RemoveInvItem (hero, ItMi_Quartz);
		Npc_RemoveInvItem (hero, ItSc_LightningFlash);
		CreateInvItem (hero, ItRu_LightningFlash);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_IceWave_Info()
{
	if (Npc_HasItems(hero, ItSc_IceWave) >= 1)
	&& (Npc_HasItems(hero, ItMi_Diamond) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Diamond);
		Npc_RemoveInvItem (hero, ItSc_IceWave);
		CreateInvItem (hero, ItRu_IceWave);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Pyrokinesis_Info()
{
	if (Npc_HasItems(hero, ItSc_Pyrokinesis) >= 1)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems(hero, ItAt_WaranFiretongue) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		Npc_RemoveInvItem (hero, ItAt_WaranFiretongue);
		Npc_RemoveInvItem (hero, ItSc_Pyrokinesis);
		CreateInvItem (hero, ItRu_Pyrokinesis);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Firerain_Info()
{
	if (Npc_HasItems(hero, ItSc_Firerain) >= 1)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems(hero, ItAt_WaranFiretongue) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Pitch);
		Npc_RemoveInvItem (hero, ItAt_WaranFiretongue);
		Npc_RemoveInvItem (hero, ItSc_Firerain);
		CreateInvItem (hero, ItRu_Firerain);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_BreathOfDeath_Info()
{
	if (Npc_HasItems(hero, ItSc_BreathOfDeath) >= 1)
	&& (Npc_HasItems(hero, ItMi_Coal) >= 1)
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Coal);
		Npc_RemoveInvItem (hero, ItMi_DarkPearl);
		Npc_RemoveInvItem (hero, ItSc_BreathOfDeath);
		CreateInvItem (hero, ItRu_BreathOfDeath);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_MassDeath_Info()
{
	if (Npc_HasItems(hero, ItSc_MassDeath) >= 1)
	&& (Npc_HasItems(hero, ItAt_Skull) >= 1)
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_Skull);
		Npc_RemoveInvItem (hero, ItMi_DarkPearl);
		Npc_RemoveInvItem (hero, ItSc_MassDeath);
		CreateInvItem (hero, ItRu_MassDeath);
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
instance PC_MakeRune_Summon (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_Summon_Condition;
	information							=	PC_MakeRune_Summon_Info;
	permanent							=	true;
	description							=	"Twórz runy przyzywania"; 
};

func int PC_MakeRune_Summon_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) > 0)
	{
		return true;
	};
};

func void PC_MakeRune_Summon_Info()
{
	Info_ClearChoices	(PC_MakeRune_Summon);
	Info_AddChoice		(PC_MakeRune_Summon, DIALOG_BACK, PC_MakeRune_Summon_BACK);
	Info_AddChoice		(PC_MakeRune_Summon, ConcatStrings(NAME_SPL_SummonGoblinSkeleton, " (koœæ szkieletu)"), PC_ItRu_SumGobSkel_Info);
	Info_AddChoice		(PC_MakeRune_Summon, ConcatStrings(NAME_SPL_SummonWolf, " (skóra wilka)"), PC_ItRu_SumWolf_Info);
	Info_AddChoice		(PC_MakeRune_Summon, ConcatStrings(NAME_SPL_SummonSkeleton, " (czaszka)"), PC_ItRu_SumSkel_Info);
	Info_AddChoice		(PC_MakeRune_Summon, ConcatStrings(NAME_SPL_SummonGolem, " (serce golema)"), PC_ItRu_SumGol_Info);
	Info_AddChoice		(PC_MakeRune_Summon, ConcatStrings(NAME_SPL_SummonDemon, " (serce demona)"), PC_ItRu_SumDemon_Info);
	Info_AddChoice		(PC_MakeRune_Summon, ConcatStrings(NAME_SPL_ArmyOfDarkness, " (5 koœci szkieletu, rubin)"), PC_ItRu_ArmyOfDarkness_Info);
};

func void PC_MakeRune_Summon_BACK()
{
	Info_ClearChoices(PC_MakeRune_Summon);
};
func void PC_ItRu_SumGobSkel_Info()
{
	if (Npc_HasItems(hero, ItSc_SumGobSkel) >= 1)
	&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_SkeletonBone);
		Npc_RemoveInvItem (hero, ItSc_SumGobSkel);
		CreateInvItem (hero, ItRu_SumGobSkel);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_SumWolf_Info()
{
	if (Npc_HasItems(hero, ItSc_SumWolf) >= 1)
	&& (Npc_HasItems(hero, ItAt_WolfFur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_WolfFur);
		Npc_RemoveInvItem (hero, ItSc_SumWolf);
		CreateInvItem (hero, ItRu_SumWolf);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_SumSkel_Info()
{
	if (Npc_HasItems(hero, ItSc_SumSkel) >= 1)
	&& (Npc_HasItems(hero, ItAt_Skull) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_Skull);
		Npc_RemoveInvItem (hero, ItSc_SumSkel);
		CreateInvItem (hero, ItRu_SumSkel);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_SumGol_Info()
{
	if (Npc_HasItems(hero, ItSc_SumGol) >= 1)
	&& (Npc_HasItems(hero, ItAt_GolemHeart) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_GolemHeart);
		Npc_RemoveInvItem (hero, ItSc_SumGol);
		CreateInvItem (hero, ItRu_SumGol);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_SumDemon_Info()
{
	if (Npc_HasItems(hero, ItSc_SumDemon) >= 1)
	&& (Npc_HasItems(hero, ItAt_DemonHeart) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_DemonHeart);
		Npc_RemoveInvItem (hero, ItSc_SumDemon);
		CreateInvItem (hero, ItRu_SumDemon);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_ArmyOfDarkness_Info()
{
	if (Npc_HasItems(hero, ItSc_ArmyOfDarkness) >= 1)
	&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 5)
	&& (Npc_HasItems(hero, ItMi_Ruby) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_SkeletonBone, 5);
		Npc_RemoveInvItem (hero, ItMi_Ruby);
		Npc_RemoveInvItem (hero, ItSc_ArmyOfDarkness);
		CreateInvItem (hero, ItRu_ArmyOfDarkness);
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
instance PC_MakeRune_Water (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_MakeRune_Water_Condition;
	information							=	PC_MakeRune_Water_Info;
	permanent							=	true;
	description							=	"Twórz runy magów wody"; 
};

func int PC_MakeRune_Water_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) > 0)
	{
		return true;
	};
};

func void PC_MakeRune_Water_Info()
{
	Info_ClearChoices	(PC_MakeRune_Water);
	Info_AddChoice		(PC_MakeRune_Water, DIALOG_BACK, PC_MakeRune_Water_BACK);
	Info_AddChoice		(PC_MakeRune_Water, ConcatStrings(NAME_SPL_Whirlwind, " (skrzyd³o)"), PC_ItRu_Whirlwind_Info);
	Info_AddChoice		(PC_MakeRune_Water, ConcatStrings(NAME_SPL_IceLance, " (bia³a per³a)"), PC_ItRu_Icelance_Info);
	Info_AddChoice		(PC_MakeRune_Water, ConcatStrings(NAME_SPL_Geyser, " (akwamaryn)"), PC_ItRu_Geyser_Info);
	Info_AddChoice		(PC_MakeRune_Water, ConcatStrings(NAME_SPL_Thunderstorm, " (bia³a per³a, skrzyd³o)"), PC_ItRu_thunderstorm_Info);
	Info_AddChoice		(PC_MakeRune_Water, ConcatStrings(NAME_SPL_Waterfist, " (akwamaryn, ska³a krystaliczna)"), PC_ItRu_Waterfist_Info);
};

func void PC_MakeRune_Water_BACK()
{
	Info_ClearChoices(PC_MakeRune_Water);
};
func void PC_ItRu_Whirlwind_Info()
{
	if (Npc_HasItems(hero, ItSc_Whirlwind) >= 1)
	&& (Npc_HasItems(hero, ItAt_Wing) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_Wing);
		Npc_RemoveInvItem (hero, ItSc_Whirlwind);
		CreateInvItem (hero, ItRu_Whirlwind);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Icelance_Info()
{
	if (Npc_HasItems(hero, ItSc_Icelance) >= 1)
	&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_WhitePearl);
		Npc_RemoveInvItem (hero, ItSc_Icelance);
		CreateInvItem (hero, ItRu_Icelance);
		Print(PRINT_RuneSuccess);
	}
	else 
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};	
	B_ENDPRODUCTIONDIALOG();	
};
func void PC_ItRu_Geyser_Info()
{
	if (Npc_HasItems(hero, ItSc_Geyser) >= 1)
	&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Aquamarine);
		Npc_RemoveInvItem (hero, ItSc_Geyser);
		CreateInvItem (hero, ItRu_Geyser);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Thunderstorm_Info()
{
	if (Npc_HasItems(hero, ItSc_Thunderstorm) >= 1)
	&& (Npc_HasItems(hero, ItMi_WhitePearl) >= 1)
	&& (Npc_HasItems(hero, ItAt_Wing) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_WhitePearl);
		Npc_RemoveInvItem (hero, ItAt_Wing);
		Npc_RemoveInvItem (hero, ItSc_Thunderstorm);
		CreateInvItem (hero, ItRu_Thunderstorm);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItRu_Waterfist_Info()
{
	if (Npc_HasItems(hero, ItSc_Waterfist) >= 1)
	&& (Npc_HasItems(hero, ItMi_Aquamarine) >= 1)
	&& (Npc_HasItems(hero, ItMi_Rockcrystal) >= 1)
	{
		Npc_RemoveInvItem (hero, ItSc_Waterfist);
		Npc_RemoveInvItem (hero, ItMi_Aquamarine);
		Npc_RemoveInvItem (hero, ItMi_Rockcrystal);
		CreateInvItem (hero, ItRu_Waterfist);
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
		CreateInvItem (hero, ItRu_PalTeleportSecret);
		Print(PRINT_RuneSuccess);
	}
	else 
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_RuneBlank);
	};
	B_ENDPRODUCTIONDIALOG();
};
