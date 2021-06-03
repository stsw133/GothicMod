///******************************************************************************************

var int Lutero_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Lutero (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Lutero_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItMi_Quartz, 1);
		CreateInvItems (slf, ItPl_Temp_Herb, 1);
		CreateInvItems (slf, ItLsTorch, 10);
		CreateInvItems (slf, ItSC_Charm, 1);
		CreateInvItems (slf, ItMi_HolyWater, 1);
		CreateInvItems (slf, ItMi_Sulfur, 1);
		CreateInvItems (slf, ItPo_Speed, 1);
		CreateInvItems (slf, ItMi_Pitch, 1);
		CreateInvItems (slf, ItMi_Coal, 1);
		CreateInvItems (slf, ItMi_FruitTabak, 1);
		CreateInvItems (slf, ItAt_CrawlerMandibles, 1);
		
		Lutero_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Lutero_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItMi_HolyWater, 1);
		CreateInvItems (slf, ItSc_Sleep, 1);
		CreateInvItems (slf, ItMi_Aquamarine, 1);
		CreateInvItems (slf, ItMi_Quartz, 1);
		CreateInvItems (slf, ItPl_Temp_Herb, 1);
		CreateInvItems (slf, ItLsTorch, 10);
		CreateInvItems (slf, ItSC_Charm, 2);
		CreateInvItems (slf, ItAt_Sting, 1);
		CreateInvItems (slf, ItPo_Speed, 2);
		CreateInvItems (slf, ItWr_Book_Fight2H, 1);
		CreateInvItems (slf, ItWr_Book_Fight1H, 1);
		
		Lutero_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Lutero_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItPo_Speed, 1);
		CreateInvItems (slf, ItMi_DarkPearl, 1);
		CreateInvItems (slf, ItPl_Temp_Herb, 1);
		CreateInvItems (slf, ItLsTorch, 10);
		CreateInvItems (slf, ItPo_Speed, 3);
		CreateInvItems (slf, ItSC_Charm, 3);
		CreateInvItems (slf, ItAt_CrawlerMandibles, 1);
		CreateInvItems (slf, ItBe_Addon_DEX_10, 1);
		
		CreateInvItems (slf, ItRi_Power_01, 1);
		
		Lutero_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Lutero_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		CreateInvItems (slf, ItMi_Rockcrystal, 1);
		CreateInvItems (slf, ItAt_GolemHeart, 1);
		CreateInvItems (slf, ItPo_Speed, 1);
		CreateInvItems (slf, ItPl_Temp_Herb, 1);
		CreateInvItems (slf, ItPo_Speed, 4);
		CreateInvItems (slf, ItLsTorch, 10);
		CreateInvItems (slf, ItSC_Charm, 3);
		
		Lutero_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Lutero_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ITSc_ArmyOfDarkness, 1);
		CreateInvItems (slf, ItAt_DemonHeart, 1);
		CreateInvItems (slf, ItPl_Perm_Herb, 1);
		CreateInvItems (slf, ItMi_RuneBlank, 1);
		CreateInvItems (slf, ItPo_Speed, 1); 
		
		Lutero_ItemsGiven_Chapter = 5;
	};
};
