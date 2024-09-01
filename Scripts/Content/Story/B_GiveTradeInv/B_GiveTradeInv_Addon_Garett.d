///******************************************************************************************

var int Garett_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Addon_Garett (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Garett_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 10);
		
		CreateInvItems (slf, ItFo_Addon_Rum, 1);
		CreateInvItems (slf, ItPo_Health_Addon_04, 1);
		
		CreateInvItems (slf, ItMw_2h_Axe_L_01, 1);
		CreateInvItems (slf, ItMw_Addon_Hacker_1h_01, 1);
		CreateInvItems (slf, ItMw_Addon_Hacker_1h_02, 1);
		CreateInvItems (slf, ItMw_Addon_Hacker_2h_01, 1);
		CreateInvItems (slf, ItMw_Addon_Hacker_2h_02, 1);
		CreateInvItems (slf, ItMw_Orkschlaechter, 1);
		CreateInvItems (slf, ItMw_Schiffsaxt, 1);
		CreateInvItems (slf, ItMw_ShortSword3, 1);
		CreateInvItems (slf, ItMw_Streitaxt1, 1);
		CreateInvItems (slf, ItMw_Zweihaender4, 1);
		
		CreateInvItems (slf, ItRw_Crossbow_M_01, 1);
		CreateInvItems (slf, ItRw_Crossbow_H_01, 1);
		
		CreateInvItems (slf, ItAm_Prot_Fire_01, 1);
		CreateInvItems (slf, ItRi_Wisdom_01, 1);
		
		Garett_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Garett_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 20);
		
		CreateInvItems (slf, ItMi_DarkPearl, 1);
		CreateInvItems (slf, ItMi_Joint, 1);
		CreateInvItems (slf, ItMiSwordraw, 2);
		
		Garett_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Garett_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		Garett_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Garett_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		Garett_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Garett_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		Garett_ItemsGiven_Chapter = 11;
	};
};
