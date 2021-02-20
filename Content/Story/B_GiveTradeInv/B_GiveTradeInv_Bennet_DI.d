//******************************************************************************************
FUNC VOID B_GiveTradeInv_Bennet_DI (var C_NPC slf)
{
	CreateInvItems (slf, ItMi_Gold, 700+Hlp_Random(1400));

	CreateInvItems (slf, ItMiSwordraw, 3+Hlp_Random(6));

	CreateInvItems (slf, ItRw_Arrow, 140+Hlp_Random(280));
	CreateInvItems (slf, ItRw_Bolt, 140+Hlp_Random(280));

	CreateInvItems (slf, ItMw_ElBastardo, 1+Hlp_Random(2));
	CreateInvItems (slf, ItMw_Folteraxt, 1+Hlp_Random(2));
	CreateInvItems (slf, ItMw_Zweihaender4, 1+Hlp_Random(2));
	CreateInvItems (slf, ItMw_Barbarenstreitaxt, 1+Hlp_Random(2));
	CreateInvItems (slf, ItMw_Berserkeraxt, 1+Hlp_Random(2));

	CreateInvItems (slf, ItMi_Nugget, 4+Hlp_Random(8));
};
