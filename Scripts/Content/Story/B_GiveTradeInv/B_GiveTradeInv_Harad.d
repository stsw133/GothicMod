///******************************************************************************************

var int Harad_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Harad (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Harad_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		Harad_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Harad_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		Harad_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Harad_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 400);
		
		Harad_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Harad_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 600);
		
		CreateInvItems (slf, ItMi_Nugget, 1);
		
		Harad_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Harad_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 1000);
		
		CreateInvItems (slf, ItMi_Nugget, 2);
		
		Harad_ItemsGiven_Chapter = 5;
	};
};
