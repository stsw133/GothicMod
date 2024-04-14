///******************************************************************************************

var int Rosi_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Rosi (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Rosi_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Bread, 3);
		CreateInvItems (slf, ItFo_Water, 5);
		CreateInvItems (slf, ItRw_Arrow, 50);
		CreateInvItems (slf, ItRw_Bolt, 30);
		
		CreateInvItems (slf, ItRw_Bow_L_01, 1);
		CreateInvItems (slf, ItRw_Bow_L_04, 1);
		CreateInvItems (slf, ItRw_Bow_H_01, 1);
		CreateInvItems (slf, ItRw_Crossbow_M_02, 1);
		
		Rosi_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Rosi_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Cheese, 5);
		CreateInvItems (slf, ItFo_Fishsoup, 5);
		CreateInvItems (slf, ItFoMutton, 2);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItRw_Arrow, 70);
		CreateInvItems (slf, ItRw_Bolt, 80);
		
		Rosi_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Rosi_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Cheese, 2);
		CreateInvItems (slf, ItFo_Sausage, 5);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItRw_Arrow, 90);
		CreateInvItems (slf, ItRw_Bolt, 40);
		
		Rosi_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Rosi_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFoMutton, 5);
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItFo_Wine, 5);
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 130);
		
		Rosi_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Rosi_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItFo_Bacon, 5);
		CreateInvItems (slf, ItFo_Milk, 2);
		CreateInvItems (slf, ItFoMutton, 5);
		CreateInvItems (slf, ItFo_Wine, 3);
		CreateInvItems (slf, ItRw_Arrow, 150);
		CreateInvItems (slf, ItRw_Bolt, 130);
		
		Rosi_ItemsGiven_Chapter = 11;
	};
};
