///******************************************************************************************

var int Huno_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Addon_Huno (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Huno_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMiSwordraw, 3);
		CreateInvItems (slf, ItMi_Nugget, 1);
		
		CreateInvItems (slf, ItMw_Streitaxt1, 1);
		CreateInvItems (slf, ItMw_Schwert2 , 1);
		CreateInvItems (slf, ItMw_Morgenstern, 1);
		CreateInvItems (slf, ItMw_2H_Axe_L_01, 5);
		
		CreateInvItems (slf, ItRi_Str_01, 1);
		
		Huno_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Huno_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMiSwordraw, 3);
		CreateInvItems (slf, ItMi_Nugget, 1);
		
		Huno_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Huno_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMiSwordraw, 3);
		CreateInvItems (slf, ItMi_Nugget, 1);
		
		Huno_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Huno_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMiSwordraw, 3);
		CreateInvItems (slf, ItMi_Nugget, 1);
		
		Huno_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Huno_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMiSwordraw, 3);
		CreateInvItems (slf, ItMi_Nugget, 1);
		
		Huno_ItemsGiven_Chapter = 5;
	};
};
