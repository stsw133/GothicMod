//******************************************************************************************

var int Fenia_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Fenia (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Fenia_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 50+Hlp_Random(100));
		CreateInvItems (slf, ItFo_Water, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bread, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Fish, 5+Hlp_Random(10));

		Fenia_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Fenia_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 50+Hlp_Random(100)); 
		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Fishsoup, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Fish, 3+Hlp_Random(6));

		Fenia_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Fenia_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 
		CreateInvItems (slf, ItFoMutton, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Fish, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Sausage, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Booze, 5+Hlp_Random(10)); 

		Fenia_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Fenia_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300)); 
		CreateInvItems (slf, ItFo_Wine, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFoMutton, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Bacon, 5+Hlp_Random(10)); 
		CreateInvItems (slf, ItFo_Fish, 5+Hlp_Random(10));

		Fenia_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Fenia_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400)); 
		CreateInvItems (slf, ItFo_Wine, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFoMutton, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFo_Stew, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItFo_Fish, 5+Hlp_Random(10));

		Fenia_ItemsGiven_Chapter = 5;
	};
};
