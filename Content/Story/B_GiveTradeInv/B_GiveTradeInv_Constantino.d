//******************************************************************************************

var int Constantino_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Constantino (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Constantino_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 31+Hlp_Random(62));
		CreateInvItems (slf, ItMi_Flask, 5+Hlp_Random(10));
		CreateInvItems (slf, ItWr_Book_StarPower, 1+Hlp_Random(2));

		Constantino_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Constantino_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 60+Hlp_Random(120));
		CreateInvItems (slf, ItMi_Flask, 15+Hlp_Random(30));
		CreateInvItems (slf, ItPl_Temp_Herb, 10+Hlp_Random(20));
		CreateInvItems (slf, ItPl_GraveMoss, 10+Hlp_Random(20));
		CreateInvItems (slf, ItPl_SwampHerb, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_Health_Herb_01, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPl_Health_Herb_02, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_Mana_Herb_01, 5+Hlp_Random(10));

		Constantino_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Constantino_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 120+Hlp_Random(240));
		CreateInvItems (slf, ItMi_Flask, 20+Hlp_Random(40));
		CreateInvItems (slf, ItPl_Temp_Herb, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_GraveMoss, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_Perm_Herb, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_SwampHerb, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_Health_Herb_01, 9+Hlp_Random(18));
		CreateInvItems (slf, ItPl_Mana_Herb_01, 12+Hlp_Random(24));
		CreateInvItems (slf, ItPl_Mana_Herb_02, 7+Hlp_Random(14));
		CreateInvItems (slf, ItPl_Speed_Herb_01, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_Dex_Herb_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_Blueplant, 9+Hlp_Random(18));
		CreateInvItems (slf, ItAt_ShadowHorn, 1+Hlp_Random(2));

		Constantino_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Constantino_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 220+Hlp_Random(440));
		CreateInvItems (slf, ItMi_Flask, 25+Hlp_Random(50));
		CreateInvItems (slf, ItPl_Temp_Herb, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPl_GraveMoss, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPl_Perm_Herb, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_Health_Herb_01, 16+Hlp_Random(32));
		CreateInvItems (slf, ItPl_Health_Herb_02, 8+Hlp_Random(16));
		CreateInvItems (slf, ItPl_Health_Herb_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPl_Mana_Herb_01, 7+Hlp_Random(14));
		CreateInvItems (slf, ItPl_Mana_Herb_02, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_Speed_Herb_01, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_Dex_Herb_01, 2+Hlp_Random(4));
		CreateInvItems (slf, ItAt_ShadowHorn, 2+Hlp_Random(4));
		CreateInvItems (slf, ItAt_WolfFur, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Health_01, 6+Hlp_Random(12));

		Constantino_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Constantino_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 321+Hlp_Random(642));
		CreateInvItems (slf, ItMi_Flask, 25+Hlp_Random(50));
		CreateInvItems (slf, ItPl_Temp_Herb, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_GraveMoss, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_Perm_Herb, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_SwampHerb, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_Strength_Herb_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_Health_Herb_01, 24+Hlp_Random(48));
		CreateInvItems (slf, ItPl_Health_Herb_02, 9+Hlp_Random(18));
		CreateInvItems (slf, ItPl_Health_Herb_03, 6+Hlp_Random(12));
		CreateInvItems (slf, ItPl_Mana_Herb_01, 9+Hlp_Random(18));
		CreateInvItems (slf, ItPl_Mana_Herb_02, 6+Hlp_Random(12));
		CreateInvItems (slf, ItPl_Mana_Herb_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPl_Speed_Herb_01, 2+Hlp_Random(4));

		Constantino_ItemsGiven_Chapter = 5;
	};
};
