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
///	Health
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
	Info_ClearChoices	(PC_PotionAlchemy_Health_Start);
	Info_AddChoice		(PC_PotionAlchemy_Health_Start, DIALOG_BACK, PC_ItPo_Health_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_05])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "S³aba mikstura lecznicza (5 serafisów, woda)", PC_ItPo_Health_05);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_04])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Potê¿na mikstura lecznicza (silna mikstura lecznicza, rdest polny)", PC_ItPo_Health_04);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Silna mikstura lecznicza (2 korzenie lecznicze, woda)", PC_ItPo_Health_03);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "Œrednia mikstura lecznicza (2 zio³a lecznicze, woda)", PC_ItPo_Health_02);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Health_Start, "S³aba mikstura lecznicza (2 roœliny lecznicze, woda)", PC_ItPo_Health_01);
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
	&& (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
	&& (Npc_HasItems(hero, ItPl_Health_Herb_02) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
	&& (Npc_HasItems(hero, ItPl_Health_Herb_03) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
	if (Npc_HasItems(hero, ItPo_Health_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItem (hero, ItPo_Health_03);
		
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
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 4)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
///	Mana
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
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_05])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "S³aba mikstura many (5 serafisów, wino)", PC_ItPo_Mana_05);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_04])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Potê¿na mikstura many (silna mikstura many, wino)", PC_ItPo_Mana_04);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_03])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Silna mikstura many (2 ogniste korzenie, wino)", PC_ItPo_Mana_03);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_02])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "Œrednia mikstura many (2 ogniste zio³a, wino)", PC_ItPo_Mana_02);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_01])
	{
		Info_AddChoice (PC_PotionAlchemy_Mana_Start, "S³aba mikstura many (2 ogniste pokrzywy, wino)", PC_ItPo_Mana_01);
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
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine); CreateInvItem (hero, ItMi_EmptyBottle);
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
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_02) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine); CreateInvItem (hero, ItMi_EmptyBottle);
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
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_03) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine); CreateInvItem (hero, ItMi_EmptyBottle);
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
	if (Npc_HasItems(hero, ItPo_Mana_03) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItem (hero, ItPo_Mana_03);
		
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
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 4)
	{
		Npc_RemoveInvItem (hero, ItFo_Wine); CreateInvItem (hero, ItMi_EmptyBottle);
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
///	Temp
///******************************************************************************************
instance PC_PotionAlchemy_Temp_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_PotionAlchemy_Temp_Start_Condition;
	information							=	PC_PotionAlchemy_Temp_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury czasowo zwiêkszaj¹ce atrybuty";
};
func int PC_PotionAlchemy_Temp_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Temp_Start_Info()
{
	Info_ClearChoices	(PC_PotionAlchemy_Temp_Start);
	Info_AddChoice		(PC_PotionAlchemy_Temp_Start, DIALOG_BACK, PC_ItPo_Temp_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Power])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Eliksir mocy (wampirza ró¿a, rdest polny, woda)", PC_ItPo_Temp_Power);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_DEX])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Eliksir zrêcznoœci (goblinia jagoda, rdest polny, woda)", PC_ItPo_Temp_DEX);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_STR])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Eliksir si³y (smoczy korzeñ, rdest polny, woda)", PC_ItPo_Temp_STR);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Mana])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Eliksir ducha (wilcza miêta, rdest polny, woda)", PC_ItPo_Temp_Mana);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Health])
	{
		Info_AddChoice (PC_PotionAlchemy_Temp_Start, "Eliksir ¿ywotnoœci (krwawy rumianek, rdest polny, woda)", PC_ItPo_Temp_Health);
	};
};
///******************************************************************************************
func void PC_ItPo_Temp_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Temp_Start);
};
func void PC_ItPo_Temp_Health()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_04) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItem (hero, ItPl_Health_Herb_04);
		
		CreateInvItem (hero, ItPo_Temp_Health);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Temp_Mana()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_04) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItem (hero, ItPl_Mana_Herb_04);
		
		CreateInvItem (hero, ItPo_Temp_Mana);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Temp_STR()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Strength_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItem (hero, ItPl_Strength_Herb_01);
		
		CreateInvItem (hero, ItPo_Temp_STR);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Temp_DEX()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Dex_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItem (hero, ItPl_Dex_Herb_01);
		
		CreateInvItem (hero, ItPo_Temp_DEX);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Temp_Power()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Power_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItem (hero, ItPl_Power_Herb_01);
		
		CreateInvItem (hero, ItPo_Temp_Power);
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
///	Weak
///******************************************************************************************
instance PC_PotionAlchemy_Weak_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_PotionAlchemy_Weak_Start_Condition;
	information							=	PC_PotionAlchemy_Weak_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury os³abiaj¹ce atrybuty";
};
func int PC_PotionAlchemy_Weak_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
	{
		return true;
	};
};
func void PC_PotionAlchemy_Weak_Start_Info()
{
	Info_ClearChoices	(PC_PotionAlchemy_Weak_Start);
	Info_AddChoice		(PC_PotionAlchemy_Weak_Start, DIALOG_BACK, PC_ItPo_Weak_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Power])
	{
		Info_AddChoice (PC_PotionAlchemy_Weak_Start, "Eliksir mocy (wampirza ró¿a, cmentarny mech, woda)", PC_ItPo_Weak_Power);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_DEX])
	{
		Info_AddChoice (PC_PotionAlchemy_Weak_Start, "Eliksir zrêcznoœci (goblinia jagoda, cmentarny mech, woda)", PC_ItPo_Weak_DEX);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_STR])
	{
		Info_AddChoice (PC_PotionAlchemy_Weak_Start, "Eliksir si³y (smoczy korzeñ, cmentarny mech, woda)", PC_ItPo_Weak_STR);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Mana])
	{
		Info_AddChoice (PC_PotionAlchemy_Weak_Start, "Eliksir ducha (wilcza miêta, cmentarny mech, woda)", PC_ItPo_Weak_Mana);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Health])
	{
		Info_AddChoice (PC_PotionAlchemy_Weak_Start, "Eliksir ¿ywotnoœci (krwawy rumianek, cmentarny mech, woda)", PC_ItPo_Weak_Health);
	};
};
///******************************************************************************************
func void PC_ItPo_Weak_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Weak_Start);
};
func void PC_ItPo_Weak_Health()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_GraveMoss) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_04) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_GraveMoss);
		Npc_RemoveInvItem (hero, ItPl_Health_Herb_04);
		
		CreateInvItem (hero, ItPo_Weak_Health);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Weak_Mana()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_GraveMoss) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_04) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_GraveMoss);
		Npc_RemoveInvItem (hero, ItPl_Mana_Herb_04);
		
		CreateInvItem (hero, ItPo_Weak_Mana);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Weak_STR()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_GraveMoss) >= 1)
	&& (Npc_HasItems(hero, ItPl_Strength_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_GraveMoss);
		Npc_RemoveInvItem (hero, ItPl_Strength_Herb_01);
		
		CreateInvItem (hero, ItPo_Weak_STR);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Weak_DEX()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_GraveMoss) >= 1)
	&& (Npc_HasItems(hero, ItPl_Dex_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_GraveMoss);
		Npc_RemoveInvItem (hero, ItPl_Dex_Herb_01);
		
		CreateInvItem (hero, ItPo_Weak_DEX);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Weak_Power()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_GraveMoss) >= 1)
	&& (Npc_HasItems(hero, ItPl_Power_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_GraveMoss);
		Npc_RemoveInvItem (hero, ItPl_Power_Herb_01);
		
		CreateInvItem (hero, ItPo_Weak_Power);
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
///	Perm
///******************************************************************************************
instance PC_PotionAlchemy_Perm_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_PotionAlchemy_Perm_Start_Condition;
	information							=	PC_PotionAlchemy_Perm_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury trwale zwiêkszaj¹ce atrybuty";
};
func int PC_PotionAlchemy_Perm_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 1)
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
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Mikstura ze smoczych jaj (10 smoczych jaj, czarna per³a, siarka, woda)", PC_ItPo_MegaDrink);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_AntiPoison])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir odpornoœci na zatrucie (wydzielina z ¿¹d³a krwiopijcy, szczaw królewski, woda)", PC_ItPo_AntiPoison);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Fire])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir odpornoœci na ogieñ (s³oneczny aloes, szczaw królewski, woda)", PC_ItPo_Perm_Fire);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Power])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir mocy (wampirza ró¿a, szczaw królewski, woda)", PC_ItPo_Perm_Power);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_DEX])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir zrêcznoœci (goblinia jagoda, szczaw królewski, woda)", PC_ItPo_Perm_DEX);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_STR])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir si³y (smoczy korzeñ, szczaw królewski, woda)", PC_ItPo_Perm_STR);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Mana])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir ducha (wilcza miêta, szczaw królewski, woda)", PC_ItPo_Perm_Mana);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Health])
	{
		Info_AddChoice (PC_PotionAlchemy_Perm_Start, "Eliksir ¿ywotnoœci (krwawy rumianek, szczaw królewski, woda)", PC_ItPo_Perm_Health);
	};
};
///******************************************************************************************
func void PC_ItPo_Perm_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Perm_Start);
};
func void PC_ItPo_Perm_Health()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_04) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_04) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Strength_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Dex_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Power_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItPl_SunHerb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
func void PC_ItPo_AntiPoison()
{
	if (Knows_Bloodfly)
	{
		Print("Brak wiedzy o pozyskiwaniu wydzieliny z ¿¹d³a krwiopijcy.");
		CreateInvItem (hero, ItMi_Flask);
	}
	else if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Perm_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_Sting) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Perm_Herb);
		Npc_RemoveInvItem (hero, ItAt_Sting);
		
		CreateInvItem (hero, ItPo_AntiPoison);
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
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItAt_DragonEgg_MIS) >= 10)
	&& (Npc_HasItems(hero, ItMi_DarkPearl) >= 1)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 1)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
	nr									=	6;
	condition							=	PC_PotionAlchemy_Transform_Start_Condition;
	information							=	PC_PotionAlchemy_Transform_Start_Info;
	permanent							=	true;
	description							=	"Przygotuj mikstury przemiany";
};
func int PC_PotionAlchemy_Transform_Start_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_POTIONALCHEMY)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) >= 2)
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
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w aligatora (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfAlligator);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w k¹sacza (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfBiter);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w krwiopijcê (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfBloodfly);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w krwawego ogara (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfBloodhound);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w demona (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfDemon);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w smoczego zêbacza (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfDrgSnapper);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w ognistego jaszczura (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfFireWaran);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w poln¹ bestiê (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfGiantBug);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w olbrzymiego szczura (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfGiantRat);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w olbrzymiego paj¹ka (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfGiantSpider);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w kozê (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfGoat);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w goblina (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfGoblin);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w goryla (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfGorilla);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w zaj¹ca (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfHare);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w harpiê (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfHarpy);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w dzika (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfKeiler);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w topielca (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfLurker);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w pe³zacza (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfMinecrawler);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w kretoszczura (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfMolerat);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w œcierwojada (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfScavenger);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w cieniostwora (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfShadowbeast);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w owcê (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfSheep);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w zêbacza (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfSnapper);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w spinta (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfSpint);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w b³otnego wê¿a (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfSwampshark);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w tygrysa (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfTiger);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w trolla (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfTroll);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w jaszczura (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfWaran);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w warga (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfWarg);
		Info_AddChoice (PC_PotionAlchemy_Transform_Start, "Przemiana w wilka (10 fiolek krwi, rdest polny, woda)", PC_ItPo_TrfWolf);
	};
};
///******************************************************************************************
func void PC_ItPo_Transform_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Transform_Start);
};
func void PC_ItPo_TrfAlligator()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_AlligatorBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_AlligatorBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfAlligator);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfBiter()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_BiterBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_BiterBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfBiter);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfBloodfly()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_BloodflyBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_BloodflyBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfBloodfly);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfBloodhound()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_BloodhoundBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_BloodhoundBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfBloodhound);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfDemon()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_DemonBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_DemonBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfDemon);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfDrgSnapper()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_DrgSnapperBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_DrgSnapperBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfDragonSnapper);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfFireWaran()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_FireWaranBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_FireWaranBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfFireWaran);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfGiantBug()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_GiantBugBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_GiantBugBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfGiantBug);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfGiantRat()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_GiantRatBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_GiantRatBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfGiantRat);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfGiantSpider()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_GiantSpiderBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_GiantSpiderBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfGiantSpider);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfGoat()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_GoatBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_GoatBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfGoat);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfGoblin()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_GoblinBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_GoblinBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfGoblin);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfGorilla()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_GorillaBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_GorillaBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfGorilla);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfHare()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_HareBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_HareBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfHare);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfHarpy()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_HarpyBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_HarpyBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfHarpy);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfKeiler()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_KeilerBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_KeilerBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfKeiler);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfLurker()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_LurkerBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_LurkerBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfLurker);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfMinecrawler()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_MinecrawlerBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_MinecrawlerBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfMinecrawler);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfMolerat()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_MoleratBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_MoleratBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfMolerat);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfScavenger()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_ScavengerBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_ScavengerBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfScavenger);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfShadowbeast()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_ShadowbeastBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_ShadowbeastBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfShadowbeast);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfSheep()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_SheepBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_SheepBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfSheep);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfSnapper()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_SnapperBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_SnapperBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfSnapper);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfSpint()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_SpintBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_SpintBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfSpint);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfSwampshark()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_SwampsharkBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_SwampsharkBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfSwampshark);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfTiger()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_TigerBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_TigerBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfTiger);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfTroll()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_TrollBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_TrollBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfTroll);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfWaran()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_WaranBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_WaranBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfWaran);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfWarg()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_WargBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_WargBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfWarg);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_TrfWolf()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	&& (Npc_HasItems(hero, ItAt_WolfBlood) >= 10)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		Npc_RemoveInvItems (hero, ItAt_WolfBlood, 10);
		
		CreateInvItem (hero, ItSc_TrfWolf);
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
instance PC_PotionAlchemy_Special_Start (C_Info)
{
	npc									=	PC_Hero;
	nr									=	7;
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
	Info_ClearChoices	(PC_PotionAlchemy_Special_Start);
	Info_AddChoice		(PC_PotionAlchemy_Special_Start, DIALOG_BACK, PC_ItPo_Special_BACK);
	
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_HealObsession])
	{
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Uleczenie z opêtania (roœlina lecznicza, roœlina many, woda œwiêcona)", PC_ItPo_HealObsession);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Poison])
	{
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Trucizna (4 truj¹ce grzyby, woda)", PC_ItPo_Poison);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Geist])
	{
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Mikstura jasnoœci umys³u (2 bagienne zio³a, gorza³a)", PC_ItPo_Geist);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Speed])
	{
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Mikstura energii (2 zêbate zio³a, woda)", PC_ItPo_Speed);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_NightVision])
	{
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Mikstura widzenia w ciemnoœci (roœlina many, serafis, woda)", PC_ItPo_Speed);
	};
	if (PLAYER_TALENT_ALCHEMY[ALCHEMY_Digestion])
	{
		Info_AddChoice (PC_PotionAlchemy_Special_Start, "Mikstura trawienia (roœlina lecznicza, serafis, mleko)", PC_ItPo_Speed);
	};
};
///******************************************************************************************
func void PC_ItPo_Special_BACK()
{
	Info_ClearChoices(PC_PotionAlchemy_Special_Start);
};
func void PC_ItPo_Digestion()
{
	if (Npc_HasItems(hero, ItFo_Milk) >= 1)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Milk); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Blueplant);
		Npc_RemoveInvItem (hero, ItPl_Health_Herb_01);
		
		CreateInvItem (hero, ItPo_Digestion);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_NightVision()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Blueplant) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Blueplant);
		Npc_RemoveInvItem (hero, ItPl_Mana_Herb_01);
		
		CreateInvItem (hero, ItPo_NightVision);
		Print(PRINT_AlchemySuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMi_Flask);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItPo_Speed()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Speed_Herb_01) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
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
	&& (Npc_HasItems(hero, ItPl_SwampHerb) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Booze); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_SwampHerb, 2);
		
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
	&& (Npc_HasItems(hero, ItPl_Mushroom_03) >= 4)
	{
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItems (hero, ItPl_Mushroom_03, 4);
		
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
	if (Npc_HasItems(hero, ItMi_HolyWater) >= 1)
	&& (Npc_HasItems(hero, ItPl_Health_Herb_01) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mana_Herb_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_HolyWater); CreateInvItem (hero, ItMi_EmptyBottle);
		Npc_RemoveInvItem (hero, ItPl_Health_Herb_01);
		Npc_RemoveInvItem (hero, ItPl_Mana_Herb_01);
		
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
	nr									=	8;
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
