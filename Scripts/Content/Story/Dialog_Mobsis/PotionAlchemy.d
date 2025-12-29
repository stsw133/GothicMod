///******************************************************************************************
/// MOBSI_POTIONALCHEMY
///******************************************************************************************
func void POTIONALCHEMY_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_POTIONALCHEMY;
		AI_ProcessInfos(self);
		CreateInvItem (self, ItMi_Flask);
	};
};

func int PC_PotionAlchemy_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	{
		return true;
	};
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance PC_PotionAlchemy_EXIT (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_PotionAlchemy_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// Health
///******************************************************************************************
instance PC_PotionAlchemy_Health_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_PotionAlchemy_Health_Start_Condition;
	information							=	PC_PotionAlchemy_Health_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury lecznicze";
};
func int PC_PotionAlchemy_Health_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Health_Start_Info()
{
	Info_ClearChoices	(PC_PotionAlchemy_Health_Start);
	Info_AddChoice		(PC_PotionAlchemy_Health_Start, DIALOG_BACK, PC_ItPo_Health_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_Addon_05])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Œrednia mikstura lecznicza (roœlina + ziele + korzeñ leczniczy, rdest polny, woda)", PC_ItPo_Health_Addon_05);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_Addon_04])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "S³aba mikstura lecznicza (2 roœliny lecznicze, serafis, rdest polny, woda)", PC_ItPo_Health_Addon_04);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_Addon_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Silna mikstura lecznicza (3 korzenie lecznicze, rdest polny, woda)", PC_ItPo_Health_Addon_03);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_Addon_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Œrednia mikstura lecznicza (3 zio³a lecznicze, rdest polny, woda)", PC_ItPo_Health_Addon_02);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_Addon_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "S³aba mikstura lecznicza (3 roœliny lecznicze, rdest polny, woda)", PC_ItPo_Health_Addon_01);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_05])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Ekstrakt ¿ycia (roœlina + ziele + korzeñ leczniczy, woda)", PC_ItPo_Health_05);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_04])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Esencja ¿ycia (2 roœliny lecznicze, serafis, woda)", PC_ItPo_Health_04);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Eliksir ¿ycia (2 korzenie lecznicze, woda)", PC_ItPo_Health_03);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Ekstrakt ¿ycia (3 zio³a lecznicze, woda)", PC_ItPo_Health_02);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Esencja ¿ycia (3 roœliny lecznicze, woda)", PC_ItPo_Health_01);
	};
};

///******************************************************************************************
func void PC_ItPo_Health_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Health_Start);
};

func void PC_ItPo_Health_01()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 3)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 3);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Health_01);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Health_Start_Info();
};

func void PC_ItPo_Health_02()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 3)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_02, 3);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Health_02);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Health_Start_Info();
};

func void PC_ItPo_Health_03()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 3)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 3);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Health_03);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Health_Start_Info();
};

func void PC_ItPo_Health_04()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 2)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 2);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Health_01);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Health_Start_Info();
};

func void PC_ItPo_Health_05()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Health_02);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Health_Start_Info();
};

func void PC_ItPo_Health_Addon_01()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 3);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Health_Addon_04);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Health_Start_Info();
};

func void PC_ItPo_Health_Addon_02()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_02, 3);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Health_Addon_05);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Health_Start_Info();
};

func void PC_ItPo_Health_Addon_03()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 3);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Health_Addon_06);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Health_Start_Info();
};

func void PC_ItPo_Health_Addon_04()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 2)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 2);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 1);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Health_Addon_04);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Health_Start_Info();
};

func void PC_ItPo_Health_Addon_05()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 1);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Health_Addon_05);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Health_Start_Info();
};

///******************************************************************************************
/// Mana
///******************************************************************************************
instance PC_PotionAlchemy_Mana_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_PotionAlchemy_Mana_Start_Condition;
	information							=	PC_PotionAlchemy_Mana_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury many";
};
func int PC_PotionAlchemy_Mana_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Mana_Start_Info()
{
	Info_ClearChoices	(PC_PotionAlchemy_Mana_Start);
	Info_AddChoice		(PC_PotionAlchemy_Mana_Start, DIALOG_BACK, PC_ItPo_Mana_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_Addon_05])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Œrednia mikstura many (roœlina + ziele + korzeñ many, rdest polny, woda)", PC_ItPo_Mana_Addon_05);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_Addon_04])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "S³aba mikstura many (2 roœliny many, serafis, rdest polny, woda)", PC_ItPo_Mana_Addon_04);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_Addon_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Silna mikstura many (3 korzenie many, rdest polny, woda)", PC_ItPo_Mana_Addon_03);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_Addon_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Œrednia mikstura many (3 zio³a many, rdest polny, woda)", PC_ItPo_Mana_Addon_02);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_Addon_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "S³aba mikstura many (3 roœliny many, rdest polny, woda)", PC_ItPo_Mana_Addon_01);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_05])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Ekstrakt many (roœlina + ziele + korzeñ many, woda)", PC_ItPo_Mana_05);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_04])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Esencja many (2 roœliny many, serafis, woda)", PC_ItPo_Mana_04);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Eliksir many (3 korzenie many, woda)", PC_ItPo_Mana_03);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Ekstrakt many (3 zio³a many, woda)", PC_ItPo_Mana_02);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Esencja many (3 roœliny many, woda)", PC_ItPo_Mana_01);
	};
};

///******************************************************************************************
func void PC_ItPo_Mana_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Mana_Start);
};

