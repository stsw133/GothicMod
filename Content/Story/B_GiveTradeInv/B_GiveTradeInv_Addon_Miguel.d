///******************************************************************************************

var int Miguel_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Addon_Miguel (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Miguel_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItPo_Mana_01, 10);
		CreateInvItems (slf, ItPo_Health_01, 10);
		CreateInvItems (slf, ItPo_Mana_02, 4);
		CreateInvItems (slf, ItPo_Health_02, 4);
		
		CreateInvItems (slf, ItPo_Health_Addon_04, 1);
		
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
		CreateInvItems (slf, ItPo_Mana_01, 5);
		CreateInvItems (slf, ItPo_Health_01, 5);
		CreateInvItems (slf, ItPo_Mana_02, 2);
		CreateInvItems (slf, ItPo_Health_02, 2);
		
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
