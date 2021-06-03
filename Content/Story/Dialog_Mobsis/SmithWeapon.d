///******************************************************************************************
///	MOBSI_SMITHWEAPON
///******************************************************************************************
func void SMITHWEAPON_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = true;
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
	description							=	DIALOG_ENDE;
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
instance PC_SmithWeapon_1hSwords (C_INFO)
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
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 40)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 2)
	{
		Info_AddChoice (PC_SmithWeapon_1hSwords, "El Bastardo (6 bry³ek ¿elaza)", PC_ItMw_ElBastardo);
	};
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 30)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 2)
	{
		Info_AddChoice (PC_SmithWeapon_1hSwords, "Rubinowe Ostrze (5 bry³ki ¿elaza)", PC_ItMw_Rubinklinge);
	};
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 20)
	{
		Info_AddChoice (PC_SmithWeapon_1hSwords, "Dobry d³ugi miecz (4 bry³ki ¿elaza)", PC_ItMw_Schwert4);
	};
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 10)
	{
		Info_AddChoice (PC_SmithWeapon_1hSwords, "Dobry miecz (3 bry³ki ¿elaza)", PC_ItMw_Schwert1);
	};
	Info_AddChoice (PC_SmithWeapon_1hSwords, "Miecz (2 bry³ki ¿elaza)", PC_ItMw_1H_Common);
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
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 20)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 30)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
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
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 30)
		{
			Print(ConcatStrings(PRINT_SmithSuccess," (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 40)
		{
			Print(ConcatStrings(PRINT_SmithSuccess," (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
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
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 40)
		{
			Print(ConcatStrings(PRINT_SmithSuccess," (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 50)
		{
			Print(ConcatStrings(PRINT_SmithSuccess," (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
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
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 5)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 5);
		CreateInvItem (hero, ItMw_Rubinklinge);
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 50)
		{
			Print(ConcatStrings(PRINT_SmithSuccess," (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 60)
		{
			Print(ConcatStrings(PRINT_SmithSuccess," (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
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
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 6)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 6);
		CreateInvItem (hero, ItMw_ElBastardo);
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 60)
		{
			Print(ConcatStrings(PRINT_SmithSuccess," (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 70)
		{
			Print(ConcatStrings(PRINT_SmithSuccess," (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};

///******************************************************************************************
instance PC_SmithWeapon_2hSwords (C_INFO)
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
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 45)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 2)
	{
		Info_AddChoice (PC_SmithWeapon_2hSwords, "Ciê¿ki miecz dwurêczny (7 bry³ek ¿elaza)", PC_ItMw_Zweihaender4);
	};
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 30)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 2)
	{
		Info_AddChoice (PC_SmithWeapon_2hSwords, "Runa mocy (6 bry³ek ¿elaza)", PC_ItMw_Zweihaender3);
	};
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 25)
	{
		Info_AddChoice (PC_SmithWeapon_2hSwords, "Miecz dwurêczny (5 bry³ek ¿elaza)", PC_ItMw_Zweihaender2);
	};
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 10)
	{
		Info_AddChoice (PC_SmithWeapon_2hSwords, "Lekki topór bojowy (3 bry³ki ¿elaza, 2 k³y)", PC_ItMw_Streitaxt1);
	};
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 5)
	{
		Info_AddChoice (PC_SmithWeapon_2hSwords, "Lekki miecz dwurêczny (4 bry³ki ¿elaza)", PC_ItMw_Zweihaender1);
	};
};

///******************************************************************************************
func void PC_ItMw_2H_BACK()
{
	Info_ClearChoices(PC_SmithWeapon_2hSwords);
};

func void PC_ItMw_Streitaxt1()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 3)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 2)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 3);
		Npc_RemoveInvItems (hero, ItAt_Teeth, 2);
		CreateInvItem (hero, ItMw_Streitaxt1);
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 25)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 35)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItMw_Zweihaender1()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 4)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 4);
		CreateInvItem (hero, ItMw_Zweihaender1);
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 30)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 40)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItMw_Zweihaender2()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 5)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 5);
		CreateInvItem (hero, ItMw_Zweihaender2);
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 45)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 55)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItMw_Zweihaender3()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 6)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 6);
		CreateInvItem (hero, ItMw_Zweihaender3);
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 50)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero,NPC_TALENT_SMITH) < 60)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};

