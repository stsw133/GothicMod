//******************************************************************************************

var int Cronos_NW_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Addon_Cronos_NW (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Cronos_NW_ItemsGiven_Chapter < 1)
	{
	 	CreateInvItems (slf, ItMi_Flask, 5+Hlp_Random(10));
		CreateInvItems (slf, ItMi_Sulfur, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Mana_01, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Health_01, 6+Hlp_Random(12));

		Cronos_NW_ItemsGiven_Chapter = 1;
	};
};