func void PC_ItPo_Mana_01()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 3)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 3);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Mana_01);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Mana_Start_Info();
};

func void PC_ItPo_Mana_02()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 3)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_02, 3);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Mana_02);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Mana_Start_Info();
};

func void PC_ItPo_Mana_03()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 3)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 3);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Mana_03);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Mana_Start_Info();
};

func void PC_ItPo_Mana_04()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 2)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 2);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Mana_01);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Mana_Start_Info();
};

func void PC_ItPo_Mana_05()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Mana_02);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Mana_Start_Info();
};

func void PC_ItPo_Mana_Addon_01()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 3);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Mana_Addon_04);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Mana_Start_Info();
};

func void PC_ItPo_Mana_Addon_02()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_02, 3);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Mana_Addon_05);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Mana_Start_Info();
};

func void PC_ItPo_Mana_Addon_03()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 3);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Mana_Addon_06);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Mana_Start_Info();
};

func void PC_ItPo_Mana_Addon_04()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 2)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 2);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 1);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Mana_Addon_04);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Mana_Start_Info();
};

func void PC_ItPo_Mana_Addon_05()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 1);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Mana_Addon_05);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Mana_Start_Info();
};

///******************************************************************************************
/// Stamina
///******************************************************************************************
instance PC_PotionAlchemy_Stamina_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_PotionAlchemy_Stamina_Start_Condition;
	information							=	PC_PotionAlchemy_Stamina_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury energii";
};
func int PC_PotionAlchemy_Stamina_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Stamina_Start_Info()
{
	Info_ClearChoices	(PC_PotionAlchemy_Stamina_Start);
	Info_AddChoice		(PC_PotionAlchemy_Stamina_Start, DIALOG_BACK, PC_ItPo_Stamina_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Stamina_Addon_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Stamina_Start, "Silna mikstura energii (korzeñ leczniczy + many, zêbate ziele, woda)", PC_ItPo_Stamina_Addon_03);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Stamina_Addon_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Stamina_Start, "Œrednia mikstura energii (ziele lecznicze + many, zêbate ziele, woda)", PC_ItPo_Stamina_Addon_02);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Stamina_Addon_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Stamina_Start, "S³aba mikstura energii (roœlina lecznicza + many, zêbate ziele, woda)", PC_ItPo_Stamina_Addon_01);
	};
};

///******************************************************************************************
func void PC_ItPo_Stamina_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Stamina_Start);
};

func void PC_ItPo_Stamina_Addon_01()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Speed_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Speed_Herb_01, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Stamina_Addon_04);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Stamina_Start_Info();
};

func void PC_ItPo_Stamina_Addon_02()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Speed_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Speed_Herb_01, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Stamina_Addon_05);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Stamina_Start_Info();
};

func void PC_ItPo_Stamina_Addon_03()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Speed_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 1);
		Npc_RemoveInvItems (hero, ItPl_Speed_Herb_01, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Stamina_Addon_06);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Stamina_Start_Info();
};

///******************************************************************************************
/// Blueplant
///******************************************************************************************
instance PC_PotionAlchemy_Blueplant_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_PotionAlchemy_Blueplant_Start_Condition;
	information							=	PC_PotionAlchemy_Blueplant_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury ¿ycia i many";
};
func int PC_PotionAlchemy_Blueplant_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Blueplant_Start_Info()
{
	Info_ClearChoices	(PC_PotionAlchemy_Blueplant_Start);
	Info_AddChoice		(PC_PotionAlchemy_Blueplant_Start, DIALOG_BACK, PC_ItPo_Blueplant_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_Addon_06])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "Silna mikstura ¿ycia i many (korzeñ leczniczy + many, 3 serafisy, rdest polny, woda)", PC_ItPo_Blueplant_Addon_06);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_Addon_05])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "Œrednia mikstura ¿ycia i many (ziele lecznicze + many, 2 serafisy, rdest polny, woda)", PC_ItPo_Blueplant_Addon_05);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_Addon_04])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "S³aba mikstura ¿ycia i many (roœlina lecznicza + many, serafis, rdest polny, woda)", PC_ItPo_Blueplant_Addon_04);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_Addon_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "Silna mikstura ¿ycia i many (9 serafisów, rdest polny, woda)", PC_ItPo_Blueplant_Addon_03);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_Addon_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "Œrednia mikstura ¿ycia i many (6 serafisów, rdest polny, woda)", PC_ItPo_Blueplant_Addon_02);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_Addon_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "S³aba mikstura ¿ycia i many (3 serafisy, rdest polny, woda)", PC_ItPo_Blueplant_Addon_01);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_06])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "Eliksir ¿ycia i many (korzeñ leczniczy + many, 3 serafisy, woda)", PC_ItPo_Blueplant_06);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_05])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "Ekstrakt ¿ycia i many (ziele lecznicze + many, 2 serafisy, woda)", PC_ItPo_Blueplant_05);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_04])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "Esencja ¿ycia i many (roœlina lecznicza + many, serafis, woda)", PC_ItPo_Blueplant_04);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "Eliksir ¿ycia i many (9 serafisów, woda)", PC_ItPo_Blueplant_03);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "Ekstrakt ¿ycia i many (6 serafisów, woda)", PC_ItPo_Blueplant_02);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Blueplant_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Blueplant_Start, "Esencja ¿ycia i many (3 serafisy, woda)", PC_ItPo_Blueplant_01);
	};
};

///******************************************************************************************
func void PC_ItPo_Blueplant_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Blueplant_Start);
};

