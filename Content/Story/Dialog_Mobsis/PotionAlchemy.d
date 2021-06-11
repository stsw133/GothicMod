///******************************************************************************************
///	MOBSI_POTIONALCHEMY
///******************************************************************************************
func void POTIONALCHEMY_S1()
{
	var C_NPC her;	her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{	
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_POTIONALCHEMY;
		Ai_ProcessInfos(her);
	};
};

///******************************************************************************************
instance PC_PotionAlchemy_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_PotionAlchemy_End_Condition;
	information							=	PC_PotionAlchemy_End_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

func int PC_PotionAlchemy_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	{
		return true;
	};
};

func void PC_PotionAlchemy_End_Info()
{
	CreateInvItem (hero, ItMi_Flask);
	B_ENDPRODUCTIONDIALOG();
};

///******************************************************************************************
instance PC_Health_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Health_Start_Condition;
	information							=	PC_Health_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury leczenia";
};

func int PC_Health_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};

func void PC_Health_Start_Info()
{
	Info_ClearChoices(PC_Health_Start);

	Info_AddChoice (PC_Health_Start, DIALOG_BACK, PC_ItPo_Health_BACK);
	Info_AddChoice (PC_Health_Start, "S³aba mikstura lecznicza (4 niebieskie bzy, rdest polny, woda)", PC_ItPo_Health_05);
	if (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 2)
	{
		Info_AddChoice (PC_Health_Start, "Potê¿na mikstura lecznicza (3 s³abe mikstury lecznicze, rdest polny)", PC_ItPo_Health_04);
		Info_AddChoice (PC_Health_Start, "Silna mikstura lecznicza (2 korzenie lecznicze, rdest polny, woda)", PC_ItPo_Health_03);
	};
	Info_AddChoice (PC_Health_Start, "Œrednia mikstura lecznicza (2 zio³a lecznicze, rdest polny, woda)", PC_ItPo_Health_02);
	Info_AddChoice (PC_Health_Start, "S³aba mikstura lecznicza (2 roœliny lecznicze, rdest polny, woda)", PC_ItPo_Health_01);
};

///******************************************************************************************
func void PC_ItPo_Health_BACK()
{
	Info_ClearChoices(PC_Health_Start);
};

func void PC_ItPo_Health_01()
{
	if (Npc_HasItems(hero, ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_01)	>=	2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 2);
		
		CreateInvItem (hero, ItPo_Health_01);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Health_02()
{
	if (Npc_HasItems(hero, ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_02)	>=	2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_02, 2);
		
		CreateInvItem (hero, ItPo_Health_02);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Health_03()
{
	if (Npc_HasItems(hero, ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_03)	>=	2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 2);
		
		CreateInvItem (hero, ItPo_Health_03);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Health_04()
{
	if (Npc_HasItems(hero, ItPo_Health_01)		>=	3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb)		>=	1)
	{
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItPo_Health_01, 3);
		
		CreateInvItem (hero, ItPo_Health_Addon_04);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Health_05()
{
	if (Npc_HasItems(hero, ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Blueplant)		>=	4)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 4);
		
		CreateInvItem (hero, ItPo_Health_01);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

///******************************************************************************************
instance PC_Mana_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Mana_Start_Condition;
	information							=	PC_Mana_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury many";
};

func int PC_Mana_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};

func void PC_Mana_Start_Info()
{
	Info_ClearChoices(PC_Mana_Start);

	Info_AddChoice (PC_Mana_Start, DIALOG_BACK, PC_ItPo_Mana_BACK);
	Info_AddChoice (PC_Mana_Start, "S³aba mikstura many (4 niebieskie bzy, rdest polny, wino)", PC_ItPo_Mana_05);
	if (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 2)
	{
		Info_AddChoice (PC_Mana_Start, "Potê¿na mikstura many (3 s³abe mikstury many, rdest polny, wino)", PC_ItPo_Mana_04);
		Info_AddChoice (PC_Mana_Start, "Silna mikstura many (2 ogniste korzenie, rdest polny, wino)", PC_ItPo_Mana_03);
	};
	Info_AddChoice (PC_Mana_Start, "Œrednia mikstura many (2 ogniste zio³a, rdest polny, wino)", PC_ItPo_Mana_02);
	Info_AddChoice (PC_Mana_Start, "S³aba mikstura many (2 ogniste pokrzywy, rdest polny, wino)", PC_ItPo_Mana_01);
};

///******************************************************************************************
func void PC_ItPo_Mana_BACK()
{
	Info_ClearChoices(PC_Mana_Start);
};

func void PC_ItPo_Mana_01()
{
	if (Npc_HasItems(hero, ItFo_Wine)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_01)	>=	2)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 2);
		
		CreateInvItem (hero, ItPo_Mana_01);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Mana_02()
{
	if (Npc_HasItems(hero, ItFo_Wine)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_02)	>=	2)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_02, 2);
		
		CreateInvItem (hero, ItPo_Mana_02);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Mana_03()
{
	if (Npc_HasItems(hero, ItFo_Wine)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_03)	>=	2)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 2);
		
		CreateInvItem (hero, ItPo_Mana_03);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Mana_04()
{
	if (Npc_HasItems(hero, ItPo_Mana_01)		>=	3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb)		>=	1)
	{
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItPo_Mana_01, 3);
		
		CreateInvItem (hero, ItPo_Mana_Addon_04);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Mana_05()
{
	if (Npc_HasItems(hero, ItFo_Wine)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Blueplant)		>=	4)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 4);
		
		CreateInvItem (hero, ItPo_Mana_01);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

