//******************************************************************************************

var int Orlan_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Orlan (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Orlan_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 30+Hlp_Random(60));

		CreateInvItems (slf, ItRw_Arrow, 21+Hlp_Random(42));
		CreateInvItems (slf, ItRw_Bolt, 5+Hlp_Random(10));

		CreateInvItems (slf, ItFo_Water, 4+Hlp_Random(8));
		CreateInvItems (slf, ItFo_Beer, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Bread, 4+Hlp_Random(8));
		CreateInvItems (slf, ItFo_Milk, 4+Hlp_Random(8));
		CreateInvItems (slf, ItFo_Wine, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Bacon, 2+Hlp_Random(4));
		CreateInvItems (slf, ItLsTorch, 3+Hlp_Random(6));

		CreateInvItems (slf, ItMw_Zweihaender1, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Bartaxt, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Orkschlaechter, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Schlachtaxt, 1+Hlp_Random(2));

		CreateInvItems (slf, ItMw_Barbarenstreitaxt, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Bow_L_01, 1+Hlp_Random(2));

		CreateInvItems (slf, ItRi_Resist_02, 1+Hlp_Random(2));

		Orlan_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Orlan_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 50+Hlp_Random(100));
		CreateInvItems (slf, ItRw_Arrow, 40+Hlp_Random(80));
		CreateInvItems (slf, ItRw_Bolt, 45+Hlp_Random(90));

		Orlan_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Orlan_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItRw_Arrow, 120+Hlp_Random(240));
		CreateInvItems (slf, ItRw_Bolt, 115+Hlp_Random(230));

		Orlan_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Orlan_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));

		CreateInvItems (slf, ItMw_Zweihaender1, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Bartaxt, 1+Hlp_Random(2));

		Orlan_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Orlan_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 300+Hlp_Random(600));

		CreateInvItems (slf, ItRw_Arrow, 120+Hlp_Random(240));
		CreateInvItems (slf, ItRw_Bolt, 115+Hlp_Random(230));

		Orlan_ItemsGiven_Chapter = 5;
	};
};
