///******************************************************************************************

var int Halvor_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Halvor (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Halvor_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItFo_Fish, 12);
		
		Halvor_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Halvor_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItFo_Fish, 8);
		
		Halvor_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Halvor_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Fish, 4);
		
		Halvor_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Halvor_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItFo_Fish, 19);
		
		Halvor_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Halvor_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItFo_Fish, 9);
		
		Halvor_ItemsGiven_Chapter = 5;
	};
};
