//******************************************************************************************

var int Kardif_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Kardif (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Kardif_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 80+Hlp_Random(160));

		CreateInvItems (slf, ItFo_FishSoup, 3+Hlp_Random(6)); 
		CreateInvItems (slf, ItFoMutton, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItFo_Fish, 4+Hlp_Random(8));
		CreateInvItems (slf, ItFo_Booze, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8)); 

		CreateInvItems (slf, ItFo_Wine, 3+Hlp_Random(6));

		Kardif_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Kardif_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 

		CreateInvItems (slf, ItFo_Sausage, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFo_Fish, 4+Hlp_Random(8)); 
		CreateInvItems (slf, ItFo_Booze, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8)); 

		CreateInvItems (slf, ItFo_Wine,	3+Hlp_Random(6));

		if (Knows_SecretSign == true)
		{	CreateInvItems (self, ItKe_Lockpick, 20+Hlp_Random(40));	};

		Kardif_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Kardif_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));

		CreateInvItems (slf, ItFo_Sausage, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFo_FishSoup, 3+Hlp_Random(6)); 
		CreateInvItems (slf, ItFoMutton, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItFo_Wine, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8)); 

		if (Knows_SecretSign == true)
		{	CreateInvItems (self, ItKe_Lockpick, 20+Hlp_Random(40));	};

		Kardif_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Kardif_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));

		CreateInvItems (slf, ItFo_Sausage, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFo_FishSoup, 3+Hlp_Random(6)); 
		CreateInvItems (slf, ItFoMutton, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItFo_Fish, 4+Hlp_Random(8)); 
		CreateInvItems (slf, ItFo_Wine, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItFo_Booze, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8)); 

		if (Knows_SecretSign == true)
		{	CreateInvItems (self, ItKe_Lockpick, 20+Hlp_Random(40));	};

		Kardif_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Kardif_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 300+Hlp_Random(600));

		CreateInvItems (slf, ItFo_Sausage, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_FishSoup, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFoMutton, 7+Hlp_Random(14));
		CreateInvItems (slf, ItFo_Fish, 8+Hlp_Random(16));
		CreateInvItems (slf, ItFo_Wine, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Booze, 4+Hlp_Random(8));
		CreateInvItems (slf, ItFo_Beer, 4+Hlp_Random(8));

		if (Knows_SecretSign == true)
		{	CreateInvItems (self, ItKe_Lockpick, 20+Hlp_Random(40));	};

		Kardif_ItemsGiven_Chapter = 5;
	};
};
