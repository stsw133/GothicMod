//******************************************************************************************

var int Khaled_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Khaled (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Khaled_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		CreateInvItems (slf, ItMw_Nagelkeule2, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Streitaxt1, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Schwert3, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Streitkolben, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Zweihaender2, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Streitaxt2, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Zweihaender4, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Barbarenstreitaxt, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Berserkeraxt, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItRw_Bow_L_01, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_L_03, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_M_03, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_H_02, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_H_04, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Crossbow_M_02, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Crossbow_H_02, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItRw_Arrow, 30+Hlp_Random(60)); 

		Khaled_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Khaled_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 250+Hlp_Random(500));
		CreateInvItems (slf, ItRw_Arrow, 50+Hlp_Random(100)); 
		CreateInvItems (slf, ItRw_Bolt, 30+Hlp_Random(60));

		Khaled_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Khaled_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 450+Hlp_Random(900)); 
		CreateInvItems (slf, ItRw_Arrow, 70+Hlp_Random(140)); 
		CreateInvItems (slf, ItRw_Bolt, 50+Hlp_Random(100)); 

		CreateInvItems (slf, ItMi_Nugget, 1+Hlp_Random(2));

		Khaled_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Khaled_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 700+Hlp_Random(1400));
		CreateInvItems (slf, ItMiSwordraw, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Arrow, 80+Hlp_Random(160));
		CreateInvItems (slf, ItRw_Bolt, 60+Hlp_Random(120));

		CreateInvItems (slf, ItMi_Nugget, 2+Hlp_Random(4));

		Khaled_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Khaled_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 1100+Hlp_Random(2200));
		CreateInvItems (slf, ItRw_Arrow, 100+Hlp_Random(200));
		CreateInvItems (slf, ItRw_Bolt, 70+Hlp_Random(140));

		Khaled_ItemsGiven_Chapter = 5;
	};
};