///******************************************************************************************
instance PC_Perm_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_Perm_Start_Condition;
	information							=	PC_Perm_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury zwiêkszaj¹ce atrybuty";
};

func int PC_Perm_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 3)
	{
		return true;
	};
};

func void PC_Perm_Start_Info()
{
	Info_ClearChoices(PC_Perm_Start);

	Info_AddChoice (PC_Perm_Start, DIALOG_BACK, PC_ItPo_Perm_BACK);
	Info_AddChoice (PC_Perm_Start, "Eliksir ¿ywotnoœci (4 korzenie lecznicze, szczaw królewski, woda)", PC_ItPo_Perm_Health);
	Info_AddChoice (PC_Perm_Start, "Eliksir ducha (4 ogniste korzenie, szczaw królewski, woda)", PC_ItPo_Perm_Mana);
	Info_AddChoice (PC_Perm_Start, "Eliksir zrêcznoœci (goblinia jagoda, szczaw królewski, woda)", PC_ItPo_Perm_DEX);
	Info_AddChoice (PC_Perm_Start, "Eliksir si³y (smoczy korzeñ, szczaw królewski, woda)", PC_ItPo_Perm_STR);
};

///******************************************************************************************
func void PC_ItPo_Perm_BACK()
{
	Info_ClearChoices(PC_Perm_Start);
};

func void PC_ItPo_Perm_Str()
{
	if (Npc_HasItems(hero, ItFo_Water)				>=	1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Strength_Herb_01)	>=	1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItPl_Strength_Herb_01);
		
		CreateInvItem (hero, ItPo_Perm_Str);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Perm_Dex()
{
	if (Npc_HasItems(hero, ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Dex_Herb_01)	>=	1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItPl_Dex_Herb_01);
		
		CreateInvItem (hero, ItPo_Perm_Dex);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Perm_Mana()
{
	if (Npc_HasItems(hero, ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_03)	>=	4)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 4);
		
		CreateInvItem (hero, ItPo_Perm_Mana);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Perm_Health()
{
	if (Npc_HasItems(hero, ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_03)	>=	4)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 4);
		
		CreateInvItem (hero, ItPo_Perm_Health);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

///******************************************************************************************
instance PC_Special_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_Special_Start_Condition;
	information							=	PC_Special_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury specjalne";
};

func int PC_Special_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};

func void PC_Special_Start_Info()
{
	Info_ClearChoices(PC_Special_Start);

	Info_AddChoice (PC_Special_Start, DIALOG_BACK, PC_ItPo_Special_BACK);
	if (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 2)
	{
		Info_AddChoice (PC_Special_Start, "Trucizna (demoniczny grzyb, rdest polny, woda)", PC_ItPo_Poison);
	};
	Info_AddChoice (PC_Special_Start, "Mikstura jasnoœci umys³u (cmentarny mech, rdest polny, gorza³a)", PC_ItPo_Geist);
	Info_AddChoice (PC_Special_Start, "Mikstura energii (zêbate ziele, rdest polny, woda)", PC_ItPo_Speed);
};

