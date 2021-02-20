//******************************************************************************************
//	MOBSI_POTIONALCHEMY
//******************************************************************************************
FUNC VOID POTIONALCHEMY_S1()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{	
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_POTIONALCHEMY;
		Ai_ProcessInfos(her);
	};
};

//******************************************************************************************
INSTANCE PC_PotionAlchemy_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_PotionAlchemy_End_Condition;
	information							=	PC_PotionAlchemy_End_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC INT PC_PotionAlchemy_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	{
		return true;
	};
};

FUNC VOID PC_PotionAlchemy_End_Info()
{
	CreateInvItem (hero, ItMi_Flask);
	B_ENDPRODUCTIONDIALOG();
};

//******************************************************************************************
INSTANCE PC_Health_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Health_Start_Condition;
	information							=	PC_Health_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury leczenia";
};

FUNC INT PC_Health_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};

FUNC VOID PC_Health_Start_Info()
{
	Info_ClearChoices(PC_Health_Start);

	Info_AddChoice (PC_Health_Start, DIALOG_BACK, PC_ItPo_Health_BACK);
	Info_AddChoice (PC_Health_Start, "S³aba mikstura lecznicza (2 roœliny lecznicze, 4 niebieskie bzy, woda)", PC_ItPo_Health_04);
	if (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1)
	{
		Info_AddChoice (PC_Health_Start, "Mikstura lecznicza (2 korzenie lecznicze, rdest polny, woda)", PC_ItPo_Health_03);
		Info_AddChoice (PC_Health_Start, "Mikstura lecznicza (3 zio³a lecznicze, rdest polny, woda)", PC_ItPo_Health_02);
		Info_AddChoice (PC_Health_Start, "Mikstura lecznicza (6 roœlin leczniczych, rdest polny, woda)", PC_ItPo_Health_01);
	}
	else
	{
		Info_AddChoice (PC_Health_Start, "S³aba mikstura lecznicza (2 korzenie lecznicze, woda)", PC_ItPo_Health_03);
		Info_AddChoice (PC_Health_Start, "S³aba mikstura lecznicza (3 zio³a lecznicze, woda)", PC_ItPo_Health_02);
		Info_AddChoice (PC_Health_Start, "S³aba mikstura lecznicza (6 roœlin leczniczych, woda)", PC_ItPo_Health_01);
	};
};

//******************************************************************************************
FUNC VOID PC_ItPo_Health_BACK()
{
	Info_ClearChoices(PC_Health_Start);
};

FUNC VOID PC_ItPo_Health_01()
{
	if (Npc_HasItems(hero,ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero,ItPl_Health_Herb_01)	>=	6)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 6);

		if (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
			CreateInvItem (hero, ItPo_Health_02);
		}
		else
		{
			CreateInvItem (hero, ItPo_Health_01);
		};
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

FUNC VOID PC_ItPo_Health_02()
{
	if (Npc_HasItems(hero,ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero,ItPl_Health_Herb_02)	>=	3)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_02, 3);

		if (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
			CreateInvItem (hero, ItPo_Health_02);
		}
		else
		{
			CreateInvItem (hero, ItPo_Health_01);
		};
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

FUNC VOID PC_ItPo_Health_03()
{
	if (Npc_HasItems(hero,ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero,ItPl_Health_Herb_03)	>=	2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 2);

		if (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
			CreateInvItem (hero, ItPo_Health_02);
		}
		else
		{
			CreateInvItem (hero, ItPo_Health_01);
		};
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

FUNC VOID PC_ItPo_Health_04()
{
	if (Npc_HasItems(hero,ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero,ItPl_Health_Herb_01)	>=	2)
	&& (Npc_HasItems(hero,ItPl_Blueplant)		>=	4)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 2);
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

//******************************************************************************************
INSTANCE PC_Mana_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Mana_Start_Condition;
	information							=	PC_Mana_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury many";
};

