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
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ magicznych (niebieska magiczna ruda, laga, pióra harpii)", PC_UseKnife_Arrows_MagicAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_ExplosiveAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ eksploduj¹cych (czerwona magiczna ruda, laga, pióra harpii)", PC_UseKnife_Arrows_ExplosiveAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_PoisonAmmo])
	{
		if (Npc_GetTalentSkill(hero, NPC_TALENT_FLETCHERY) >= 3)
		{
			Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ silnie zatrutych (10 strza³, trucizna)", PC_UseKnife_Arrows_DeadlyPoisonAmmo);
		};
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ zatrutych (10 strza³, truj¹ca wydzielina)", PC_UseKnife_Arrows_PoisonAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_FireAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ ognistych (10 strza³, smo³a)", PC_UseKnife_Arrows_FireAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_BangAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ hukowych (10 strza³, czarny proch)", PC_UseKnife_Arrows_BangAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_QuartzAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ kwarcytowych (kwarcyt, laga, pióra harpii)", PC_UseKnife_Arrows_QuartzAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_HuntingAmmo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 20 strza³ myœliwskich (4 zêby, laga, pióra harpii)", PC_UseKnife_Arrows_HuntingAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Ammo])
	{
		Info_AddChoice (PC_UseKnife_Arrows, "Stwórz 10 strza³ (bry³a ¿elaza, laga, pióra harpii)", PC_UseKnife_Arrows_Ammo);
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
	&& (Npc_HasItems(hero, ItMi_Iron) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItem (hero, ItMi_Iron);
		
		CreateInvItems (hero, ItRw_Arrow, 10);
		Print("Stworzono 10 strza³.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Arrows_Info();
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
	PC_UseKnife_Arrows_Info();
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
	PC_UseKnife_Arrows_Info();
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
	PC_UseKnife_Arrows_Info();
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
	PC_UseKnife_Arrows_Info();
};

func void PC_UseKnife_Arrows_PoisonAmmo()
{
	if (Npc_HasItems(hero, ItRw_Arrow) >= 10)
	&& (Npc_HasItems(hero, ItAt_Poison) >= 1)
	{
		Npc_RemoveInvItems (hero, ItRw_Arrow, 10);
		Npc_RemoveInvItem (hero, ItAt_Poison);
		
		CreateInvItems (hero, ItRw_PoisonArrow, 10);
		Print("Stworzono 10 strza³ zatrutych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Arrows_Info();
};

func void PC_UseKnife_Arrows_ExplosiveAmmo()
{
	if (Npc_HasItems(hero, ItMw_1h_Bau_Mace) >= 1)
	&& (Npc_HasItems(hero, ItAt_HarpyFeathers) >= 1)
	&& (Npc_HasItems(hero, ItMi_RedNugget) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItem (hero, ItMi_RedNugget);
		
		CreateInvItems (hero, ItRw_ExplosiveArrow, 10);
		Print("Stworzono 10 strza³ eksploduj¹cych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Arrows_Info();
};

func void PC_UseKnife_Arrows_MagicAmmo()
{
	if (Npc_HasItems(hero, ItMw_1h_Bau_Mace) >= 1)
	&& (Npc_HasItems(hero, ItAt_HarpyFeathers) >= 1)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItem (hero, ItMi_Nugget);
		
		CreateInvItems (hero, ItRw_MagicArrow, 10);
		Print("Stworzono 10 strza³ magicznych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Arrows_Info();
};

func void PC_UseKnife_Arrows_DeadlyPoisonAmmo()
{
	if (Npc_HasItems(hero, ItRw_Arrow) >= 10)
	&& (Npc_HasItems(hero, ItPo_Poison) >= 1)
	{
		Npc_RemoveInvItems (hero, ItRw_Arrow, 10);
		Npc_RemoveInvItem (hero, ItPo_Poison);
		
		CreateInvItems (hero, ItRw_DeadlyPoisonArrow, 10);
		Print("Stworzono 10 strza³ silnie zatrutych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Arrows_Info();
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
	PC_UseKnife_Arrows_Info();
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
		Info_AddChoice (PC_UseKnife_Bolts, "Stwórz 10 be³tów magicznych (niebieska magiczna ruda, laga, 2 pióra harpii)", PC_UseKnife_Bolts_MagicAmmo);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Ammo])
	{
		Info_AddChoice (PC_UseKnife_Bolts, "Stwórz 10 be³tów (bry³a ¿elaza, laga, 2 pióra harpii)", PC_UseKnife_Bolts_Ammo);
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
	&& (Npc_HasItems(hero, ItMi_Iron) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItem (hero, ItMi_Iron);
		
		CreateInvItems (hero, ItRw_Bolt, 10);
		Print("Stworzono 10 be³tów.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bolts_Info();
};

func void PC_UseKnife_Bolts_MagicAmmo()
{
	if (Npc_HasItems(hero, ItMw_1h_Bau_Mace) >= 1)
	&& (Npc_HasItems(hero, ItAt_HarpyFeathers) >= 1)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMw_1h_Bau_Mace);
		Npc_RemoveInvItem (hero, ItAt_HarpyFeathers);
		Npc_RemoveInvItem (hero, ItMi_Nugget);
		
		CreateInvItems (hero, ItRw_MagicBolt, 10);
		Print("Stworzono 10 be³tów magicznych.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bolts_Info();
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
	PC_UseKnife_Bolts_Info();
};

///******************************************************************************************
/// Bows
///******************************************************************************************
instance PC_UseKnife_Bows (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_UseKnife_Bows_Condition;
	information							=	PC_UseKnife_Bows_Info;
	permanent							=	true;
	description							=	"Twórz ³uki";
};
func int PC_UseKnife_Bows_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseKnife)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_FLETCHERY))
	{
		return true;
	};
};
func void PC_UseKnife_Bows_Info()
{
	Info_ClearChoices	(PC_UseKnife_Bows);
	Info_AddChoice		(PC_UseKnife_Bows, DIALOG_BACK, PC_UseKnife_Bows_BACK);
	
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_H_04])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz smoczy ³uk (drewno do wyrobu broni, 7 œciêgien, sad³o niedŸwiedzia, 2 skóry czarnego trolla, 4 jêzyki smoka)", PC_UseKnife_Bows_H_04);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_H_03])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz gromow³adnego (drewno do wyrobu broni, 7 œciêgien, sad³o niedŸwiedzia, 2 skóry trolla, 4 jêzyki smoka)", PC_UseKnife_Bows_H_03);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_H_02])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz pogromcê orków (drewno do wyrobu broni, 6 œciêgien, sad³o niedŸwiedzia, 2 skóry olbrzymiego zêbacza, 2 rogi cieniostwora)", PC_UseKnife_Bows_H_02);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_H_01])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz ³uk wojenny (drewno do wyrobu broni, 6 œciêgien, sad³o niedŸwiedzia, 2 skóry cieniostwora, 2 rogi cieniostwora)", PC_UseKnife_Bows_H_01);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_M_08])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz ³uk z poro¿a (drewno do wyrobu broni, 6 œciêgien, ³ój kretoszczura, 2 skóry czarnego niedŸwiedzia, 3 rogi smoczego zêbacza)", PC_UseKnife_Bows_M_08);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_M_07])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz ³uk ¿o³nierski (drewno do wyrobu broni, 6 œciêgien, ³ój kretoszczura, 2 skóry niedŸwiedzia, 3 rogi smoczego zêbacza)", PC_UseKnife_Bows_M_07);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_M_06])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz ³uk klonowy (drewno do wyrobu broni, 5 œciêgien, ³ój kretoszczura, 2 skóry tygrysa, 4 k³y b³otnego wê¿a)", PC_UseKnife_Bows_M_06);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_M_05])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz ³uk bukowy (drewno do wyrobu broni, 5 œciêgien, ³ój kretoszczura, 2 skóry ognistego jaszczura, 4 k³y b³otnego wê¿a)", PC_UseKnife_Bows_M_05);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_M_04])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz ³uk dêbowy (drewno do wyrobu broni, 5 œciêgien, 2 skóry brzytwiaka, 3 k³y trolla)", PC_UseKnife_Bows_M_04);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_M_03])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz d³ugi ³uk (drewno do wyrobu broni, 5 œciêgien, 2 skóry aligatora, 3 k³y trolla)", PC_UseKnife_Bows_M_03);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_M_02])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz ³uk jesioniowy (drewno do wyrobu broni, 4 œciêgna, 2 skóry krwawego ogara, 3 k³y b³otnego wê¿a)", PC_UseKnife_Bows_M_02);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_M_01])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz ³uk kompozytowy (drewno do wyrobu broni, 4 œciêgna, 2 skóry zêbacza, 3 k³y b³otnego wê¿a)", PC_UseKnife_Bows_M_01);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_L_04])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz ³uk koœciany (drewno do wyrobu broni, 3 œciêgna, 2 skóry jaszczura, 10 koœci szkieletu)", PC_UseKnife_Bows_L_04);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_L_03])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz ³uk myœliwski (drewno do wyrobu broni, 3 œciêgna, 2 skóry dzika, 5 k³ów dzika)", PC_UseKnife_Bows_L_03);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_L_02])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz ³uk wierzbowy (drewno do wyrobu broni, 2 œciêgna, 2 skóry owcy, 4 szpony topielca)", PC_UseKnife_Bows_L_02);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_Bow_L_01])
	{
		Info_AddChoice (PC_UseKnife_Bows, "Stwórz krótki ³uk (drewno do wyrobu broni, 2 œciêgna, 2 skóry szczura, 2 pazury)", PC_UseKnife_Bows_L_01);
	};
};

