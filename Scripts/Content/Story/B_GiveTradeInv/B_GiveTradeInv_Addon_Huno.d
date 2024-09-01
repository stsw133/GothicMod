///******************************************************************************************

var int Huno_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Addon_Huno (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Huno_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Nugget, 1);
		CreateInvItems (slf, ItMiSwordraw, 3);
		
		CreateInvItems (slf, ItMw_2h_Axe_L_01, 5);
		CreateInvItems (slf, ItMw_Morgenstern, 1);
		CreateInvItems (slf, ItMw_Schwert2 , 1);
		CreateInvItems (slf, ItMw_Streitaxt1, 1);
		
		CreateInvItems (slf, ItRi_Djg_01, 1);
		
		Huno_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Huno_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Nugget, 1);
		CreateInvItems (slf, ItMiSwordraw, 3);
		
		Huno_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Huno_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Nugget, 1);
		CreateInvItems (slf, ItMiSwordraw, 3);
		
		Huno_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Huno_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Nugget, 1);
		CreateInvItems (slf, ItMiSwordraw, 3);
		
		Huno_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Huno_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Nugget, 1);
		CreateInvItems (slf, ItMiSwordraw, 3);
		
		Huno_ItemsGiven_Chapter = 11;
	};
};
