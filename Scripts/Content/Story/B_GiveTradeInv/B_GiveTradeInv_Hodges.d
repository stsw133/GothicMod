///******************************************************************************************

var int Hodges_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Hodges (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Hodges_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItMw_1h_Bau_Mace, 1);
		CreateInvItems (slf, ItMw_1h_Mace_L_04, 1);
		CreateInvItems (slf, ItMw_1h_Sld_Axe, 1);
		CreateInvItems (slf, ItMw_1h_Sld_Sword, 1);
		CreateInvItems (slf, ItMw_1h_Vlk_Axe, 1);
		CreateInvItems (slf, ItMw_Schwert, 1);
		
		Canthar_ItemsGiven_Chapter = 7;
	};
};
