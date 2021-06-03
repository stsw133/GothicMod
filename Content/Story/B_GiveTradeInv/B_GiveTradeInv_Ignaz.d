///******************************************************************************************

var int Ignaz_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Ignaz (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Ignaz_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItPo_Mana_01, 1);
		CreateInvItems (slf, ItPo_Health_01, 1);
		CreateInvItems (slf, ItPo_Speed, 1);
		CreateInvItems (slf, ItPo_Health_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 3);
		CreateInvItems (slf, ITMI_Flask, 10);
		
		CreateInvItems (slf, ItSc_TrfSheep, 1);
		CreateInvItems (slf, ItSc_TrfScavenger, 1);
		CreateInvItems (slf, ItSc_TrfGiantRat, 1);
		CreateInvItems (slf, ItSc_TrfGiantBug, 1);
		CreateInvItems (slf, ItSc_TrfWolf, 3);
		CreateInvItems (slf, ItSc_TrfLurker, 1);
		CreateInvItems (slf, ItSc_TrfWaran, 1);
		CreateInvItems (slf, ItSc_TrfSnapper, 3);
		CreateInvItems (slf, ItSc_TrfWarg, 1);
		CreateInvItems (slf, ItSc_TrfShadowbeast, 1);
		CreateInvItems (slf, ItSc_TrfDragonSnapper, 1);
		CreateInvItems (slf, ItSc_TrfFireWaran, 1);
		CreateInvItems (slf, ITSC_Charm, 5);
		CreateInvItems (slf, ITSC_Sleep, 1);
		
		Ignaz_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Ignaz_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ItPo_Health_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_01, 2);
		CreateInvItems (slf, ItPo_Health_01, 2);
		CreateInvItems (slf, ItPo_Speed, 2);
		CreateInvItems (slf, ITSC_Charm, 5);
		CreateInvItems (slf, ITMI_Flask, 10);
		
		Ignaz_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Ignaz_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 300);
		CreateInvItems (slf, ItPo_Health_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_01, 3);
		CreateInvItems (slf, ItPo_Health_01, 3);
		CreateInvItems (slf, ItPo_Speed, 3);
		CreateInvItems (slf, ITSC_Charm, 5);
		CreateInvItems (slf, ITMI_Flask, 10);
		
		Ignaz_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Ignaz_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 400);
		CreateInvItems (slf, ItPo_Health_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_01, 4);
		CreateInvItems (slf, ItPo_Health_01, 4);
		CreateInvItems (slf, ItPo_Speed, 4);
		CreateInvItems (slf, ITSC_Charm, 5);
		CreateInvItems (slf, ITMI_Flask, 10);
		
		Ignaz_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Ignaz_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 500);
		CreateInvItems (slf, ItPo_Mana_01, 5);
		CreateInvItems (slf, ItPo_Health_01, 5);
		CreateInvItems (slf, ItPo_Speed, 5);
		CreateInvItems (slf, ITSC_Charm, 5);
		CreateInvItems (slf, ITMI_Flask, 10);
		
		Ignaz_ItemsGiven_Chapter = 5;
	};
};
