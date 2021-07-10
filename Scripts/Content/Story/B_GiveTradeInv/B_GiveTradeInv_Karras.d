///******************************************************************************************

var int Karras_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Karras (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Karras_ItemsGiven_Chapter < 1)
	{
		CreateInvItems	 (slf, ItMi_Gold, 100);
		
		CreateInvItems   (slf, ItSc_SumGobSkel, 1);
		
		CreateInvItems   (slf, ItRi_ProtTotal_01, 1);
		
		Karras_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Karras_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItSc_TrfSheep, 1);
		CreateInvItems (slf, ITSc_TrfScavenger, 1);
		CreateInvItems (slf, ITSc_TrfGiantRat, 1);
		
		CreateInvItems (slf, ITSc_TrfGiantBug, 1);
		CreateInvItems (slf, ITSc_TrfWolf, 1);
		
		CreateInvItems (slf, ItSc_SumGobSkel, 1);
		CreateInvItems (slf, ItSc_SumWolf, 1);
		
		Karras_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Karras_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems   (slf, ItSc_TrfSheep, 3); 
		CreateInvItems   (slf, ITSc_TrfScavenger, 3);
		CreateInvItems   (slf, ITSc_TrfGiantRat, 3);
		
		CreateInvItems   (slf, ITSc_TrfGiantBug, 3);
		CreateInvItems   (slf, ITSc_TrfWolf, 3);
		CreateInvItems   (slf, ITSc_TrfWaran, 3);
		CreateInvItems   (slf, ITSc_TrfSnapper, 3);
		
		CreateInvItems   (slf, ItSc_SumGobSkel, 1);
		CreateInvItems   (slf, ItSc_SumWolf, 1);
		CreateInvItems   (slf, ItSc_SumSkel, 1);
		
		Karras_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Karras_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems   (slf, ItSc_TrfSheep, 4);
		CreateInvItems   (slf, ITSc_TrfScavenger, 4);
		CreateInvItems   (slf, ITSc_TrfGiantRat, 4);
		
		CreateInvItems   (slf, ITSc_TrfGiantBug, 2);
		CreateInvItems   (slf, ITSc_TrfWolf, 2);
		CreateInvItems   (slf, ITSc_TrfWaran, 2);
		CreateInvItems   (slf, ITSc_TrfSnapper, 2);
		CreateInvItems   (slf, ITSc_TrfWarg, 2);
		CreateInvItems   (slf, ITSc_TrfFireWaran, 2);
		
		CreateInvItems   (slf, ItSc_SumGobSkel, 1);
		CreateInvItems   (slf, ItSc_SumWolf, 1);
		CreateInvItems   (slf, ItSc_SumSkel, 1);
		CreateInvItems   (slf, ItSc_SumGol, 1);
		
		Karras_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Karras_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems   (slf, ItSc_TrfSheep, 4);
		CreateInvItems   (slf, ITSc_TrfScavenger, 4);
		CreateInvItems   (slf, ITSc_TrfGiantRat, 4);
		
		CreateInvItems   (slf, ITSc_TrfGiantBug, 2);
		CreateInvItems   (slf, ITSc_TrfWolf, 2);
		CreateInvItems   (slf, ITSc_TrfWaran, 2);
		CreateInvItems   (slf, ITSc_TrfSnapper, 2);
		CreateInvItems   (slf, ITSc_TrfWarg, 2);
		CreateInvItems   (slf, ITSc_TrfFireWaran, 2);
		CreateInvItems   (slf, ITSc_TrfLurker, 2);
		CreateInvItems   (slf, ITSc_TrfShadowbeast, 2);
		CreateInvItems   (slf, ITSc_TrfDragonSnapper, 2);
		
		CreateInvItems   (slf, ItSc_SumGobSkel, 1);
		CreateInvItems   (slf, ItSc_SumWolf, 1);
		CreateInvItems   (slf, ItSc_SumSkel, 1);
		CreateInvItems   (slf, ItSc_SumGol, 1);
		CreateInvItems   (slf, ItSc_SumDemon, 1);
		CreateInvItems   (slf, ItSc_ArmyOfDarkness, 1);
		
		Karras_ItemsGiven_Chapter = 5;
	};
};
