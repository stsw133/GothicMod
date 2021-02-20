//******************************************************************************************

var int Ignaz_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Ignaz (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Ignaz_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100+Hlp_Random(200));
		CreateInvItems (slf, ItPo_Mana_02, 1+Hlp_Random(2)); 
		CreateInvItems (slf, ItPo_Health_02, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Speed, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Geist, 1+Hlp_Random(2));
		CreateInvItems (slf, ItPo_Health_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItMi_Flask, 10+Hlp_Random(20));

		CreateInvItems (slf, ItSc_Charm, 5+Hlp_Random(10));
		CreateInvItems (slf, ItSc_Sleep, 1+Hlp_Random(2));

		Ignaz_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Ignaz_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 200+Hlp_Random(400));
		CreateInvItems (slf, ItPo_Health_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_02, 2+Hlp_Random(4)); 
		CreateInvItems (slf, ItPo_Health_02, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Speed, 2+Hlp_Random(4));
		CreateInvItems (slf, ItPo_Geist, 2+Hlp_Random(4));
		CreateInvItems (slf, ItSc_Charm, 5+Hlp_Random(10));	
		CreateInvItems (slf, ItMi_Flask, 10+Hlp_Random(20));

		Ignaz_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Ignaz_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 300+Hlp_Random(600));
		CreateInvItems (slf, ItPo_Health_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_02, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Health_02, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Speed, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Geist, 3+Hlp_Random(6));
		CreateInvItems (slf, ItSc_Charm, 5+Hlp_Random(10));
		CreateInvItems (slf, ItMi_Flask, 10+Hlp_Random(20));

		Ignaz_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Ignaz_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 400+Hlp_Random(800)); 
		CreateInvItems (slf, ItPo_Health_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_03, 3+Hlp_Random(6));
		CreateInvItems (slf, ItPo_Mana_02, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPo_Health_02, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPo_Speed, 4+Hlp_Random(8));
		CreateInvItems (slf, ItPo_Geist, 4+Hlp_Random(8));
		CreateInvItems (slf, ItSc_Charm, 5+Hlp_Random(10));
		CreateInvItems (slf, ItMi_Flask, 10+Hlp_Random(20));

		Ignaz_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Ignaz_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 500+Hlp_Random(1000));
		CreateInvItems (slf, ItPo_Mana_02, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Health_02, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Speed, 5+Hlp_Random(10));
		CreateInvItems (slf, ItPo_Geist, 5+Hlp_Random(10));
		CreateInvItems (slf, ItSc_Charm, 5+Hlp_Random(10));
		CreateInvItems (slf, ItMi_Flask, 10+Hlp_Random(20));

		Ignaz_ItemsGiven_Chapter = 5;
	};
};
