//******************************************************************************************

var int Gorax_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Gorax (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Gorax_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

//		CreateInvItems (slf, ItKe_Innos_MIS, 1+Hlp_Random(2));

		CreateInvItems (slf, ItSc_Sleep, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMi_Sulfur, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Mana_01, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Health_01, 3+Hlp_Random(6));

		CreateInvItems (slf, ItWr_Map_Newworld, 1+Hlp_Random(2));

		CreateInvItems (slf, ItFo_Wine, 3+Hlp_Random(6));

		CreateInvItems (slf, ItBe_Mag_01, 1+Hlp_Random(2));

		CreateInvItems (slf, ItMw_Stab_Nov, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Stab_L_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Stab_H_01, 1+Hlp_Random(2));

		CreateInvItems (slf, ItRi_Mana_01, 1+Hlp_Random(2));

		Gorax_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Gorax_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItMi_Sulfur, 2+Hlp_Random(4));

		CreateInvItems (slf, ItPo_Health_01, 9+Hlp_Random(18));
		CreateInvItems (slf, ItPo_Mana_01, 14+Hlp_Random(28));

		CreateInvItems (slf, ItSc_Sleep, 2+Hlp_Random(4));

		CreateInvItems (slf, ItAm_Armor_01, 1+Hlp_Random(2));

		CreateInvItems (slf, ItMi_RuneBlank, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_MagicStone, 10+Hlp_Random(20));

		if ((hero.guild == GIL_PAL) || (hero.guild == GIL_MIL))
		{	CreateInvItems (slf, ItWr_Map_Shrine_MIS, 1+Hlp_Random(2)); 	};

		Gorax_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Gorax_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItMi_Sulfur, 2+Hlp_Random(4));

		CreateInvItems (slf, ItPo_Health_01, 15+Hlp_Random(30));
		CreateInvItems (slf, ItPo_Mana_01, 30+Hlp_Random(60));

		CreateInvItems (slf, ItMi_RuneBlank, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMi_MagicStone, 5+Hlp_Random(10));

 		if ((hero.guild == GIL_PAL) || (hero.guild == GIL_MIL))
		{	CreateInvItems (slf, ItWr_Map_Shrine_MIS, 1+Hlp_Random(2)); 	};

		Gorax_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Gorax_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));

		CreateInvItems (slf, ItMi_Sulfur, 5+Hlp_Random(10));
		CreateInvItems (slf, ItMi_Aquamarine, 2+Hlp_Random(4));

		CreateInvItems (slf, ItPo_Health_01, 25+Hlp_Random(50));
		CreateInvItems (slf, ItPo_Mana_01, 60+Hlp_Random(120));

		Gorax_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Gorax_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));

		CreateInvItems (slf, ItMi_Sulfur, 6+Hlp_Random(12));
		CreateInvItems (slf, ItMi_Aquamarine, 3+Hlp_Random(6));

		CreateInvItems (slf, ItPo_Health_01, 35+Hlp_Random(70));
		CreateInvItems (slf, ItPo_Mana_01, 90+Hlp_Random(180));

		CreateInvItems (slf, ItMi_RuneBlank, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMi_MagicStone, 5+Hlp_Random(10));

		Gorax_ItemsGiven_Chapter = 5;
	};
};