///******************************************************************************************
func void PC_UseKnife_Bows_BACK()
{
	Info_ClearChoices(PC_UseKnife_Bows);
};

func void PC_UseKnife_Bows_L_01()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 2)
	&& (Npc_HasItems(hero, ItAt_GiantRatFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_Claw) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 2);
		Npc_RemoveInvItems (hero, ItAt_GiantRatFur, 2);
		Npc_RemoveInvItems (hero, ItAt_Claw, 2);
		
		CreateInvItem (hero, ItRw_Bow_L_01);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_L_02()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 2)
	&& (Npc_HasItems(hero, ItAt_SheepFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_LurkerClaw) >= 4)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 2);
		Npc_RemoveInvItems (hero, ItAt_SheepFur, 2);
		Npc_RemoveInvItems (hero, ItAt_LurkerClaw, 4);
		
		CreateInvItem (hero, ItRw_Bow_L_02);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_L_03()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 3)
	&& (Npc_HasItems(hero, ItAt_KeilerFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_KeilerTusk) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 3);
		Npc_RemoveInvItems (hero, ItAt_KeilerFur, 2);
		Npc_RemoveInvItems (hero, ItAt_KeilerTusk, 2);
		
		CreateInvItem (hero, ItRw_Bow_L_03);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_L_04()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 3)
	&& (Npc_HasItems(hero, ItAt_WaranSkin) >= 2)
	&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 10)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 3);
		Npc_RemoveInvItems (hero, ItAt_WaranSkin, 2);
		Npc_RemoveInvItems (hero, ItAt_SkeletonBone, 10);
		
		CreateInvItem (hero, ItRw_Bow_L_04);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_M_01()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 4)
	&& (Npc_HasItems(hero, ItAt_SnapperSkin) >= 2)
	&& (Npc_HasItems(hero, ItAt_SharkTeeth) >= 3)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 4);
		Npc_RemoveInvItems (hero, ItAt_SnapperSkin, 2);
		Npc_RemoveInvItems (hero, ItAt_SharkTeeth, 3);
		
		CreateInvItem (hero, ItRw_Bow_M_01);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_M_02()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 4)
	&& (Npc_HasItems(hero, ItAt_BloodhoundFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_SharkTeeth) >= 3)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 4);
		Npc_RemoveInvItems (hero, ItAt_BloodhoundFur, 2);
		Npc_RemoveInvItems (hero, ItAt_SharkTeeth, 3);
		
		CreateInvItem (hero, ItRw_Bow_M_02);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_M_03()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 5)
	&& (Npc_HasItems(hero, ItAt_AlligatorSkin) >= 2)
	&& (Npc_HasItems(hero, ItAt_TrollTooth) >= 3)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 5);
		Npc_RemoveInvItems (hero, ItAt_AlligatorSkin, 2);
		Npc_RemoveInvItems (hero, ItAt_TrollTooth, 3);
		
		CreateInvItem (hero, ItRw_Bow_M_03);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_M_04()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 5)
	&& (Npc_HasItems(hero, ItAt_RazorSkin) >= 2)
	&& (Npc_HasItems(hero, ItAt_TrollTooth) >= 3)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 5);
		Npc_RemoveInvItems (hero, ItAt_RazorSkin, 2);
		Npc_RemoveInvItems (hero, ItAt_TrollTooth, 3);
		
		CreateInvItem (hero, ItRw_Bow_M_04);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_M_05()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 5)
	&& (Npc_HasItems(hero, ItAt_MoleratLubric) >= 1)
	&& (Npc_HasItems(hero, ItAt_FirewaranSkin) >= 2)
	&& (Npc_HasItems(hero, ItAt_SharkTeeth) >= 4)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 5);
		Npc_RemoveInvItems (hero, ItAt_MoleratLubric, 1);
		Npc_RemoveInvItems (hero, ItAt_FirewaranSkin, 2);
		Npc_RemoveInvItems (hero, ItAt_SharkTeeth, 4);
		
		CreateInvItem (hero, ItRw_Bow_M_05);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_M_06()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 5)
	&& (Npc_HasItems(hero, ItAt_MoleratLubric) >= 1)
	&& (Npc_HasItems(hero, ItAt_TigerFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_SharkTeeth) >= 4)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 5);
		Npc_RemoveInvItems (hero, ItAt_MoleratLubric, 1);
		Npc_RemoveInvItems (hero, ItAt_TigerFur, 2);
		Npc_RemoveInvItems (hero, ItAt_SharkTeeth, 4);
		
		CreateInvItem (hero, ItRw_Bow_M_06);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_M_07()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 6)
	&& (Npc_HasItems(hero, ItAt_MoleratLubric) >= 1)
	&& (Npc_HasItems(hero, ItAt_BearFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_DrgSnapperHorn) >= 3)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 6);
		Npc_RemoveInvItems (hero, ItAt_MoleratLubric, 1);
		Npc_RemoveInvItems (hero, ItAt_BearFur, 2);
		Npc_RemoveInvItems (hero, ItAt_DrgSnapperHorn, 3);
		
		CreateInvItem (hero, ItRw_Bow_M_07);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_M_08()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 6)
	&& (Npc_HasItems(hero, ItAt_MoleratLubric) >= 1)
	&& (Npc_HasItems(hero, ItAt_BearBlackFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_DrgSnapperHorn) >= 3)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 6);
		Npc_RemoveInvItems (hero, ItAt_MoleratLubric, 1);
		Npc_RemoveInvItems (hero, ItAt_BearBlackFur, 2);
		Npc_RemoveInvItems (hero, ItAt_DrgSnapperHorn, 3);
		
		CreateInvItem (hero, ItRw_Bow_M_08);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_H_01()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 6)
	&& (Npc_HasItems(hero, ItAt_BearFat) >= 1)
	&& (Npc_HasItems(hero, ItAt_ShadowFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 6);
		Npc_RemoveInvItems (hero, ItAt_BearFat, 1);
		Npc_RemoveInvItems (hero, ItAt_ShadowFur, 2);
		Npc_RemoveInvItems (hero, ItAt_ShadowHorn, 2);
		
		CreateInvItem (hero, ItRw_Bow_H_01);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_H_02()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 6)
	&& (Npc_HasItems(hero, ItAt_BearFat) >= 1)
	&& (Npc_HasItems(hero, ItAt_GiantSnapperSkin) >= 2)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 6);
		Npc_RemoveInvItems (hero, ItAt_BearFat, 1);
		Npc_RemoveInvItems (hero, ItAt_GiantSnapperSkin, 2);
		Npc_RemoveInvItems (hero, ItAt_ShadowHorn, 2);
		
		CreateInvItem (hero, ItRw_Bow_H_02);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_H_03()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 7)
	&& (Npc_HasItems(hero, ItAt_BearFat) >= 1)
	&& (Npc_HasItems(hero, ItAt_TrollFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_DragonTongue) >= 4)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 7);
		Npc_RemoveInvItems (hero, ItAt_BearFat, 1);
		Npc_RemoveInvItems (hero, ItAt_TrollFur, 2);
		Npc_RemoveInvItems (hero, ItAt_DragonTongue, 4);
		
		CreateInvItem (hero, ItRw_Bow_H_03);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Bows_H_04()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 7)
	&& (Npc_HasItems(hero, ItAt_BearFat) >= 1)
	&& (Npc_HasItems(hero, ItAt_TrollBlackFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_DragonTongue) >= 4)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 7);
		Npc_RemoveInvItems (hero, ItAt_BearFat, 1);
		Npc_RemoveInvItems (hero, ItAt_TrollBlackFur, 2);
		Npc_RemoveInvItems (hero, ItAt_DragonTongue, 4);
		
		CreateInvItem (hero, ItRw_Bow_H_04);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

