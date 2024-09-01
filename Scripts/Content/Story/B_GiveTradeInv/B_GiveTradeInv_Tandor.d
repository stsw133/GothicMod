///******************************************************************************************

var int Tandor_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Tandor (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Tandor_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 80);
		
		CreateInvItems (slf, ItRw_Arrow, 25);
		CreateInvItems (slf, ItRw_Bolt, 25);
		
		CreateInvItems (slf, ItMw_Doppelaxt, 1);
		CreateInvItems (slf, ItMw_Drachenschneide, 1);
		CreateInvItems (slf, ItMw_Kriegshammer2, 1);
		CreateInvItems (slf, ItMw_Morgenstern, 1);
		CreateInvItems (slf, ItMw_Orkschlaechter, 1);
		CreateInvItems (slf, ItMw_Schlachtaxt, 1); 
		CreateInvItems (slf, ItMw_Schwert2, 1);
		CreateInvItems (slf, ItMw_Schwert5, 1);
		CreateInvItems (slf, ItMw_Stabkeule, 1);
		CreateInvItems (slf, ItMw_Steinbrecher, 1);
		CreateInvItems (slf, ItMw_Streitaxt2, 1);
		CreateInvItems (slf, ItMw_Streitkolben, 1);
		
		CreateInvItems (slf, ItRw_Bow_L_03, 1);
		CreateInvItems (slf, ItRw_Bow_L_04, 1);
		CreateInvItems (slf, ItRw_Bow_M_02, 1);
		CreateInvItems (slf, ItRw_Bow_M_03, 1);
		CreateInvItems (slf, ItRw_Bow_H_02, 1);
		CreateInvItems (slf, ItRw_Crossbow_M_01, 1);
		CreateInvItems (slf, ItRw_Crossbow_M_02, 1);
		CreateInvItems (slf, ItRw_Crossbow_H_01, 1);
		
		CreateInvItems (slf, ItAm_Prot_Blunt_01, 1);
		
		Tandor_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Tandor_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		
		Tandor_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Tandor_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		
		Tandor_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Tandor_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		
		Tandor_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Tandor_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 100);
		
		Tandor_ItemsGiven_Chapter = 11;
	};
};
