///******************************************************************************************

var int Brahim_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Brahim (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Brahim_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItWr_Map_Newworld, 1);
		CreateInvItems (slf, ItWr_Map_NewWorld_City, 2);
		
		Brahim_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Brahim_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItWr_Map_Shrine_MIS, 1);
		CreateInvItems (slf, ItWr_Map_Newworld, 1);
		
		Brahim_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Brahim_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItWr_Map_ShatteredGolem_MIS, 1);
		CreateInvItems (slf, ItWr_Map_Newworld, 1);
		CreateInvItems (slf, ItWr_Map_Oldworld, 1);
		CreateInvItems (slf, ItMi_Gold, 50);
		
		Brahim_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Brahim_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItWr_Map_Caves_MIS, 1);
		
		Brahim_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Brahim_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		Brahim_ItemsGiven_Chapter = 5;
	};
};
