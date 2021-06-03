///******************************************************************************************

var int Samuel_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Addon_Samuel (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Samuel_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Addon_Rum, 2);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Beer, 6);
		CreateInvItems (slf, Itfo_Wine, 2);
		CreateInvItems (slf, ItFo_Bacon, 2);
		CreateInvItems (slf, ItMi_Flask, 4);
		CreateInvItems (slf, ItPl_SwampHerb, 4);
		CreateInvItems (slf, ItMi_Joint, 1);
		
		CreateInvItems (slf, ItRi_LifeSteal_02, 1);
		
		Samuel_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Samuel_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Addon_Rum, 2);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Beer, 6);
		CreateInvItems (slf, Itfo_Wine, 2);
		CreateInvItems (slf, ItFo_Bacon, 2);
		CreateInvItems (slf, ItMi_Flask, 4);
		CreateInvItems (slf, ItPl_SwampHerb, 4);
		CreateInvItems (slf, ItMi_Joint, 1);
		
		Samuel_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Samuel_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Addon_Rum, 2);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Beer, 6);
		CreateInvItems (slf, Itfo_Wine, 2);
		CreateInvItems (slf, ItFo_Bacon, 2);
		CreateInvItems (slf, ItMi_Flask, 4);
		CreateInvItems (slf, ItPl_SwampHerb, 4);
		CreateInvItems (slf, ItMi_Joint, 1);
		
		Samuel_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Samuel_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Addon_Rum, 2);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Beer, 6);
		CreateInvItems (slf, Itfo_Wine, 2);
		CreateInvItems (slf, ItFo_Bacon, 2);
		CreateInvItems (slf, ItMi_Flask, 4);
		CreateInvItems (slf, ItPl_SwampHerb, 4);
		CreateInvItems (slf, ItMi_Joint, 1);
		
		Samuel_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Samuel_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Addon_Rum, 2);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Beer, 6);
		CreateInvItems (slf, Itfo_Wine, 2);
		CreateInvItems (slf, ItFo_Bacon, 2);
		CreateInvItems (slf, ItMi_Flask, 4);
		CreateInvItems (slf, ItPl_SwampHerb, 4);
		CreateInvItems (slf, ItMi_Joint, 1);
		
		Samuel_ItemsGiven_Chapter = 5;
	};
};