func void PC_ItPo_Blueplant_01()
{
	if (Npc_HasItems(hero, ItPl_Blueplant) >= 3)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 3);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_01);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

func void PC_ItPo_Blueplant_02()
{
	if (Npc_HasItems(hero, ItPl_Blueplant) >= 6)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 6);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_02);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

func void PC_ItPo_Blueplant_03()
{
	if (Npc_HasItems(hero, ItPl_Blueplant) >= 9)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 6);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_03);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

func void PC_ItPo_Blueplant_04()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_01);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

func void PC_ItPo_Blueplant_05()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 2)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 2);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_02);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

func void PC_ItPo_Blueplant_06()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 3)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 1);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 3);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_03);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

func void PC_ItPo_Blueplant_Addon_01()
{
	if (Npc_HasItems(hero, ItPl_Blueplant) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 3);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_Addon_04);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

func void PC_ItPo_Blueplant_Addon_02()
{
	if (Npc_HasItems(hero, ItPl_Blueplant) >= 6)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 6);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_Addon_05);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

func void PC_ItPo_Blueplant_Addon_03()
{
	if (Npc_HasItems(hero, ItPl_Blueplant) >= 9)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 9);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_Addon_06);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

func void PC_ItPo_Blueplant_Addon_04()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 1);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_Addon_04);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

func void PC_ItPo_Blueplant_Addon_05()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 2)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 2);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_Addon_05);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

func void PC_ItPo_Blueplant_Addon_06()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 1);
		Npc_RemoveInvItems (hero, ItPl_Blueplant, 3);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Blueplant_Addon_06);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Blueplant_Start_Info();
};

///******************************************************************************************
/// Shield
///******************************************************************************************
instance PC_PotionAlchemy_Shield_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_PotionAlchemy_Shield_Start_Condition;
	information							=	PC_PotionAlchemy_Shield_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury os³ony";
};
func int PC_PotionAlchemy_Shield_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Shield_Start_Info()
{
	Info_ClearChoices	(PC_PotionAlchemy_Shield_Start);
	Info_AddChoice		(PC_PotionAlchemy_Shield_Start, DIALOG_BACK, PC_ItPo_Shield_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Shield_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Shield_Start, "Eliksir os³ony (korzeñ leczniczy + many, kamienna trzcina, woda)", PC_ItPo_Shield_03);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Shield_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Shield_Start, "Ekstrakt os³ony (ziele lecznicze + many, kamienna trzcina, woda)", PC_ItPo_Shield_02);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Shield_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Shield_Start, "Esencja os³ony (roœlina lecznicza + many, kamienna trzcina, woda)", PC_ItPo_Shield_01);
	};
};

///******************************************************************************************
func void PC_ItPo_Shield_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Shield_Start);
};

func void PC_ItPo_Shield_01()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Stonereed) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Stonereed, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Shield_01);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Shield_Start_Info();
};

func void PC_ItPo_Shield_02()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 1)
	&& (Npc_HasItems(hero, ItPl_Stonereed) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_02, 1);
		Npc_RemoveInvItems (hero, ItPl_Stonereed, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Shield_02);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Shield_Start_Info();
};

func void PC_ItPo_Shield_03()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Stonereed) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_03, 1);
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_03, 1);
		Npc_RemoveInvItems (hero, ItPl_Stonereed, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Shield_03);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Shield_Start_Info();
};

///******************************************************************************************
/// Temp
///******************************************************************************************
instance PC_PotionAlchemy_Temp_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	6;
	condition							=	PC_PotionAlchemy_Temp_Start_Condition;
	information							=	PC_PotionAlchemy_Temp_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury czasowo zwiêkszaj¹ce atrybuty";
};
func int PC_PotionAlchemy_Temp_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 2)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Temp_Start_Info()
{
	Info_ClearChoices	(PC_PotionAlchemy_Temp_Start);
	Info_AddChoice		(PC_PotionAlchemy_Temp_Start, DIALOG_BACK, PC_ItPo_Temp_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Prot])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Czasowy eliksir ochrony (3 kamienne trzciny, rdest polny, woda)", PC_ItPo_Temp_Prot);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Pow])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Czasowy eliksir mocy (harpia winoroœl, rdest polny, woda)", PC_ItPo_Temp_Pow);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Dex])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Czasowy eliksir zrêcznoœci (goblinia jagoda, rdest polny, woda)", PC_ItPo_Temp_Dex);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Str])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Czasowy eliksir si³y (smoczy korzeñ, rdest polny, woda)", PC_ItPo_Temp_Str);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Stamina])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Czasowy eliksir energii (3 zêbate zio³a, rdest polny, woda)", PC_ItPo_Temp_Stamina);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Mana])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Czasowy eliksir many (ksiê¿ycowy aloes, rdest polny, woda)", PC_ItPo_Temp_Mana);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Health])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Czasowy eliksir ¿ycia (s³oneczny aloes, rdest polny, woda)", PC_ItPo_Temp_Health);
	};
};

///******************************************************************************************
func void PC_ItPo_Temp_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Temp_Start);
};

func void PC_ItPo_Temp_Health()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_04) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_04, 1);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Temp_Health);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Temp_Start_Info();
};

func void PC_ItPo_Temp_Mana()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_04) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_04, 1);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Temp_Mana);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Temp_Start_Info();
};

func void PC_ItPo_Temp_Stamina()
{
	if (Npc_HasItems(hero, ItPl_Speed_Herb_01) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Speed_Herb_01, 3);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Temp_Stamina);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Temp_Start_Info();
};

