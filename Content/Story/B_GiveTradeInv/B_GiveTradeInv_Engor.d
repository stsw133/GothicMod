//******************************************************************************************

var int Engor_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Engor (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Engor_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 80+Hlp_Random(160));
		CreateInvItems (slf, ItMiSwordraw, 3+Hlp_Random(6)); 
		CreateInvItems (slf, ItPo_Health_02, 20+Hlp_Random(40));
		CreateInvItems (slf, ItFo_Stew, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Water, 4+Hlp_Random(8));

		CreateInvItems (slf, ItWr_Map_Oldworld, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItRi_ProtTotal_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItAm_Energy_01, 1+Hlp_Random(2));

		CreateInvItems (slf, ItRw_Crossbow_L_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Crossbow_L_02, 1+Hlp_Random(2));  

		CreateInvItems (slf, ItRw_Crossbow_H_01, 1+Hlp_Random(2)); 

		Engor_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Engor_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 90+Hlp_Random(180)); 
		CreateInvItems (slf, ItPo_Health_03, 21+Hlp_Random(42));
		CreateInvItems (slf, ItPo_Mana_02, 50+Hlp_Random(100));
		CreateInvItems (slf, ItFo_Sausage, 1+Hlp_Random(2));
		CreateInvItems (slf, ItFo_Booze, 5+Hlp_Random(10));
		CreateInvItems (slf, ItFo_Wine, 2+Hlp_Random(4));
		CreateInvItems (slf, ItFo_Bread, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Arrow, 55+Hlp_Random(110));
		CreateInvItems (slf, ItRw_Bolt, 50+Hlp_Random(100));
		CreateInvItems (slf, ItMi_Sulfur, 1+Hlp_Random(2));
		CreateInvItems (slf, ItKE_Lockpick, 6+Hlp_Random(12));

		CreateInvItems (slf, ItRw_Crossbow_M_01, 1+Hlp_Random(2)); 

		Engor_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Engor_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItFo_Wine, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPo_Health_02, 20+Hlp_Random(40));
		CreateInvItems (slf, ItPo_Mana_02, 50+Hlp_Random(100));
		CreateInvItems (slf, ItRw_Arrow, 70+Hlp_Random(140));
		CreateInvItems (slf, ItRw_Bolt, 70+Hlp_Random(140));
		CreateInvItems (slf, ItKe_Lockpick, 6+Hlp_Random(12));

		CreateInvItems (slf, ItRw_Crossbow_M_02, 1+Hlp_Random(2));

		Engor_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Engor_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));
		CreateInvItems (slf, ItPo_Health_02, 20+Hlp_Random(40));
		CreateInvItems (slf, ItPo_Mana_02, 50+Hlp_Random(100));
		CreateInvItems (slf, ItRw_Arrow, 100+Hlp_Random(200));
		CreateInvItems (slf, ItRw_Bolt, 110+Hlp_Random(220));
		CreateInvItems (slf, ItKE_Lockpick, 12+Hlp_Random(24));

		CreateInvItems (slf, ItRw_Crossbow_H_02, 1+Hlp_Random(2));

		Engor_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Engor_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));
		CreateInvItems (slf, ItPo_Health_02, 20+Hlp_Random(40));
		CreateInvItems (slf, ItPo_Mana_02, 70+Hlp_Random(140));
		CreateInvItems (slf, ItMi_Aquamarine, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Arrow, 125+Hlp_Random(250));
		CreateInvItems (slf, ItRw_Bolt, 125+Hlp_Random(250));

		Engor_ItemsGiven_Chapter = 5;
	};
};
