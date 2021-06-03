///******************************************************************************************

var int Bennet_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Bennet (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Bennet_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItMiSwordraw, 3);
		
		CreateInvItems (slf, ItMw_1H_Mace_L_04, 2);
		
		CreateInvItems (slf, ItBE_Addon_SLD_01, 1);
		
		Bennet_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Bennet_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 250);
		CreateInvItems (slf, ItMiSwordraw, 3);
		
		Bennet_ItemsGiven_Chapter = 2;
	};
	
	if (Kapitel >= 9)
	&& (Bennet_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 450);
		CreateInvItems (slf, ItMiSwordraw, 3);
		
		CreateInvItems (slf, ItMi_Nugget, 1);
		
		CreateInvItems (slf, ItBE_Addon_MC, 1);
		
		Bennet_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Bennet_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 700);
		CreateInvItems (slf, ItMiSwordraw, 3);
		
		CreateInvItems (slf, ItMi_Nugget, 2);
		
		Bennet_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Bennet_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 1100);
		CreateInvItems (slf, ItMiSwordraw, 3);
		
		CreateInvItems (slf, ItMi_Nugget, 2);
		
		Bennet_ItemsGiven_Chapter = 5;
	};
};
