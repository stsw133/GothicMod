///******************************************************************************************

var int Karras_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Karras (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Karras_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		//CreateInvItems (slf, ItSc_SumGobSkel, 1);
		
		CreateInvItems (slf, ItRi_Prot_Blunt_01, 1);
		
		Karras_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Karras_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItSc_TrfGiantBug, 1);
		CreateInvItems (slf, ItSc_TrfGiantRat, 1);
		CreateInvItems (slf, ItSc_TrfScavenger, 1);
		CreateInvItems (slf, ItSc_TrfSheep, 1);
		CreateInvItems (slf, ItSc_TrfWolf, 1);
		
		//CreateInvItems (slf, ItSc_SumGobSkel, 1);
		//CreateInvItems (slf, ItSc_SumWolf, 1);
		
		Karras_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Karras_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItSc_TrfGiantBug, 3);
		CreateInvItems (slf, ItSc_TrfGiantRat, 3);
		CreateInvItems (slf, ItSc_TrfScavenger, 3);
		CreateInvItems (slf, ItSc_TrfSheep, 3); 
		CreateInvItems (slf, ItSc_TrfSnapper, 3);
		CreateInvItems (slf, ItSc_TrfWaran, 3);
		CreateInvItems (slf, ItSc_TrfWolf, 3);
		
		CreateInvItems (slf, ItSc_Curse, 1);
		//CreateInvItems (slf, ItSc_SumGobSkel, 1);
		//CreateInvItems (slf, ItSc_SumWolf, 1);
		
		Karras_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Karras_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItSc_TrfFireWaran, 2);
		CreateInvItems (slf, ItSc_TrfGiantBug, 2);
		CreateInvItems (slf, ItSc_TrfGiantRat, 4);
		CreateInvItems (slf, ItSc_TrfScavenger, 4);
		CreateInvItems (slf, ItSc_TrfSheep, 4);
		CreateInvItems (slf, ItSc_TrfSnapper, 2);
		CreateInvItems (slf, ItSc_TrfWaran, 2);
		CreateInvItems (slf, ItSc_TrfWarg, 2);
		CreateInvItems (slf, ItSc_TrfWolf, 2);
		
		CreateInvItems (slf, ItSc_Curse, 1);
		//CreateInvItems (slf, ItSc_SumGobSkel, 1);
		//CreateInvItems (slf, ItSc_SumWolf, 1);
		CreateInvItems (slf, ItSc_SummonGolem, 1);
		
		Karras_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Karras_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItSc_TrfDragonSnapper, 2);
		CreateInvItems (slf, ItSc_TrfFireWaran, 2);
		CreateInvItems (slf, ItSc_TrfGiantBug, 2);
		CreateInvItems (slf, ItSc_TrfGiantRat, 4);
		CreateInvItems (slf, ItSc_TrfLurker, 2);
		CreateInvItems (slf, ItSc_TrfScavenger, 4);
		CreateInvItems (slf, ItSc_TrfShadowbeast, 2);
		CreateInvItems (slf, ItSc_TrfSheep, 4);
		CreateInvItems (slf, ItSc_TrfSnapper, 2);
		CreateInvItems (slf, ItSc_TrfWaran, 2);
		CreateInvItems (slf, ItSc_TrfWarg, 2);
		CreateInvItems (slf, ItSc_TrfWolf, 2);
		
		CreateInvItems (slf, ItSc_ArmyOfDarkness, 1);
		CreateInvItems (slf, ItSc_Curse, 1);
		//CreateInvItems (slf, ItSc_SumGobSkel, 1);
		//CreateInvItems (slf, ItSc_SumWolf, 1);
		CreateInvItems (slf, ItSc_SummonDemon, 1);
		CreateInvItems (slf, ItSc_SummonGolem, 1);
		
		Karras_ItemsGiven_Chapter = 11;
	};
};
