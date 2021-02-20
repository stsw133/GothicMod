//******************************************************************************************

var int Garett_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Addon_Garett (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Garett_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 10+Hlp_Random(20));
		CreateInvItems (slf, ItFo_Rum, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Health_03, 1+Hlp_Random(2));

		CreateInvItems (slf, ItMw_ShortSword3, 1+Hlp_Random(2));
		CreateInvItems (slf, itmw_2h_Axe_L_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Schiffsaxt, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Streitaxt1, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Zweihaender4, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Orkschlaechter, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMW_Addon_Hacker_1h_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMW_Addon_Hacker_1h_02, 1+Hlp_Random(2));		
		CreateInvItems (slf, ItMW_Addon_Hacker_2h_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMW_Addon_Hacker_2h_02, 1+Hlp_Random(2));		

		CreateInvItems (slf, ItRw_Crossbow_M_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Crossbow_H_01, 1+Hlp_Random(2));

		CreateInvItems (slf, ItAm_Energy_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRi_Resist_02, 1+Hlp_Random(2));

		Garett_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Garett_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 20+Hlp_Random(40));
		CreateInvItems (slf, ItMi_Joint, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMiSwordraw, 2+Hlp_Random(4)); 

		Garett_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Garett_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 50+Hlp_Random(100)); 

		Garett_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Garett_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));

		Garett_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Garett_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));

		Garett_ItemsGiven_Chapter = 5;
	};
};
