///******************************************************************************************

var int Bosper_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Bosper (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Bosper_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItRw_Arrow, 30);
		
		CreateInvItems (slf, ItRw_Bow_L_01, 1);
		CreateInvItems (slf, ItRw_Bow_L_02, 1);
		CreateInvItems (slf, ItRw_Bow_L_03, 2);
		CreateInvItems (slf, ItRw_Bow_L_04, 1);
		
		CreateInvItems (slf, ItBe_Addon_Leather_01, 1);
		CreateInvItems (slf, ItRi_Asa_02, 1);
		
		Bosper_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Bosper_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItRw_Arrow, 50);
		CreateInvItems (slf, ItRw_Bolt, 50);
		CreateInvItems (slf, ItBe_Addon_Dex_01, 1);
		
		CreateInvItems (slf, ItRw_Bow_M_01, 1);
		CreateInvItems (slf, ItRw_Bow_M_02, 1);
		CreateInvItems (slf, ItRw_Bow_M_03, 1);
		CreateInvItems (slf, ItRw_Bow_M_04, 1);
		
		Bosper_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Bosper_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		CreateInvItems (slf, ItBe_Addon_Dex_02, 1);
		
		Bosper_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Bosper_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItRw_Arrow, 180);
		CreateInvItems (slf, ItRw_Bolt, 160);
		
		CreateInvItems (slf, ItRw_Bow_H_01, 1);
		CreateInvItems (slf, ItRw_Bow_H_02, 1);
		CreateInvItems (slf, ItRw_Bow_H_03, 1);
		CreateInvItems (slf, ItRw_Bow_H_04, 1);
		
		Bosper_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Bosper_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItRw_Arrow, 200);
		CreateInvItems (slf, ItRw_Bolt, 170);
		
		Bosper_ItemsGiven_Chapter = 11;
	};
};