func void PC_ItMw_Zweihaender4()
{
	if (Npc_HasItems(hero, ItMi_IronNugget) >= 7)
	{
		Npc_RemoveInvItems (hero, ItMi_IronNugget, 7);
		CreateInvItem (hero, ItMw_Zweihaender4);
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 65)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 75)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};

///******************************************************************************************
instance PC_SmithWeapon_1hMagicSwords (C_INFO)
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
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 75 && SmithWeapon_BestSwords)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 3)
	{
		Info_AddChoice (PC_SmithWeapon_1hMagicSwords, "Magiczne ostrze na smoki (2 bry³ki ¿elaza, 5 bry³ek niebieskiej rudy, 8 fiolek smoczej krwi)", PC_ItMw_1H_Special_04);
	};
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 50)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 3)
	{
		Info_AddChoice (PC_SmithWeapon_1hMagicSwords, "Magiczne ostrze bojowe (2 bry³ki ¿elaza, 4 bry³ki niebieskiej rudy)", PC_ItMw_1H_Special_03);
	};
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 25)
	{
		Info_AddChoice (PC_SmithWeapon_1hMagicSwords, "Magiczny miecz pó³torarêczny (2 bry³ki ¿elaza, 3 bry³ki niebieskiej rudy)", PC_ItMw_1H_Special_02);
	};
	Info_AddChoice (PC_SmithWeapon_1hMagicSwords, "D³ugi miecz magiczny (2 bry³ki ¿elaza, 2 bry³ki niebieskiej rudy)", PC_ItMw_1H_Special_01);
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
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 30)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +3%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 40)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
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
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 55)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 65)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
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
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 80)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +2%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 90)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
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
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 100)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo = 100%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, 100);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};

///******************************************************************************************
instance PC_SmithWeapon_2hMagicSwords (C_INFO)
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
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 75 && SmithWeapon_BestSwords)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 3)
	{
		Info_AddChoice (PC_SmithWeapon_2hMagicSwords, "Du¿e magiczne ostrze na smoki (3 bry³ki ¿elaza, 5 bry³ek niebieskiej rudy, 8 fiolek smoczej krwi)", PC_ItMw_2H_Special_04);
	};
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 50)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >= 3)
	{
		Info_AddChoice (PC_SmithWeapon_2hMagicSwords, "Ciê¿kie magiczne ostrze bojowe (3 bry³ki ¿elaza, 4 bry³ki niebieskiej rudy)", PC_ItMw_2H_Special_03);
	};
	if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) >= 25)
	{
		Info_AddChoice (PC_SmithWeapon_2hMagicSwords, "Ciê¿ki magiczny miecz dwurêczny (3 bry³ki ¿elaza, 3 bry³ki niebieskiej rudy)", PC_ItMw_2H_Special_02);
	};
	Info_AddChoice (PC_SmithWeapon_2hMagicSwords, "Magiczny miecz dwurêczny (3 bry³ki ¿elaza, 2 bry³ki niebieskiej rudy)", PC_ItMw_2H_Special_01);
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
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 30)
		{
			Print(ConcatStrings(PRINT_SmithSuccess," (kowalstwo +3%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 40)
		{
			Print(ConcatStrings(PRINT_SmithSuccess," (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
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
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 55)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +3%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero,NPC_TALENT_SMITH) < 65)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
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
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 80)
		{
			Print(ConcatStrings(PRINT_SmithSuccess," (kowalstwo +3%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+2);
		}
		else if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 90)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo +1%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, Npc_GetTalentValue(hero, NPC_TALENT_SMITH)+1);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
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
		
		if (Npc_GetTalentValue(hero, NPC_TALENT_SMITH) < 100)
		{
			Print(ConcatStrings(PRINT_SmithSuccess, " (kowalstwo = 100%)"));
			Npc_SetTalentValue (hero, NPC_TALENT_SMITH, 100);
		}
		else
		{
			Print(PRINT_SmithSuccess);
		};
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		CreateInvItem (hero, ItMiSwordRaw);
	};
	B_ENDPRODUCTIONDIALOG();
};
