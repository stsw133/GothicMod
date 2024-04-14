///******************************************************************************************

var int Elena_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Elena (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Elena_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Apple, 2);
		CreateInvItems (slf, ItFo_Bacon, 3);
		CreateInvItems (slf, ItFo_Cheese, 5);
		CreateInvItems (slf, ItFo_Milk, 5);
		CreateInvItems (slf, ItFo_Water, 3);
		
		Elena_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Elena_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Cheese, 5);
		CreateInvItems (slf, ItFo_Fishsoup, 5);
		CreateInvItems (slf, ItFo_Milk, 3);
		CreateInvItems (slf, ItFoMutton, 3);
		CreateInvItems (slf, ItFo_Stew, 5);
		
		Elena_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Elena_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Bacon, 2);
		CreateInvItems (slf, ItFo_Cheese, 2);
		CreateInvItems (slf, ItFo_Milk, 5);
		CreateInvItems (slf, ItFoMutton, 3);
		CreateInvItems (slf, ItFo_Sausage, 3);
		CreateInvItems (slf, ItFo_Stew, 5);
		
		Elena_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Elena_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Milk, 10);
		CreateInvItems (slf, ItFoMutton, 5);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Stew, 1);
		CreateInvItems (slf, ItFo_Wine, 5);
		
		Elena_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Elena_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItFo_Bacon, 3);
		CreateInvItems (slf, ItFo_Milk, 10);
		CreateInvItems (slf, ItFoMutton, 5);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Stew, 3);
		CreateInvItems (slf, ItFo_Wine, 2);
		
		Elena_ItemsGiven_Chapter = 11;
	};
};
