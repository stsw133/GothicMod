///******************************************************************************************

var int Brahim_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Brahim (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Brahim_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItWr_Map_Newworld, 1);
		CreateInvItems (slf, ItWr_Map_NewWorld_City, 2);
		
		Brahim_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Brahim_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItWr_Map_Newworld, 1);
		CreateInvItems (slf, ItWr_Map_Shrine_MIS, 1);
		
		Brahim_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Brahim_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItWr_Map_Newworld, 1);
		CreateInvItems (slf, ItWr_Map_Oldworld, 1);
		CreateInvItems (slf, ItWr_Map_ShatteredGolem_MIS, 1);
		
		Brahim_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Brahim_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItWr_Map_Caves_MIS, 1);
		
		Brahim_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Brahim_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		Brahim_ItemsGiven_Chapter = 11;
	};
};