///******************************************************************************************
func void PC_ItPo_Special_BACK()
{
	Info_ClearChoices(PC_Special_Start);
};

func void PC_ItPo_Speed()
{
	if (Npc_HasItems(hero, ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Speed_Herb_01)	>=	1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItPl_Speed_Herb_01);
		
		CreateInvItem (hero, ItPo_Speed);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Geist()
{
	if (Npc_HasItems(hero, ItFo_Booze)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_GraveMoss)		>=	1)
	{
		Npc_RemoveInvItem (hero, ItFo_Booze);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItPl_GraveMoss);
		
		CreateInvItem (hero, ItPo_Geist);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItPo_Poison()
{
	if (Npc_HasItems(hero, ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb)		>=	1)
	&& (Npc_HasItems(hero, ItPl_Mushroom_02)	>=	1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItPl_Mushroom_03);
		
		CreateInvItem (hero, ItPo_Poison);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};








/*
//*******************************************************
//Schnaps brennen 
//*******************************************************
var int BoozeStart;
//----------------------
instance PC_Booze_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 10;
	condition		= PC_Booze_Start_Condition;
	information		= PC_Booze_Start_Info;
	permanent		= TRUE;
	description		= "Destyluj gorza³kê"; 
};

func int PC_Booze_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	&& (SpecialStart == FALSE)
	{	
		return TRUE;
	};
};

func void PC_Booze_Start_Info()
{
	BoozeStart = TRUE;
};
//*******************************************************
instance PC_Booze_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_Booze_Stop_Condition;
	information		= PC_Booze_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

func int PC_Booze_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	{	
		return TRUE;
	};
};

func void PC_Booze_Stop_Info()
{
	BoozeStart = FALSE;
};
//*******************************************************
instance PC_Booze_Lou (C_Info)
{
	npc				= PC_Hero;
	nr				= 5;
	condition		= PC_Booze_Lou_Condition;
	information		= PC_Booze_Lou_Info;
	permanent		= TRUE;
	description		= "Spróbuj przygotowaæ M³ot Lou..."; 
};

func int PC_Booze_Lou_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (Knows_LousHammer == TRUE)
	{	
		return TRUE;
	};
};

func void PC_Booze_Lou_Info()
{
	if (Npc_HasItems (self, ItPl_SwampHerb) >= 1)
	&& (Npc_HasItems (self, ItPl_Beet)		>= 2)
	&& (Npc_HasItems (self, ItAt_SharkTeeth)>= 1)
	&& (Npc_HasItems (self, ItFo_Addon_Rum) >= 1)
	{
		Npc_RemoveInvItems (self, ItPl_SwampHerb,1);
		Npc_RemoveInvItems (self, ItPl_Beet,2);
		Npc_RemoveInvItems (self, ItAt_SharkTeeth,1);
		Npc_RemoveInvItems (self, ItFo_Addon_Rum,1);
		
		Print (PRINT_AlchemySuccess);
		CreateInvItems (self, ItFo_Addon_LousHammer,1);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);	
	};
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
instance PC_Booze_Schlaf (C_Info)
{
	npc				= PC_Hero;
	nr				= 6;
	condition		= PC_Booze_Schlaf_Condition;
	information		= PC_Booze_Schlaf_Info;
	permanent		= TRUE;
	description		= "M³ot Lou z podwójn¹ zawartoœci¹ rumu."; 
};

func int PC_Booze_Schlaf_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (Knows_Schlafhammer == TRUE)
	{	
		return TRUE;
	};
};

func void PC_Booze_Schlaf_Info()
{
	if (Npc_HasItems (self, ItPl_SwampHerb) >= 1)
	&& (Npc_HasItems (self, ItPl_Beet)		>= 2)
	&& (Npc_HasItems (self, ItAt_SharkTeeth)>= 1)
	&& (Npc_HasItems (self, ItFo_Addon_Rum) >= 2)
	{
		Npc_RemoveInvItems (self, ItPl_SwampHerb,1);
		Npc_RemoveInvItems (self, ItPl_Beet,2);
		Npc_RemoveInvItems (self, ItAt_SharkTeeth,1);
		Npc_RemoveInvItems (self, ItFo_Addon_Rum,2);
		
		Print (PRINT_AlchemySuccess);
		CreateInvItems (self, ItFo_Addon_SchlafHammer,1);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);	
	};
	B_ENDPRODUCTIONDIALOG ();
};

//********************************
instance PC_Booze_SchnellerHering (C_Info)
{
	npc				= PC_Hero;
	nr				= 5;
	condition		= PC_Booze_SchnellerHering_Condition;
	information		= PC_Booze_SchnellerHering_Info;
	permanent		= TRUE;
	description		= "Zmieszaj Szybkiego œledzia."; 
};

func int PC_Booze_SchnellerHering_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (Knows_SchnellerHering == TRUE)
	{	
		return TRUE;
	};
};

func void PC_Booze_SchnellerHering_Info()
{
	if (Npc_HasItems (self, ItPl_Speed_Herb_01) >= 1)
	&& (Npc_HasItems (self, ItFo_Fish) >= 1)
	&& (Npc_HasItems (self, ItFo_Addon_Rum) >= 1)
	{
		Npc_RemoveInvItems (self, ItPl_Speed_Herb_01,1);
		Npc_RemoveInvItems (self, ItFo_Addon_Rum,1);
		Npc_RemoveInvItems (self, ItFo_Fish,1);
		
		Print (PRINT_AlchemySuccess);
		CreateInvItems (self, ItFo_Addon_SchnellerHering,1);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);	
	};
	B_ENDPRODUCTIONDIALOG ();
};	

//*******************************************************
//	Grünen Novizen herstellen
//*******************************************************
instance PC_ItMi_Addon_Joint_01 (C_INFO)
{
	nr       		= 11;
	npc				= PC_Hero;
	condition		= PC_ItMi_Addon_Joint_01_Condition;
	information		= PC_ItMi_Addon_Joint_01_Info;
	permanent		= TRUE;
	description		= "Zrób zielonego nowicjusza (1 ³odyga)"; 
};

func int PC_ItMi_Addon_Joint_01_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (TabakStart == TRUE)
	&& (Green_Extrem == TRUE)
	{		
			return TRUE;
	};
};
func void PC_ItMi_Addon_Joint_01_Info ()
{
	if (Npc_HasItems (hero, ItPl_SwampHerb) >= 2)
	&& (Npc_HasItems (hero, ItPl_Temp_Herb)  >= 1)
	{
		Npc_RemoveInvItems (hero,ItPl_SwampHerb	 ,2);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	 ,1);
		CreateInvItems	   (hero,ItMi_Addon_Joint_01,1);  
	
		Print ("Zielony nowicjusz gotowy!");
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};
	B_ENDPRODUCTIONDIALOG ();		
};

instance PC_ItPo_MegaDrink (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ItPo_MegaDrink_Condition;
	information		= PC_ItPo_MegaDrink_Info;
	permanent		= TRUE;
	description		= "Mikstura ze smoczych jaj (10 smoczych jaj, 1 czarna per³a, 1 porcja siarki)"; 
};

func int PC_ItPo_MegaDrink_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_MegaDrink] == TRUE))
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	&& (SpecialStart == FALSE)
	{		
			return TRUE;
	};
};

func void PC_ItPo_MegaDrink_Info ()
{
	if (Npc_HasItems (hero, ItAt_DragonEgg_MIS) >= 10) 
	&& (Npc_HasItems (hero, ItMi_DarkPearl)    >= 1) 
	&& (Npc_HasItems (hero, ItMi_Sulfur)    >= 1) 
	{
		Npc_RemoveInvItems (hero,ItAt_DragonEgg_MIS ,10);
		Npc_RemoveInvItems (hero,ItMi_DarkPearl	  ,1);
		Npc_RemoveInvItems (hero,ItMi_Sulfur	  ,1);
		
		CreateInvItems 	   (hero,ItPo_MegaDrink,1); 
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
*/