///******************************************************************************************

var int Kardif_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Kardif (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Kardif_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 80);
		
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Booze, 2);
		CreateInvItems (slf, ItFo_Fish, 4);
		CreateInvItems (slf, ItFo_FishSoup, 3);
		CreateInvItems (slf, ItFoMutton, 1);
		CreateInvItems (slf, ItFo_Wine, 3);
		
		Kardif_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Kardif_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Booze, 2);
		CreateInvItems (slf, ItFo_Fish, 4);
		CreateInvItems (slf, ItFo_Sausage, 2);
		CreateInvItems (slf, ItFo_Wine, 3);
		
		if (Knows_SecretSign)
		{
			CreateInvItems (slf, ItKe_Lockpick, 20);
		};
		
		Kardif_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Kardif_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_FishSoup, 3);
		CreateInvItems (slf, ItFoMutton, 1);
		CreateInvItems (slf, ItFo_Sausage, 2);
		CreateInvItems (slf, ItFo_Wine, 1);
		
		if (Knows_SecretSign)
		{
			CreateInvItems (slf, ItKe_Lockpick, 20);
		};
		
		Kardif_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Kardif_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Booze, 2);
		CreateInvItems (slf, ItFo_Fish, 4);
		CreateInvItems (slf, ItFo_FishSoup, 3);
		CreateInvItems (slf, ItFoMutton, 1);
		CreateInvItems (slf, ItFo_Sausage, 2);
		CreateInvItems (slf, ItFo_Wine, 1);
		
		if (Knows_SecretSign)
		{
			CreateInvItems (slf, ItKe_Lockpick, 20);
		};
		
		Kardif_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Kardif_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 300);
		
		CreateInvItems (slf, ItFo_Beer, 4);
		CreateInvItems (slf, ItFo_Booze, 4);
		CreateInvItems (slf, ItFo_Fish, 8);
		CreateInvItems (slf, ItFo_FishSoup, 5);
		CreateInvItems (slf, ItFoMutton, 7);
		CreateInvItems (slf, ItFo_Sausage, 3);
		CreateInvItems (slf, ItFo_Wine, 3);
		
		if (Knows_SecretSign)
		{
			CreateInvItems (slf, ItKe_Lockpick, 20);
		};
		
		Kardif_ItemsGiven_Chapter = 11;
	};
};
