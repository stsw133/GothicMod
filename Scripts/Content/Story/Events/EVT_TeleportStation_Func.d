///******************************************************************************************
/// EVT_TELEPORTSTATION_FUNC    
///******************************************************************************************
func void EVT_TELEPORTSTATION_FUNC()
{
  	Wld_PlayEffect ("spellFX_Teleport_RING", hero, hero, 0, 0, 0, false);
	Snd_Play("MFX_TELEPORT_CAST");
	Npc_ClearAIQueue(hero);
	
	SCUsed_TELEPORTER = true;
	
	if (CurrentLevel == NEWWORLD_ZEN)
	{
		if (Npc_GetDistToWP(hero, "NW_TELEPORTSTATION_CITY") < 3000)
		{
			AI_Teleport (hero, "NW_TELEPORTSTATION_TAVERNE");
			
			if (!SCUsed_NW_TELEPORTSTATION_CITY)
			{
				Log_CreateTopic (TOPIC_Addon_TeleportsNW, LOG_MISSION);
				Log_SetTopicStatus (TOPIC_Addon_TeleportsNW, LOG_RUNNING);
				B_LogEntry (TOPIC_Addon_TeleportsNW, "Kamieñ teleportacyjny w jaskini na wschód od miasta przenosi do karczmy 'Martwa Harpia'.");
			};
			
			SCUsed_NW_TELEPORTSTATION_CITY = true;
		}
		else if (Npc_GetDistToWP(hero, "NW_TELEPORTSTATION_TAVERNE") < 3000)
		{
		 	AI_Teleport	(hero, "NW_TELEPORTSTATION_MAYA");
			
			if (!SCUsed_NW_TELEPORTSTATION_TAVERNE)
			{
				Log_CreateTopic (TOPIC_Addon_TeleportsNW, LOG_MISSION);
				Log_SetTopicStatus (TOPIC_Addon_TeleportsNW, LOG_RUNNING);
				B_LogEntry (TOPIC_Addon_TeleportsNW, "Kamieñ teleportacyjny w pobli¿u gospody 'Martwa Harpia' przenosi do portalu tajemniczych budowniczych.");
			};
			
			SCUsed_NW_TELEPORTSTATION_TAVERNE = true;
		}
		else if (Npc_GetDistToWP(hero, "NW_TELEPORTSTATION_MAYA") < 3000)
		{
			AI_Teleport	(hero, "NW_TELEPORTSTATION_CITY");
			
			if (!SCUsed_NW_TELEPORTSTATION_MAYA)
			{
				Log_CreateTopic (TOPIC_Addon_TeleportsNW, LOG_MISSION);
				Log_SetTopicStatus (TOPIC_Addon_TeleportsNW, LOG_RUNNING);
				B_LogEntry (TOPIC_Addon_TeleportsNW, "Kamieñ teleportacyjny przy portalu tajemniczych budowniczych przenosi do jaskini na wschód od miasta.");
			};
			
			SCUsed_NW_TELEPORTSTATION_MAYA = true;
		}
		else
		{
			AI_Teleport (hero, "MARKT");
		};
		
		if (SCUsed_NW_TELEPORTSTATION_MAYA)
		&& (SCUsed_NW_TELEPORTSTATION_TAVERNE)
		&& (SCUsed_NW_TELEPORTSTATION_CITY)
		&& (SCUsed_AllNWTeleporststones)
		{
			SCUsed_AllNWTeleporststones = true;
			B_GivePlayerExp(200);
		};
	}
	else if (CurrentLevel == ADDONWORLD_ZEN)
	{
		if (Hlp_StrCmp(Npc_GetNearestWP(hero), "ADW_ENTRANCE_TELEPORT_NORTH_WP"))
		{
			AI_Teleport	(hero, "ADW_PORTALTEMPEL_TELEPORTSTATION");
			
			if (!SCUsed_ADW_TELEPORTSTATION_PORTALTEMPEL)
			{
				Log_CreateTopic (TOPIC_Addon_TeleportsADW, LOG_MISSION);
				Log_SetTopicStatus (TOPIC_Addon_TeleportsADW, LOG_RUNNING);
				B_LogEntry (TOPIC_Addon_TeleportsADW, "Uaktywni³em kamieñ teleportacyjny w pobli¿u portalu, który ³¹czy siê z Khorinis.");
				B_GivePlayerExp(100);
			};
			
			SCUsed_ADW_TELEPORTSTATION_PORTALTEMPEL = true;
		}
		else if (Hlp_StrCmp(Npc_GetNearestWP(hero), "ADW_ENTRANCE_TELEPORT_EAST_WP"))
		{
			AI_Teleport	(hero, "ADW_ADANOSTEMPEL_TELEPORTSTATION");
			
			if (!SCUsed_ADW_TELEPORTSTATION_ADANOSTEMPEL)
			{
				Log_CreateTopic (TOPIC_Addon_TeleportsADW, LOG_MISSION);
				Log_SetTopicStatus (TOPIC_Addon_TeleportsADW, LOG_RUNNING);
				B_LogEntry (TOPIC_Addon_TeleportsADW, "Uda³o mi siê uaktywniæ kamieñ teleportacyjny na górnym poziomie obozu bandytów.");
				B_GivePlayerExp(100);
			};
			
			SCUsed_ADW_TELEPORTSTATION_ADANOSTEMPEL = true;
		}
		else if (Hlp_StrCmp(Npc_GetNearestWP(hero), "ADW_ENTRANCE_TELEPORT_SOUTHEAST_WP"))
		{
			AI_Teleport	(hero, "ADW_SOUTHEAST_TELEPORTSTATION");
			
			if (!SCUsed_ADW_TELEPORTSTATION_SOUTHEAST)
			{
				Log_CreateTopic (TOPIC_Addon_TeleportsADW, LOG_MISSION);
				Log_SetTopicStatus (TOPIC_Addon_TeleportsADW, LOG_RUNNING);
				B_LogEntry (TOPIC_Addon_TeleportsADW, "Uaktywni³em kamieñ teleportacyjny na bagnie, tu¿ na po³udnie od obozu bandytów.");
				B_GivePlayerExp(100);
			};
			
			SCUsed_ADW_TELEPORTSTATION_SOUTHEAST = true;
		}
		else if (Hlp_StrCmp(Npc_GetNearestWP(hero), "ADW_ENTRANCE_TELEPORT_SOUTHWEST_WP"))
		{
			AI_Teleport	(hero, "ADW_SOUTHWEST_TELEPORTSTATION");
			
			if (!SCUsed_ADW_TELEPORTSTATION_SOUTHWEST)
			{
				Log_CreateTopic (TOPIC_Addon_TeleportsADW, LOG_MISSION);
				Log_SetTopicStatus(TOPIC_Addon_TeleportsADW, LOG_RUNNING);
				B_LogEntry (TOPIC_Addon_TeleportsADW, "Znalaz³em kamieñ teleportacyjny na po³udniowym zachodzie.");
				B_GivePlayerExp(100);
			};
			
			SCUsed_ADW_TELEPORTSTATION_SOUTHWEST = true;
		}
		else if (Hlp_StrCmp(Npc_GetNearestWP(hero), "ADW_ENTRANCE_TELEPORT_WEST_WP"))
		{
			AI_Teleport	(hero, "ADW_PIRATES_TELEPORTSTATION");
			
			if (!SCUsed_ADW_TELEPORTSTATION_PIRATES)
			{
				Log_CreateTopic (TOPIC_Addon_TeleportsADW, LOG_MISSION);
				Log_SetTopicStatus (TOPIC_Addon_TeleportsADW, LOG_RUNNING);
				B_LogEntry (TOPIC_Addon_TeleportsADW, "Wewn¹trz jaskini w tym kanionie znajduje siê kamieñ teleportacyjny. Uaktywni³em go.");
				B_GivePlayerExp(100);
			};
			
			if (MIS_KrokoJagd == LOG_SUCCESS)
			&& (!SCUsed_ADW_TELEPORTSTATION_PIRATES_JACKSMONSTER)
			{
				Wld_InsertNpc (Gobbo_Black, "ADW_PIRATECAMP_WATERHOLE_GOBBO");
				Wld_InsertNpc (Gobbo_Black, "ADW_PIRATECAMP_WATERHOLE_GOBBO");
				Wld_InsertNpc (Giant_DesertRat, "ADW_CANYON_PATH_TO_MINE1_05");
				Wld_InsertNpc (Giant_DesertRat, "ADW_CANYON_PATH_TO_MINE1_05");
				Wld_InsertNpc (Blattcrawler, "ADW_CANYON_TELEPORT_PATH_07");
				Wld_InsertNpc (Blattcrawler, "ADW_CANYON_TELEPORT_PATH_07");
				SCUsed_ADW_TELEPORTSTATION_PIRATES_JACKSMONSTER = true;
			};
			
			SCUsed_ADW_TELEPORTSTATION_PIRATES = true;
		}
		else if (Hlp_StrCmp(Npc_GetNearestWP(hero), "ADW_ADANOSTEMPEL_RAVENTELEPORT_OUT"))
		{
			AI_Teleport (hero, "ADW_ADANOSTEMPEL_TELEPORTSTATION");
			
			if (!SCUsed_ADW_TELEPORTSTATION_RAVENTELEPORT_OUT)
			{
				
			};
			SCUsed_ADW_TELEPORTSTATION_RAVENTELEPORT_OUT = true;
		}
		else
		{
			AI_Teleport (hero, "ADW_ENTRANCE");
		};
	};
};

