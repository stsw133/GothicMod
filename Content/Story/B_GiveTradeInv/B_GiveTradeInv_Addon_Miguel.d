//******************************************************************************************

var int Miguel_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Addon_Miguel (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Miguel_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItPo_Mana_02, 14+Hlp_Random(28)); 
		CreateInvItems (slf, ItPo_Health_02, 14+Hlp_Random(28));

		CreateInvItems (slf, ItPo_Health_03, 1+Hlp_Random(2));

		Miguel_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Miguel_ItemsGiven_Chapter < 2)
	{
		Miguel_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Miguel_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItPo_Mana_02, 7+Hlp_Random(14)); 
		CreateInvItems (slf, ItPo_Health_02, 7+Hlp_Random(14));

		Miguel_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Miguel_ItemsGiven_Chapter < 4)
	{
		Miguel_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Miguel_ItemsGiven_Chapter < 5)
	{
		Miguel_ItemsGiven_Chapter = 5;
	};
};
