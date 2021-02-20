//******************************************************************************************

var int Kjorn_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Kjorn (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Kjorn_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItFo_Apple, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Pear, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Water, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Beer, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));

		Kjorn_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Kjorn_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFoMutton, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));
		CreateInvItems (slf, ItRi_Energy_02, 1+Hlp_Random(2));

		Kjorn_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Kjorn_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 
		CreateInvItems (slf, ItFo_Cheese, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_WhiteCheese, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Bacon, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFoMutton, 10+Hlp_Random(20)); 
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Sausage, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Booze, 5+Hlp_Random(10));

		Kjorn_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Kjorn_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 50+Hlp_Random(100)); 
		CreateInvItems (slf, ItFo_Wine, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFo_Booze, 3+Hlp_Random(6));  
		CreateInvItems (slf, ItFo_Bacon, 5+Hlp_Random(10));
		CreateInvItems (slf, ItRw_Arrow, 65+Hlp_Random(130));
		CreateInvItems (slf, ItRw_Bolt, 50+Hlp_Random(100));
		CreateInvItems (slf, ItPo_Health_01, 6+Hlp_Random(12));

		CreateInvItems (slf, ItKe_Lockpick, 10+Hlp_Random(20));

		Kjorn_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Kjorn_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 50+Hlp_Random(100));
		CreateInvItems (slf, ItFo_Wine, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Booze, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Bacon, 5+Hlp_Random(10));
		CreateInvItems (slf, ItRw_Arrow, 55+Hlp_Random(110));
		CreateInvItems (slf, ItRw_Bolt, 55+Hlp_Random(110));
		CreateInvItems (slf, ItPo_Health_01, 6+Hlp_Random(12));

		Kjorn_ItemsGiven_Chapter = 5;
	};
};
