///******************************************************************************************

var int Engor_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Engor (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Engor_ItemsGiven_Chapter < 7)
	{
		CreateInvItems (slf, ItMi_Gold, 80);
		
		CreateInvItems (slf, ItFo_Stew, 5);
		CreateInvItems (slf, ItFo_Water, 4);
		CreateInvItems (slf, ItMiSwordraw, 3);
		CreateInvItems (slf, ItPo_Health_01, 10);
		CreateInvItems (slf, ItPo_Health_02, 5);
		CreateInvItems (slf, ItPo_Health_03, 5);
		
		CreateInvItems (slf, ItWr_Map_Oldworld, 1);
		
		CreateInvItems (slf, ItAm_Prot_Fire_01, 1);
		CreateInvItems (slf, ItRi_Prot_Blunt_01, 1);
		
		CreateInvItems (slf, ItSc_Firebolt, 3);
		CreateInvItems (slf, ItSc_Firestorm, 3);
		CreateInvItems (slf, ItSc_IceBolt, 3);
		CreateInvItems (slf, ItSc_LightningFlash, 1);
		//CreateInvItems (slf, ItSc_MediumHeal, 2);
		CreateInvItems (slf, ItSc_Pyrokinesis, 1);
		CreateInvItems (slf, ItSc_SummonDemon, 1);
		CreateInvItems (slf, ItSc_SummonGolem, 2);
		
		CreateInvItems (slf, ItRw_Crossbow_L_01, 1);
		CreateInvItems (slf, ItRw_Crossbow_L_02, 1);
		CreateInvItems (slf, ItRw_Crossbow_H_01, 1);
		
		Engor_ItemsGiven_Chapter = 7;
	};
	
	if (Kapitel >= 8)
	&& (Engor_ItemsGiven_Chapter < 8)
	{
		CreateInvItems (slf, ItMi_Gold, 90);
		
		CreateInvItems (slf, ItFo_Booze, 5);
		CreateInvItems (slf, ItFo_Bread, 1);
		CreateInvItems (slf, ItFo_Sausage, 1);
		CreateInvItems (slf, ItKe_Lockpick, 6);
		CreateInvItems (slf, ItMi_Quartz, 2);
		CreateInvItems (slf, ItMi_Sulfur, 1);
		CreateInvItems (slf, ItFo_Wine, 2);
		CreateInvItems (slf, ItPo_Health_01, 10);
		CreateInvItems (slf, ItPo_Health_02, 6);
		CreateInvItems (slf, ItPo_Health_03, 5);
		CreateInvItems (slf, ItPo_Mana_01, 25);
		CreateInvItems (slf, ItPo_Mana_02, 25);
		CreateInvItems (slf, ItRw_Arrow, 55);
		CreateInvItems (slf, ItRw_Bolt, 50);
		
		CreateInvItems (slf, ItRw_Crossbow_M_01, 1);
		
		Engor_ItemsGiven_Chapter = 8;
	};
	
	if (Kapitel >= 9)
	&& (Engor_ItemsGiven_Chapter < 9)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		
		CreateInvItems (slf, ItFo_Wine, 4);
		CreateInvItems (slf, ItKe_Lockpick, 6);
		CreateInvItems (slf, ItMi_Coal, 2);
		CreateInvItems (slf, ItMi_Pitch, 2);
		CreateInvItems (slf, ItMi_Rockcrystal, 1);
		CreateInvItems (slf, ItPo_Health_01, 10);
		CreateInvItems (slf, ItPo_Health_02, 5);
		CreateInvItems (slf, ItPo_Health_03, 5);
		CreateInvItems (slf, ItPo_Mana_01, 25);
		CreateInvItems (slf, ItPo_Mana_02, 25);
		CreateInvItems (slf, ItRw_Arrow, 70);
		CreateInvItems (slf, ItRw_Bolt, 70);
		
		CreateInvItems (slf, ItRw_Crossbow_M_02, 1);
		
		Engor_ItemsGiven_Chapter = 9;
	};
	
	if (Kapitel >= 10)
	&& (Engor_ItemsGiven_Chapter < 10)
	{
		CreateInvItems (slf, ItMi_Gold, 150);
		
		CreateInvItems (slf, ItKe_Lockpick, 12);
		CreateInvItems (slf, ItMi_Coal, 1);
		CreateInvItems (slf, ItMi_Pitch, 2);
		CreateInvItems (slf, ItMi_Rockcrystal, 1);
		CreateInvItems (slf, ItPo_Health_01, 10);
		CreateInvItems (slf, ItPo_Health_02, 5);
		CreateInvItems (slf, ItPo_Health_03, 5);
		CreateInvItems (slf, ItPo_Mana_01, 25);
		CreateInvItems (slf, ItPo_Mana_02, 25);
		CreateInvItems (slf, ItRw_Arrow, 100);
		CreateInvItems (slf, ItRw_Bolt, 110);
		
		CreateInvItems (slf, ItRw_Crossbow_H_02, 1);
		
		Engor_ItemsGiven_Chapter = 10;
	};
	
	if (Kapitel >= 11)
	&& (Engor_ItemsGiven_Chapter < 11)
	{
		CreateInvItems (slf, ItMi_Gold, 200);
		
		CreateInvItems (slf, ItMi_Aquamarine, 1);
		CreateInvItems (slf, ItMi_Coal, 4);
		CreateInvItems (slf, ItMi_DarkPearl, 1);
		CreateInvItems (slf, ItPo_Health_01, 10);
		CreateInvItems (slf, ItPo_Health_02, 5);
		CreateInvItems (slf, ItPo_Health_03, 5);
		CreateInvItems (slf, ItPo_Mana_01, 35);
		CreateInvItems (slf, ItPo_Mana_02, 35);
		CreateInvItems (slf, ItRw_Arrow, 125);
		CreateInvItems (slf, ItRw_Bolt, 125);
		
		Engor_ItemsGiven_Chapter = 11;
	};
};
