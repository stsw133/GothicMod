//******************************************************************************************

var int Hakon_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Hakon (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Hakon_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 

		CreateInvItems (slf, ItMw_ShortSword3, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_ShortSword4, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Richtstab, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Schwert3, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Streitkolben, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Schiffsaxt, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMiSwordraw, 5+Hlp_Random(10));
		CreateInvItems (slf, ItMw_Schlachtaxt, 1+Hlp_Random(2));

		CreateInvItems (slf, ItBe_Grd_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItAm_Armor_01, 1+Hlp_Random(2));

		Hakon_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Hakon_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItMiSwordraw, 5+Hlp_Random(10));

		Hakon_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Hakon_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMw_Steinbrecher, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Doppelaxt, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMw_Streitkolben, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Orkschlaechter, 2+Hlp_Random(4));

		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItMiSwordraw, 5+Hlp_Random(10));

		Hakon_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Hakon_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));
		CreateInvItems (slf, ItMiSwordraw, 5+Hlp_Random(10));

		Hakon_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Hakon_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));
		CreateInvItems (slf, ItMiSwordraw, 5+Hlp_Random(10));

		Hakon_ItemsGiven_Chapter = 5;
	};
};
