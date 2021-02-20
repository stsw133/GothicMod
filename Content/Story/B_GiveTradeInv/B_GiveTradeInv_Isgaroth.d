//******************************************************************************************

var int Isgaroth_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Isgaroth (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Isgaroth_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItSc_Sleep, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMi_Sulfur, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Mana_01, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Health_01, 3+Hlp_Random(6));

		CreateInvItems (slf, ItRi_Eternity_01, 1+Hlp_Random(2));

		Isgaroth_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Isgaroth_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItMi_Sulfur, 5+Hlp_Random(10));

		CreateInvItems (slf, ItPo_Health_01, 9+Hlp_Random(18));
		CreateInvItems (slf, ItPo_Mana_01, 7+Hlp_Random(14));
		CreateInvItems (slf, ItSc_Sleep, 2+Hlp_Random(4));

		Isgaroth_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Isgaroth_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItMi_Sulfur, 4+Hlp_Random(8));

		CreateInvItems (slf, ItPo_Health_01, 15+Hlp_Random(30));
		CreateInvItems (slf, ItPo_Mana_01, 25+Hlp_Random(50));

		Isgaroth_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Isgaroth_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));

		CreateInvItems (slf, ItMi_Sulfur, 5+Hlp_Random(10));
		CreateInvItems (slf, ItMi_Aquamarine, 2+Hlp_Random(4));

		CreateInvItems (slf, ItPo_Health_01, 25+Hlp_Random(50));
		CreateInvItems (slf, ItPo_Mana_01, 50+Hlp_Random(100));

		CreateInvItems (slf, ItAm_Mana_01, 1+Hlp_Random(2));

		Isgaroth_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Isgaroth_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));

		CreateInvItems (slf, ItMi_Sulfur, 6+Hlp_Random(12));
		CreateInvItems (slf, ItMi_Aquamarine, 3+Hlp_Random(6));

		CreateInvItems (slf, ItPo_Health_01, 35+Hlp_Random(70));
		CreateInvItems (slf, ItPo_Mana_01, 100+Hlp_Random(200));

		Isgaroth_ItemsGiven_Chapter = 5;
	};
};
