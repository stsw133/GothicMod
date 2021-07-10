///******************************************************************************************

var int Jora_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Jora (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Jora_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItSc_Light, 1);
		CreateInvItems (slf, ItPl_Health_Herb_01, 2);
		CreateInvItems (slf, ItPl_Mushroom_01, 3);
		CreateInvItems (slf, ItFoMutton, 8);
		CreateInvItems (slf, ItRw_Arrow, 30);
		CreateInvItems (slf, ItRw_Bolt, 30);
		
		CreateInvItems (slf,ItMw_ShortSword3, 1);
		CreateInvItems (slf,ItMw_Folteraxt, 1);
		CreateInvItems (slf,ItMw_Morgenstern, 1);
		CreateInvItems (slf,ItMw_Richtstab, 1);
		
		CreateInvItems (slf,ItRw_Bow_L_01, 1);
		CreateInvItems (slf,ItRw_Bow_M_01, 1);
		CreateInvItems (slf,ItRw_Bow_M_04, 1);
		CreateInvItems (slf,ItRw_Crossbow_L_02, 1);
		
		CreateInvItems (slf,ItAm_LifeSteal_01, 1);
		
		Jora_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Jora_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItMiSwordraw, 1);
		CreateInvItems (slf, ItPl_Health_Herb_01, 3);
		CreateInvItems (slf, ItPl_Mushroom_02, 2);
		CreateInvItems (slf, ItFo_Fishsoup, 3);
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		
		Jora_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Jora_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItFo_Wine, 1);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 4);
		CreateInvItems (slf, ItPl_Health_Herb_02 , 3);
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		
		Jora_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Jora_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		CreateInvItems (slf, ItMi_Rockcrystal, 1);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 4);
		CreateInvItems (slf, ItPl_Health_Herb_03, 5);
		CreateInvItems (slf, ItRw_Arrow, 60);
		CreateInvItems (slf, ItRw_Bolt, 60);
		CreateInvItems (slf, ItBe_Str_01, 1);
		
		Jora_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Jora_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ItMi_Coal, 3);
		CreateInvItems (slf, ItMi_Pitch, 2);
		CreateInvItems (slf, ItPl_Health_Herb_03, 5);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 5);
		CreateInvItems (slf, ItRw_Arrow, 160);
		CreateInvItems (slf, ItRw_Bolt, 160);
		
		Jora_ItemsGiven_Chapter = 5;
	};
};
