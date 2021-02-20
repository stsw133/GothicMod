//******************************************************************************************

var int Baltram_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Baltram (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Baltram_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 

		CreateInvItems (slf, ItFo_Water, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bread, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Cheese, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_WhiteCheese, 2+Hlp_Random(4));

		CreateInvItems (slf, ItAm_Hp_01, 1+Hlp_Random(2)); 

		Baltram_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Baltram_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFoMutton, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Fishsoup, 5+Hlp_Random(10));

		Baltram_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Baltram_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItFo_Cheese, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_WhiteCheese, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Bacon, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFoMutton, 10+Hlp_Random(20)); 
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Sausage, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Booze, 5+Hlp_Random(10)); 

		Baltram_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Baltram_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));

		CreateInvItems (slf, ItFo_Wine, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Milk, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFoMutton, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Sausage, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bacon, 5+Hlp_Random(10));

		Baltram_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Baltram_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));

		CreateInvItems (slf, ItFo_Wine, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFo_Milk, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFoMutton, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Sausage, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Bacon, 5+Hlp_Random(10)); 

		Baltram_ItemsGiven_Chapter = 5;
	};
};
