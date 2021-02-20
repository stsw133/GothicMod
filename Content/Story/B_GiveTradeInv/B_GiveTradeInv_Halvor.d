//******************************************************************************************

var int Halvor_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Halvor (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Halvor_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItFo_Fish, 12+Hlp_Random(24));

		Halvor_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Halvor_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 50+Hlp_Random(100));

		CreateInvItems (slf, ItFo_Fish, 8+Hlp_Random(16));

		Halvor_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Halvor_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 

		CreateInvItems (slf, ItFo_Fish, 4+Hlp_Random(8));

		Halvor_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Halvor_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300)); 

		CreateInvItems (slf, ItFo_Fish, 19+Hlp_Random(38));

		Halvor_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Halvor_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400)); 

		CreateInvItems (slf, ItFo_Fish, 9+Hlp_Random(18));

		Halvor_ItemsGiven_Chapter = 5;
	};
};
