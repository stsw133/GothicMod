///******************************************************************************************

var int Fisk_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Addon_Fisk (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Fisk_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_GoldNugget_Addon, 2);
		
		CreateInvItems (slf, ItFo_Apple, 5);
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Bread, 5);
		
		CreateInvItems (slf, ItPl_Beet, 3);
		CreateInvItems (slf, ItPl_Health_Herb_02, 10);
		CreateInvItems (slf, ItPl_Health_Herb_03, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 10);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 5);
		CreateInvItems (slf, ItPl_Temp_Herb, 3);
		
		CreateInvItems (slf, ItPo_Health_01, 5);
		CreateInvItems (slf, ItPo_Health_02, 4);
		CreateInvItems (slf, ItPo_Health_03, 3);
		CreateInvItems (slf, ItPo_Health_Addon_04, 1);
		CreateInvItems (slf, ItPo_Mana_01, 5);
		CreateInvItems (slf, ItPo_Mana_02, 4);
		CreateInvItems (slf, ItPo_Mana_03, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 1);
		
		CreateInvItems (slf, ItAt_Sting, 5);
		
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		
		CreateInvItems (slf, ItMw_1h_Keule, 1);
		CreateInvItems (slf, ItMw_2h_Keule, 1);
		
		CreateInvItems (slf, ItRi_Tenacity_01, 1);
		
		Fisk_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Fisk_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItFo_Apple, 5);
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Bread, 5);
		
		CreateInvItems (slf, ItPl_Beet, 3);
		CreateInvItems (slf, ItPl_Health_Herb_02, 10);
		CreateInvItems (slf, ItPl_Health_Herb_03, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 10);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 5);
		CreateInvItems (slf, ItPl_Temp_Herb, 3);
		
		CreateInvItems (slf, ItAt_Sting, 5);
		CreateInvItems (slf, ItPo_Health_01, 5);
		CreateInvItems (slf, ItPo_Health_02, 4);
		CreateInvItems (slf, ItPo_Health_03, 3);
		CreateInvItems (slf, ItPo_Health_Addon_04, 1);
		CreateInvItems (slf, ItPo_Mana_01, 5);
		CreateInvItems (slf, ItPo_Mana_02, 4);
		CreateInvItems (slf, ItPo_Mana_03, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 1);
		
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		
		Fisk_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Fisk_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItFo_Apple, 5);
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Bread, 5);
		
		CreateInvItems (slf, ItPl_Beet, 3);
		CreateInvItems (slf, ItPl_Health_Herb_02, 10);
		CreateInvItems (slf, ItPl_Health_Herb_03, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 10);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 5);
		CreateInvItems (slf, ItPl_Temp_Herb, 3);
		
		CreateInvItems (slf, ItAt_Sting, 5);
		CreateInvItems (slf, ItPo_Health_01, 5);
		CreateInvItems (slf, ItPo_Health_02, 4);
		CreateInvItems (slf, ItPo_Health_03, 3);
		CreateInvItems (slf, ItPo_Health_Addon_04, 1);
		CreateInvItems (slf, ItPo_Mana_01, 5);
		CreateInvItems (slf, ItPo_Mana_02, 4);
		CreateInvItems (slf, ItPo_Mana_03, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 1);
		
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		
		Fisk_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Fisk_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItFo_Apple, 5);
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Bread, 5);
		
		CreateInvItems (slf, ItPl_Health_Herb_02, 10);
		CreateInvItems (slf, ItPl_Health_Herb_03, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 10);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 5);
		CreateInvItems (slf, ItPl_Temp_Herb, 3);
		
		CreateInvItems (slf, ItPo_Health_01, 5);
		CreateInvItems (slf, ItPo_Health_02, 4);
		CreateInvItems (slf, ItPo_Health_03, 3);
		CreateInvItems (slf, ItPo_Health_Addon_04, 1);
		CreateInvItems (slf, ItPo_Mana_01, 5);
		CreateInvItems (slf, ItPo_Mana_02, 4);
		CreateInvItems (slf, ItPo_Mana_03, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 1);
		
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		
		Fisk_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Fisk_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItFo_Apple, 5);
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Bread, 5);
		
		CreateInvItems (slf, ItPl_Health_Herb_02, 10);
		CreateInvItems (slf, ItPl_Health_Herb_03, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 10);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 5);
		CreateInvItems (slf, ItPl_Temp_Herb, 3);
		
		CreateInvItems (slf, ItPo_Health_01, 5);
		CreateInvItems (slf, ItPo_Health_02, 4);
		CreateInvItems (slf, ItPo_Health_03, 3);
		CreateInvItems (slf, ItPo_Health_Addon_04, 1);
		CreateInvItems (slf, ItPo_Mana_01, 5);
		CreateInvItems (slf, ItPo_Mana_02, 4);
		CreateInvItems (slf, ItPo_Mana_03, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 1);
		
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		
		Fisk_ItemsGiven_Chapter = 11;
	};
};
