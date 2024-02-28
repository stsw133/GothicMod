///******************************************************************************************

var int Salandril_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Salandril (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Salandril_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItPo_Mana_02, 5);
		CreateInvItems (slf, ItPo_Health_02, 5);
		CreateInvItems (slf, ItPo_Mana_03, 2);
		CreateInvItems (slf, ItPo_Health_03, 2);
		CreateInvItems (slf, ItPl_Speed_Herb_01, 2);
		
		CreateInvItems (slf, ItSc_PyrFirerain, 1);
		CreateInvItems (slf, ItSc_EleThunderstorm, 1);
		
		CreateInvItems (slf,ItAm_Barbarian_01, 1);
		
		Salandril_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Salandril_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf,ItPo_Mana_02, 5);
		CreateInvItems (slf,ItPo_Health_02, 5);
		
		CreateInvItems (slf,ItPo_Mana_03, 2);
		CreateInvItems (slf,ItPo_Health_03, 2);
		
		Salandril_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Salandril_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf,ItPo_Mana_02, 5);
		CreateInvItems (slf,ItPo_Health_02, 5);
		
		CreateInvItems (slf,ItPo_Mana_03, 2);
		CreateInvItems (slf,ItPo_Health_03, 2);
		
		Salandril_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Salandril_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf,ItPo_Mana_02, 2);
		CreateInvItems (slf,ItPo_Health_02, 2);
		
		CreateInvItems (slf,ItPo_Mana_03, 5);
		CreateInvItems (slf,ItPo_Health_03, 5);
		
		Salandril_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Salandril_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 300); 
		
		CreateInvItems (slf,ItPo_Mana_02, 2);
		CreateInvItems (slf,ItPo_Health_02, 2);
		
		CreateInvItems (slf,ItPo_Mana_03, 5);
		CreateInvItems (slf,ItPo_Health_03, 5);
		
		Salandril_ItemsGiven_Chapter = 5;
	};
};
