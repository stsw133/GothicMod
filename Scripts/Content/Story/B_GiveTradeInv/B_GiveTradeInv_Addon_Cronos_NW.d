///******************************************************************************************

var int Cronos_NW_ItemsGiven_Chapter;

///******************************************************************************************
func void B_GiveTradeInv_Addon_Cronos_NW (var C_Npc slf)
{
	if (Kapitel >= 7)
	&& (Cronos_NW_ItemsGiven_Chapter < 7)
	{
	 	CreateInvItems (slf, ItMi_Flask, 5);
		CreateInvItems (slf, ItMi_Pitch, 1);
		CreateInvItems (slf, ItMi_Sulfur, 2);
		CreateInvItems (slf, ItPo_Health_01, 6);
		CreateInvItems (slf, ItPo_Mana_01, 5);
		
		CreateInvItems (slf, ItSc_Firebolt, 5);
		CreateInvItems (slf, ItSc_IceLance, 5);
		CreateInvItems (slf, ItSc_Light, 5);
		CreateInvItems (slf, ItSc_LightHeal, 5);
		//CreateInvItems (slf, ItSc_SumGobSkel, 2);
		CreateInvItems (slf, ItSc_Whirlwind, 1);
		CreateInvItems (slf, ItSc_Zap, 5);
		
		Cronos_NW_ItemsGiven_Chapter = 7;
	};
};
