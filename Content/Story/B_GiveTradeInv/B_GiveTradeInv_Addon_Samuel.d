//******************************************************************************************

var int Samuel_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Addon_Samuel (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Samuel_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItFo_Rum, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Booze, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Beer, 6+Hlp_Random(12));
		CreateInvItems (slf, Itfo_Wine, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Bacon, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_Flask, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_SwampHerb, 4+Hlp_Random(8));
		CreateInvItems (slf, ItMi_Joint, 1+Hlp_Random(2));

		CreateInvItems (slf, ItRi_Energy_02, 1+Hlp_Random(2));

		Samuel_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Samuel_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 

		CreateInvItems (slf, ItFo_Rum, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Booze, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Beer, 6+Hlp_Random(12));
		CreateInvItems (slf, Itfo_Wine, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Bacon, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_Flask, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_SwampHerb, 4+Hlp_Random(8));
		CreateInvItems (slf, ItMi_Joint, 1+Hlp_Random(2));

		Samuel_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Samuel_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItFo_Rum, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Booze, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Beer, 6+Hlp_Random(12));
		CreateInvItems (slf, Itfo_Wine, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Bacon, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_Flask, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_SwampHerb, 4+Hlp_Random(8));
		CreateInvItems (slf, ItMi_Joint, 1+Hlp_Random(2));

		Samuel_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Samuel_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItFo_Rum, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Booze, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Beer, 6+Hlp_Random(12));
		CreateInvItems (slf, Itfo_Wine, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Bacon, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_Flask, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_SwampHerb, 4+Hlp_Random(8));
		CreateInvItems (slf, ItMi_Joint, 1+Hlp_Random(2));

		Samuel_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Samuel_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItFo_Rum, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Booze, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Beer, 6+Hlp_Random(12));
		CreateInvItems (slf, Itfo_Wine, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Bacon, 2+Hlp_Random(4));
		CreateInvItems (slf, ItMi_Flask, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPl_SwampHerb, 4+Hlp_Random(8));
		CreateInvItems (slf, ItMi_Joint, 1+Hlp_Random(2));

		Samuel_ItemsGiven_Chapter = 5;
	};
};
