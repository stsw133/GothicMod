///******************************************************************************************

var int Gaertner_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Gaertner (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Gaertner_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItPl_Mana_Herb_01, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 3);
		
		Gaertner_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Gaertner_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItPl_Mana_Herb_01, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 5);
		
		Gaertner_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Gaertner_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItPl_Mana_Herb_01, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 3);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 3);
		
		Gaertner_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Gaertner_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItPl_Mana_Herb_01, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 3);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 3);
		
		Gaertner_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Gaertner_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItPl_Mana_Herb_01, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 3);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 3);
		
		Gaertner_ItemsGiven_Chapter = 11;
	};
};
