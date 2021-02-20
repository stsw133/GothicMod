//******************************************************************************************

var int Salandril_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Salandril (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Salandril_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItPo_Mana_01, 7+Hlp_Random(14));
		CreateInvItems (slf, ItPo_Health_01, 7+Hlp_Random(14));
		CreateInvItems (slf, ItPl_Speed_Herb_01, 2+Hlp_Random(4));

		CreateInvItems (slf, ItAm_Energy_01, 1+Hlp_Random(2));

		Salandril_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Salandril_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItPo_Mana_01, 7+Hlp_Random(14));
		CreateInvItems (slf, ItPo_Health_01, 7+Hlp_Random(14));

		Salandril_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Salandril_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItPo_Mana_01, 7+Hlp_Random(14));
		CreateInvItems (slf, ItPo_Health_01, 7+Hlp_Random(14));

		Salandril_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Salandril_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));

		CreateInvItems (slf, ItPo_Mana_01, 7+Hlp_Random(14));
		CreateInvItems (slf, ItPo_Health_01, 7+Hlp_Random(14));

		Salandril_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Salandril_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 300+Hlp_Random(600));

		CreateInvItems (slf, ItPo_Mana_01, 7+Hlp_Random(14));
		CreateInvItems (slf, ItPo_Health_01, 7+Hlp_Random(14));

		Salandril_ItemsGiven_Chapter = 5;
	};
};
