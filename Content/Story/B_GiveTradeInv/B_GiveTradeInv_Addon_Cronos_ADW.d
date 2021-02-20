//******************************************************************************************

var int Cronos_ADW_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Addon_Cronos_ADW (var C_NPC slf)
{
	if (Kapitel >= 8)
	&& (Cronos_ADW_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMw_Stab_L_02, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Stab_H_02, 1+Hlp_Random(2));

		CreateInvItems (slf, ItMi_Sulfur, 2+Hlp_Random(4));

		CreateInvItems (slf, ItPo_Health_02, 9+Hlp_Random(18));
		CreateInvItems (slf, ItPo_Mana_02, 14+Hlp_Random(28));

		CreateInvItems (slf, ItPo_Health_03, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Mana_03, 5+Hlp_Random(10));

		CreateInvItems (slf, ItMi_Flask, 15+Hlp_Random(30));

		CreateInvItems (slf, ItWr_Map_AddonWorld, 1+Hlp_Random(2));

		CreateInvItems (slf, ItMi_RuneBlank, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_MagicStone, 10+Hlp_Random(20));

		Cronos_ADW_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Cronos_ADW_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItMi_Sulfur, 2+Hlp_Random(4));

		CreateInvItems (slf, ItPo_Health_02, 15+Hlp_Random(30));
		CreateInvItems (slf, ItPo_Mana_02, 30+Hlp_Random(60));

		CreateInvItems (slf, ItPo_Health_03, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Mana_03, 5+Hlp_Random(10));

		CreateInvItems (slf, ItMi_Flask, 10+Hlp_Random(20));

		CreateInvItems (slf, ItMi_RuneBlank, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_MagicStone, 10+Hlp_Random(20));

		Cronos_ADW_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Cronos_ADW_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Sulfur, 5+Hlp_Random(10));
		CreateInvItems (slf, ItMi_Aquamarine, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_Flask, 10+Hlp_Random(20));

		CreateInvItems (slf, ItPo_Health_03, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Mana_03, 10+Hlp_Random(20));

		CreateInvItems (slf, ItPo_Health_02, 25+Hlp_Random(50));
		CreateInvItems (slf, ItPo_Mana_02, 60+Hlp_Random(120));

		Cronos_ADW_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Cronos_ADW_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Sulfur, 6+Hlp_Random(12));
		CreateInvItems (slf, ItMi_Aquamarine, 3+Hlp_Random(6));
		CreateInvItems (slf, ItMi_Flask, 10+Hlp_Random(20));

		CreateInvItems (slf, ItPo_Health_02, 35+Hlp_Random(70));
		CreateInvItems (slf, ItPo_Mana_02, 90+Hlp_Random(180));

		CreateInvItems (slf, ItMi_RuneBlank, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMi_MagicStone, 5+Hlp_Random(10));

		Cronos_ADW_ItemsGiven_Chapter = 5;
	};
};