func void PC_ItPo_Temp_Str()
{
	if (Npc_HasItems(hero, ItPl_Strength_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Strength_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Temp_Str);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Temp_Start_Info();
};

func void PC_ItPo_Temp_Dex()
{
	if (Npc_HasItems(hero, ItPl_Dex_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Dex_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Temp_Dex);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Temp_Start_Info();
};

func void PC_ItPo_Temp_Pow()
{
	if (Npc_HasItems(hero, ItPl_Power_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Power_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Temp_Pow);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Temp_Start_Info();
};

func void PC_ItPo_Temp_Prot()
{
	if (Npc_HasItems(hero, ItPl_Stonereed) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Stonereed, 3);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Temp_Pow);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Temp_Start_Info();
};

///******************************************************************************************
/// Perm
///******************************************************************************************
instance PC_PotionAlchemy_Perm_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	7;
	condition							=	PC_PotionAlchemy_Perm_Start_Condition;
	information							=	PC_PotionAlchemy_Perm_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury trwale zwiêkszaj¹ce atrybuty";
};
func int PC_PotionAlchemy_Perm_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 3)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Perm_Start_Info()
{
	Info_ClearChoices	(PC_PotionAlchemy_Perm_Start);
	Info_AddChoice		(PC_PotionAlchemy_Perm_Start, DIALOG_BACK, PC_ItPo_Perm_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_MegaDrink])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Mikstura ze smoczych jaj (10 smoczych jaj, czarna per³a, siarka, woda)", PC_ItPo_MegaDrink);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Prot])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Trwa³y eliksir ochrony (3 kamienne trzciny, szczaw królewski, woda)", PC_ItPo_Perm_Prot);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Pow])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Trwa³y eliksir mocy (harpia winoroœl, szczaw królewski, woda)", PC_ItPo_Perm_Pow);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Dex])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Trwa³y eliksir zrêcznoœci (goblinia jagoda, szczaw królewski, woda)", PC_ItPo_Perm_Dex);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Str])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Trwa³y eliksir si³y (smoczy korzeñ, szczaw królewski, woda)", PC_ItPo_Perm_Str);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Stamina])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Trwa³y eliksir energii (3 zêbate zio³a, szczaw królewski, woda)", PC_ItPo_Perm_Stamina);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Mana])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Trwa³y eliksir many (ksiê¿ycowy aloes, szczaw królewski, woda)", PC_ItPo_Perm_Mana);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Health])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Trwa³y eliksir ¿ycia (s³oneczny aloes, szczaw królewski, woda)", PC_ItPo_Perm_Health);
	};
};

///******************************************************************************************
func void PC_ItPo_Perm_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Perm_Start);
};

func void PC_ItPo_Perm_Health()
{
	if (Npc_HasItems(hero, ItPl_Health_Herb_04) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Health_Herb_04, 1);
		Npc_RemoveInvItems (hero, ItPl_Perm_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Perm_Health);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Perm_Start_Info();
};

func void PC_ItPo_Perm_Mana()
{
	if (Npc_HasItems(hero, ItPl_Mana_Herb_04) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Mana_Herb_04, 1);
		Npc_RemoveInvItems (hero, ItPl_Perm_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Perm_Mana);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Perm_Start_Info();
};

func void PC_ItPo_Perm_Stamina()
{
	if (Npc_HasItems(hero, ItPl_Speed_Herb_01) >= 3)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Speed_Herb_01, 3);
		Npc_RemoveInvItems (hero, ItPl_Perm_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Perm_Stamina);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Perm_Start_Info();
};

func void PC_ItPo_Perm_Str()
{
	if (Npc_HasItems(hero, ItPl_Strength_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Strength_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Perm_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Perm_Str);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Perm_Start_Info();
};

func void PC_ItPo_Perm_Dex()
{
	if (Npc_HasItems(hero, ItPl_Dex_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Dex_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Perm_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Perm_Dex);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Perm_Start_Info();
};

func void PC_ItPo_Perm_Pow()
{
	if (Npc_HasItems(hero, ItPl_Power_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Power_Herb_01, 1);
		Npc_RemoveInvItems (hero, ItPl_Perm_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Perm_Pow);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Perm_Start_Info();
};

func void PC_ItPo_Perm_Prot()
{
	if (Npc_HasItems(hero, ItPl_Stonereed) >= 3)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Stonereed, 3);
		Npc_RemoveInvItems (hero, ItPl_Perm_Herb, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Perm_Prot);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Perm_Start_Info();
};

func void PC_ItPo_MegaDrink()
{
	if (Npc_HasItems(hero, ItAt_DragonEgg_MIS) >= 10)
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems(hero, ItFo_Booze) >= 1
	 || Npc_HasItems(hero, ItFo_DarkBeer) >= 1
	 || Npc_HasItems(hero, ItFo_Mead) >= 1
	 || Npc_HasItems(hero, ItFo_Sake) >= 1
	 || Npc_HasItems(hero, ItFo_SourWine) >= 1
	 || Npc_HasItems(hero, ItFo_Wine) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_DragonEgg_MIS, 10);
		Npc_RemoveInvItems (hero, ItMi_DarkPearl, 1);
		Npc_RemoveInvItems (hero, ItMi_Sulfur, 1);
		
		if		(Npc_HasItems(hero, ItFo_Booze) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Booze);		}
		else if	(Npc_HasItems(hero, ItFo_DarkBeer) >= 1)	{	Npc_RemoveInvItem (hero, ItFo_DarkBeer);	}
		else if	(Npc_HasItems(hero, ItFo_Mead) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Mead);		}
		else if	(Npc_HasItems(hero, ItFo_Sake) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Sake);		}
		else if	(Npc_HasItems(hero, ItFo_SourWine) >= 1)	{	Npc_RemoveInvItem (hero, ItFo_SourWine);	}
		else if	(Npc_HasItems(hero, ItFo_Wine) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Wine);		};
		
		CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_MegaDrink);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Perm_Start_Info();
};

