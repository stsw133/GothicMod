//******************************************************************************************

var int Zuris_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Zuris (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Zuris_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItPo_Mana_02, 10+Hlp_Random(20)); 
		CreateInvItems (slf, ItPo_Health_02, 10+Hlp_Random(20));
		CreateInvItems (slf, ItPo_Health_03, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Mana_03, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_AppleTabak, 2+Hlp_Random(4));
		CreateInvItems (slf, ItWr_Book_StarPower, 1+Hlp_Random(2));

		CreateInvItems (slf, ItSc_Sleep, 1+Hlp_Random(2));

		CreateInvItems (slf, ItAm_Eternity_01, 1+Hlp_Random(2));

		Zuris_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Zuris_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 60+Hlp_Random(120)); 
		CreateInvItems (slf, ItPo_Health_03, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Mana_03, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Mana_02, 16+Hlp_Random(32)); 
		CreateInvItems (slf, ItPo_Health_02, 17+Hlp_Random(34));
		CreateInvItems (slf, ItMi_AppleTabak, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Perm_Str, 1+Hlp_Random(2));

		Zuris_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Zuris_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 120+Hlp_Random(240));
		CreateInvItems (slf, ItPo_Health_03, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Mana_03, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Mana_02, 28+Hlp_Random(56));
		CreateInvItems (slf, ItPo_Health_02, 40+Hlp_Random(80));
		CreateInvItems (slf, ItPo_Perm_Mana, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Speed, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Geist, 1+Hlp_Random(2));

		Zuris_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Zuris_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 220+Hlp_Random(440)); 
		CreateInvItems (slf, ItPo_Health_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_02, 50+Hlp_Random(100));
		CreateInvItems (slf, ItPo_Health_02, 65+Hlp_Random(130));
		CreateInvItems (slf, ItPo_Perm_Mana, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Speed, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Geist, 1+Hlp_Random(2));

		Zuris_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Zuris_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 321+Hlp_Random(642));
		CreateInvItems (slf, ItPo_Health_03, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Mana_03, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Mana_02, 105+Hlp_Random(210));
		CreateInvItems (slf, ItPo_Health_02, 105+Hlp_Random(210));
		CreateInvItems (slf, ItPo_Perm_Health, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItPo_Speed, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Geist, 1+Hlp_Random(2));

		Zuris_ItemsGiven_Chapter = 5;
	};
};
