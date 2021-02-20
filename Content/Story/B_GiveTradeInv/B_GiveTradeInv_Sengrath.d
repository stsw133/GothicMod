//******************************************************************************************

var int Sengrath_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Sengrath (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Sengrath_ItemsGiven_Chapter < 1)
	{
		Sengrath_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Sengrath_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400)); 
		CreateInvItems (slf, ItPo_Mana_01, 15+Hlp_Random(30));

		CreateInvItems (slf, ItSc_Sleep, 2+Hlp_Random(4));

		CreateInvItems (slf, ItRi_Energy_02, 1+Hlp_Random(2)); 

		Sengrath_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Sengrath_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 
		CreateInvItems (slf, ItPo_Mana_01, 15+Hlp_Random(30));

		Sengrath_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Sengrath_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300)); 
		CreateInvItems (slf, ItPo_Mana_01, 15+Hlp_Random(30));

		Sengrath_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Sengrath_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400)); 
		CreateInvItems (slf, ItPo_Mana_01, 15+Hlp_Random(30));

		Sengrath_ItemsGiven_Chapter = 5;
	};
};