///******************************************************************************************
/// Crossbows
///******************************************************************************************
instance PC_UseKnife_Crossbows (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_UseKnife_Crossbows_Condition;
	information							=	PC_UseKnife_Crossbows_Info;
	permanent							=	true;
	description							=	"Twórz kusze";
};
func int PC_UseKnife_Crossbows_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseKnife)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_FLETCHERY))
	{
		return true;
	};
};
func void PC_UseKnife_Crossbows_Info()
{
	Info_ClearChoices	(PC_UseKnife_Crossbows);
	Info_AddChoice		(PC_UseKnife_Crossbows, DIALOG_BACK, PC_UseKnife_Crossbows_BACK);
	
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_CBow_H_02])
	{
		Info_AddChoice (PC_UseKnife_Crossbows, "Stwórz smocz¹ kuszê (drewno do wyrobu broni, 7 œciêgien, bry³a ¿elaza, sad³o niedŸwiedzia, 2 skóry czarnego trolla, 4 jêzyki smoka)", PC_UseKnife_Crossbows_H_02);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_CBow_H_01])
	{
		Info_AddChoice (PC_UseKnife_Crossbows, "Stwórz ciê¿k¹ kuszê (drewno do wyrobu broni, 6 œciêgien, bry³a ¿elaza, sad³o niedŸwiedzia, 2 skóry olbrzymiego zêbacza, 2 rogi cieniostwora)", PC_UseKnife_Crossbows_H_01);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_CBow_M_02])
	{
		Info_AddChoice (PC_UseKnife_Crossbows, "Stwórz kuszê bojow¹ (drewno do wyrobu broni, 5 œciêgien, bry³a ¿elaza, ³ój kretoszczura, 2 skóry czarnego niedŸwiedzia, 3 rogi smoczego zêbacza)", PC_UseKnife_Crossbows_M_02);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_CBow_M_01])
	{
		Info_AddChoice (PC_UseKnife_Crossbows, "Stwórz kuszê (drewno do wyrobu broni, 4 œciêgna, bry³a ¿elaza, 2 skóry brzytwiaka, 3 k³y trolla)", PC_UseKnife_Crossbows_M_01);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_CBow_L_02])
	{
		Info_AddChoice (PC_UseKnife_Crossbows, "Stwórz ma³¹ kuszê (drewno do wyrobu broni, 3 œciêgna, bry³a ¿elaza, 2 skóry jaszczura, 10 koœci szkieletu)", PC_UseKnife_Crossbows_L_02);
	};
	if (PLAYER_TALENT_FLETCHERY[FLETCHERY_CBow_L_01])
	{
		Info_AddChoice (PC_UseKnife_Crossbows, "Stwórz kuszê myœliwsk¹ (drewno do wyrobu broni, 2 œciêgna, bry³a ¿elaza, 2 skóry owcy, 4 szpony topielca)", PC_UseKnife_Crossbows_L_01);
	};
};

