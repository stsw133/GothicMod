///******************************************************************************************

var int Fenia_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Fenia (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Fenia_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItFo_Bread, 3);
		CreateInvItems (slf, ItFo_Fish, 5);
		CreateInvItems (slf, ItFo_Water, 5);
		
		Fenia_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Fenia_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItFo_Cheese, 5);
		CreateInvItems (slf, ItFo_Fish, 3);
		CreateInvItems (slf, ItFo_Fishsoup, 5);
		
		Fenia_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Fenia_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Fish, 2);
		CreateInvItems (slf, ItFoMutton, 2);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Stew, 5);
		
		Fenia_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Fenia_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Fish, 5);
		CreateInvItems (slf, ItFoMutton, 5);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItFo_Wine, 5);
		
		Fenia_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Fenia_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItFo_Fish, 5);
		CreateInvItems (slf, ItFoMutton, 2);
		CreateInvItems (slf, ItFo_Stew, 2);
		CreateInvItems (slf, ItFo_Wine, 2);
		
		Fenia_ItemsGiven_Chapter = 11;
	};
};
