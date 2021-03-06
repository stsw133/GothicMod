///******************************************************************************************

var int Sagitta_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Sagitta (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Sagitta_ItemsGiven_Chapter < 1)
	{
		CreateInvItems	(slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItPl_SwampHerb, 9);
		CreateInvItems (slf, ItMi_Joint, 3);
		
		CreateInvItems (slf, ItMi_Sulfur, 2);
		CreateInvItems (slf, ItMi_Quartz, 1);
		
		CreateInvItems (slf, ItMi_Flask, 5);
		CreateInvItems (slf, ItPo_Mana_01, 4);
		CreateInvItems (slf, ItPo_Health_01, 3);
		
		CreateInvItems (slf, ItPo_Health_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 3);
		
		CreateInvItems (slf, ItRe_ALCHEMY_Health_04, 1);
		CreateInvItems (slf, ItRe_ALCHEMY_Mana_04, 1);
		
		CreateInvItems (slf, ItFo_Addon_Pfeffer_01, 1);
		
		Sagitta_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Sagitta_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItMi_Flask, 7);
		
		CreateInvItems (slf, ItPl_SwampHerb, 7);
		CreateInvItems (slf, ItMi_Joint, 2);
		
		CreateInvItems (slf, ItPl_Temp_Herb, 2);
		CreateInvItems (slf, ItPl_Perm_Herb, 1);
		
		CreateInvItems (slf, ItPl_Health_Herb_01, 7);
		CreateInvItems (slf, ItPl_Health_Herb_02, 4);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 3);
		
		CreateInvItems (slf, ItPo_Health_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 3);
		
		CreateInvItems (slf, ItMi_Sulfur, 2);
		CreateInvItems (slf, ItMi_Quartz, 2);
		
		CreateInvItems (slf, ItPo_Health_01, 3);
		CreateInvItems (slf, ItPo_Health_02, 4);
		CreateInvItems (slf, ItPo_Mana_01, 5);
		
		CreateInvItems (slf, ItPo_Health_01, 1);
		
		Sagitta_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Sagitta_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItPl_SwampHerb, 7);
		CreateInvItems (slf, ItMi_Joint, 2);
		CreateInvItems (slf, ItMi_Flask, 5);
		
		CreateInvItems (slf, ItPl_Temp_Herb, 3);
		CreateInvItems (slf, ItPl_Health_Herb_01, 4);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 3);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 4);
		CreateInvItems (slf, ItPl_Speed_Herb_01, 3);
		
		CreateInvItems (slf, ItPo_Health_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 3);
		
		CreateInvItems (slf, ItPl_Strength_Herb_01, 1);
		
		CreateInvItems (slf, ItMi_Sulfur, 2);
		CreateInvItems (slf, ItMi_Quartz, 3);
		CreateInvItems (slf, ItMi_Rockcrystal, 2);
		CreateInvItems (slf, ItMi_Coal, 1);
		
		CreateInvItems (slf, ItPo_Health_02, 3);
		CreateInvItems (slf, ItPo_Health_03, 2);
		CreateInvItems (slf, ItPo_Mana_01, 6);
		
		CreateInvItems (slf, ItSc_TrfGiantRat, 1);
		CreateInvItems (slf, ItSc_TrfWaran, 1);
		
		Sagitta_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Sagitta_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150); 
		
		CreateInvItems (slf, ItPl_SwampHerb, 8);
		CreateInvItems (slf, ItMi_Joint, 2);
		CreateInvItems (slf, ItMi_Flask, 5);
		
		CreateInvItems (slf, ItMi_Sulfur, 4);
		CreateInvItems (slf, ItMi_Quartz, 4);
		CreateInvItems (slf, ItMi_Rockcrystal, 2);
		CreateInvItems (slf, ItMi_Coal, 4);
		CreateInvItems (slf, ItMi_Aquamarine, 1);
		
		CreateInvItems (slf, ItPl_Temp_Herb, 5);
		CreateInvItems (slf, ItPl_Perm_Herb, 1);
		
		CreateInvItems (slf, ItPl_Health_Herb_01, 8);
		CreateInvItems (slf, ItPl_Health_Herb_02, 6);
		CreateInvItems (slf, ItPl_Health_Herb_03, 4);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 6);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 2);
		CreateInvItems (slf, ItPl_Speed_Herb_01, 1);
		
		CreateInvItems (slf, ItPo_Health_02, 6);
		CreateInvItems (slf, ItPo_Health_03, 4);
		CreateInvItems (slf, ItPo_Mana_01, 7);
		CreateInvItems (slf, ItPo_Mana_02, 3);
		
		CreateInvItems (slf, ItPo_Health_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 3);
		
		CreateInvItems (slf, ItSc_TrfFireWaran, 1);
		
		Sagitta_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Sagitta_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItPl_SwampHerb, 9);
		CreateInvItems (slf, ItMi_Joint, 2);
		CreateInvItems (slf, ItMi_Flask, 5);
		
		CreateInvItems (slf, ItMi_Sulfur, 4);
		CreateInvItems (slf, ItMi_Quartz, 5);
		CreateInvItems (slf, ItMi_Rockcrystal, 2);
		CreateInvItems (slf, ItMi_Coal, 2);
		CreateInvItems (slf, ItMi_Aquamarine, 3);
		
		CreateInvItems (slf, ItPl_Temp_Herb, 9);
		CreateInvItems (slf, ItPl_Perm_Herb, 1);
		
		CreateInvItems (slf, ItPl_Health_Herb_01, 18);
		CreateInvItems (slf, ItPl_Health_Herb_02, 12);
		CreateInvItems (slf, ItPl_Health_Herb_03, 6);
		CreateInvItems (slf, ItPl_Mana_Herb_01, 7);
		CreateInvItems (slf, ItPl_Mana_Herb_02, 4);
		CreateInvItems (slf, ItPl_Mana_Herb_03, 2);
		
		CreateInvItems (slf, ItPl_Speed_Herb_01, 1);
		
		CreateInvItems (slf, ItPo_Health_02, 9);
		CreateInvItems (slf, ItPo_Health_03, 7);
		CreateInvItems (slf, ItPo_Mana_01, 9);
		CreateInvItems (slf, ItPo_Mana_02, 2);
		
		CreateInvItems (slf, ItPo_Health_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 3);
		
		CreateInvItems (slf, ItSc_TrfShadowbeast, 1);
		
		Sagitta_ItemsGiven_Chapter = 5;
	};
};