///******************************************************************************************
/// Utility
///******************************************************************************************
instance PC_PotionAlchemy_Utility_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	8;
	condition							=	PC_PotionAlchemy_Utility_Start_Condition;
	information							=	PC_PotionAlchemy_Utility_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury specjalne";
};
func int PC_PotionAlchemy_Utility_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Utility_Start_Info()
{
	Info_ClearChoices	(PC_PotionAlchemy_Utility_Start);
	Info_AddChoice		(PC_PotionAlchemy_Utility_Start, DIALOG_BACK, PC_ItPo_Utility_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Underwater])
	{
		Info_AddChoice (PC_PotionAlchemy_Utility_Start, "Mikstura oddychania pod wod¹ (wodorosty, woda)", PC_ItPo_Underwater);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Stealth])
	{
		Info_AddChoice (PC_PotionAlchemy_Utility_Start, "Mikstura niewidzialnoœci (4 bagienne lub pustynne zio³a, 2 rdesty polne, woda)", PC_ItPo_Stealth);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Speed])
	{
		Info_AddChoice (PC_PotionAlchemy_Utility_Start, "Mikstura szybkoœci (2 zêbate zio³a, 2 rdesty polne, woda)", PC_ItPo_Speed);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Poison])
	{
		Info_AddChoice (PC_PotionAlchemy_Utility_Start, "Trucizna (6 truj¹cych grzybów lub 3 du¿e, 2 truj¹ce wydzieliny)", PC_ItPo_Poison);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perfume])
	{
		Info_AddChoice (PC_PotionAlchemy_Utility_Start, "Perfumy (kwiat œwitu, mech, lekki alkohol, woda)", PC_ItPo_Perfume);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_NightVision])
	{
		Info_AddChoice (PC_PotionAlchemy_Utility_Start, "Mikstura widzenia w ciemnoœci (kwiat œwitu, woda)", PC_ItPo_NightVision);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_HealObsession])
	{
		Info_AddChoice (PC_PotionAlchemy_Utility_Start, "Uleczenie z opêtania (6 ksiê¿ycowych ros lub 3 du¿e, mech, woda œwiêcona)", PC_ItPo_HealObsession);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Geist])
	{
		Info_AddChoice (PC_PotionAlchemy_Utility_Start, "Mikstura jasnoœci umys³u (3 bagienne lub pustynne zio³a, lekki alkohol)", PC_ItPo_Geist);
	};
};
///******************************************************************************************
func void PC_ItPo_Utility_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Utility_Start);
};

func void PC_ItPo_Geist()
{
	if (Npc_HasItems(hero, ItPl_SwampHerb) >= 3
	 || Npc_HasItems(hero, ItPl_DesertHerb) >= 3)
	&& (Npc_HasItems(hero, ItFo_Booze) >= 1
	 || Npc_HasItems(hero, ItFo_DarkBeer) >= 1
	 || Npc_HasItems(hero, ItFo_Mead) >= 1
	 || Npc_HasItems(hero, ItFo_Sake) >= 1
	 || Npc_HasItems(hero, ItFo_SourWine) >= 1
	 || Npc_HasItems(hero, ItFo_Wine) >= 1)
	{
		if		(Npc_HasItems(hero, ItPl_SwampHerb) >= 3)	{	Npc_RemoveInvItems (hero, ItPl_SwampHerb, 3);	}
		else if	(Npc_HasItems(hero, ItPl_DesertHerb) >= 3)	{	Npc_RemoveInvItems (hero, ItPl_DesertHerb, 3);	};
		
		if		(Npc_HasItems(hero, ItFo_Booze) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Booze);		}
		else if	(Npc_HasItems(hero, ItFo_DarkBeer) >= 1)	{	Npc_RemoveInvItem (hero, ItFo_DarkBeer);	}
		else if	(Npc_HasItems(hero, ItFo_Mead) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Mead);		}
		else if	(Npc_HasItems(hero, ItFo_Sake) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Sake);		}
		else if	(Npc_HasItems(hero, ItFo_SourWine) >= 1)	{	Npc_RemoveInvItem (hero, ItFo_SourWine);	}
		else if	(Npc_HasItems(hero, ItFo_Wine) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Wine);		};
		
		CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Geist);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Utility_Start_Info();
};

