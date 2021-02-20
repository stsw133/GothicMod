//******************************************************************************************

var int Lutero_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Lutero (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Lutero_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItPl_Temp_Herb, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_GraveMoss, 1+Hlp_Random(2));
		CreateInvItems (slf, ItLsTorch, 10+Hlp_Random(20));
		CreateInvItems (slf, ItSc_Charm, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMi_Sulfur, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Speed, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Geist, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMi_AppleTabak, 1+Hlp_Random(2));
		CreateInvItems (slf, ItAt_CrawlerMandibles, 1+Hlp_Random(2));

		Lutero_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Lutero_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItSc_Sleep, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMi_Aquamarine, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_Temp_Herb, 1+Hlp_Random(2));
		CreateInvItems (slf, ItLsTorch, 10+Hlp_Random(20)); 
		CreateInvItems (slf, ItSc_Charm, 2+Hlp_Random(4));
		CreateInvItems (slf, ItAt_Sting, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Speed, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Geist, 2+Hlp_Random(4));
		CreateInvItems (slf, ItWr_Book_Fight1H, 1+Hlp_Random(2));
		CreateInvItems (slf, ItWr_Book_Fight2H, 1+Hlp_Random(2));

		Lutero_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Lutero_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItPo_Speed, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Geist, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_Temp_Herb, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_GraveMoss, 1+Hlp_Random(2));
		CreateInvItems (slf, ItLsTorch, 10+Hlp_Random(20));
		CreateInvItems (slf, ItPo_Speed, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Geist, 3+Hlp_Random(6));
		CreateInvItems (slf, ItSc_Charm, 3+Hlp_Random(6));
		CreateInvItems (slf, ItAt_CrawlerMandibles, 1+Hlp_Random(2));

		CreateInvItems (slf, ItRi_Power_01, 1+Hlp_Random(2));

		Lutero_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Lutero_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));
		CreateInvItems (slf, ItAt_GolemHeart, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Speed, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Geist, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPl_Temp_Herb, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_GraveMoss, 1+Hlp_Random(2));
		CreateInvItems (slf, ItLsTorch, 10+Hlp_Random(20)); 
		CreateInvItems (slf, ItSc_Charm, 3+Hlp_Random(6));

		Lutero_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Lutero_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));
		CreateInvItems (slf, ItAt_DemonHeart, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_Perm_Herb, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMi_RuneBlank, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMi_MagicStone, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Speed, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Geist, 1+Hlp_Random(2));

		Lutero_ItemsGiven_Chapter = 5;
	};
};
