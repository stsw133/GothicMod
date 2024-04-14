///******************************************************************************************
/// MOBSI_SMITHWEAPON
///******************************************************************************************
func void SMITHWEAPON_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_SMITHWEAPON;
		Ai_ProcessInfos(her);
	};
}; 
///******************************************************************************************
instance PC_SmithWeapon_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_SmithWeapon_End_Condition;
	information							=	PC_SmithWeapon_End_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int PC_SmithWeapon_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON)
	{
		return true;
	};
};
func void PC_SmithWeapon_End_Info()
{
	CreateInvItem (hero, ItMiSwordRaw);
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
instance PC_SmithWeapon_1hSwords (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_SmithWeapon_1hSwords_Condition;
	information							=	PC_SmithWeapon_1hSwords_Info;
	permanent							=	true;
	description							=	"Miecze jednorêczne";
};
func int PC_SmithWeapon_1hSwords_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 1)
	{
		return true;
	};
};
func void PC_SmithWeapon_1hSwords_Info()
{
	Info_ClearChoices(PC_SmithWeapon_1hSwords);
	
	Info_AddChoice (PC_SmithWeapon_1hSwords, DIALOG_BACK, PC_ItMw_1H_BACK);
	if (PLAYER_TALENT_SMITH[SMITH_ElBastardo])
	{
		Info_AddChoice (PC_SmithWeapon_1hSwords, "El Bastardo (5 bry³ek ¿elaza)", PC_ItMw_ElBastardo);
	};
	if (PLAYER_TALENT_SMITH[SMITH_Rubinklinge])
	{
		Info_AddChoice (PC_SmithWeapon_1hSwords, "Rubinowe Ostrze (4 bry³ki ¿elaza)", PC_ItMw_Rubinklinge);
	};
	if (PLAYER_TALENT_SMITH[SMITH_Schwert4])
	{
		Info_AddChoice (PC_SmithWeapon_1hSwords, "Dobry d³ugi miecz (4 bry³ki ¿elaza)", PC_ItMw_Schwert4);
	};
	if (PLAYER_TALENT_SMITH[SMITH_Schwert1])
	{
		Info_AddChoice (PC_SmithWeapon_1hSwords, "Dobry miecz (3 bry³ki ¿elaza)", PC_ItMw_Schwert1);
	};
	if (PLAYER_TALENT_SMITH[SMITH_1H_Common])
	{
		Info_AddChoice (PC_SmithWeapon_1hSwords, "Miecz (2 bry³ki ¿elaza)", PC_ItMw_1H_Common);
	};
};
///******************************************************************************************
func void PC_ItMw_1H_BACK()
{
	Info_ClearChoices(PC_SmithWeapon_1hSwords);
};
func void PC_ItMw_1H_Common()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 2)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 2);
		
		CreateInvItem (hero, ItMw_1H_Common_01);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_Schwert1()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 3)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 3);
		
		CreateInvItem (hero, ItMw_Schwert1);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_Schwert4()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 4)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 4);
		
		CreateInvItem (hero, ItMw_Schwert4);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_Rubinklinge()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 4)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 4);
		
		CreateInvItem (hero, ItMw_Rubinklinge);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_ElBastardo()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 5)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 5);
		
		CreateInvItem (hero, ItMw_ElBastardo);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
instance PC_SmithWeapon_2hSwords (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_SmithWeapon_2hSwords_Condition;
	information							=	PC_SmithWeapon_2hSwords_Info;
	permanent							=	true;
	description							=	"Miecze dwurêczne";
};
func int PC_SmithWeapon_2hSwords_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 1)
	{
		return true;
	};
};
func void PC_SmithWeapon_2hSwords_Info()
{
	Info_ClearChoices(PC_SmithWeapon_2hSwords);
	
	Info_AddChoice (PC_SmithWeapon_2hSwords, DIALOG_BACK, PC_ItMw_2H_BACK);
	if (PLAYER_TALENT_SMITH[SMITH_Avalon])
	{
		Info_AddChoice (PC_SmithWeapon_2hSwords, "Avalon (6 bry³ek ¿elaza)", PC_ItMw_Avalon);
	};
	if (PLAYER_TALENT_SMITH[SMITH_Streitaxt1])
	{
		Info_AddChoice (PC_SmithWeapon_2hSwords, "Lekki topór bojowy (4 bry³ki ¿elaza, 2 k³y)", PC_ItMw_Streitaxt1);
	};
};
///******************************************************************************************
func void PC_ItMw_2H_BACK()
{
	Info_ClearChoices(PC_SmithWeapon_2hSwords);
};
func void PC_ItMw_Streitaxt1()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 4)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 2)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 4);
		Npc_RemoveInvItems (hero, ItAt_Teeth, 2);
		
		CreateInvItem (hero, ItMw_Streitaxt1);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_Avalon()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 6)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 6);
		
		CreateInvItem (hero, ItMw_Avalon);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
