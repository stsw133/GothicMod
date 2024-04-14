///******************************************************************************************

var int Coragon_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Coragon (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Coragon_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItFo_Apple, 5);
		CreateInvItems (slf, ItFo_Beer, 5);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItFo_Wine, 6);
		
		Coragon_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Coragon_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Beer, 5);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Cheese, 5);
		CreateInvItems (slf, ItFo_Honey, 5);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Wine, 4);
		
		Coragon_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Coragon_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Beer, 6);
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Honey, 5);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Wine, 4);
		
		Coragon_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Coragon_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItFo_Apple, 5);
		CreateInvItems (slf, ItFo_Beer, 6);
		CreateInvItems (slf, ItFo_Booze, 4);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItFo_Wine, 7);
		
		Coragon_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Coragon_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItFo_Apple, 5);
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Beer, 5);
		CreateInvItems (slf, ItFo_Booze, 4);
		CreateInvItems (slf, ItFo_Honey, 5);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItFo_Wine, 5);
		
		Coragon_ItemsGiven_Chapter = 11;
	};
};
