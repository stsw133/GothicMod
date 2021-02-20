//******************************************************************************************

var int Karras_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Karras (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Karras_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));  

		CreateInvItems (slf, ItRi_ProtTotal_01, 1+Hlp_Random(2));

		Karras_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Karras_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		Karras_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Karras_ItemsGiven_Chapter < 3)
	{
	
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 

		Karras_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Karras_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300)); 

		Karras_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Karras_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400)); 

		Karras_ItemsGiven_Chapter = 5;
	};
};
