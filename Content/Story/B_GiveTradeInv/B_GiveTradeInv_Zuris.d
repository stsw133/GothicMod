///******************************************************************************************

var int Zuris_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Zuris (var C_NPC slf)
{
	if (Kapitel >= 7)
	&& (Zuris_ItemsGiven_Chapter < 1)
	{
		CreateInvItems (slf, ItMi_Gold, 100);
		CreateInvItems (slf, ItPo_Mana_01, 10); 
		CreateInvItems (slf, ItPo_Health_01, 10);
		CreateInvItems (slf, ItPo_Health_Addon_04, 2);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 2);
		CreateInvItems (slf, ItMi_FruitTabak, 2);
		CreateInvItems (slf, ItWr_Book_StarPower, 1);
		CreateInvItems (slf, ItFo_Addon_Pfeffer_01, 1);
		
		CreateInvItems (slf, ItSc_Light, 6);
		CreateInvItems (slf, ItSc_Sleep, 1);
		CreateInvItems (slf, ItSc_Firebolt, 20);
		CreateInvItems (slf, ItSc_Icebolt, 8);
		CreateInvItems (slf, ItSc_InstantFireball, 10);
		CreateInvItems (slf, ItSc_LightningFlash, 5);
		CreateInvItems (slf, ItSc_HarmUndead, 3);
		CreateInvItems (slf, ItSc_Firestorm, 3);
		CreateInvItems (slf, ItSc_IceWave, 1);
		CreateInvItems (slf, ItSc_Zap, 5);
		CreateInvItems (slf, ItSc_IceCube, 3);
		CreateInvItems (slf, ItSc_Windfist, 3);
		CreateInvItems (slf, ItSc_IceWave, 1);
		CreateInvItems (slf, ItSc_Firerain, 1);
		CreateInvItems (slf, ItSc_Shrink, 1);
		CreateInvItems (slf, ItSc_ThunderStorm, 1);
		
		CreateInvItems (slf, ItSc_SumGobSkel, 1);
		CreateInvItems (slf, ItSc_SumSkel, 1);
		CreateInvItems (slf, ItSc_SumWolf, 1);
		CreateInvItems (slf, ItSc_SumGol, 1);
		CreateInvItems (slf, ItSc_SumDemon, 1);
		
		CreateInvItems (slf, ItBe_Addon_Prot_MAGIC, 1);
		CreateInvItems (slf, ItAm_Power_01, 1);
		
		Zuris_ItemsGiven_Chapter = 1;
	};
	
	if (Kapitel >= 8)
	&& (Zuris_ItemsGiven_Chapter < 2)
	{
		CreateInvItems (slf, ItMi_Gold, 60);
		CreateInvItems (slf, ItPo_Health_Addon_04, 2);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 2);
		CreateInvItems (slf, ItPo_Mana_01, 15);
		CreateInvItems (slf, ItPo_Mana_02, 1);
		CreateInvItems (slf, ItPo_Health_01, 15);
		CreateInvItems (slf, ItPo_Health_02, 2);
		CreateInvItems (slf, ItMi_FruitTabak, 5);
		CreateInvItems (slf, ItPo_Perm_Str, 1);
		
		Zuris_ItemsGiven_Chapter = 2;
	};	
	
	if (Kapitel >= 9)
	&& (Zuris_ItemsGiven_Chapter < 3)
	{
		CreateInvItems (slf, ItMi_Gold, 120);
		CreateInvItems (slf, ItPo_Health_Addon_04, 2);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 2);
		CreateInvItems (slf, ItPo_Mana_01, 25);
		CreateInvItems (slf, ItPo_Mana_02, 3);
		CreateInvItems (slf, ItPo_Health_01, 25);
		CreateInvItems (slf, ItPo_Health_02, 15);
		CreateInvItems (slf, ItPo_Perm_Mana, 1);
		CreateInvItems (slf, ItPo_Speed, 1);
		
		Zuris_ItemsGiven_Chapter = 3;
	};
	
	if (Kapitel >= 10)
	&& (Zuris_ItemsGiven_Chapter < 4)
	{
		CreateInvItems (slf, ItMi_Gold, 220);
		CreateInvItems (slf, ItPo_Health_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 3);
		CreateInvItems (slf, ItPo_Mana_01, 35);
		CreateInvItems (slf, ItPo_Mana_02, 15);
		CreateInvItems (slf, ItPo_Health_01, 35);
		CreateInvItems (slf, ItPo_Health_02, 20);
		CreateInvItems (slf, ItPo_Health_03, 10);
		CreateInvItems (slf, ItPo_Perm_Mana, 1);
		CreateInvItems (slf, ItPo_Speed, 1);
		
		Zuris_ItemsGiven_Chapter = 4;
	};
	
	if (Kapitel >= 11)
	&& (Zuris_ItemsGiven_Chapter < 5)
	{
		CreateInvItems (slf, ItMi_Gold, 321);
		CreateInvItems (slf, ItPo_Health_Addon_04, 5);
		CreateInvItems (slf, ItPo_Mana_Addon_04, 5);
		CreateInvItems (slf, ItPo_Mana_01, 55);
		CreateInvItems (slf, ItPo_Mana_02, 35);
		CreateInvItems (slf, ItPo_Mana_03, 15);
		CreateInvItems (slf, ItPo_Health_01, 55);
		CreateInvItems (slf, ItPo_Health_02, 30);
		CreateInvItems (slf, ItPo_Health_03, 20);
		CreateInvItems (slf, ItPo_Perm_Health, 1);
		CreateInvItems (slf, ItPo_Speed, 1);
		
		Zuris_ItemsGiven_Chapter = 5;
	};
};
