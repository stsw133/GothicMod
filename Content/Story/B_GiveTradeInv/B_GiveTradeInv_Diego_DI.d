//******************************************************************************************
FUNC VOID B_GiveTradeInv_Diego_DI (var C_NPC slf)
{
	CreateInvItems (slf, ItRw_Arrow, 160+Hlp_Random(320));
	CreateInvItems (slf, ItRw_Bolt, 120+Hlp_Random(240));
	CreateInvItems (slf, ItKe_Lockpick, 20+Hlp_Random(40));
	CreateInvItems (slf, ItRw_Bow_L_01, 1+Hlp_Random(2));
};
