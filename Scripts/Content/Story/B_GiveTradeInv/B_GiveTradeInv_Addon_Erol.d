///******************************************************************************************

var int Erol_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Addon_Erol (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Erol_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItFo_Water, 5);
		CreateInvItems (slf, ItFo_Bread, 3);
		CreateInvItems (slf, ItFo_Cheese, 2);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 1);
		CreateInvItems (slf, ItPl_Health_Herb_02, 2);
		CreateInvItems (slf, ItPl_Temp_Herb, 1);
		CreateInvItems (slf, ItPo_Perm_Health, 1);
		
		CreateInvItems (slf, ItMw_Streitaxt2, 1);
		CreateInvItems (slf, ItMw_Schwert5, 2);
		CreateInvItems (slf, ItMw_Kriegshammer2, 1);
		CreateInvItems (slf, ItMw_ShortSword5, 1);
		CreateInvItems (slf, ItMw_Zweihaender1, 1);
		
		CreateInvItems (slf, ItRi_ProtPhysical_01, 1);
		CreateInvItems (slf, ItAm_Pirate_01, 1);
		
		Erol_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Erol_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItFo_Water, 1);
		CreateInvItems (slf, ItFo_Bread, 2);
		CreateInvItems (slf, ItFo_Cheese, 3);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 3);
		CreateInvItems (slf, ItPl_Health_Herb_02, 3);
		CreateInvItems (slf, ItPl_Temp_Herb, 2);
		
		Erol_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Erol_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Cheese, 2);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 3);
		CreateInvItems (slf, ItPl_Health_Herb_02, 3);
		CreateInvItems (slf, ItPl_Temp_Herb, 2);
		
		CreateInvItems (slf, ItMiSwordraw, 5);
		
		Erol_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Erol_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItFo_Cheese, 1);
		CreateInvItems (slf, ItFoMutton, 2);
		CreateInvItems (slf, ItFo_Stew, 3);
		CreateInvItems (slf, ItFo_Fishsoup, 4);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 3);
		CreateInvItems (slf, ItPl_Health_Herb_02, 3);
		CreateInvItems (slf, ItPl_Temp_Herb, 2);
		
		Erol_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Erol_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf,ItFo_Booze, 5);
		CreateInvItems (slf,ItPl_Mana_Herb_02, 3);
		CreateInvItems (slf,ItPl_Health_Herb_02, 3);
		CreateInvItems (slf,ItPl_Temp_Herb, 2);
		
		Erol_ItemsGiven_Chapter = 5;
	};
};