FUNC INT PC_Mana_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};

FUNC VOID PC_Mana_Start_Info()
{
	Info_ClearChoices(PC_Mana_Start);

	Info_AddChoice (PC_Mana_Start, DIALOG_BACK, PC_ItPo_Mana_BACK);
	Info_AddChoice (PC_Mana_Start, "S³aba mikstura many (2 ogniste pokrzywy, 4 niebieskie bzy, wino)", PC_ItPo_Mana_04);
	if (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1)
	{
		Info_AddChoice (PC_Mana_Start, "Mikstura many (2 ogniste korzenie, rdest polny, wino)", PC_ItPo_Mana_03);
		Info_AddChoice (PC_Mana_Start, "Mikstura many (3 ogniste zio³a, rdest polny, wino)", PC_ItPo_Mana_02);
		Info_AddChoice (PC_Mana_Start, "Mikstura many (6 ognistych pokrzyw, rdest polny, wino)", PC_ItPo_Mana_01);
	}
	else
	{
		Info_AddChoice (PC_Mana_Start, "S³aba mikstura many (2 ogniste korzenie, wino)", PC_ItPo_Mana_03);
		Info_AddChoice (PC_Mana_Start, "S³aba mikstura many (3 ogniste zio³a, wino)", PC_ItPo_Mana_02);
		Info_AddChoice (PC_Mana_Start, "S³aba mikstura many (6 ognistych pokrzyw, wino)", PC_ItPo_Mana_01);
	};
};

//******************************************************************************************
FUNC VOID PC_ItPo_Mana_BACK()
{
	Info_ClearChoices(PC_Mana_Start);
};

FUNC VOID PC_ItPo_Mana_01()
{
	if (Npc_HasItems(hero,ItFo_Wine)			>=	1)
	&& (Npc_HasItems(hero,ItPl_Mana_Herb_01)	>=	6)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 6);

		if (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
			CreateInvItem (hero, ItPo_Mana_02);
		}
		else
		{
			CreateInvItem (hero, ItPo_Mana_01);
		};
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

FUNC VOID PC_ItPo_Mana_02()
{
	if (Npc_HasItems(hero,ItFo_Wine)			>=	1)
	&& (Npc_HasItems(hero,ItPl_Mana_Herb_02)	>=	3)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_02, 3);

		if (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
			CreateInvItem (hero, ItPo_Mana_02);
		}
		else
		{
			CreateInvItem (hero, ItPo_Mana_01);
		};
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

FUNC VOID PC_ItPo_Mana_03()
{
	if (Npc_HasItems(hero,ItFo_Wine)			>=	1)
	&& (Npc_HasItems(hero,ItPl_Mana_Herb_03)	>=	2)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 2);

		if (Npc_HasItems(hero,ItPl_Temp_Herb) >= 1)
		{
			Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
			CreateInvItem (hero, ItPo_Mana_02);
		}
		else
		{
			CreateInvItem (hero, ItPo_Mana_01);
		};
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};

FUNC VOID PC_ItPo_Mana_04()
{
	if (Npc_HasItems(hero,ItFo_Wine)			>=	1)
	&& (Npc_HasItems(hero,ItPl_Mana_Herb_01)	>=	2)
	&& (Npc_HasItems(hero,ItPl_Blueplant)		>=	4)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 2);
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

//******************************************************************************************
INSTANCE PC_Perm_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_Perm_Start_Condition;
	information							=	PC_Perm_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury zwiêkszaj¹ce atrybuty";
};

FUNC INT PC_Perm_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};