func void PC_ItPo_HealObsession()
{
	if (Npc_HasItems(hero, ItPl_Mushroom_07) >= 6
	 || Npc_HasItems(hero, ItPl_Mushroom_08) >= 3)
	&& (Npc_HasItems(hero, ItPl_GraveMoss) >= 1
	 || Npc_HasItems(hero, ItPl_MountainMoss) >= 1)
	&& (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
	{
		if		(Npc_HasItems(hero, ItPl_Mushroom_07) >= 6)		{	Npc_RemoveInvItems (hero, ItPl_Mushroom_07, 6);		}
		else if	(Npc_HasItems(hero, ItPl_Mushroom_08) >= 3)		{	Npc_RemoveInvItems (hero, ItPl_Mushroom_08, 3);		};
		
		if		(Npc_HasItems(hero, ItPl_GraveMoss) >= 1)		{	Npc_RemoveInvItems (hero, ItPl_GraveMoss, 1);		}
		else if	(Npc_HasItems(hero, ItPl_MountainMoss) >= 1)	{	Npc_RemoveInvItems (hero, ItPl_MountainMoss, 1);	};
		
		Npc_RemoveInvItem (hero, ItMi_HolyWater); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_HealObsession);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Utility_Start_Info();
};

func void PC_ItPo_NightVision()
{
	if (Npc_HasItems(hero, ItPl_Purpleplant) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_Purpleplant);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_NightVision);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Utility_Start_Info();
};

func void PC_ItPo_Perfume()
{
	if (Npc_HasItems(hero, ItPl_Purpleplant) >= 1)
	&& (Npc_HasItems(hero, ItPl_GraveMoss) >= 1
	 || Npc_HasItems(hero, ItPl_MountainMoss) >= 1)
	&& (Npc_HasItems(hero, ItFo_Booze) >= 1
	 || Npc_HasItems(hero, ItFo_DarkBeer) >= 1
	 || Npc_HasItems(hero, ItFo_Mead) >= 1
	 || Npc_HasItems(hero, ItFo_Sake) >= 1
	 || Npc_HasItems(hero, ItFo_SourWine) >= 1
	 || Npc_HasItems(hero, ItFo_Wine) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Purpleplant, 1);
		
		if		(Npc_HasItems(hero, ItPl_GraveMoss) >= 1)		{	Npc_RemoveInvItems (hero, ItPl_GraveMoss, 1);		}
		else if	(Npc_HasItems(hero, ItPl_MountainMoss) >= 1)	{	Npc_RemoveInvItems (hero, ItPl_MountainMoss, 1);	};
		
		if		(Npc_HasItems(hero, ItFo_Booze) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Booze);		}
		else if	(Npc_HasItems(hero, ItFo_DarkBeer) >= 1)	{	Npc_RemoveInvItem (hero, ItFo_DarkBeer);	}
		else if	(Npc_HasItems(hero, ItFo_Mead) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Mead);		}
		else if	(Npc_HasItems(hero, ItFo_Sake) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Sake);		}
		else if	(Npc_HasItems(hero, ItFo_SourWine) >= 1)	{	Npc_RemoveInvItem (hero, ItFo_SourWine);	}
		else if	(Npc_HasItems(hero, ItFo_Wine) >= 1)		{	Npc_RemoveInvItem (hero, ItFo_Wine);		};
		
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItems (hero, ItMi_EmptyBottle, 2);
		
		CreateInvItem (hero, ItPo_Perfume);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Utility_Start_Info();
};

func void PC_ItPo_Poison()
{
	if (Npc_HasItems(hero, ItPl_Mushroom_05) >= 6
	 || Npc_HasItems(hero, ItPl_Mushroom_06) >= 3)
	&& (Npc_HasItems(hero, ItAt_Poison) >= 2)
	{
		if		(Npc_HasItems(hero, ItPl_Mushroom_05) >= 6)		{	Npc_RemoveInvItems (hero, ItPl_Mushroom_05, 6);		}
		else if	(Npc_HasItems(hero, ItPl_Mushroom_06) >= 3)		{	Npc_RemoveInvItems (hero, ItPl_Mushroom_06, 3);		};
		
		Npc_RemoveInvItems (hero, ItAt_Poison, 2);
		
		CreateInvItem (hero, ItPo_Poison);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Utility_Start_Info();
};

func void PC_ItPo_Speed()
{
	if (Npc_HasItems(hero, ItPl_Speed_Herb_01) >= 2)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 2)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Speed_Herb_01, 2);
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 2);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Speed);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Utility_Start_Info();
};

func void PC_ItPo_Stealth()
{
	if (Npc_HasItems(hero, ItPl_SwampHerb) >= 3
	 || Npc_HasItems(hero, ItPl_DesertHerb) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 2)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		if		(Npc_HasItems(hero, ItPl_SwampHerb) >= 3)	{	Npc_RemoveInvItems (hero, ItPl_SwampHerb, 3);	}
		else if	(Npc_HasItems(hero, ItPl_DesertHerb) >= 3)	{	Npc_RemoveInvItems (hero, ItPl_DesertHerb, 3);	};
		
		Npc_RemoveInvItems (hero, ItPl_Temp_Herb, 2);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Stealth);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Utility_Start_Info();
};

func void PC_ItPo_Underwater()
{
	if (Npc_HasItems(hero, ItPl_Seaweed) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_Seaweed, 1);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItPo_Underwater);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Utility_Start_Info();
};

