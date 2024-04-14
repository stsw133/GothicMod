///******************************************************************************************

var int Harad_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Harad (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Harad_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		Harad_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Harad_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		Harad_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Harad_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 400);
		
		Harad_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Harad_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 600);
		
		CreateInvItems (slf, ItMi_Nugget, 1);
		
		Harad_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Harad_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 1000);
		
		CreateInvItems (slf, ItMi_Nugget, 2);
		
		Harad_ItemsGiven_Chapter = 11;
	};
};
