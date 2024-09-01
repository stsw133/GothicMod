///******************************************************************************************
/// EVT_ORNAMENT_SWITCH_BIGFARM_01_FUNC
///******************************************************************************************
func void EVT_ORNAMENT_SWITCH_BIGFARM_01_FUNC()
{
	if (!ORNAMENT_SWITCHED_BIGFARM)
	{
		Wld_InsertNpc (Stoneguardian_Ornament, "FP_EVENT_SPAWN_STONEGUARDIAN_ORNAMENT_BIGFARM_01");
		Wld_InsertItem (ItMi_OrnamentEffekt_BIGFARM_Addon, "FP_EVENT_STONEGUARDIAN_ORNAMENT_EFFECT_BIGFARM_01");
		Wld_PlayEffect ("FX_EarthQuake", hero, hero, 0, 0, 0, false);
		Wld_PlayEffect ("spellFX_INCOVATION_WHITE", ItMi_OrnamentEffekt_BIGFARM_Addon, ItMi_OrnamentEffekt_BIGFARM_Addon, 0, 0, 0, false);
		Snd_Play("Ravens_Earthquake4");
		Snd_Play("Ravens_Earthquake2");
		Snd_Play("THRILLJINGLE_02");
		Wld_PlayEffect ("spellFX_LIGHTSTAR_RingRitual", ItMi_OrnamentEffekt_BIGFARM_Addon, ItMi_OrnamentEffekt_BIGFARM_Addon, 0, 0, 0, false);
		
		Log_CreateTopic		(TOPIC_Addon_Ornament, LOG_MISSION);
		Log_SetTopicStatus	(TOPIC_Addon_Ornament, LOG_RUNNING);
		B_LogEntry			(TOPIC_Addon_Ornament, "Uaktywni�em mechanizm kamiennego kr�gu w pobli�u farmy Sekoba. Us�ysza�em g�o�ny huk i pojawi� si� kamienny stra�nik.");
		
		ORNAMENT_SWITCHED_BIGFARM = true;
	};
};

///******************************************************************************************
/// EVT_ORNAMENT_SWITCH_FARM_01_FUNC
///******************************************************************************************
func void EVT_ORNAMENT_SWITCH_FARM_01_FUNC()
{
	if (!ORNAMENT_SWITCHED_FARM)
	{
		Wld_PlayEffect ("FX_EarthQuake", hero, hero, 0, 0, 0, false);
		
		Log_CreateTopic		(TOPIC_Addon_Ornament, LOG_MISSION);
		Log_SetTopicStatus	(TOPIC_Addon_Ornament, LOG_RUNNING);
		B_LogEntry			(TOPIC_Addon_Ornament, "Uaktywni�em mechanizm kamiennego kr�gu przy farmie Lobarta. Jedynym efektem by�o lekkie trz�sienie ziemi.");
		
		ORNAMENT_SWITCHED_FARM = true;
	};
};

///******************************************************************************************
/// EVT_ORNAMENT_SWITCH_FOREST_01_FUNC
///******************************************************************************************
func void EVT_ORNAMENT_SWITCH_FOREST_01_FUNC()
{
	if (!ORNAMENT_SWITCHED_FOREST)
	{
		Wld_InsertNpc (Stoneguardian_Ornament, "FP_EVENT_SPAWN_STONEGUARDIAN_ORNAMENT_FOREST_01");
		Wld_InsertItem (ItMi_OrnamentEffekt_FOREST_Addon, "FP_EVENT_STONEGUARDIAN_ORNAMENT_EFFECT_FOREST_01");
		Wld_PlayEffect ("FX_EarthQuake", hero, hero, 0, 0, 0, false);
		Wld_PlayEffect ("spellFX_INCOVATION_WHITE", ItMi_OrnamentEffekt_FOREST_Addon, ItMi_OrnamentEffekt_FOREST_Addon, 0, 0, 0, false);
		Snd_Play("Ravens_Earthquake4" );
		Snd_Play("Ravens_Earthquake2" );
		Snd_Play("THRILLJINGLE_02" );
		Wld_PlayEffect ("spellFX_LIGHTSTAR_RingRitual", ItMi_OrnamentEffekt_FOREST_Addon, ItMi_OrnamentEffekt_FOREST_Addon, 0, 0, 0, false);
		
		Log_CreateTopic		(TOPIC_Addon_Ornament, LOG_MISSION);
		Log_SetTopicStatus	(TOPIC_Addon_Ornament, LOG_RUNNING);
		B_LogEntry			(TOPIC_Addon_Ornament, "Uaktywni�em mechanizm kamiennego kr�gu w p�nocnym lesie. Pojawi� si� wielki, kamienny stra�nik. Wygl�da� na nie�le wkurzonego.");
		
		ORNAMENT_SWITCHED_FOREST = true;
	};
};