///******************************************************************************************

var int TriggeredTeleporterADW;
var int ADW_PORTALTEMPEL_FOCUS_FUNC_OneTime;

///******************************************************************************************
/// ADW_PORTALTEMPEL_FOCUS_FUNC
///******************************************************************************************
func void ADW_PORTALTEMPEL_FOCUS_FUNC()
{
	Npc_RemoveInvItems (hero, ItMi_Focus, 1);
	TriggeredTeleporterADW += 1;
	Snd_Play("MFX_Telekinesis_STARTINVEST");
	
	if (TriggeredTeleporterADW >= 5)
	{
		SC_ADW_ActivatedAllTelePortStones = true;
	};
	
	if (!ADW_PORTALTEMPEL_FOCUS_FUNC_OneTime)
	&& (Npc_GetDistToWP(hero, "ADW_PORTALTEMPEL_TELEPORTSTATION") < 3000)
	{
		if (!Npc_IsDead(Stoneguardian_NailedPortalADW1))
		&& (Stoneguardian_NailedPortalADW1.aivar[AIV_EnemyOverride])
		{
			Snd_Play("THRILLJINGLE_02");
		};
		B_AWAKE_STONEGUARDIAN(Stoneguardian_NailedPortalADW1);
		ADW_PORTALTEMPEL_FOCUS_FUNC_OneTime = true;
	};
};
