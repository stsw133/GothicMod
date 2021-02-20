//******************************************************************************************

var int Scatty_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Addon_Scatty (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Scatty_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_GoldNugget, 7+Hlp_Random(14));

		CreateInvItems (slf, ItMw_2H_Axe_L_01, 2+Hlp_Random(4));

		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bread, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Water, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));

		CreateInvItems (slf, ItPo_Mana_01, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPo_Health_01, 4+Hlp_Random(8));

		CreateInvItems (slf, ItRw_Arrow, 50+Hlp_Random(100));
		CreateInvItems (slf, ItRw_Bolt, 50+Hlp_Random(100));

		CreateInvItems (slf, ItMw_Schwert2, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Zweihaender1, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Crossbow_L_02, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Schwert5, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Streitaxt2, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Inquisitor, 1+Hlp_Random(2));

		Scatty_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Scatty_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMw_2H_Axe_L_01, 2+Hlp_Random(4));

		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bread, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Water, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));

		CreateInvItems (slf, ItPo_Mana_01, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPo_Health_01, 4+Hlp_Random(8));

		CreateInvItems (slf, ItRw_Arrow, 50+Hlp_Random(100));
		CreateInvItems (slf, ItRw_Bolt, 50+Hlp_Random(100));

		Scatty_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Scatty_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMw_2H_Axe_L_01, 2+Hlp_Random(4));

		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bread, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Water, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));

		CreateInvItems (slf, ItPo_Mana_01, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPo_Health_01, 4+Hlp_Random(8));

		CreateInvItems (slf, ItRw_Arrow, 50+Hlp_Random(100));
		CreateInvItems (slf, ItRw_Bolt, 50+Hlp_Random(100));

		Scatty_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Scatty_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMw_2H_Axe_L_01, 2+Hlp_Random(4));

		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bread, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Water, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));

		CreateInvItems (slf, ItPo_Mana_01, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPo_Health_01, 4+Hlp_Random(8));

		CreateInvItems (slf, ItRw_Arrow, 50+Hlp_Random(100));
		CreateInvItems (slf, ItRw_Bolt, 50+Hlp_Random(100));

		Scatty_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Scatty_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMw_2H_Axe_L_01, 2+Hlp_Random(4));

		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bread, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Water, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));

		CreateInvItems (slf, ItPo_Mana_01, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPo_Health_01, 4+Hlp_Random(8));

		CreateInvItems (slf, ItRw_Arrow, 50+Hlp_Random(100));
		CreateInvItems (slf, ItRw_Bolt, 50+Hlp_Random(100));

		Scatty_ItemsGiven_Chapter = 5;
	};
};
