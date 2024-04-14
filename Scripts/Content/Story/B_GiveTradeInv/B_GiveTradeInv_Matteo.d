///******************************************************************************************

var int Matteo_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Matteo (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Matteo_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItLsTorch, 5);
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Bread, 4);
		CreateInvItems (slf, ItFo_Cheese, 5);
		CreateInvItems (slf, ItFo_Water, 1);
		CreateInvItems (slf, ItPo_Health_01, 1);
		CreateInvItems (slf, ItRw_Arrow, 15);
		
		CreateInvItems (slf, ItMw_Kriegskeule, 1);
		CreateInvItems (slf, ItMw_Nagelkeule2, 1);
		
		Matteo_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Matteo_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItFo_Water, 4);
		CreateInvItems (slf, ItFo_Wine, 4);
		CreateInvItems (slf, ItLsTorch, 5);
		CreateInvItems (slf, ItMi_Broom, 2);
		CreateInvItems (slf, ItPl_Forestberry, 3);
		CreateInvItems (slf, ItRw_Arrow, 30);
		
		Matteo_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Matteo_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Bread, 2);
		CreateInvItems (slf, ItFo_Sausage, 3);
		CreateInvItems (slf, ItFo_Wine, 2);
		CreateInvItems (slf, ItLsTorch, 5);
		CreateInvItems (slf, ItPl_Forestberry, 3);
		CreateInvItems (slf, ItRw_Arrow, 50);
		
		Matteo_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Matteo_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Sausage, 3);
		CreateInvItems (slf, ItFo_Wine, 2);
		CreateInvItems (slf, ItMi_Lute, 1);
		CreateInvItems (slf, ItPl_Health_Herb_02, 3);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 2);
		CreateInvItems (slf, ItRw_Arrow, 100);
		
		Matteo_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Matteo_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItFo_Bacon, 1);
		CreateInvItems (slf, ItFo_Fishsoup, 1);
		CreateInvItems (slf, ItMi_Lute, 1);
		CreateInvItems (slf, ItMiSwordraw, 1);
		CreateInvItems (slf, ItPl_Health_Herb_02, 2);
		CreateInvItems (slf, ItRw_Arrow, 20);
		
		Matteo_ItemsGiven_Chapter = 11;
	};
};
