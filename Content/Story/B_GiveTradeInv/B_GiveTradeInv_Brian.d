//******************************************************************************************

var int Brian_ItemsGiven_Chapter;

//******************************************************************************************
FUNC VOID B_GiveTradeInv_Brian (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Brian_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 20+Hlp_Random(40));
		CreateInvItems (slf, ItMiSwordraw, 2+Hlp_Random(4));

		Brian_ItemsGiven_Chapter = 1;
	};

	if (Kapitel >= 8)
	&& (Brian_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 20+Hlp_Random(40));
		CreateInvItems (slf, ItMiSwordraw, 1+Hlp_Random(2));

		Brian_ItemsGiven_Chapter = 2;
	};

	if (Kapitel >= 9)
	&& (Brian_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 20+Hlp_Random(40));
		CreateInvItems (slf, ItMiSwordraw, 1+Hlp_Random(2));

		Brian_ItemsGiven_Chapter = 3;
	};

	if (Kapitel >= 10)
	&& (Brian_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 20+Hlp_Random(40));
		CreateInvItems (slf, ItMiSwordraw, 1+Hlp_Random(2));

		Brian_ItemsGiven_Chapter = 4;
	};

	if (Kapitel >= 11)
	&& (Brian_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 40+Hlp_Random(80)); 
		CreateInvItems (slf, ItMiSwordraw, 1+Hlp_Random(2)); 

		Brian_ItemsGiven_Chapter = 5;
	};
};
