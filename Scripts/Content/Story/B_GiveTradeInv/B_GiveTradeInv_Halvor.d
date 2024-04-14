///******************************************************************************************

var int Halvor_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Halvor (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Halvor_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItFo_Fish, 12);
		
		Halvor_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Halvor_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItFo_Fish, 8);
		
		Halvor_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Halvor_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Fish, 4);
		
		Halvor_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Halvor_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItFo_Fish, 19);
		
		Halvor_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Halvor_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItFo_Fish, 9);
		
		Halvor_ItemsGiven_Chapter = 11;
	};
};
