//******************************************************************************************

var int Lucia_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Addon_Lucia (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Lucia_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItFo_Booze, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Rum, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Grog, 10+Hlp_Random(20));
		CreateInvItems (slf, ItMi_Flask, 20+Hlp_Random(40));

		CreateInvItems (slf, ItRi_Dex_02, 1+Hlp_Random(2));

		Lucia_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Lucia_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItFo_Booze, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Rum, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Grog, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8));
		CreateInvItems (slf, ItMi_Flask, 20+Hlp_Random(40));

		Lucia_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Lucia_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItFo_Booze, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Rum, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Grog, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8));

		CreateInvItems (slf, ItMi_Flask, 10+Hlp_Random(20));

		Lucia_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Lucia_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItFo_Booze, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Rum, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Grog, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8));

		CreateInvItems (slf, ItMi_Flask, 10+Hlp_Random(20));

		Lucia_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Lucia_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItFo_Booze, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Rum, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Grog, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8));

		CreateInvItems (slf, ItMi_Flask, 10+Hlp_Random(20));

		Lucia_ItemsGiven_Chapter = 5;
	};
};
