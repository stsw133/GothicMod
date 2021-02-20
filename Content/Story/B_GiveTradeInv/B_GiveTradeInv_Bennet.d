//******************************************************************************************

var int Bennet_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Bennet (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Bennet_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItMiSwordraw, 3+Hlp_Random(6));

		CreateInvItems (slf, ItMw_1H_Mace_L_04, 2+Hlp_Random(4));

		CreateInvItems (slf, ItBe_DrH_01, 1+Hlp_Random(2));

		Bennet_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Bennet_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 250+Hlp_Random(500));
		CreateInvItems (slf, ItMiSwordraw, 3+Hlp_Random(6));

		Bennet_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Bennet_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 450+Hlp_Random(900));
		CreateInvItems (slf, ItMiSwordraw, 3+Hlp_Random(6));

		CreateInvItems (slf, ItMi_Nugget, 1+Hlp_Random(2));

		Bennet_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Bennet_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 700+Hlp_Random(1400));
		CreateInvItems (slf, ItMiSwordraw, 3+Hlp_Random(6));

		CreateInvItems (slf, ItMi_Nugget, 2+Hlp_Random(4));

		Bennet_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Bennet_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 1100+Hlp_Random(2200)); 
		CreateInvItems (slf, ItMiSwordraw, 3+Hlp_Random(6)); 

		CreateInvItems (slf, ItMi_Nugget, 2+Hlp_Random(4));

		Bennet_ItemsGiven_Chapter = 5;
	};
};
