///******************************************************************************************

var int Brian_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Brian (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Brian_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 20);
		
		CreateInvItems (slf, ItMiSwordraw, 2);
		
		Brian_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Brian_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 20);
		
		CreateInvItems (slf, ItMiSwordraw, 1);
		
		Brian_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Brian_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 20);
		
		CreateInvItems (slf, ItMiSwordraw, 1);
		
		Brian_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Brian_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 20);
		
		CreateInvItems (slf, ItMiSwordraw, 1);
		
		Brian_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Brian_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 40);
		
		CreateInvItems (slf, ItMiSwordraw, 1);
		
		Brian_ItemsGiven_Chapter = 11;
	};
};
