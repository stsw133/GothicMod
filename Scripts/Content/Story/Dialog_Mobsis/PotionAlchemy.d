///******************************************************************************************
///	MOBSI_POTIONALCHEMY
///******************************************************************************************
func void POTIONALCHEMY_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
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
	description							=	DIALOG_END;
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
instance PC_PotionAlchemy_Health_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_PotionAlchemy_Health_Start_Condition;
	information							=	PC_PotionAlchemy_Health_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury leczenia";
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
	Info_ClearChoices(PC_PotionAlchemy_Health_Start);

	Info_AddChoice (PC_PotionAlchemy_Health_Start, DIALOG_BACK, PC_ItPo_Health_BACK);
	if (PLAYER_TALENT_SMITH[ALCHEMY_Health_05])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "S³aba mikstura lecznicza (4 serafisy, rdest polny, woda)", PC_ItPo_Health_05);
	};
	if (PLAYER_TALENT_SMITH[ALCHEMY_Health_04])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Potê¿na mikstura lecznicza (3 s³abe mikstury lecznicze, rdest polny)", PC_ItPo_Health_04);
	};
	if (PLAYER_TALENT_SMITH[ALCHEMY_Health_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Silna mikstura lecznicza (2 korzenie lecznicze, rdest polny, woda)", PC_ItPo_Health_03);
	};
	if (PLAYER_TALENT_SMITH[ALCHEMY_Health_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Œrednia mikstura lecznicza (2 zio³a lecznicze, rdest polny, woda)", PC_ItPo_Health_02);
	};
	if (PLAYER_TALENT_SMITH[ALCHEMY_Health_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "S³aba mikstura lecznicza (2 roœliny lecznicze, rdest polny, woda)", PC_ItPo_Health_01);
	};
};
///******************************************************************************************
func void PC_ItPo_Health_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Health_Start);
};
func void PC_ItPo_Health_01()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 2)
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
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 2)
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
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 2)
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
	if (Npc_HasItems(hero, ItPo_Health_01) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
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
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 4)
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
	Info_ClearChoices(PC_PotionAlchemy_Mana_Start);

	Info_AddChoice (PC_PotionAlchemy_Mana_Start, DIALOG_BACK, PC_ItPo_Mana_BACK);
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_05])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "S³aba mikstura many (4 serafisy, rdest polny, wino)", PC_ItPo_Mana_05);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_04])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Potê¿na mikstura many (3 s³abe mikstury many, rdest polny, wino)", PC_ItPo_Mana_04);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Silna mikstura many (2 ogniste korzenie, rdest polny, wino)", PC_ItPo_Mana_03);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Œrednia mikstura many (2 ogniste zio³a, rdest polny, wino)", PC_ItPo_Mana_02);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "S³aba mikstura many (2 ogniste pokrzywy, rdest polny, wino)", PC_ItPo_Mana_01);
	};
};
///******************************************************************************************
func void PC_ItPo_Mana_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Mana_Start);
};
func void PC_ItPo_Mana_01()
{
	if (Npc_HasItems(hero, ItFo_Wine) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 2)
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
	if (Npc_HasItems(hero, ItFo_Wine) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 2)
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
	if (Npc_HasItems(hero, ItFo_Wine) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 2)
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
	if (Npc_HasItems(hero, ItPo_Mana_01) >= 3)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
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
	if (Npc_HasItems(hero, ItFo_Wine) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 4)
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
instance PC_PotionAlchemy_Perm_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_PotionAlchemy_Perm_Start_Condition;
	information							=	PC_PotionAlchemy_Perm_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury zwiêkszaj¹ce atrybuty";
};
func int PC_PotionAlchemy_Perm_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 2)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Perm_Start_Info()
{
	Info_ClearChoices(PC_PotionAlchemy_Perm_Start);
	
	Info_AddChoice (PC_PotionAlchemy_Perm_Start, DIALOG_BACK, PC_ItPo_Perm_BACK);
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_MegaDrink])
	{
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Mikstura ze smoczych jaj (10 smoczych jaj, czarna per³a, siarka, rtêæ)", PC_ItPo_MegaDrink);
	};
	if (PLAYER_TALENT_SMITH[ALCHEMY_Perm_Fire])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir odpornoœci na ogieñ (s³oneczny aloes, szczaw królewski, rtêæ)", PC_ItPo_Perm_Power);
	};
	if (PLAYER_TALENT_SMITH[ALCHEMY_Perm_Power])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir mocy (wampirza ró¿a, szczaw królewski, rtêæ)", PC_ItPo_Perm_Power);
	};
	if (PLAYER_TALENT_SMITH[ALCHEMY_Perm_DEX])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir zrêcznoœci (goblinia jagoda, szczaw królewski, rtêæ)", PC_ItPo_Perm_DEX);
	};
	if (PLAYER_TALENT_SMITH[ALCHEMY_Perm_STR])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir si³y (smoczy korzeñ, szczaw królewski, rtêæ)", PC_ItPo_Perm_STR);
	};
	if (PLAYER_TALENT_SMITH[ALCHEMY_Perm_Mana])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir ducha (wilcza miêta, szczaw królewski, rtêæ)", PC_ItPo_Perm_Mana);
	};
	if (PLAYER_TALENT_SMITH[ALCHEMY_Perm_Health])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir ¿ywotnoœci (krwawy rumianek, szczaw królewski, rtêæ)", PC_ItPo_Perm_Health);
	};
};
///******************************************************************************************
func void PC_ItPo_Perm_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Perm_Start);
};
func void PC_ItPo_Perm_Health()
{
	if (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_04) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItPl_Health_Herb_04);
		
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
func void PC_ItPo_Perm_Mana()
{
	if (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_04) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItPl_Mana_Herb_04);
		
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
func void PC_ItPo_Perm_STR()
{
	if (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Strength_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItPl_Strength_Herb_01);
		
		CreateInvItem (hero, ItPo_Perm_STR);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Perm_DEX()
{
	if (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Dex_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItPl_Dex_Herb_01);
		
		CreateInvItem (hero, ItPo_Perm_DEX);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Perm_Power()
{
	if (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Power_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItPl_Power_Herb_01);
		
		CreateInvItem (hero, ItPo_Perm_Power);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Perm_Fire()
{
	if (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_SunHerb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItPl_SunHerb);
		
		CreateInvItem (hero, ItPo_Perm_Fire);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_MegaDrink()
{
	if (Npc_HasItems(hero, ItMi_Quicksilver) >= 1)
	&& (Npc_HasItems(hero, ItAt_DragonEgg_MIS) >= 10)
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Quicksilver);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItAt_DragonEgg_MIS, 10);
		Npc_RemoveInvItem (hero, ItMi_DarkPearl);
		Npc_RemoveInvItem (hero, ItMi_Sulfur);
		
		CreateInvItem (hero, ItPo_MegaDrink);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (self, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
instance PC_PotionAlchemy_Transform_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_PotionAlchemy_Transform_Start_Condition;
	information							=	PC_PotionAlchemy_Transform_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury przemiany";
};
func int PC_PotionAlchemy_Transform_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 3)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Transform_Start_Info()
{
	Info_ClearChoices(PC_PotionAlchemy_Transform_Start);

	Info_AddChoice (PC_PotionAlchemy_Transform_Start, DIALOG_BACK, PC_ItPo_Transform_BACK);
	/*
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_TrfSheep])
	{
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w owcê (2 fiolki krwii owcy, woda)", PC_ItPo_TrfSheep);
	};
	*/
};
///******************************************************************************************
func void PC_ItPo_Transform_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Transform_Start);
};
///******************************************************************************************
instance PC_PotionAlchemy_Special_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_PotionAlchemy_Special_Start_Condition;
	information							=	PC_PotionAlchemy_Special_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury specjalne";
};
func int PC_PotionAlchemy_Special_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Special_Start_Info()
{
	Info_ClearChoices(PC_PotionAlchemy_Special_Start);

	Info_AddChoice (PC_PotionAlchemy_Special_Start, DIALOG_BACK, PC_ItPo_Special_BACK);
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Speed])
	{
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Uleczenie z opêtania (zêbate ziele, cmentarny mech, woda)", PC_ItPo_HealObsession);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Speed])
	{
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Trucizna (truj¹cy grzyb, rdest polny, woda)", PC_ItPo_Poison);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Speed])
	{
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Mikstura jasnoœci umys³u (bagienne ziele, cmentarny mech, gorza³a)", PC_ItPo_Geist);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Speed])
	{
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Mikstura energii (2 zêbate zio³a, rdest polny, woda)", PC_ItPo_Speed);
	};
};
///******************************************************************************************
func void PC_ItPo_Special_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Special_Start);
};
func void PC_ItPo_Speed()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Speed_Herb_01) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItems (hero, ItPl_Speed_Herb_01, 2);
		
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
	if (Npc_HasItems(hero, ItFo_Booze) >= 1)
	&& (Npc_HasItems(hero, ItPl_GraveMoss) >= 1)
	&& (Npc_HasItems(hero, ItPl_SwampHerb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Booze);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_GraveMoss);
		Npc_RemoveInvItem (hero, ItPl_SwampHerb);
		
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
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mushroom_03) >= 1)
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
func void PC_ItPo_HealObsession()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_GraveMoss) >= 1)
	&& (Npc_HasItems(hero, ItPl_Speed_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);	CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_GraveMoss);
		Npc_RemoveInvItem (hero, ItPl_Speed_Herb_01);
		
		CreateInvItem (hero, ItPo_HealObsession);
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
instance PC_PotionAlchemy_Alcohol_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	6;
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
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
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
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
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
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
