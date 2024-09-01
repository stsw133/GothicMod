///******************************************************************************************

var int Kjorn_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Kjorn (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Kjorn_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Apple, 2);
		CreateInvItems (slf, ItFo_Beer, 5);
		CreateInvItems (slf, ItFo_Cheese, 5);
		CreateInvItems (slf, ItFo_Water, 5);
		
		Kjorn_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Kjorn_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Cheese, 5);
		CreateInvItems (slf, ItFoMutton, 5);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItRi_Custody_01, 1);
		
		Kjorn_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Kjorn_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Bacon, 2);
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Cheese, 2);
		CreateInvItems (slf, ItFoMutton, 10);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Stew, 5);
		
		Kjorn_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Kjorn_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Wine, 2);
		CreateInvItems (slf, ItPo_Health_01, 4);
		CreateInvItems (slf, ItPo_Health_02, 2);
		CreateInvItems (slf, ItRw_Arrow, 65);
		CreateInvItems (slf, ItRw_Bolt, 50);
		
		CreateInvItems (slf, ItKe_Lockpick, 10);
		
		Kjorn_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Kjorn_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 50);
		
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Booze, 3);
		CreateInvItems (slf, ItFo_Wine, 2);
		CreateInvItems (slf, ItPo_Health_01, 4);
		CreateInvItems (slf, ItPo_Health_02, 2);
		CreateInvItems (slf, ItRw_Arrow, 55);
		CreateInvItems (slf, ItRw_Bolt, 55);
		
		Kjorn_ItemsGiven_Chapter = 11;
	};
};
