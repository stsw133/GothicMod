///******************************************************************************************

var int Kjorn_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Kjorn (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Kjorn_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItFo_Apple, 2);
		CreateInvItems (slf, ItFo_Water, 5);
		CreateInvItems (slf, ItFo_Beer, 5);
		CreateInvItems (slf, ItFo_Cheese, 5);
		
		Kjorn_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Kjorn_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItFo_Cheese, 5);
		CreateInvItems (slf, ItFoMutton, 5);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItRi_LifeSteal_02, 1);
		
		Kjorn_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Kjorn_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItFo_Cheese, 2);
		CreateInvItems (slf, ItFo_Bacon, 2);
		CreateInvItems (slf, ItFoMutton, 10);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Booze, 5);
		
		Kjorn_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Kjorn_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItFo_Wine, 2);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItRw_Arrow, 65);
		CreateInvItems (slf, ItRw_Bolt, 50);
		CreateInvItems (slf, ItPo_Health_01, 4);
		CreateInvItems (slf, ItPo_Health_02, 2);
		
		CreateInvItems (slf, ItKE_Lockpick, 10);
		
		Kjorn_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Kjorn_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		CreateInvItems (slf, ItFo_Wine, 2);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItRw_Arrow, 55);
		CreateInvItems (slf, ItRw_Bolt, 55);
		CreateInvItems (slf, ItPo_Health_01, 4);
		CreateInvItems (slf, ItPo_Health_02, 2);
		
		Kjorn_ItemsGiven_Chapter = 5;
	};
};