///******************************************************************************************
func void PC_UseKnife_Crossbows_BACK()
{
	Info_ClearChoices(PC_UseKnife_Bows);
};

func void PC_UseKnife_Crossbows_L_01()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 2)
	&& (Npc_HasItems(hero, ItMi_Iron) >= 1)
	&& (Npc_HasItems(hero, ItAt_SheepFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_LurkerClaw) >= 4)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 2);
		Npc_RemoveInvItems (hero, ItMi_Iron, 1);
		Npc_RemoveInvItems (hero, ItAt_SheepFur, 2);
		Npc_RemoveInvItems (hero, ItAt_LurkerClaw, 4);
		
		CreateInvItem (hero, ItRw_Crossbow_L_01);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Crossbows_L_02()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 3)
	&& (Npc_HasItems(hero, ItMi_Iron) >= 1)
	&& (Npc_HasItems(hero, ItAt_WaranSkin) >= 2)
	&& (Npc_HasItems(hero, ItAt_SkeletonBone) >= 10)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 3);
		Npc_RemoveInvItems (hero, ItMi_Iron, 1);
		Npc_RemoveInvItems (hero, ItAt_WaranSkin, 2);
		Npc_RemoveInvItems (hero, ItAt_SkeletonBone, 10);
		
		CreateInvItem (hero, ItRw_Crossbow_L_02);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Crossbows_M_01()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 5)
	&& (Npc_HasItems(hero, ItMi_Iron) >= 1)
	&& (Npc_HasItems(hero, ItAt_RazorSkin) >= 2)
	&& (Npc_HasItems(hero, ItAt_TrollTooth) >= 3)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 5);
		Npc_RemoveInvItems (hero, ItMi_Iron, 1);
		Npc_RemoveInvItems (hero, ItAt_RazorSkin, 2);
		Npc_RemoveInvItems (hero, ItAt_TrollTooth, 3);
		
		CreateInvItem (hero, ItRw_Crossbow_M_01);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Crossbows_M_02()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 6)
	&& (Npc_HasItems(hero, ItMi_Iron) >= 1)
	&& (Npc_HasItems(hero, ItAt_MoleratLubric) >= 1)
	&& (Npc_HasItems(hero, ItAt_BearBlackFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_DrgSnapperHorn) >= 3)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 6);
		Npc_RemoveInvItems (hero, ItMi_Iron, 1);
		Npc_RemoveInvItems (hero, ItAt_MoleratLubric, 1);
		Npc_RemoveInvItems (hero, ItAt_BearBlackFur, 2);
		Npc_RemoveInvItems (hero, ItAt_DrgSnapperHorn, 3);
		
		CreateInvItem (hero, ItRw_Crossbow_M_02);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Crossbows_H_01()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 6)
	&& (Npc_HasItems(hero, ItMi_Iron) >= 1)
	&& (Npc_HasItems(hero, ItAt_BearFat) >= 1)
	&& (Npc_HasItems(hero, ItAt_GiantSnapperSkin) >= 2)
	&& (Npc_HasItems(hero, ItAt_ShadowHorn) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 6);
		Npc_RemoveInvItems (hero, ItMi_Iron, 1);
		Npc_RemoveInvItems (hero, ItAt_BearFat, 1);
		Npc_RemoveInvItems (hero, ItAt_GiantSnapperSkin, 2);
		Npc_RemoveInvItems (hero, ItAt_ShadowHorn, 2);
		
		CreateInvItem (hero, ItRw_Crossbow_H_01);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

