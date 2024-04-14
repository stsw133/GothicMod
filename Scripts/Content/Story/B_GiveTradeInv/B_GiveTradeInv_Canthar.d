///******************************************************************************************

var int Canthar_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Canthar (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Canthar_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Wine, 5);
		CreateInvItems (slf, ItMi_Flask, 5);
		CreateInvItems (slf, ItMi_Pan, 1);
		CreateInvItems (slf, ItMi_Saw, 1);
		CreateInvItems (slf, ItPl_Beet, 10);
		
		CreateInvItems (slf, ItMw_Hellebarde, 1);
		CreateInvItems (slf, ItMw_Piratensaebel, 1);
		CreateInvItems (slf, ItMw_Nagelkeule, 1);
		CreateInvItems (slf, ItMw_Schwert2, 2);
		CreateInvItems (slf, ItMw_ShortSword5, 1);
		
		//CreateInvItems (slf, ItAm_Prot_Mage_01, 1);
		
		Canthar_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Canthar_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		Canthar_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Canthar_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItMw_Bartaxt, 1);
		CreateInvItems (slf, ItMw_Krummschwert, 1);
		CreateInvItems (slf, ItMw_Rabenschnabel, 1);
		CreateInvItems (slf, ItMw_Spicker, 1);
		CreateInvItems (slf, ItMw_Streitkolben, 1);
		CreateInvItems (slf, ItMw_Sturmbringer, 1);
		CreateInvItems (slf, ItMw_Zweihaender3, 1);
		
		Canthar_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Canthar_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		Canthar_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Canthar_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		Canthar_ItemsGiven_Chapter = 11;
	};
};
