//******************************************************************************************

var int Bosper_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Bosper (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Bosper_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 50+Hlp_Random(100));
		CreateInvItems (slf, ItRw_Arrow, 30+Hlp_Random(60));

		CreateInvItems (slf, ItRw_Bow_L_01, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_L_02, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_L_03, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_L_03, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_L_04, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItRi_Dex_02, 1+Hlp_Random(2)); 

		Bosper_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Bosper_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200)); 
		CreateInvItems (slf, ItRw_Arrow, 50+Hlp_Random(100)); 
		CreateInvItems (slf, ItRw_Bolt, 50+Hlp_Random(100)); 

//		CreateInvItems (slf, ItWB_Dex_Str_01, 1+Hlp_Random(2)); 

		CreateInvItems (slf, ItRw_Bow_M_01, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_M_02, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_M_03, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItRw_Bow_M_04, 1+Hlp_Random(2)); 

		Bosper_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Bosper_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItRw_Arrow, 100+Hlp_Random(200));
		CreateInvItems (slf, ItRw_Bolt, 100+Hlp_Random(200));

//		CreateInvItems (slf, ItWB_Dex_Str_02, 1+Hlp_Random(2));

		Bosper_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Bosper_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 150+Hlp_Random(300));
		CreateInvItems (slf, ItRw_Arrow, 180+Hlp_Random(360));
		CreateInvItems (slf, ItRw_Bolt, 160+Hlp_Random(320));

		CreateInvItems (slf, ItRw_Bow_H_01, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Bow_H_02, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Bow_H_03, 1+Hlp_Random(2));
		CreateInvItems (slf, ItRw_Bow_H_04, 1+Hlp_Random(2));

		Bosper_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Bosper_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));
		CreateInvItems (slf, ItRw_Arrow, 200+Hlp_Random(400));
		CreateInvItems (slf, ItRw_Bolt, 170+Hlp_Random(340));

		Bosper_ItemsGiven_Chapter = 5;
	};
};