func void PC_UseKnife_Crossbows_H_02()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Tendons) >= 7)
	&& (Npc_HasItems(hero, ItMi_Iron) >= 1)
	&& (Npc_HasItems(hero, ItAt_BearFat) >= 1)
	&& (Npc_HasItems(hero, ItAt_TrollBlackFur) >= 2)
	&& (Npc_HasItems(hero, ItAt_DragonTongue) >= 4)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Tendons, 7);
		Npc_RemoveInvItems (hero, ItMi_Iron, 1);
		Npc_RemoveInvItems (hero, ItAt_BearFat, 1);
		Npc_RemoveInvItems (hero, ItAt_TrollBlackFur, 2);
		Npc_RemoveInvItems (hero, ItAt_DragonTongue, 4);
		
		CreateInvItem (hero, ItRw_Crossbow_H_02);
		Print(PRINT_FletcherySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_UseKnife_Bows_Info();
};

///******************************************************************************************
/// Scrolls
///******************************************************************************************
instance PC_UseKnife_Scrolls (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
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
	PC_UseKnife_Scrolls_Info();
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
	PC_UseKnife_Scrolls_Info();
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
	PC_UseKnife_Scrolls_Info();
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
	PC_UseKnife_Scrolls_Info();
};

///******************************************************************************************
/// Torch
///******************************************************************************************
instance PC_UseKnife_Torch (C_Info)
{
	npc									=	PC_Hero;
	nr									=	6;
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
