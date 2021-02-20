//******************************************************************************************

var int Rethon_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Rethon (var C_NPC slf)
{
	if (Kapitel >= 10)
	&& (Rethon_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMw_Inquisitor, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Streitaxt2, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Kriegshammer2, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Orkschlaechter, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Folteraxt, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Krummschwert, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Barbarenstreitaxt, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Berserkeraxt, 1+Hlp_Random(2));

		Rethon_ItemsGiven_Chapter = 4;
	};
};
