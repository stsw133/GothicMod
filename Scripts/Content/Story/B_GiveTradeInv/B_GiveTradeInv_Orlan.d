///******************************************************************************************

var int Orlan_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Orlan (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Orlan_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 30);
		
		CreateInvItems (slf, ItRw_Arrow, 21);
		CreateInvItems (slf, ItRw_Bolt, 5);
		
		CreateInvItems (slf, ItFo_Water, 4);
		CreateInvItems (slf, ItFo_Beer, 10);
		CreateInvItems (slf, ItFo_Bread, 4);
		CreateInvItems (slf, ItFo_Milk, 4);
		CreateInvItems (slf, ItFo_Wine, 2);
		CreateInvItems (slf, ItFo_Bacon, 2);
		CreateInvItems (slf, ItLsTorch, 3);
		
		CreateInvItems (slf, ItMw_Zweihaender1, 1);
		CreateInvItems (slf, ItMw_Bartaxt, 1);
		CreateInvItems (slf, ItMw_Orkschlaechter, 1);
		CreateInvItems (slf, ItMw_Schlachtaxt, 1);
		
		CreateInvItems (slf, ItMw_Barbarenstreitaxt, 1);
		CreateInvItems (slf, ItRw_Bow_L_01, 1);
		
		CreateInvItems (slf, ItBE_Mana_01, 1);
		CreateInvItems (slf, ItRi_ProtMagic_02, 1);
		
		Orlan_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Orlan_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItRw_Arrow, 40);
		CreateInvItems (slf, ItRw_Bolt, 45);
		CreateInvItems (slf, ItBe_Dex_01, 1);
		
		Orlan_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Orlan_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItRu_TeleportTaverne, 1);
		CreateInvItems (slf, ItRw_Arrow, 120);
		CreateInvItems (slf, ItRw_Bolt, 115);
		CreateInvItems (slf, ItBe_Power_01, 1);
		
		Orlan_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Orlan_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItMw_Zweihaender1, 1);
		CreateInvItems (slf, ItMw_Bartaxt, 1);
		
		Orlan_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Orlan_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 300);
		
		CreateInvItems (slf, ItRw_Arrow, 120);
		CreateInvItems (slf, ItRw_Bolt, 115);
		
		Orlan_ItemsGiven_Chapter = 5;
	};
};
