///******************************************************************************************

var int Martin_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Addon_Martin (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Martin_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItAt_MoleratLubric, 1);
		CreateInvItems (slf, ItSc_PalBless, 10);
		CreateInvItems (slf, ItSc_PalGlory, 1);
		CreateInvItems (slf, ItSc_PalHolyBolt, 2);
		
		CreateInvItems (slf, ItMW_Addon_Hacker_1h_01, 1);
		CreateInvItems (slf, ItMW_Addon_Hacker_2h_01, 1);
		CreateInvItems (slf, ItMw_Meisterdegen, 1);
		CreateInvItems (slf, ItMw_Runenschwert, 1);
		CreateInvItems (slf, ItMw_Schwert2, 2);
		CreateInvItems (slf, ItMw_Schwert4, 1);
		CreateInvItems (slf, ItMw_ShortSword1, 3);
		CreateInvItems (slf, ItMw_ShortSword5, 1);
		
		CreateInvItems (slf, ItRi_Mp_01, 1);
		
		Martin_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Martin_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItSc_PalGlory, 1);
		CreateInvItems (slf, ItSc_PalHolyBolt, 3);
		CreateInvItems (slf, ItSc_PalJustice, 1);
		CreateInvItems (slf, ItSc_PalRepelEvil, 1);
		
		Martin_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Martin_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItSc_PalGlory, 1);
		CreateInvItems (slf, ItSc_PalHolyBolt, 3);
		CreateInvItems (slf, ItSc_PalJustice, 2);
		CreateInvItems (slf, ItSc_PalRepelEvil, 1);
		
		Martin_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Martin_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Nugget, 1);
		CreateInvItems (slf, ItSc_PalDestroyEvil, 1);
		CreateInvItems (slf, ItSc_PalGlory, 1);
		CreateInvItems (slf, ItSc_PalHolyBolt, 4);
		CreateInvItems (slf, ItSc_PalJustice, 3);
		CreateInvItems (slf, ItSc_PalRepelEvil, 2);
		
		Martin_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Martin_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItSc_PalDestroyEvil, 2);
		CreateInvItems (slf, ItSc_PalGlory, 1);
		CreateInvItems (slf, ItSc_PalHolyBolt, 5);
		CreateInvItems (slf, ItSc_PalJustice, 2);
		CreateInvItems (slf, ItSc_PalRepelEvil, 3);
		
		Martin_ItemsGiven_Chapter = 11;
	};
};
