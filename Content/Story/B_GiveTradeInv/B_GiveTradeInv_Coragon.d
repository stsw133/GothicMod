///******************************************************************************************

var int Coragon_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Coragon (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Coragon_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItFo_Wine, 6);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Beer, 5);
		CreateInvItems (slf, ItFo_Apple, 5);
		CreateInvItems (slf, ItFo_Stew, 5);
		
		Coragon_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Coragon_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItFo_Wine, 4);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Beer, 5);
		CreateInvItems (slf, ItFo_Cheese, 5);
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Honey, 5);
		
		Coragon_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Coragon_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItFo_Wine, 4);
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Beer, 6);
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Honey, 5);
		
		Coragon_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Coragon_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		CreateInvItems (slf, ItFo_Wine, 7);
		CreateInvItems (slf, ItFo_Booze, 4);
		CreateInvItems (slf, ItFo_Beer, 6);
		CreateInvItems (slf, ItFo_Apple, 5);
		CreateInvItems (slf, ItFo_Stew, 5);
		
		Coragon_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Coragon_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		CreateInvItems (slf, ItFo_Wine, 5);
		CreateInvItems (slf, ItFo_Booze, 4);
		CreateInvItems (slf, ItFo_Beer, 5);
		CreateInvItems (slf, ItFo_Apple, 5);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Honey, 5);
		
		Coragon_ItemsGiven_Chapter = 5;
	};
};
