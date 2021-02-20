//******************************************************************************************
FUNC VOID B_GiveTradeInv_Milten_DI (var C_NPC slf)
{
	CreateInvItems (slf, ItMi_Gold, 380+Hlp_Random(760)); 

	CreateInvItems (slf, ItPl_SwampHerb, 13+Hlp_Random(26));

	CreateInvItems (slf, ItPl_Temp_Herb, 9+Hlp_Random(18));
	CreateInvItems (slf, ItPl_GraveMoss, 9+Hlp_Random(18));
	CreateInvItems (slf, ItPl_Perm_Herb, 1+Hlp_Random(2));

	CreateInvItems (slf, ItMi_Aquamarine, 3+Hlp_Random(6));

	CreateInvItems (slf, ItPl_Health_Herb_01, 25+Hlp_Random(50));
	CreateInvItems (slf, ItPl_Health_Herb_02, 14+Hlp_Random(28));
	CreateInvItems (slf, ItPl_Health_Herb_03, 9+Hlp_Random(18));
	CreateInvItems (slf, ItPl_Mana_Herb_01, 13+Hlp_Random(26));
	CreateInvItems (slf, ItPl_Mana_Herb_02, 8+Hlp_Random(16));
	CreateInvItems (slf, ItPl_Mana_Herb_03, 2+Hlp_Random(4));

	CreateInvItems (slf, ItPl_Strength_Herb_01, 1+Hlp_Random(2));

	CreateInvItems (slf, ItPo_Health_01, 45+Hlp_Random(90));
	CreateInvItems (slf, ItPo_Mana_01, 60+Hlp_Random(120));

	CreateInvItems (slf, ItMi_RuneBlank, 1+Hlp_Random(2));
	CreateInvItems (slf, ItMi_MagicStone, 5+Hlp_Random(10));
};
