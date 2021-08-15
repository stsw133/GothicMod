///******************************************************************************************

var int Sengrath_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Sengrath (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Sengrath_ItemsGiven_Chapter < 1)
	{
		Sengrath_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Sengrath_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ITPo_Mana_01, 10);
		CreateInvItems (slf, ITPo_Mana_02, 5);
		
		CreateInvItems (slf, ITSc_Zap, 3);
		//CreateInvItems (slf, ITSc_SumWolf, 1);
		CreateInvItems (slf, ItSc_Sleep, 2);
		CreateInvItems (slf, ItSc_EleFreeze, 2);
		CreateInvItems (slf, ItSc_WindFist, 3);
		//CreateInvItems (slf, ItSc_MediumHeal, 5);
		CreateInvItems (slf, ItSc_LightningFlash, 2);
		
		CreateInvItems (slf,ItRi_ProtFire_02, 1);
		CreateInvItems (slf,ItBe_Str_01, 1);
		CreateInvItems (slf,ItBe_Mana_01, 1);
		
		Sengrath_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Sengrath_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ITPo_Mana_01, 10);
		CreateInvItems (slf, ITPo_Mana_02, 5);
		
		Sengrath_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Sengrath_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		CreateInvItems (slf, ITPo_Mana_01, 10);
		CreateInvItems (slf, ITPo_Mana_02, 5);
		
		Sengrath_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Sengrath_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ITPo_Mana_01, 10);
		CreateInvItems (slf, ITPo_Mana_02, 5);
		
		Sengrath_ItemsGiven_Chapter = 5;
	};
};
