//******************************************************************************************

var int Juan_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Addon_Juan (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Juan_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_GoldNugget, 2+Hlp_Random(4));

		CreateInvItems (slf, ItFo_Booze, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Apple, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Pear, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bread, 5+Hlp_Random(10));

		CreateInvItems (slf, ItPl_Mana_Herb_02, 10+Hlp_Random(20));
		CreateInvItems (slf, ItPl_Mana_Herb_03, 5+Hlp_Random(10));

		CreateInvItems (slf, ItPl_Health_Herb_02, 10+Hlp_Random(20)); 
		CreateInvItems (slf, ItPl_Health_Herb_03, 5+Hlp_Random(10));

		CreateInvItems (slf, ItPl_Temp_Herb, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPl_GraveMoss, 3+Hlp_Random(6));

		CreateInvItems (slf, ItPo_Mana_02, 12+Hlp_Random(24)); 
		CreateInvItems (slf, ItPo_Health_02, 12+Hlp_Random(24));

		CreateInvItems (slf, ItPo_Mana_03, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItPo_Health_03, 1+Hlp_Random(2));

		CreateInvItems (slf, ItRw_Arrow, 100+Hlp_Random(200)); 
		CreateInvItems (slf, ItRw_Bolt, 100+Hlp_Random(200)); 

		Juan_ItemsGiven_Chapter = 1;
	};
};
