///******************************************************************************************

var int Isgaroth_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Isgaroth (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Isgaroth_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItMi_Pitch, 1);
		CreateInvItems (slf, ItMi_Sulfur, 2);
		
		CreateInvItems (slf, ItPo_Health_01, 3);
		CreateInvItems (slf, ItPo_Mana_01, 2);
		
		CreateInvItems (slf, ItSc_FireBolt, 5);
		CreateInvItems (slf, ItSc_Light, 5);
		CreateInvItems (slf, ItSc_LightHeal, 5);
		CreateInvItems (slf, ItSc_Sleep, 1);
		//CreateInvItems (slf, ItSc_SumGobSkel, 2);
		CreateInvItems (slf, ItSc_Zap, 5);
		
		CreateInvItems (slf, ItRi_Sp_01, 1);
		
		Isgaroth_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Isgaroth_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItMi_Pitch, 1);
		CreateInvItems (slf, ItMi_Quartz, 3);
		CreateInvItems (slf, ItMi_Sulfur, 5);
		
		CreateInvItems (slf, ItPo_Health_01, 7);
		CreateInvItems (slf, ItPo_Health_02, 2);
		CreateInvItems (slf, ItPo_Mana_01, 7);
		
		CreateInvItems (slf, ItSc_IceBolt, 5);
		CreateInvItems (slf, ItSc_InstantFireball, 5);
		CreateInvItems (slf, ItSc_Sleep, 2);
		//CreateInvItems (slf, ItSc_SumWolf, 5);
		CreateInvItems (slf, ItSc_WindFist, 4);
		
		Isgaroth_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Isgaroth_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItMi_Sulfur, 4);
		CreateInvItems (slf, ItMi_Quartz, 5);
		CreateInvItems (slf, ItMi_Rockcrystal, 2);
		CreateInvItems (slf, ItMi_Coal, 3);
		CreateInvItems (slf, ItMi_Pitch, 1);
		
		CreateInvItems (slf, ItPo_Health_02, 9);
		CreateInvItems (slf, ItPo_Health_03, 6);
		CreateInvItems (slf, ItPo_Mana_01, 25);
		
		CreateInvItems (slf, ItSc_ChargeZap, 5);
		CreateInvItems (slf, ItSc_Curse, 3);
		CreateInvItems (slf, ItSc_Fear, 2);
		CreateInvItems (slf, ItSc_Firestorm, 5);
		CreateInvItems (slf, ItSc_IceCube, 3);
		//CreateInvItems (slf, ItSc_MediumHeal,	5);
		CreateInvItems (slf, ItSc_TrfScavenger, 1);
		CreateInvItems (slf, ItSc_TrfSheep, 1);
		
		Isgaroth_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Isgaroth_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItMi_Aquamarine, 2);
		CreateInvItems (slf, ItMi_Coal, 4);
		CreateInvItems (slf, ItMi_Quartz, 6);
		CreateInvItems (slf, ItMi_Rockcrystal, 3);
		CreateInvItems (slf, ItMi_Sulfur, 5);
		
		CreateInvItems (slf, ItPo_Health_02, 15);
		CreateInvItems (slf, ItPo_Health_03, 10);
		CreateInvItems (slf, ItPo_Mana_01, 25);
		CreateInvItems (slf, ItPo_Mana_02, 25);
		
		CreateInvItems (slf, ItSc_ChargeFireball, 2);
		CreateInvItems (slf, ItSc_DestroyUndead, 2);
		CreateInvItems (slf, ItSc_LightningFlash, 4);
		CreateInvItems (slf, ItSc_SummonGolem, 4);
		CreateInvItems (slf, ItSc_TrfGiantBug, 1);
		CreateInvItems (slf, ItSc_TrfSnapper, 1);
		CreateInvItems (slf, ItSc_TrfWarg, 1);
		CreateInvItems (slf, ItSc_TrfWolf, 1);
		
		CreateInvItems (slf, ItAm_Mp_01, 1);
		
		Isgaroth_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Isgaroth_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItMi_Aquamarine, 3);
		CreateInvItems (slf, ItMi_Coal, 3);
		CreateInvItems (slf, ItMi_DarkPearl, 1);
		CreateInvItems (slf, ItMi_HolyWater, 1);
		CreateInvItems (slf, ItMi_Quartz, 4);
		CreateInvItems (slf, ItMi_Rockcrystal, 6);
		CreateInvItems (slf, ItMi_Sulfur, 6);
		
		CreateInvItems (slf, ItPo_Health_02, 20);
		CreateInvItems (slf, ItPo_Health_03, 15);
		CreateInvItems (slf, ItPo_Mana_01, 50);
		CreateInvItems (slf, ItPo_Mana_02, 50);
		
		CreateInvItems (slf, ItSc_Firestorm, 3);
		//CreateInvItems (slf, ItSc_FullHeal, 3);
		CreateInvItems (slf, ItSc_IceWave, 4);
		CreateInvItems (slf, ItSc_SummonDemon, 2);
		CreateInvItems (slf, ItSc_TrfDragonSnapper, 1);
		CreateInvItems (slf, ItSc_TrfLurker, 1);
		
		Isgaroth_ItemsGiven_Chapter = 11;
	};
};
