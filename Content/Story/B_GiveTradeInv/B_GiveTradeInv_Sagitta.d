//******************************************************************************************

var int Sagitta_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Sagitta (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Sagitta_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));  

		CreateInvItems (slf, ItPl_SwampHerb, 9+Hlp_Random(18));
		CreateInvItems (slf, ItMi_Joint, 3+Hlp_Random(6));

		CreateInvItems (slf, ItMi_Sulfur, 2+Hlp_Random(4));

		CreateInvItems (slf, ItMi_Flask, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Mana_02, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPo_Health_02, 3+Hlp_Random(6));

		CreateInvItems (slf, ItPo_Health_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_03, 3+Hlp_Random(6));

		Sagitta_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Sagitta_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItMi_Flask, 7+Hlp_Random(14));

		CreateInvItems (slf, ItPl_SwampHerb, 7+Hlp_Random(14));
		CreateInvItems (slf, ItMi_Joint, 2+Hlp_Random(4));

		CreateInvItems (slf, ItPl_Temp_Herb, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_GraveMoss, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_Perm_Herb, 1+Hlp_Random(2));

		CreateInvItems (slf, ItPl_Health_Herb_01, 7+Hlp_Random(14)); 
		CreateInvItems (slf, ItPl_Health_Herb_02, 4+Hlp_Random(8)); 
		CreateInvItems (slf, ItPl_Mana_Herb_01, 3+Hlp_Random(6)); 

		CreateInvItems (slf, ItPo_Health_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_03, 3+Hlp_Random(6));

		CreateInvItems (slf, ItMi_Sulfur, 2+Hlp_Random(4));

		CreateInvItems (slf, ItPo_Health_02, 8+Hlp_Random(16));
		CreateInvItems (slf, ItPo_Mana_02, 5+Hlp_Random(10));

		Sagitta_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Sagitta_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 

		CreateInvItems (slf, ItPl_SwampHerb, 7+Hlp_Random(14));
		CreateInvItems (slf, ItMi_Joint, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_Flask, 5+Hlp_Random(10));

		CreateInvItems (slf, ItPl_Temp_Herb, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPl_GraveMoss, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPl_Health_Herb_01, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_Mana_Herb_01, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPl_Mana_Herb_02, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_Speed_Herb_01, 3+Hlp_Random(6));

		CreateInvItems (slf, ItPo_Health_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_03, 3+Hlp_Random(6));

		CreateInvItems (slf, ItPl_Strength_Herb_01, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItMi_Sulfur, 2+Hlp_Random(4));

		CreateInvItems (slf, ItPo_Health_02, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Mana_02, 6+Hlp_Random(12));

		Sagitta_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Sagitta_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300)); 

		CreateInvItems (slf, ItPl_SwampHerb, 8+Hlp_Random(16));
		CreateInvItems (slf, ItMi_Joint, 2+Hlp_Random(4));  	
		CreateInvItems (slf, ItMi_Flask, 5+Hlp_Random(10));

		CreateInvItems (slf, ItMi_Sulfur, 4+Hlp_Random(8));
		CreateInvItems (slf, ItMi_Aquamarine, 1+Hlp_Random(2));

		CreateInvItems (slf, ItPl_Temp_Herb, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPl_GraveMoss, 5++Hlp_Random(10));
		CreateInvItems (slf, ItPl_Perm_Herb, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItPl_Health_Herb_01, 8+Hlp_Random(16));
		CreateInvItems (slf, ItPl_Health_Herb_02, 6+Hlp_Random(12));
		CreateInvItems (slf, ItPl_Health_Herb_03, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_Mana_Herb_01, 6+Hlp_Random(12));
		CreateInvItems (slf, ItPl_Mana_Herb_02, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPl_Speed_Herb_01, 1+Hlp_Random(2));

		CreateInvItems (slf, ItPo_Health_02, 10+Hlp_Random(20));
		CreateInvItems (slf, ItPo_Mana_02, 10+Hlp_Random(20));

		CreateInvItems (slf, ItPo_Health_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_03, 3+Hlp_Random(6));

		Sagitta_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Sagitta_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));

		CreateInvItems (slf, ItPl_SwampHerb, 9+Hlp_Random(18));
		CreateInvItems (slf, ItMi_Joint, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_Flask, 5+Hlp_Random(10));

		CreateInvItems (slf, ItMi_Sulfur, 4+Hlp_Random(8));
		CreateInvItems (slf, ItMi_Aquamarine, 3+Hlp_Random(6));

		CreateInvItems (slf, ItPl_Temp_Herb, 9+Hlp_Random(18));
		CreateInvItems (slf, ItPl_GraveMoss, 9++Hlp_Random(18));
		CreateInvItems (slf, ItPl_Perm_Herb, 1+Hlp_Random(2));

		CreateInvItems (slf, ItPl_Health_Herb_01, 18+Hlp_Random(36));
		CreateInvItems (slf, ItPl_Health_Herb_02, 12+Hlp_Random(24));
		CreateInvItems (slf, ItPl_Health_Herb_03, 6+Hlp_Random(12));
		CreateInvItems (slf, ItPl_Mana_Herb_01, 7+Hlp_Random(14));
		CreateInvItems (slf, ItPl_Mana_Herb_02, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_Mana_Herb_03, 2+Hlp_Random(4));

		CreateInvItems (slf, ItPl_Speed_Herb_01, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItPo_Health_02, 16+Hlp_Random(32));
		CreateInvItems (slf, ItPo_Mana_02, 11+Hlp_Random(22));

		CreateInvItems (slf, ItPo_Health_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_03, 3+Hlp_Random(6));

		Sagitta_ItemsGiven_Chapter = 5;
	};
};
