//******************************************************************************************

var int Canthar_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Canthar (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Canthar_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItFo_Wine, 5+Hlp_Random(10));
		CreateInvItems (slf, ItMi_Pan, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMi_Flask, 5+Hlp_Random(10));
		CreateInvItems (slf, ItMi_Saw, 1+Hlp_Random(2));

		CreateInvItems (slf, ItMw_Nagelkeule, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_ShortSword5, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Hellebarde, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Piratensaebel, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Schwert2, 2+Hlp_Random(4));

		CreateInvItems (slf, ItAm_Resist_01, 1+Hlp_Random(2));

		Canthar_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Canthar_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		Canthar_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Canthar_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItMw_Spicker, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Bartaxt, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Zweihaender3, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Rabenschnabel, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Streitkolben, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Krummschwert, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Sturmbringer, 1+Hlp_Random(2)); 

		Canthar_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Canthar_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));

		Canthar_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Canthar_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));

		Canthar_ItemsGiven_Chapter = 5;
	};
};
