///******************************************************************************************

var int Sarah_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Sarah (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Sarah_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 20);
		CreateInvItems (slf, ItLsTorch,20);
		CreateInvItems (slf, ItRw_Arrow, 50);
		
		CreateInvItems (slf, ItMw_ShortSword3, 1);
		CreateInvItems (slf, ItMw_ShortSword4, 1);
		CreateInvItems (slf, ItMw_ShortSword5, 1);
		CreateInvItems (slf, ItMw_Kriegshammer1, 1);
		CreateInvItems (slf, ItMw_Stabkeule, 1);
		CreateInvItems (slf, ItMw_Steinbrecher, 1);
		CreateInvItems (slf, ItMw_Schwert2, 1);
		CreateInvItems (slf, ItMw_Bartaxt, 1);
		CreateInvItems (slf, ItMw_1h_Vlk_Sword, 1);
		CreateInvItems (slf, ItMw_1h_Nov_Mace, 1);
		CreateInvItems (slf, ItMw_Zweihaender2, 1);
		CreateInvItems (slf, ItMw_Schwert5, 1);
		CreateInvItems (slf, ItMw_Inquisitor, 1);
		CreateInvItems (slf, ItMw_Kriegshammer2, 1);
		CreateInvItems (slf, ItMw_Zweihaender4, 1);
		CreateInvItems (slf, ItMw_Krummschwert, 1);
		
		CreateInvItems (slf,ItRi_Hp_01, 1);
		
		Sarah_ItemsGiven_Chapter = 1;
	};	
	
	if (Kapitel >= 8)
	&& (Sarah_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 20);
		CreateInvItems (slf, ItLsTorch, 5);
		CreateInvItems (slf, ItRw_Arrow, 50);
		
		Sarah_ItemsGiven_Chapter = 2;
	};	
	
	if (Kapitel >= 9)
	&& (Sarah_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 25);
		CreateInvItems (slf, ItRw_Arrow, 50);
		
		Sarah_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Sarah_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItRw_Arrow, 50);
		
		Sarah_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Sarah_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		CreateInvItems (slf, ItRw_Arrow, 50);
		
		Sarah_ItemsGiven_Chapter = 5;
	};
};
