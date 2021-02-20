//******************************************************************************************

var int Coragon_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Coragon (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Coragon_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 50+Hlp_Random(100));
		CreateInvItems (slf, ItFo_Wine, 6+Hlp_Random(12)); 
		CreateInvItems (slf, ItFo_Booze, 3+Hlp_Random(6)); 
		CreateInvItems (slf, ItFo_Beer, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Apple, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Pear, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10)); 

		Coragon_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Coragon_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 50+Hlp_Random(100));
		CreateInvItems (slf, ItFo_Wine, 4+Hlp_Random(8)); 
		CreateInvItems (slf, ItFo_Booze, 3+Hlp_Random(6)); 
		CreateInvItems (slf, ItFo_Beer, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bacon, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Sausage, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Honey, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Chocolate, 5+Hlp_Random(10));

		Coragon_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Coragon_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 50+Hlp_Random(100)); 
		CreateInvItems (slf, ItFo_Wine, 4+Hlp_Random(8)); 
		CreateInvItems (slf, ItFo_Booze, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Beer, 6+Hlp_Random(12)); 
		CreateInvItems (slf, ItFo_Bacon, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Sausage, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Honey, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Chocolate, 5+Hlp_Random(10));

		Coragon_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Coragon_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));
		CreateInvItems (slf, ItFo_Wine, 7+Hlp_Random(14)); 
		CreateInvItems (slf, ItFo_Booze, 4+Hlp_Random(8)); 
		CreateInvItems (slf, ItFo_Beer, 6+Hlp_Random(12)); 
		CreateInvItems (slf, ItFo_Apple, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Pear, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10)); 

		Coragon_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Coragon_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300)); 
		CreateInvItems (slf, ItFo_Wine, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Booze, 4+Hlp_Random(8)); 
		CreateInvItems (slf, ItFo_Beer, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Apple, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Pear, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Bacon, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Sausage, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Honey, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Chocolate, 5+Hlp_Random(10));

		Coragon_ItemsGiven_Chapter = 5;
	};
};
