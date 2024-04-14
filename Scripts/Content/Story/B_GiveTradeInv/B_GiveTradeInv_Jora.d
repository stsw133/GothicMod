///******************************************************************************************

var int Jora_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Jora (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Jora_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFoMutton, 8);
		CreateInvItems (slf, ItPl_Health_Herb_01, 2);
		CreateInvItems (slf, ItPl_Mushroom_01, 3);
		CreateInvItems (slf, ItRw_Arrow, 30);
		CreateInvItems (slf, ItRw_Bolt, 30);
		CreateInvItems (slf, ItSc_Light, 1);
		
		CreateInvItems (slf, ItMw_Folteraxt, 1);
		CreateInvItems (slf, ItMw_Morgenstern, 1);
		CreateInvItems (slf, ItMw_Richtstab, 1);
		CreateInvItems (slf, ItMw_ShortSword3, 1);
		
		CreateInvItems (slf, ItRw_Bow_L_01, 1);
		CreateInvItems (slf, ItRw_Bow_M_01, 1);
		CreateInvItems (slf, ItRw_Bow_M_04, 1);
		CreateInvItems (slf, ItRw_Crossbow_L_02, 1);
		
		//CreateInvItems (slf, ItAm_Prot_Point_01, 1);
		
		Jora_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Jora_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Fishsoup, 3);
		CreateInvItems (slf, ItMiSwordraw, 1);
		CreateInvItems (slf, ItPl_Health_Herb_01, 3);
		CreateInvItems (slf, ItPl_Mushroom_02, 2);
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		
		Jora_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Jora_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Wine, 1);
		CreateInvItems (slf, ItPl_Health_Herb_02, 3);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 4);
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		
		Jora_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Jora_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		//CreateInvItems (slf, ItBe_Addon_STR_10, 1);
		CreateInvItems (slf, ItMi_Rockcrystal, 1);
		CreateInvItems (slf, ItPl_Health_Herb_03, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 4);
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		
		Jora_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Jora_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItMi_Coal, 3);
		CreateInvItems (slf, ItMi_Pitch, 2);
		CreateInvItems (slf, ItPl_Health_Herb_03, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 5);
		CreateInvItems (slf, ItRw_Arrow, 160);
		CreateInvItems (slf, ItRw_Bolt, 160);
		
		Jora_ItemsGiven_Chapter = 11;
	};
};
