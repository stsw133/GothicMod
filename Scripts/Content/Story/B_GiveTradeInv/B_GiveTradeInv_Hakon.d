///******************************************************************************************

var int Hakon_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Hakon (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Hakon_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItMiSwordraw, 5);
		CreateInvItems (slf, ItMw_Richtstab, 1);
		CreateInvItems (slf, ItMw_Schiffsaxt, 1);
		CreateInvItems (slf, ItMw_Schlachtaxt, 1);
		CreateInvItems (slf, ItMw_Schwert3, 1);
		CreateInvItems (slf, ItMw_ShortSword3, 1);
		CreateInvItems (slf, ItMw_ShortSword4, 1);
		CreateInvItems (slf, ItMw_Streitkolben, 1);
		
		CreateInvItems (slf, ItBe_Addon_Leather_01, 1);
		CreateInvItems (slf, ItBe_Addon_MIL_01, 1);
		CreateInvItems (slf, ItAm_Prot_Edge_01, 1);
		
		Hakon_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Hakon_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItMiSwordraw, 5);
		
		Hakon_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Hakon_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItMw_Doppelaxt, 2);
		CreateInvItems (slf, ItMw_Orkschlaechter, 2);
		CreateInvItems (slf, ItMw_Steinbrecher, 1);
		CreateInvItems (slf, ItMw_Streitkolben, 1);
		
		CreateInvItems (slf, ItMiSwordraw, 5);
		CreateInvItems (slf, ItBe_Addon_Prot_Point_01, 1);
		
		Hakon_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Hakon_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItMiSwordraw, 5);
		CreateInvItems (slf, ItBe_Addon_Prot_Edge_01, 1);
		CreateInvItems (slf, ItBe_Addon_Prot_Blunt_01, 1);
		
		Hakon_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Hakon_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItMiSwordraw, 5);
		
		Hakon_ItemsGiven_Chapter = 11;
	};
};
