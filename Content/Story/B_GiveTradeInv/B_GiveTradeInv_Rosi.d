//******************************************************************************************

var int Rosi_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Rosi (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Rosi_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItFo_Water, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bread, 3+Hlp_Random(6));
		CreateInvItems (slf, ItRw_Arrow, 50+Hlp_Random(100));
		CreateInvItems (slf, ItRw_Bolt, 30+Hlp_Random(60));

		CreateInvItems (slf, ItRw_Bow_L_01, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_L_04, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_H_01, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Crossbow_M_02, 1+Hlp_Random(2)); 

		Rosi_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Rosi_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItFo_Cheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_WhiteCheese, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFoMutton, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Fishsoup, 5+Hlp_Random(10));
		CreateInvItems (slf, ItRw_Arrow, 70+Hlp_Random(140));
		CreateInvItems (slf, ItRw_Bolt, 80+Hlp_Random(160));

		Rosi_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Rosi_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItFo_Cheese, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_WhiteCheese, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Sausage, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Booze, 5+Hlp_Random(10));
		CreateInvItems (slf, ItRw_Arrow, 90+Hlp_Random(180));
		CreateInvItems (slf, ItRw_Bolt, 40+Hlp_Random(80));

		Rosi_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Rosi_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));
		CreateInvItems (slf, ItFo_Wine, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFoMutton, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bacon, 5+Hlp_Random(10));
		CreateInvItems (slf, ItRw_Arrow, 100+Hlp_Random(200));
		CreateInvItems (slf, ItRw_Bolt, 130+Hlp_Random(260));

		Rosi_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Rosi_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));
		CreateInvItems (slf, ItFo_Wine, 3+Hlp_Random(6));
		CreateInvItems (slf, ItFo_Milk, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFoMutton, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Bacon, 5+Hlp_Random(10));
		CreateInvItems (slf, ItRw_Arrow, 150+Hlp_Random(300));
		CreateInvItems (slf, ItRw_Bolt, 130+Hlp_Random(260));

		Rosi_ItemsGiven_Chapter = 5;
	};
};
