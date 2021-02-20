//******************************************************************************************

var int Martin_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Addon_Martin (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Martin_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Moleratlubric_MIS, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItMw_ShortSword1, 3+Hlp_Random(6)); 
		CreateInvItems (slf, ItMw_Schwert2, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItMW_Addon_Hacker_1h_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMW_Addon_Hacker_2h_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Meisterdegen, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_ShortSword5, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Schwert4, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Runenschwert, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItRi_Mana_01, 1+Hlp_Random(2)); 

		Martin_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Martin_ItemsGiven_Chapter < 2)
	{
		Martin_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Martin_ItemsGiven_Chapter < 3)
	{
		Martin_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Martin_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Nugget, 1+Hlp_Random(2));

		Martin_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Martin_ItemsGiven_Chapter < 5)
	{
		Martin_ItemsGiven_Chapter = 5;
	};
};
