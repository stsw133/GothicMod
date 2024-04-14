///******************************************************************************************

var int Salandril_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Salandril (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Salandril_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItPl_Speed_Herb_01, 2);
		CreateInvItems (slf, ItPo_Health_02, 5);
		CreateInvItems (slf, ItPo_Health_03, 2);
		CreateInvItems (slf, ItPo_Mana_02, 5);
		CreateInvItems (slf, ItPo_Mana_03, 2);
		
		CreateInvItems (slf, ItSc_Firerain, 1);
		CreateInvItems (slf, ItSc_Thunderstorm, 1);
		
		//CreateInvItems (slf, ItAm_Prot_Fire_01, 1);
		
		Salandril_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Salandril_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItPo_Health_02, 5);
		CreateInvItems (slf, ItPo_Health_03, 2);
		CreateInvItems (slf, ItPo_Mana_02, 5);
		CreateInvItems (slf, ItPo_Mana_03, 2);
		
		Salandril_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Salandril_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItPo_Health_02, 5);
		CreateInvItems (slf, ItPo_Health_03, 2);
		CreateInvItems (slf, ItPo_Mana_02, 5);
		CreateInvItems (slf, ItPo_Mana_03, 2);
		
		Salandril_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Salandril_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItPo_Health_02, 2);
		CreateInvItems (slf, ItPo_Health_03, 5);
		CreateInvItems (slf, ItPo_Mana_02, 2);
		CreateInvItems (slf, ItPo_Mana_03, 5);
		
		Salandril_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Salandril_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 300); 
		
		CreateInvItems (slf, ItPo_Health_02, 2);
		CreateInvItems (slf, ItPo_Health_03, 5);
		CreateInvItems (slf, ItPo_Mana_02, 2);
		CreateInvItems (slf, ItPo_Mana_03, 5);
		
		Salandril_ItemsGiven_Chapter = 11;
	};
};
