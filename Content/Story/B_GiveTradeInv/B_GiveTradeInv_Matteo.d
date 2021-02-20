//******************************************************************************************

var int Matteo_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Matteo (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Matteo_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItLsTorch, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Health_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bread, 4+Hlp_Random(8));
		CreateInvItems (slf, ItFo_Water, 1+Hlp_Random(2));
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8));
		CreateInvItems (slf, ItRw_Arrow, 15+Hlp_Random(30));

		CreateInvItems (slf, ItMw_Kriegskeule, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Nagelkeule2, 1+Hlp_Random(2));

		Matteo_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Matteo_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, itmi_broom, 2+Hlp_Random(4));
		CreateInvItems (slf, ItLsTorch, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPl_Forestberry, 3+Hlp_Random(6)); 
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Water, 4+Hlp_Random(8)); 
		CreateInvItems (slf, ItFo_Wine, 4+Hlp_Random(8));
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8));
		CreateInvItems (slf, ItRw_Arrow, 30+Hlp_Random(60));

		Matteo_ItemsGiven_Chapter = 2;
	};	

	if (Kapitel >= 9)
	&& (Matteo_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItLsTorch, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPl_Forestberry, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Bread, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Sausage, 3+Hlp_Random(6)); 
		CreateInvItems (slf, ItFo_Wine, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8));
		CreateInvItems (slf, ItRw_Arrow, 50+Hlp_Random(100));

		Matteo_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Matteo_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300)); 
		CreateInvItems (slf, ItPl_Mana_Herb_02, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_Health_Herb_02, 3+Hlp_Random(6)); 
		CreateInvItems (slf, ItMi_Lute, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItFo_Sausage, 3+Hlp_Random(6)); 
		CreateInvItems (slf, ItFo_Wine, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8));
		CreateInvItems (slf, ItRw_Arrow, 100+Hlp_Random(200));

		Matteo_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Matteo_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));
		CreateInvItems (slf, ItPl_Health_Herb_02, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItMi_Lute, 1+Hlp_Random(2));
		CreateInvItems (slf, ItFo_Bacon, 1+Hlp_Random(2));
		CreateInvItems (slf, ItFo_Fishsoup, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMiSwordraw, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Arrow, 20+Hlp_Random(40));

		Matteo_ItemsGiven_Chapter = 5;
	};
};
