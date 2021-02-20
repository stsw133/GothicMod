//******************************************************************************************

var int Tandor_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Tandor (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Tandor_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 80+Hlp_Random(160));
		CreateInvItems (slf, ItRw_Arrow, 25+Hlp_Random(50));
		CreateInvItems (slf, ItRw_Bolt, 25+Hlp_Random(50));

		CreateInvItems (slf, ItMw_Stabkeule, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Steinbrecher, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Schwert2, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Morgenstern, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Doppelaxt, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Streitkolben, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Streitaxt2, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Schwert5, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Kriegshammer2, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Orkschlaechter, 1+Hlp_Random(2));
		CreateInvItems (slf, ItMw_Schlachtaxt, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItMw_Drachenschneide, 1+Hlp_Random(2));

		CreateInvItems (slf, ItRw_Bow_M_03, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Crossbow_M_02, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Bow_H_02, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Crossbow_H_01, 1+Hlp_Random(2)); 	
		CreateInvItems (slf, ItRw_Bow_L_03, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Bow_L_04, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Bow_M_02, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Crossbow_M_01, 1+Hlp_Random(2));

		CreateInvItems (slf, ItAm_ProtTotal_01, 1+Hlp_Random(2));

		Tandor_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Tandor_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400)); 
		CreateInvItems (slf, ItRw_Arrow, 100+Hlp_Random(200));
		CreateInvItems (slf, ItRw_Bolt, 100+Hlp_Random(200));

		Tandor_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Tandor_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 
		CreateInvItems (slf, ItRw_Arrow, 100+Hlp_Random(200));
		CreateInvItems (slf, ItRw_Bolt, 100+Hlp_Random(200));

		Tandor_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Tandor_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300)); 
		CreateInvItems (slf, ItRw_Arrow, 100+Hlp_Random(200));
		CreateInvItems (slf, ItRw_Bolt, 100+Hlp_Random(200));

		Tandor_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Tandor_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400)); 
		CreateInvItems (slf, ItRw_Arrow, 100+Hlp_Random(200));
		CreateInvItems (slf, ItRw_Bolt, 100+Hlp_Random(200));

		Tandor_ItemsGiven_Chapter = 5;
	};
};
