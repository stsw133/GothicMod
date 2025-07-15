///******************************************************************************************
/// MOBSI_UseKnife
///******************************************************************************************
func void MOBSI_UseKnife_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_UseKnife;
		AI_ProcessInfos(self);
	};
};

func int PC_UseKnife_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseKnife)
	{
		return true;
	};
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance PC_UseKnife_EXIT (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_UseKnife_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// Arrows
///******************************************************************************************
instance PC_UseKnife_Arrows (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_UseKnife_Arrows_Condition;
	information							=	PC_UseKnife_Arrows_Info;
	permanent							=	true;
	description							=	"Twórz strza³y";
};
func int PC_UseKnife_Arrows_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseKnife)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_FLETCHERY))
	{
		return true;
	};
};
func void PC_UseKnife_Arrows_Info()
{
	Info_ClearChoices	(PC_UseKnife_Arrows);
	Info_AddChoice		(PC_UseKnife_Arrows, DIALOG_BACK, PC_UseKnife_Arrows_BACK);
	
	Info_AddChoice (PC_UseKnife_Arrows, "Przerób be³ty na strza³y (po 2 be³ty na strza³ê)", PC_UseKnife_Arrows_BoltsToArrows);
	
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_MagicAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ magicznych (10x grot, laga, pióra harpii, niebieska bry³ka)", PC_UseKnife_Arrows_MagicAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_ExplosiveAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ eksploduj¹cych (10x grot, laga, pióra harpii, czerwona bry³ka)", PC_UseKnife_Arrows_ExplosiveAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_PoisonAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 50 strza³ zatrutych (50x strza³a, trucizna)", PC_UseKnife_Arrows_PoisonAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_FireAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ ognistych (10x strza³a, smo³a)", PC_UseKnife_Arrows_FireAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_BangAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ hukowych (10x strza³a, czarny proch)", PC_UseKnife_Arrows_BangAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_QuartzAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ kwarcytowych (kwarcyt, laga, pióra harpii)", PC_UseKnife_Arrows_QuartzAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_HuntingAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ myœliwskich (2x zêby, laga, pióra harpii)", PC_UseKnife_Arrows_HuntingAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Ammo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ (10x grot, laga, pióra harpii)", PC_UseKnife_Arrows_Ammo);
	};
};

