///******************************************************************************************

var int Gaertner_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Gaertner (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Gaertner_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 3);
		
		Gaertner_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Gaertner_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 5);
		
		Gaertner_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Gaertner_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 3);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 3);
		
		Gaertner_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Gaertner_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 3);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 3);
		
		Gaertner_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Gaertner_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf,ItPl_Mana_Herb_01, 5);
		CreateInvItems (slf,ItPl_Mana_Herb_02, 3);
		CreateInvItems (slf,ItPl_Mana_Herb_03, 3);
		
		Gaertner_ItemsGiven_Chapter = 5;
	};
};