FUNC VOID PC_Perm_Start_Info()
{
	Info_ClearChoices(PC_Perm_Start);

	Info_AddChoice (PC_Perm_Start, DIALOG_BACK, PC_ItPo_Perm_BACK);
	Info_AddChoice (PC_Perm_Start, "Eliksir ¿ywotnoœci (8 korzeni leczniczych, szczaw królewski, woda)", PC_ItPo_Perm_Health);
	Info_AddChoice (PC_Perm_Start, "Eliksir ducha (8 ognistych korzeni, szczaw królewski, woda)", PC_ItPo_Perm_Mana);
	Info_AddChoice (PC_Perm_Start, "Eliksir zrêcznoœci (goblinia jagoda, szczaw królewski, woda)", PC_ItPo_Perm_DEX);
	Info_AddChoice (PC_Perm_Start, "Eliksir si³y (smoczy korzeñ, szczaw królewski, woda)", PC_ItPo_Perm_STR);
};

//******************************************************************************************
FUNC VOID PC_ItPo_Perm_BACK()
{
	Info_ClearChoices(PC_Perm_Start);
};

FUNC VOID PC_ItPo_Perm_Str()
{
	if (Npc_HasItems(hero,ItFo_Water)				>=	1)
	&& (Npc_HasItems(hero,ItPl_Strength_Herb_01)	>=	1)
	&& (Npc_HasItems(hero,ItPl_Perm_Herb)			>=	1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Strength_Herb_01);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);

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

FUNC VOID PC_ItPo_Perm_Dex()
{
	if (Npc_HasItems(hero,ItFo_Water)		>=	1)
	&& (Npc_HasItems(hero,ItPl_Dex_Herb_01)	>=	1)
	&& (Npc_HasItems(hero,ItPl_Perm_Herb)	>=	1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Dex_Herb_01);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);

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

FUNC VOID PC_ItPo_Perm_Mana()
{
	if (Npc_HasItems(hero,ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero,ItPl_Mana_Herb_03)	>=	8)
	&& (Npc_HasItems(hero,ItPl_Perm_Herb)		>=	1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 8);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);

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

FUNC VOID PC_ItPo_Perm_Health()
{
	if (Npc_HasItems(hero,ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero,ItPl_Health_Herb_03)	>=	8)
	&& (Npc_HasItems(hero,ItPl_Perm_Herb)		>=	1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 8);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);

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

//******************************************************************************************
INSTANCE PC_Special_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_Special_Start_Condition;
	information							=	PC_Special_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury specjalne";
};

FUNC INT PC_Special_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero,NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};

FUNC VOID PC_Special_Start_Info()
{
	Info_ClearChoices(PC_Special_Start);

	Info_AddChoice (PC_Special_Start, DIALOG_BACK, PC_ItPo_Special_BACK);
	Info_AddChoice (PC_Special_Start, "Trucizna (6 demonicznych grzybów, woda)", PC_ItPo_Poison);
	Info_AddChoice (PC_Special_Start, "Mikstura jasnoœci umys³u (2 cmentarne mchy, gorza³a)", PC_ItPo_Geist);
	Info_AddChoice (PC_Special_Start, "Mikstura energii (4 zêbate ziela, woda)", PC_ItPo_Speed);
};

//******************************************************************************************
FUNC VOID PC_ItPo_Special_BACK()
{
	Info_ClearChoices(PC_Special_Start);
};

FUNC VOID PC_ItPo_Speed()
{
	if (Npc_HasItems(hero,ItFo_Water)			>=	1)
	&& (Npc_HasItems(hero,ItPl_Speed_Herb_01)	>=	4)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Speed_Herb_01, 4);

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

FUNC VOID PC_ItPo_Geist()
{
	if (Npc_HasItems(hero,ItFo_Booze)		>=	1)
	&& (Npc_HasItems(hero,ItPl_GraveMoss)	>=	2)
	{
		Npc_RemoveInvItem (hero, ItFo_Booze);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_GraveMoss, 2);

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

FUNC VOID PC_ItPo_Poison()
{
	if (Npc_HasItems(hero,ItFo_Water)		>=	1)
	&& (Npc_HasItems(hero,ItPl_Mushroom_02)	>=	6)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Mushroom_02, 6);

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