///******************************************************************************************
func void PC_UseKnife_Arrows_BACK()
{
	Info_ClearChoices(PC_UseKnife_Arrows);
};
func void PC_UseKnife_Arrows_Ammo()
{
	if (Npc_HasItems(hero, ItMw_1h_Bau_Mace) >= 1)
	&& (Npc_HasItems(hero, ItAt_HarpyFeathers) >= 1)
	&& (Npc_HasItems(hero, ItMi_ArrowHead) >= 10)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItems (hero, ItMi_ArrowHead, 10);
		
		CreateInvItems (hero, ItRw_Arrow, 10);
		Print("Stworzono 10 strza³.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Arrows_HuntingAmmo()
{
	if (Npc_HasItems(hero, ItMw_1h_Bau_Mace) >= 1)
	&& (Npc_HasItems(hero, ItAt_HarpyFeathers) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItems (hero, ItAt_Teeth, 2);
		
		CreateInvItems (hero, ItRw_HuntingArrow, 10);
		Print("Stworzono 10 strza³ myœliwskich.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Arrows_QuartzAmmo()
{
	if (Npc_HasItems(hero, ItMw_1h_Bau_Mace) >= 1)
	&& (Npc_HasItems(hero, ItAt_HarpyFeathers) >= 1)
	&& (Npc_HasItems(hero, ItMi_Quartz) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItem (hero, ItMi_Quartz);
		
		CreateInvItems (hero, ItRw_QuartzArrow, 10);
		Print("Stworzono 10 strza³ kwarcytowych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Arrows_BangAmmo()
{
	if (Npc_HasItems(hero, ItRw_Arrow) >= 10)
	&& (Npc_HasItems(hero, ItMi_BlackPowder) >= 1)
	{
		Npc_RemoveInvItems (hero, ItRw_Arrow, 10);
		Npc_RemoveInvItem (hero, ItMi_BlackPowder);
		
		CreateInvItems (hero, ItRw_BangArrow, 10);
		Print("Stworzono 10 strza³ hukowych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Arrows_FireAmmo()
{
	if (Npc_HasItems(hero, ItRw_Arrow) >= 10)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItems (hero, ItRw_Arrow, 10);
		Npc_RemoveInvItem (hero, ItMi_Pitch);
		
		CreateInvItems (hero, ItRw_FireArrow, 10);
		Print("Stworzono 10 strza³ ognistych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Arrows_PoisonAmmo()
{
	if (Npc_HasItems(hero, ItRw_Arrow) >= 50)
	&& (Npc_HasItems(hero, ItPo_Poison) >= 1)
	{
		Npc_RemoveInvItems (hero, ItRw_Arrow, 50);
		Npc_RemoveInvItem (hero, ItPo_Poison);
		
		CreateInvItems (hero, ItRw_PoisonArrow, 10);
		Print("Stworzono 50 strza³ zatrutych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Arrows_ExplosiveAmmo()
{
	if (Npc_HasItems(hero, ItMw_1h_Bau_Mace) >= 1)
	&& (Npc_HasItems(hero, ItAt_HarpyFeathers) >= 1)
	&& (Npc_HasItems(hero, ItMi_RedNugget) >= 1)
	&& (Npc_HasItems(hero, ItMi_ArrowHead) >= 10)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItem (hero, ItMi_RedNugget);
		Npc_RemoveInvItems (hero, ItMi_ArrowHead, 10);
		
		CreateInvItems (hero, ItRw_ExplosiveArrow, 10);
		Print("Stworzono 10 strza³ eksploduj¹cych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Arrows_MagicAmmo()
{
	if (Npc_HasItems(hero, ItMw_1h_Bau_Mace) >= 1)
	&& (Npc_HasItems(hero, ItAt_HarpyFeathers) >= 1)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 1)
	&& (Npc_HasItems(hero, ItMi_ArrowHead) >= 10)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItem (hero, ItMi_Nugget);
		Npc_RemoveInvItems (hero, ItMi_ArrowHead, 10);
		
		CreateInvItems (hero, ItRw_MagicArrow, 10);
		Print("Stworzono 10 strza³ magicznych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Arrows_BoltsToArrows()
{
	var int Quantity; Quantity = Npc_HasItems(hero, ItRw_Bolt) / 2 * 2;
	if (Quantity >= 2)
	{
		Npc_RemoveInvItems (hero, ItRw_Bolt, Quantity);
		CreateInvItems (hero, ItRw_Arrow, Quantity / 2);
		Print(ConcatStrings("Stworzono ", ConcatStrings(IntToString(Quantity / 2), ConcatStrings(" strza³ kosztem ", ConcatStrings(IntToString(Quantity), " be³tów.")))));
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

///******************************************************************************************
/// Bolts
///******************************************************************************************
instance PC_UseKnife_Bolts (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_UseKnife_Bolts_Condition;
	information							=	PC_UseKnife_Bolts_Info;
	permanent							=	true;
	description							=	"Twórz be³ty";
};
func int PC_UseKnife_Bolts_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseKnife)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_FLETCHERY))
	{
		return true;
	};
};
func void PC_UseKnife_Bolts_Info()
{
	Info_ClearChoices	(PC_UseKnife_Bolts);
	Info_AddChoice		(PC_UseKnife_Bolts, DIALOG_BACK, PC_UseKnife_Bolts_BACK);
	
	Info_AddChoice (PC_UseKnife_Bolts, "Przerób strza³y na be³ty (po 2 strza³y na be³t)", PC_UseKnife_Bolts_ArrowsToBolts);
	
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_MagicAmmo])
	{
		Info_AddChoice (PC_UseKnife_Bolts, "Stwórz 10 be³tów magicznych (10x magiczny grot, laga, pióra harpii, niebieska bry³ka)", PC_UseKnife_Bolts_MagicAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Ammo])
	{
		Info_AddChoice (PC_UseKnife_Bolts, "Stwórz 10 be³tów (10x ¿elazny grot, laga, pióra harpii)", PC_UseKnife_Bolts_Ammo);
	};
};

///******************************************************************************************
func void PC_UseKnife_Bolts_BACK()
{
	Info_ClearChoices(PC_UseKnife_Bolts);
};
func void PC_UseKnife_Bolts_Ammo()
{
	if (Npc_HasItems(hero, ItMw_1h_Bau_Mace) >= 1)
	&& (Npc_HasItems(hero, ItAt_HarpyFeathers) >= 1)
	&& (Npc_HasItems(hero, ItMi_ArrowHead) >= 10)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItems (hero, ItMi_ArrowHead, 10);
		
		CreateInvItems (hero, ItRw_Bolt, 10);
		Print("Stworzono 10 be³tów.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Bolts_MagicAmmo()
{
	if (Npc_HasItems(hero, ItMw_1h_Bau_Mace) >= 1)
	&& (Npc_HasItems(hero, ItAt_HarpyFeathers) >= 1)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 1)
	&& (Npc_HasItems(hero, ItMi_ArrowHead) >= 10)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItem (hero, ItMi_Nugget);
		Npc_RemoveInvItems (hero, ItMi_ArrowHead, 10);
		
		CreateInvItems (hero, ItRw_MagicBolt, 10);
		Print("Stworzono 10 be³tów magicznych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Bolts_ArrowsToBolts()
{
	var int Quantity; Quantity = Npc_HasItems(hero, ItRw_Arrow) / 2 * 2;
	if (Quantity >= 2)
	{
		Npc_RemoveInvItems (hero, ItRw_Arrow, Quantity);
		CreateInvItems (hero, ItRw_Bolt, Quantity / 2);
		Print(ConcatStrings("Stworzono ", ConcatStrings(IntToString(Quantity / 2), ConcatStrings(" be³tów kosztem ", ConcatStrings(IntToString(Quantity), " strza³.")))));
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

///******************************************************************************************
/// Scrolls
///******************************************************************************************
instance PC_UseKnife_Scrolls (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_UseKnife_Scrolls_Condition;
	information							=	PC_UseKnife_Scrolls_Info;
	permanent							=	true;
	description							=	"Twórz pergaminy";
};
func int PC_UseKnife_Scrolls_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseKnife)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING))
	{
		return true;
	};
};
func void PC_UseKnife_Scrolls_Info()
{
	Info_ClearChoices	(PC_UseKnife_Scrolls);
	Info_AddChoice		(PC_UseKnife_Scrolls, DIALOG_BACK, PC_UseKnife_Scrolls_BACK);
	
	Info_AddChoice (PC_UseKnife_Scrolls, "Stwórz 2 zestawy pergaminów (skóra dzika, wapno, woda)", PC_UseKnife_Scrolls_KeilerFur);
	Info_AddChoice (PC_UseKnife_Scrolls, "Stwórz 2 zestawy pergaminów (skóra wilka, wapno, woda)", PC_UseKnife_Scrolls_WolfFur);
	Info_AddChoice (PC_UseKnife_Scrolls, "Stwórz 2 zestawy pergaminów (skóra kozy, wapno, woda)", PC_UseKnife_Scrolls_GoatFur);
	Info_AddChoice (PC_UseKnife_Scrolls, "Stwórz 2 zestawy pergaminów (skóra owcy, wapno, woda)", PC_UseKnife_Scrolls_SheepFur);
};

///******************************************************************************************
func void PC_UseKnife_Scrolls_BACK()
{
	Info_ClearChoices(PC_UseKnife_Scrolls);
};
func void PC_UseKnife_Scrolls_SheepFur()
{
	if (Npc_HasItems(hero, ItMi_Calcium) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItAt_SheepFur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Calcium);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItAt_SheepFur);
		
		CreateInvItems (hero, ItMi_Scrolls, 2);
		Print("Stworzono 2 zestawy pergaminów.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Scrolls_GoatFur()
{
	if (Npc_HasItems(hero, ItMi_Calcium) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItAt_GoatFur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Calcium);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItAt_GoatFur);
		
		CreateInvItems (hero, ItMi_Scrolls, 2);
		Print("Stworzono 2 zestawy pergaminów.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Scrolls_WolfFur()
{
	if (Npc_HasItems(hero, ItMi_Calcium) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItAt_WolfFur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Calcium);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItAt_WolfFur);
		
		CreateInvItems (hero, ItMi_Scrolls, 2);
		Print("Stworzono 2 zestawy pergaminów.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
func void PC_UseKnife_Scrolls_KeilerFur()
{
	if (Npc_HasItems(hero, ItMi_Calcium) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItAt_KeilerFur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Calcium);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItAt_KeilerFur);
		
		CreateInvItems (hero, ItMi_Scrolls, 2);
		Print("Stworzono 2 zestawy pergaminów.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

///******************************************************************************************
/// Torch
///******************************************************************************************
instance PC_UseKnife_Torch (C_Info)
{
	npc									=	PC_Hero;
	nr									=	10;
	condition							=	PC_UseKnife_Condition;
	information							=	PC_UseKnife_Torch_Info;
	permanent							=	true;
	description							=	"Stwórz 5 pochodni (5 lag, smo³a)";
};
func void PC_UseKnife_Torch_Info()
{
	if (Npc_HasItems(hero, ItMw_1h_Bau_Mace) >= 5)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItems (hero, ItMw_1h_Bau_Mace, 5);
		Npc_RemoveInvItem (hero, ItMi_Pitch);
		
		CreateInvItems (hero, ItLsTorch, 5);
		Print("Stworzono 5 pochodni.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
