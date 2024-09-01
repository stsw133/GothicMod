///******************************************************************************************

var int Sengrath_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Sengrath (var C_Npc slf)
{
	if (Kapitel >= 8)
	&& (Sengrath_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItPo_Mana_01, 10);
		CreateInvItems (slf, ItPo_Mana_02, 5);
		
		CreateInvItems (slf, ItSc_IceCube, 2);
		CreateInvItems (slf, ItSc_LightningFlash, 2);
		//CreateInvItems (slf, ItSc_MediumHeal, 5);
		CreateInvItems (slf, ItSc_Sleep, 2);
		//CreateInvItems (slf, ItSc_SumWolf, 1);
		CreateInvItems (slf, ItSc_WindFist, 3);
		CreateInvItems (slf, ItSc_Zap, 3);
		
		CreateInvItems (slf, ItRi_Custody_01, 1);
		CreateInvItems (slf, ItBe_Addon_Str_02, 1);
		CreateInvItems (slf, ItBe_Addon_Prot_Fire_01, 1);
		
		Sengrath_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Sengrath_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItPo_Mana_01, 10);
		CreateInvItems (slf, ItPo_Mana_02, 5);
		
		Sengrath_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Sengrath_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItPo_Mana_01, 10);
		CreateInvItems (slf, ItPo_Mana_02, 5);
		
		Sengrath_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Sengrath_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItPo_Mana_01, 10);
		CreateInvItems (slf, ItPo_Mana_02, 5);
		
		Sengrath_ItemsGiven_Chapter = 11;
	};
};
