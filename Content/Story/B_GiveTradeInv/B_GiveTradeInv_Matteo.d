///******************************************************************************************

var int Matteo_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Matteo (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Matteo_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItLsTorch,5);
		CreateInvItems (slf, ItPo_Health_01, 1);
		CreateInvItems (slf, ItFo_Cheese, 5);
		CreateInvItems (slf, ItFo_Bread, 4);
		CreateInvItems (slf, ItFo_Water, 1);
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItRw_Arrow, 15);
		
		CreateInvItems (slf, ItMw_Kriegskeule, 1);
		CreateInvItems (slf, ItMw_Nagelkeule2, 1);
		
		Matteo_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Matteo_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, itmi_broom, 2);
		CreateInvItems (slf, ItLsTorch, 5);
		CreateInvItems (slf, ItPl_Forestberry, 3);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItFo_Water, 4);
		CreateInvItems (slf, ItFo_Wine, 4);
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItRw_Arrow, 30);
		
		Matteo_ItemsGiven_Chapter = 2;
	};	
	
	if (Kapitel >= 9)
	&& (Matteo_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItLsTorch, 5);
		CreateInvItems (slf, ItPl_Forestberry, 3);
		CreateInvItems (slf, ItFo_Bread, 2);
		CreateInvItems (slf, ItFo_Sausage, 3);
		CreateInvItems (slf, ItFo_Wine, 2);
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItRw_Arrow, 50);
		
		Matteo_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Matteo_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 2);
		CreateInvItems (slf, ItPl_Health_Herb_02, 3);
		CreateInvItems (slf, ItMi_Lute, 1);
		CreateInvItems (slf, ItFo_Sausage, 3);
		CreateInvItems (slf, ItFo_Wine, 2);
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItRw_Arrow, 100);
		
		Matteo_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Matteo_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ItPl_Health_Herb_02, 2);
		CreateInvItems (slf, ItMi_Lute, 1);
		CreateInvItems (slf, ItFo_Bacon, 1);
		CreateInvItems (slf, ItFo_Fishsoup, 1);
		CreateInvItems (slf, ItMiSwordraw, 1);
		CreateInvItems (slf, ItRw_Arrow, 20);
		
		Matteo_ItemsGiven_Chapter = 5;
	};
};
