///******************************************************************************************

var int Cronos_ADW_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Addon_Cronos_ADW (var C_Npc slf)
{
	if (Kapitel >= 8)
	&& (Cronos_ADW_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMw_Stab_M_02, 1);
		CreateInvItems (slf, ItMw_Stab_H_02, 1);
		
		CreateInvItems (slf, ItMi_Flask, 15);
		CreateInvItems (slf, ItMi_Pitch, 1);
		CreateInvItems (slf, ItMi_Quartz, 2);
		CreateInvItems (slf, ItMi_Sulfur, 2);
		
		CreateInvItems (slf, ItPo_Health_01, 7);
		CreateInvItems (slf, ItPo_Health_02, 2);
		CreateInvItems (slf, ItPo_Health_Addon_04, 2);
		CreateInvItems (slf, ItPo_Mana_01, 14);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 5);
		
		CreateInvItems (slf, ItWr_Map_AddonWorld, 1);
		
		CreateInvItems (slf, ItMi_RuneBlank, 2);
		
		CreateInvItems (slf, ItSc_Firebolt, 5);
		CreateInvItems (slf, ItSc_Geyser, 2);
		CreateInvItems (slf, ItSc_IceBolt, 3);
		CreateInvItems (slf, ItSc_IceLance, 5);
		CreateInvItems (slf, ItSc_InstantFireball, 3);
		CreateInvItems (slf, ItSc_Light, 5);
		CreateInvItems (slf, ItSc_LightHeal, 5);
		//CreateInvItems (slf, ItSc_SumGobSkel, 2);
		//CreateInvItems (slf, ItSc_SumWolf, 2);
		CreateInvItems (slf, ItSc_Thunderstorm, 2);
		CreateInvItems (slf, ItSc_WaterFist, 1);
		CreateInvItems (slf, ItSc_Whirlwind, 3);
		CreateInvItems (slf, ItSc_Zap, 5);
		
		Cronos_ADW_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Cronos_ADW_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItAt_WaranFiretongue, 1);
		CreateInvItems (slf, ItMi_Coal, 2);
		CreateInvItems (slf, ItMi_Flask, 10);
		CreateInvItems (slf, ItMi_Pitch, 1);
		CreateInvItems (slf, ItMi_Quartz, 2);
		CreateInvItems (slf, ItMi_Rockcrystal, 2);
		CreateInvItems (slf, ItMi_Sulfur, 2);
		
		CreateInvItems (slf, ItPo_Health_02, 9);
		CreateInvItems (slf, ItPo_Health_03, 6);
		CreateInvItems (slf, ItPo_Health_Addon_04, 2);
		CreateInvItems (slf, ItPo_Mana_01, 30);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 5);
		
		CreateInvItems (slf, ItSc_ChargeZap, 2);
		CreateInvItems (slf, ItSc_Curse, 3);
		CreateInvItems (slf, ItSc_Fear, 2);
		CreateInvItems (slf, ItSc_Firestorm, 4);
		CreateInvItems (slf, ItSc_Geyser, 2);
		CreateInvItems (slf, ItSc_IceCube, 3);
		CreateInvItems (slf, ItSc_IceLance, 2);
		//CreateInvItems (slf, ItSc_MediumHeal,	5);
		CreateInvItems (slf, ItSc_Thunderstorm, 2);
		CreateInvItems (slf, ItSc_TrfGiantBug, 1);
		CreateInvItems (slf, ItSc_TrfScavenger, 1);
		CreateInvItems (slf, ItSc_TrfSheep, 1);
		CreateInvItems (slf, ItSc_TrfWolf, 1);
		CreateInvItems (slf, ItSc_WaterFist, 1);
		CreateInvItems (slf, ItSc_Whirlwind, 2);
		
		CreateInvItems (slf, ItMi_RuneBlank, 2);
		
		Cronos_ADW_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Cronos_ADW_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Aquamarine, 2);
		CreateInvItems (slf, ItMi_Coal, 4);
		CreateInvItems (slf, ItMi_Flask, 10);
		CreateInvItems (slf, ItMi_Pitch, 1);
		CreateInvItems (slf, ItMi_Quartz, 6);
		CreateInvItems (slf, ItMi_Rockcrystal, 3);
		CreateInvItems (slf, ItMi_Sulfur, 5);
		
		CreateInvItems (slf, ItPo_Health_02, 15);
		CreateInvItems (slf, ItPo_Health_03, 10);
		CreateInvItems (slf, ItPo_Health_Addon_04, 5);
		CreateInvItems (slf, ItPo_Mana_01, 30);
		CreateInvItems (slf, ItPo_Mana_02, 30);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 10);
		
		CreateInvItems (slf, ItSc_ChargeFireball, 3);
		CreateInvItems (slf, ItSc_DestroyUndead, 2);
		CreateInvItems (slf, ItSc_Geyser, 3);
		CreateInvItems (slf, ItSc_IceLance, 3);
		CreateInvItems (slf, ItSc_LightningFlash, 3);
		CreateInvItems (slf, ItSc_SummonGolem, 3);
		CreateInvItems (slf, ItSc_Thunderstorm, 3);
		CreateInvItems (slf, ItSc_TrfSnapper, 1);
		CreateInvItems (slf, ItSc_TrfWarg, 1);
		CreateInvItems (slf, ItSc_WaterFist, 2);
		CreateInvItems (slf, ItSc_Whirlwind, 3);
		
		Cronos_ADW_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Cronos_ADW_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Aquamarine, 3);
		CreateInvItems (slf, ItMi_Coal, 3);
		CreateInvItems (slf, ItMi_DarkPearl, 1);
		CreateInvItems (slf, ItMi_Flask, 10);
		CreateInvItems (slf, ItMi_HolyWater, 3);
		CreateInvItems (slf, ItMi_Quartz, 4);
		CreateInvItems (slf, ItMi_Rockcrystal, 6);
		CreateInvItems (slf, ItMi_Sulfur, 6);
		
		CreateInvItems (slf, ItPo_Health_02, 20);
		CreateInvItems (slf, ItPo_Health_03, 15);
		CreateInvItems (slf, ItPo_Mana_01, 50);
		CreateInvItems (slf, ItPo_Mana_02, 40);
		
		CreateInvItems (slf, ItSc_Firestorm, 5);
		//CreateInvItems (slf, ItSc_FullHeal, 3);
		CreateInvItems (slf, ItSc_Geyser, 3);
		CreateInvItems (slf, ItSc_IceLance, 3);
		CreateInvItems (slf, ItSc_IceWave, 4);
		CreateInvItems (slf, ItSc_SummonDemon, 2);
		CreateInvItems (slf, ItSc_Thunderstorm, 3);
		CreateInvItems (slf, ItSc_TrfDragonSnapper, 1);
		CreateInvItems (slf, ItSc_TrfLurker, 1);
		CreateInvItems (slf, ItSc_WaterFist, 3);
		CreateInvItems (slf, ItSc_Whirlwind, 3);
		
		CreateInvItems (slf, ItMi_RuneBlank, 1);
		
		Cronos_ADW_ItemsGiven_Chapter = 11;
	};
};
