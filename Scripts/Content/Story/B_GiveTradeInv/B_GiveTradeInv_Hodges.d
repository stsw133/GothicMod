///******************************************************************************************

var int Hodges_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Hodges (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Hodges_ItemsGiven_Chapter < 7)
	{
		CreateInvItem (self, ItMw_1h_Bau_Mace);
		CreateInvItem (self, ItMw_1h_Vlk_Axe);
		CreateInvItem (self, ItMw_1h_Mace_L_04);
		CreateInvItem (self, ItMw_1h_Sld_Axe);
		CreateInvItem (self, ItMw_1h_Sld_Sword);
		CreateInvItem (self, ItMw_Schwert);
		
		CreateInvItems (slf, ItMi_Gold, Hlp_RandomRange(50,100));
		
		Canthar_ItemsGiven_Chapter = 7;
	};
};
