//******************************************************************************************

var int Jora_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Jora (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Jora_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItPl_Health_Herb_01, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFoMutton, 8+Hlp_Random(16)); 
		CreateInvItems (slf, ItRw_Arrow, 30+Hlp_Random(60));
		CreateInvItems (slf, ItRw_Bolt, 30+Hlp_Random(60));

		CreateInvItems (slf, ItMw_ShortSword3, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Folteraxt, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Morgenstern, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Richtstab, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItRw_Bow_L_01, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_M_01, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_M_04, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Crossbow_L_02, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItAm_Splendor_01, 1+Hlp_Random(2));

		Jora_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Jora_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItMiSwordraw, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItPl_Health_Herb_01, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Fishsoup, 3+Hlp_Random(6));
		CreateInvItems (slf, ItRw_Arrow, 60+Hlp_Random(120));
		CreateInvItems (slf, ItRw_Bolt, 60+Hlp_Random(120));

		Jora_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Jora_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 
		CreateInvItems (slf, ItFo_Wine, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPl_Mana_Herb_01, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_Health_Herb_02, 3+Hlp_Random(6));
		CreateInvItems (slf, ItRw_Arrow, 60+Hlp_Random(120));
		CreateInvItems (slf, ItRw_Bolt, 60+Hlp_Random(120));

		Jora_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Jora_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));
		CreateInvItems (slf, ItPl_Mana_Herb_02, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_Health_Herb_03, 5+Hlp_Random(10));
		CreateInvItems (slf, ItRw_Arrow, 60+Hlp_Random(120));
		CreateInvItems (slf, ItRw_Bolt, 60+Hlp_Random(120));

		Jora_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Jora_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));
		CreateInvItems (slf, ItPl_Health_Herb_03, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPl_Mana_Herb_03, 5+Hlp_Random(10));
		CreateInvItems (slf, ItRw_Arrow, 160+Hlp_Random(320));
		CreateInvItems (slf, ItRw_Bolt, 160+Hlp_Random(320));

		Jora_ItemsGiven_Chapter = 5;
	};
};
