///******************************************************************************************

var int Rethon_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Rethon (var C_Npc slf)
{
	if (Kapitel >= 10)
	&& (Rethon_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMw_Barbarenstreitaxt, 1);
		CreateInvItems (slf, ItMw_Berserkeraxt, 1);
		CreateInvItems (slf, ItMw_Folteraxt, 1);
		CreateInvItems (slf, ItMw_Inquisitor, 1);
		CreateInvItems (slf, ItMw_Kriegshammer2, 1);
		CreateInvItems (slf, ItMw_Krummschwert, 1);
		CreateInvItems (slf, ItMw_Orkschlaechter, 1);
		CreateInvItems (slf, ItMw_Streitaxt2, 1);
		
		Rethon_ItemsGiven_Chapter = 10;
	};
};
