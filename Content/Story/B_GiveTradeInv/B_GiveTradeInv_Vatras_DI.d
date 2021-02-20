//******************************************************************************************
FUNC VOID B_GiveTradeInv_Vatras_DI (var C_NPC slf)
{
	CreateInvItems (slf, ItMi_Gold, 230+Hlp_Random(460));

	CreateInvItems (slf, ItPl_Temp_Herb, 4+Hlp_Random(8));
	CreateInvItems (slf, ItPl_GraveMoss, 4+Hlp_Random(8));
	CreateInvItems (slf, ItPl_Perm_Herb, 2+Hlp_Random(4));

	CreateInvItems (slf, ItPo_Health_01, 30+Hlp_Random(60));
	CreateInvItems (slf, ItPo_Mana_01, 50+Hlp_Random(100));
};