///******************************************************************************************
/// Transform
///******************************************************************************************
instance PC_PotionAlchemy_Transform_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	9;
	condition							=	PC_PotionAlchemy_Transform_Start_Condition;
	information							=	PC_PotionAlchemy_Transform_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury przemiany";
};
func int PC_PotionAlchemy_Transform_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 2)
	&& (PLAYER_TALENT_ALCHEMY[ALCHEMY_Transform])
	{
		return true;
	};
};
func void PC_PotionAlchemy_Transform_Start_Info()
{
	Info_ClearChoices	(PC_PotionAlchemy_Transform_Start);
	Info_AddChoice		(PC_PotionAlchemy_Transform_Start, DIALOG_BACK, PC_ItPo_Transform_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Transform])
	{
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w aligatora (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfAlligator);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w k¹sacza (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfBiter);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w krwiopijcê (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfBloodfly);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w krwawego ogara (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfBloodhound);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w demona (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfDemon);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w smoczego zêbacza (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfDrgSnapper);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w ognistego jaszczura (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfFireWaran);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w poln¹ bestiê (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfGiantBug);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w olbrzymiego szczura (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfGiantRat);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w olbrzymiego paj¹ka (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfGiantSpider);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w kozê (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfGoat);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w goblina (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfGoblin);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w goryla (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfGorilla);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w zaj¹ca (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfHare);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w harpiê (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfHarpy);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w dzika (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfKeiler);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w topielca (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfLurker);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w pe³zacza (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfMinecrawler);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w kretoszczura (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfMolerat);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w œcierwojada (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfScavenger);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w cieniostwora (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfShadowbeast);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w owcê (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfSheep);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w zêbacza (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfSnapper);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w spinta (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfSpint);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w b³otnego wê¿a (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfSwampshark);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w tygrysa (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfTiger);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w trolla (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfTroll);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w jaszczura (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfWaran);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w warga (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfWarg);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w wilka (5 fiolek krwi, rtêæ, woda)", PC_ItPo_TrfWolf);
	};
};

///******************************************************************************************
func void PC_ItPo_Transform_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Transform_Start);
};