instance PC_SmithWeapon_1hMagicSwords (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_SmithWeapon_1hMagicSwords_Condition;
	information							=	PC_SmithWeapon_1hMagicSwords_Info;
	permanent							=	true;
	description							=	"Magiczne miecze jednorêczne";
};
func int PC_SmithWeapon_1hMagicSwords_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 2)
	{
		return true;
	};
};
func void PC_SmithWeapon_1hMagicSwords_Info()
{
	Info_ClearChoices(PC_SmithWeapon_1hMagicSwords);
	
	Info_AddChoice (PC_SmithWeapon_1hMagicSwords, DIALOG_BACK, PC_ItMw_1hMagic_BACK);
	if (PLAYER_TALENT_SMITH[SMITH_1H_Special_05])
	{
		Info_AddChoice (PC_SmithWeapon_1hMagicSwords, "Potê¿ne ostrze magiczne (magiczne ostrze na smoki, Oko Innosa)", PC_ItMw_1H_Special_05);
	};
	if (PLAYER_TALENT_SMITH[SMITH_1H_Special_04])
	{
		Info_AddChoice (PC_SmithWeapon_1hMagicSwords, "Magiczne ostrze na smoki (2 bry³ki ¿elaza, 5 bry³ek niebieskiej rudy, 8 fiolek smoczej krwi)", PC_ItMw_1H_Special_04);
	};
	if (PLAYER_TALENT_SMITH[SMITH_1H_Special_03])
	{
		Info_AddChoice (PC_SmithWeapon_1hMagicSwords, "Magiczne ostrze bojowe (2 bry³ki ¿elaza, 4 bry³ki niebieskiej rudy)", PC_ItMw_1H_Special_03);
	};
	if (PLAYER_TALENT_SMITH[SMITH_1H_Special_02])
	{
		Info_AddChoice (PC_SmithWeapon_1hMagicSwords, "Magiczny miecz pó³torarêczny (2 bry³ki ¿elaza, 3 bry³ki niebieskiej rudy)", PC_ItMw_1H_Special_02);
	};
	if (PLAYER_TALENT_SMITH[SMITH_1H_Special_01])
	{
		Info_AddChoice (PC_SmithWeapon_1hMagicSwords, "D³ugi miecz magiczny (2 bry³ki ¿elaza, 2 bry³ki niebieskiej rudy)", PC_ItMw_1H_Special_01);
	};
};
///******************************************************************************************
func void PC_ItMw_1hMagic_BACK()
{
	Info_ClearChoices(PC_SmithWeapon_1hMagicSwords);
};
func void PC_ItMw_1H_Special_01()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 2)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 2)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 2);
		Npc_RemoveInvItems (hero, ItMi_Nugget, 2);
		
		CreateInvItem (hero, ItMw_1H_Special_01);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_1H_Special_02()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 2)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 3)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 2);
		Npc_RemoveInvItems (hero, ItMi_Nugget, 3);
		
		CreateInvItem (hero, ItMw_1H_Special_02);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_1H_Special_03()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 2)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 4)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 2);
		Npc_RemoveInvItems (hero, ItMi_Nugget, 4);
		
		CreateInvItem (hero, ItMw_1H_Special_03);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_1H_Special_04()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 2)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 5)
	&& (Npc_HasItems(hero, ItAt_DragonBlood) >= 5)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 2);
		Npc_RemoveInvItems (hero, ItMi_Nugget, 5);
		Npc_RemoveInvItems (hero, ItAt_DragonBlood, 5);
		
		CreateInvItem (hero, ItMw_1H_Special_04);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_1H_Special_05()
{
	if (Npc_HasItems(hero, ItMw_1H_Special_04) >= 1)
	&& (Npc_HasItems(hero, ItAm_InnosEye) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMw_1H_Special_04);
		Npc_RemoveInvItem (hero, ItAm_InnosEye);
		
		CreateInvItem (hero, ItMw_1H_Special_05);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
instance PC_SmithWeapon_2hMagicSwords (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_SmithWeapon_2hMagicSwords_Condition;
	information							=	PC_SmithWeapon_2hMagicSwords_Info;
	permanent							=	true;
	description							=	"Magiczne miecze dwurêczne";
};
func int PC_SmithWeapon_2hMagicSwords_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 2)
	{
		return true;
	};
};
func void PC_SmithWeapon_2hMagicSwords_Info()
{
	Info_ClearChoices(PC_SmithWeapon_2hMagicSwords);
	
	Info_AddChoice (PC_SmithWeapon_2hMagicSwords, DIALOG_BACK, PC_ItMw_2hMagic_BACK);
	if (PLAYER_TALENT_SMITH[SMITH_2H_Special_05])
	{
		Info_AddChoice (PC_SmithWeapon_2hMagicSwords, "Du¿e potê¿ne ostrze magiczne (du¿e magiczne ostrze na smoki, Oko Innosa)", PC_ItMw_2H_Special_05);
	};
	if (PLAYER_TALENT_SMITH[SMITH_2H_Special_04])
	{
		Info_AddChoice (PC_SmithWeapon_2hMagicSwords, "Du¿e magiczne ostrze na smoki (3 bry³ki ¿elaza, 5 bry³ek niebieskiej rudy, 8 fiolek smoczej krwi)", PC_ItMw_2H_Special_04);
	};
	if (PLAYER_TALENT_SMITH[SMITH_2H_Special_03])
	{
		Info_AddChoice (PC_SmithWeapon_2hMagicSwords, "Ciê¿kie magiczne ostrze bojowe (3 bry³ki ¿elaza, 4 bry³ki niebieskiej rudy)", PC_ItMw_2H_Special_03);
	};
	if (PLAYER_TALENT_SMITH[SMITH_2H_Special_02])
	{
		Info_AddChoice (PC_SmithWeapon_2hMagicSwords, "Ciê¿ki magiczny miecz dwurêczny (3 bry³ki ¿elaza, 3 bry³ki niebieskiej rudy)", PC_ItMw_2H_Special_02);
	};
	if (PLAYER_TALENT_SMITH[SMITH_2H_Special_01])
	{
		Info_AddChoice (PC_SmithWeapon_2hMagicSwords, "Magiczny miecz dwurêczny (3 bry³ki ¿elaza, 2 bry³ki niebieskiej rudy)", PC_ItMw_2H_Special_01);
	};
};
///******************************************************************************************
func void PC_ItMw_2hMagic_BACK()
{
	Info_ClearChoices(PC_SmithWeapon_2hMagicSwords);
};
func void PC_ItMw_2H_Special_01()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 3)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 2)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 3);
		Npc_RemoveInvItems (hero, ItMi_Nugget, 2);
		
		CreateInvItem (hero, ItMw_2H_Special_01);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_2H_Special_02()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 3)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 3)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 3);
		Npc_RemoveInvItems (hero, ItMi_Nugget, 3);
		
		CreateInvItem (hero, ItMw_2H_Special_02);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_2H_Special_03()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 3)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 4)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 3);
		Npc_RemoveInvItems (hero, ItMi_Nugget, 4);
		
		CreateInvItem (hero, ItMw_2H_Special_03);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_2H_Special_04()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 3)
	&& (Npc_HasItems(hero, ItMi_Nugget) >= 5)
	&& (Npc_HasItems(hero, ItAt_DragonBlood) >= 5)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 3);
		Npc_RemoveInvItems (hero, ItMi_Nugget, 5);
		Npc_RemoveInvItems (hero, ItAt_DragonBlood, 5);
		
		CreateInvItem (hero, ItMw_2H_Special_04);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_2H_Special_05()
{
	if (Npc_HasItems(hero, ItMw_2H_Special_04) >= 1)
	&& (Npc_HasItems(hero, ItAm_InnosEye) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMw_2H_Special_04);
		Npc_RemoveInvItem (hero, ItAm_InnosEye);
		
		CreateInvItem (hero, ItMw_2H_Special_05);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
instance PC_SmithWeapon_1hFireSwords (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_SmithWeapon_1hFireSwords_Condition;
	information							=	PC_SmithWeapon_1hFireSwords_Info;
	permanent							=	true;
	description							=	"Podpalaj¹ce miecze jednorêczne";
};
func int PC_SmithWeapon_1hFireSwords_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 2)
	{
		return true;
	};
};
func void PC_SmithWeapon_1hFireSwords_Info()
{
	Info_ClearChoices(PC_SmithWeapon_1hFireSwords);
	
	Info_AddChoice (PC_SmithWeapon_1hFireSwords, DIALOG_BACK, PC_ItMw_1hFire_BACK);
	if (PLAYER_TALENT_SMITH[SMITH_1H_Ignite_05])
	{
		Info_AddChoice (PC_SmithWeapon_1hFireSwords, "Potê¿ne ostrze podpalaj¹ce (podpalaj¹ce smocze ostrze, Oko Innosa)", PC_ItMw_1H_Ignite_05);
	};
	if (PLAYER_TALENT_SMITH[SMITH_1H_Ignite_04])
	{
		Info_AddChoice (PC_SmithWeapon_1hFireSwords, "Podpalaj¹ce smocze ostrze (2 bry³ki ¿elaza, 5 bry³ek czerwonej rudy, 8 fiolek smoczej krwi)", PC_ItMw_1H_Ignite_04);
	};
	if (PLAYER_TALENT_SMITH[SMITH_1H_Ignite_03])
	{
		Info_AddChoice (PC_SmithWeapon_1hFireSwords, "Podpalaj¹ce ostrze bojowe (2 bry³ki ¿elaza, 4 bry³ki czerwonej rudy)", PC_ItMw_1H_Ignite_03);
	};
	if (PLAYER_TALENT_SMITH[SMITH_1H_Ignite_02])
	{
		Info_AddChoice (PC_SmithWeapon_1hFireSwords, "Podpalaj¹cy miecz pó³torarêczny (2 bry³ki ¿elaza, 3 bry³ki czerwonej rudy)", PC_ItMw_1H_Ignite_02);
	};
	if (PLAYER_TALENT_SMITH[SMITH_1H_Ignite_01])
	{
		Info_AddChoice (PC_SmithWeapon_1hFireSwords, "D³ugi miecz podpalaj¹cy (2 bry³ki ¿elaza, 2 bry³ki czerwonej rudy)", PC_ItMw_1H_Ignite_01);
	};
};
///******************************************************************************************
func void PC_ItMw_1hFire_BACK()
{
	Info_ClearChoices(PC_SmithWeapon_1hFireSwords);
};
func void PC_ItMw_1H_Ignite_01()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 2)
	&& (Npc_HasItems(hero, ItMi_RedNugget) >= 2)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 2);
		Npc_RemoveInvItems (hero, ItMi_RedNugget, 2);
		
		CreateInvItem (hero, ItMw_1H_Ignite_01);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_1H_Ignite_02()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 2)
	&& (Npc_HasItems(hero, ItMi_RedNugget) >= 3)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 2);
		Npc_RemoveInvItems (hero, ItMi_RedNugget, 3);
		
		CreateInvItem (hero, ItMw_1H_Ignite_02);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_1H_Ignite_03()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 2)
	&& (Npc_HasItems(hero, ItMi_RedNugget) >= 4)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 2);
		Npc_RemoveInvItems (hero, ItMi_RedNugget, 4);
		
		CreateInvItem (hero, ItMw_1H_Ignite_03);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_1H_Ignite_04()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 2)
	&& (Npc_HasItems(hero, ItMi_RedNugget) >= 5)
	&& (Npc_HasItems(hero, ItAt_DragonBlood) >= 5)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 2);
		Npc_RemoveInvItems (hero, ItMi_RedNugget, 5);
		Npc_RemoveInvItems (hero, ItAt_DragonBlood, 5);
		
		CreateInvItem (hero, ItMw_1H_Ignite_04);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_1H_Ignite_05()
{
	if (Npc_HasItems(hero, ItMw_1H_Ignite_04) >= 1)
	&& (Npc_HasItems(hero, ItAm_InnosEye) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMw_1H_Ignite_04);
		Npc_RemoveInvItem (hero, ItAm_InnosEye);
		
		CreateInvItem (hero, ItMw_1H_Ignite_05);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
///******************************************************************************************
instance PC_SmithWeapon_2hFireSwords (C_Info)
{
	npc									=	PC_Hero;
	nr									=	6;
	condition							=	PC_SmithWeapon_2hFireSwords_Condition;
	information							=	PC_SmithWeapon_2hFireSwords_Info;
	permanent							=	true;
	description							=	"Podpalaj¹ce miecze dwurêczne";
};
func int PC_SmithWeapon_2hFireSwords_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 2)
	{
		return true;
	};
};
func void PC_SmithWeapon_2hFireSwords_Info()
{
	Info_ClearChoices(PC_SmithWeapon_2hFireSwords);
	
	Info_AddChoice (PC_SmithWeapon_2hFireSwords, DIALOG_BACK, PC_ItMw_2hFire_BACK);
	if (PLAYER_TALENT_SMITH[SMITH_2H_Ignite_05])
	{
		Info_AddChoice (PC_SmithWeapon_2hFireSwords, "Du¿e potê¿ne ostrze podpalaj¹ce (du¿e podpalaj¹ce smocze ostrze, Oko Innosa)", PC_ItMw_2H_Ignite_05);
	};
	if (PLAYER_TALENT_SMITH[SMITH_2H_Ignite_04])
	{
		Info_AddChoice (PC_SmithWeapon_2hFireSwords, "Du¿e podpalaj¹ce smocze ostrze (3 bry³ki ¿elaza, 5 bry³ek czerwonej rudy, 8 fiolek smoczej krwi)", PC_ItMw_2H_Ignite_04);
	};
	if (PLAYER_TALENT_SMITH[SMITH_2H_Ignite_03])
	{
		Info_AddChoice (PC_SmithWeapon_2hFireSwords, "Ciê¿kie podpalaj¹ce ostrze bojowe (3 bry³ki ¿elaza, 4 bry³ki czerwonej rudy)", PC_ItMw_2H_Ignite_03);
	};
	if (PLAYER_TALENT_SMITH[SMITH_2H_Ignite_02])
	{
		Info_AddChoice (PC_SmithWeapon_2hFireSwords, "Ciê¿ki podpalaj¹cy miecz dwurêczny (3 bry³ki ¿elaza, 3 bry³ki czerwonej rudy)", PC_ItMw_2H_Ignite_02);
	};
	if (PLAYER_TALENT_SMITH[SMITH_2H_Ignite_01])
	{
		Info_AddChoice (PC_SmithWeapon_2hFireSwords, "Podpalaj¹cy miecz dwurêczny (3 bry³ki ¿elaza, 2 bry³ki czerwonej rudy)", PC_ItMw_2H_Ignite_01);
	};
};
///******************************************************************************************
func void PC_ItMw_2hFire_BACK()
{
	Info_ClearChoices(PC_SmithWeapon_2hFireSwords);
};
func void PC_ItMw_2H_Ignite_01()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 3)
	&& (Npc_HasItems(hero, ItMi_RedNugget) >= 2)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 3);
		Npc_RemoveInvItems (hero, ItMi_RedNugget, 2);
		
		CreateInvItem (hero, ItMw_2H_Ignite_01);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_2H_Ignite_02()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 3)
	&& (Npc_HasItems(hero, ItMi_RedNugget) >= 3)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 3);
		Npc_RemoveInvItems (hero, ItMi_RedNugget, 3);
		
		CreateInvItem (hero, ItMw_2H_Ignite_02);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_2H_Ignite_03()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 3)
	&& (Npc_HasItems(hero, ItMi_RedNugget) >= 4)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 3);
		Npc_RemoveInvItems (hero, ItMi_RedNugget, 4);
		
		CreateInvItem (hero, ItMw_2H_Ignite_03);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_2H_Ignite_04()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 3)
	&& (Npc_HasItems(hero, ItMi_RedNugget) >= 5)
	&& (Npc_HasItems(hero, ItAt_DragonBlood) >= 5)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 3);
		Npc_RemoveInvItems (hero, ItMi_RedNugget, 5);
		Npc_RemoveInvItems (hero, ItAt_DragonBlood, 5);
		
		CreateInvItem (hero, ItMw_2H_Ignite_04);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
func void PC_ItMw_2H_Ignite_05()
{
	if (Npc_HasItems(hero, ItMw_2H_Ignite_04) >= 1)
	&& (Npc_HasItems(hero, ItAm_InnosEye) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMw_2H_Ignite_04);
		Npc_RemoveInvItem (hero, ItAm_InnosEye);
		
		CreateInvItem (hero, ItMw_2H_Ignite_05);
		Print(PRINT_SmithSuccess);
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
