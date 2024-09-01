///******************************************************************************************

var int Lucia_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Addon_Lucia (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Lucia_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItFo_Addon_Grog, 10);
		CreateInvItems (slf, ItFo_Addon_Rum, 10);
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItMi_Flask, 20);
		
		CreateInvItems (slf, ItRi_Asa_02, 1);
		
		Lucia_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Lucia_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItFo_Addon_Grog, 10);
		CreateInvItems (slf, ItFo_Addon_Rum, 10);
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Booze, 10);
		CreateInvItems (slf, ItMi_Flask, 20);
		
		Lucia_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Lucia_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItFo_Addon_Grog, 10);
		CreateInvItems (slf, ItFo_Addon_Rum, 10);
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Booze, 10);
		
		CreateInvItems (slf, ItMi_Flask, 10);
		
		Lucia_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Lucia_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItFo_Addon_Grog, 10);
		CreateInvItems (slf, ItFo_Addon_Rum, 10);
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Booze, 10);
		CreateInvItems (slf, ItMi_Flask, 10);
		
		Lucia_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Lucia_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItFo_Addon_Grog, 10);
		CreateInvItems (slf, ItFo_Addon_Rum, 10);
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Booze, 10);
		CreateInvItems (slf, ItMi_Flask, 10);
		
		Lucia_ItemsGiven_Chapter = 11;
	};
};