func void PC_ItPo_TrfAlligator()
{
	if (Npc_HasItems(hero, ItAt_AlligatorBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_AlligatorBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfAlligator);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfBiter()
{
	if (Npc_HasItems(hero, ItAt_BiterBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_BiterBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfBiter);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfBloodfly()
{
	if (Npc_HasItems(hero, ItAt_BloodflyBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_BloodflyBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfBloodfly);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfBloodhound()
{
	if (Npc_HasItems(hero, ItAt_BloodhoundBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_BloodhoundBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfBloodhound);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfDemon()
{
	if (Npc_HasItems(hero, ItAt_DemonBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_DemonBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfDemon);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfDrgSnapper()
{
	if (Npc_HasItems(hero, ItAt_DrgSnapperBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_DrgSnapperBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfDragonSnapper);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfFireWaran()
{
	if (Npc_HasItems(hero, ItAt_FireWaranBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_FireWaranBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfFireWaran);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfGiantBug()
{
	if (Npc_HasItems(hero, ItAt_GiantBugBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_GiantBugBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfGiantBug);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfGiantRat()
{
	if (Npc_HasItems(hero, ItAt_GiantRatBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_GiantRatBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfGiantRat);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfGiantSpider()
{
	if (Npc_HasItems(hero, ItAt_GiantSpiderBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_GiantSpiderBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfGiantSpider);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfGoat()
{
	if (Npc_HasItems(hero, ItAt_GoatBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_GoatBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfGoat);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfGoblin()
{
	if (Npc_HasItems(hero, ItAt_GoblinBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_GoblinBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfGoblin);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfGorilla()
{
	if (Npc_HasItems(hero, ItAt_GorillaBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_GorillaBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfGorilla);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfHare()
{
	if (Npc_HasItems(hero, ItAt_HareBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_HareBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfHare);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfHarpy()
{
	if (Npc_HasItems(hero, ItAt_HarpyBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_HarpyBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfHarpy);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfKeiler()
{
	if (Npc_HasItems(hero, ItAt_KeilerBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_KeilerBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfKeiler);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfLurker()
{
	if (Npc_HasItems(hero, ItAt_LurkerBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_LurkerBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfLurker);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfMinecrawler()
{
	if (Npc_HasItems(hero, ItAt_MinecrawlerBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_MinecrawlerBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfMinecrawler);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfMolerat()
{
	if (Npc_HasItems(hero, ItAt_MoleratBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_MoleratBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfMolerat);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfScavenger()
{
	if (Npc_HasItems(hero, ItAt_ScavengerBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_ScavengerBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfScavenger);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfShadowbeast()
{
	if (Npc_HasItems(hero, ItAt_ShadowbeastBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_ShadowbeastBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfShadowbeast);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfSheep()
{
	if (Npc_HasItems(hero, ItAt_SheepBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_SheepBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfSheep);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfSnapper()
{
	if (Npc_HasItems(hero, ItAt_SnapperBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_SnapperBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfSnapper);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfSpint()
{
	if (Npc_HasItems(hero, ItAt_SpintBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_SpintBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfSpint);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfSwampshark()
{
	if (Npc_HasItems(hero, ItAt_SwampsharkBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_SwampsharkBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfSwampshark);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfTiger()
{
	if (Npc_HasItems(hero, ItAt_TigerBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_TigerBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfTiger);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfTroll()
{
	if (Npc_HasItems(hero, ItAt_TrollBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_TrollBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfTroll);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfWaran()
{
	if (Npc_HasItems(hero, ItAt_WaranBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_WaranBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfWaran);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfWarg()
{
	if (Npc_HasItems(hero, ItAt_WargBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_WargBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfWarg);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

func void PC_ItPo_TrfWolf()
{
	if (Npc_HasItems(hero, ItAt_WolfBlood) >= 5)
	&& (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItems (hero, ItAt_WolfBlood, 5);
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItem (hero, ItSc_TrfWolf);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Transform_Start_Info();
};

///******************************************************************************************
/// Alcohol
///******************************************************************************************
instance PC_PotionAlchemy_Alcohol_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	10;
	condition							=	PC_PotionAlchemy_Alcohol_Start_Condition;
	information							=	PC_PotionAlchemy_Alcohol_Start_Info;
	permanent							=	true;
	description							=	"Destyluj gorza³kê";
};
func int PC_PotionAlchemy_Alcohol_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Knows_LousHammer || Knows_Schlafhammer || Knows_SchnellerHering)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Alcohol_Start_Info()
{
	Info_ClearChoices(PC_PotionAlchemy_Alcohol_Start);

	Info_AddChoice (PC_PotionAlchemy_Alcohol_Start, DIALOG_BACK, PC_ItPo_Alcohol_BACK);
	if (Knows_SchnellerHering)
	{
		Info_AddChoice (PC_PotionAlchemy_Alcohol_Start, "Szybki ŒledŸ (zêbate ziele, ryba, rum)", PC_ItFo_Addon_SchnellerHering);
	};
	if (Knows_Schlafhammer)
	{
		Info_AddChoice (PC_PotionAlchemy_Alcohol_Start, "Podwójny M³ot (2 buraki, bagienne ziele, k³y b³otnego wê¿a, 2 rumy)", PC_ItFo_Addon_SchlafHammer);
	};
	if (Knows_LousHammer)
	{
		Info_AddChoice (PC_PotionAlchemy_Alcohol_Start, "M³ot Lou (2 buraki, bagienne ziele, k³y b³otnego wê¿a, rum)", PC_ItFo_Addon_LousHammer);
	};
};

///******************************************************************************************
func void PC_ItPo_Alcohol_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Alcohol_Start);
};

func void PC_ItFo_Addon_LousHammer()
{
	if (Npc_HasItems(hero, ItFo_Addon_Rum) >= 1)
	&& (Npc_HasItems(hero, ItAt_SharkTeeth) >= 1)
	&& (Npc_HasItems(hero, ItPl_SwampHerb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Beet) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Addon_Rum);
		Npc_RemoveInvItem (hero, ItAt_SharkTeeth);
		Npc_RemoveInvItem (hero, ItPl_SwampHerb);
		Npc_RemoveInvItems (hero, ItPl_Beet, 2);
		
		CreateInvItem (hero, ItFo_Addon_LousHammer);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Alcohol_Start_Info();
};

func void PC_ItFo_Addon_SchlafHammer()
{
	if (Npc_HasItems(hero, ItFo_Addon_Rum) >= 2)
	&& (Npc_HasItems(hero, ItAt_SharkTeeth) >= 1)
	&& (Npc_HasItems(hero, ItPl_SwampHerb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Beet) >= 2)
	{
		Npc_RemoveInvItems (hero, ItFo_Addon_Rum, 2);
		Npc_RemoveInvItem (hero, ItAt_SharkTeeth);
		Npc_RemoveInvItem (hero, ItPl_SwampHerb);
		Npc_RemoveInvItems (hero, ItPl_Beet, 2);
		
		CreateInvItem (hero, ItFo_Addon_SchlafHammer);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Alcohol_Start_Info();
};

func void PC_ItFo_Addon_SchnellerHering()
{
	if (Npc_HasItems(hero, ItFo_Addon_Rum) >= 1)
	&& (Npc_HasItems(hero, ItPl_Speed_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItFo_Fish) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Addon_Rum);
		Npc_RemoveInvItem (hero, ItPl_Speed_Herb_01);
		Npc_RemoveInvItem (hero, ItFo_Fish);
		
		CreateInvItem (hero, ItFo_Addon_SchnellerHering);
		Npc_RemoveInvItem (hero, ItMi_Flask);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Alcohol_Start_Info();
};

///******************************************************************************************
/// Misc
///******************************************************************************************
instance PC_PotionAlchemy_Misc_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	11;
	condition							=	PC_PotionAlchemy_Condition;
	information							=	PC_PotionAlchemy_Misc_Start_Info;
	permanent							=	true;
	description							=	"Stwórz inne przedmioty...";
};
func void PC_PotionAlchemy_Misc_Start_Info()
{
	Info_ClearChoices(PC_PotionAlchemy_Misc_Start);
	Info_AddChoice (PC_PotionAlchemy_Misc_Start, DIALOG_BACK, PC_ItPo_Misc_BACK);
	Info_AddChoice (PC_PotionAlchemy_Misc_Start, "5x magiczny proch (magiczna bry³ka)", PC_ItMi_MagicPowder);
	Info_AddChoice (PC_PotionAlchemy_Misc_Start, "5x czarny proch (2 saletry, siarka, wêgiel)", PC_ItMi_BlackPowder);
};

///******************************************************************************************
func void PC_ItPo_Misc_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Misc_Start);
};

func void PC_ItMi_BlackPowder()
{
	if (Npc_HasItems(hero, ItMi_Saltpeter) >= 2)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	&& (Npc_HasItems(hero, ItMi_Coal) >= 1)
	{
		Npc_RemoveInvItems (hero, ItMi_Saltpeter, 2);
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		Npc_RemoveInvItem (hero, ItMi_Coal);
		
		CreateInvItems (hero, ItMi_Saltpeter, 5);
		Print(PRINT_CraftSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Misc_Start_Info();
};

func void PC_ItMi_MagicPowder()
{
	if (Npc_HasItems(hero, ItMi_Nugget) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Nugget);
		
		CreateInvItems (hero, ItMi_MagicPowder, 5);
		Print(PRINT_CraftSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
	PC_PotionAlchemy_Misc_Start_Info();
};
