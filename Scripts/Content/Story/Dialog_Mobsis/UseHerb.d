///******************************************************************************************
/// MOBSI_UseHerb
///******************************************************************************************
func void MOBSI_UseHerb_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_UseHerb;
		Ai_ProcessInfos(self);
	};
};

func int PC_UseHerb_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseHerb)
	{
		return true;
	};
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance PC_UseHerb_EXIT (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_UseHerb_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// Joint
///******************************************************************************************
instance PC_UseHerb_Joint (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_UseHerb_Condition;
	information							=	PC_UseHerb_Joint_Info;
	permanent							=	true;
	description							=	"Zwiñ bagienne ziele";
};
func void PC_UseHerb_Joint_Info()
{
	Info_ClearChoices	(PC_UseHerb_Joint);
	Info_AddChoice		(PC_UseHerb_Joint, DIALOG_BACK, PC_UseHerb_Joint_BACK);
	
	if (Green_Extrem)
	{
		Info_AddChoice (PC_UseHerb_Joint, "Zwiñ 'Zielonego Nowicjusza' (2x bagienne ziele, rdest polny)", PC_UseHerb_Joint_SleJoint);
	};
	Info_AddChoice (PC_UseHerb_Joint, "Zwiñ skrêta z bagiennego ziela (bagienne ziele)", PC_UseHerb_Joint_SwampJoint);
	Info_AddChoice (PC_UseHerb_Joint, "Zwiñ skrêta z pustynnego ziela (pustynne ziele)", PC_UseHerb_Joint_DesertJoint);
};

///******************************************************************************************
func void PC_UseHerb_Joint_BACK()
{
	Info_ClearChoices(PC_UseHerb_Joint);
};

func void PC_UseHerb_Joint_DesertJoint()
{
	if (Npc_HasItems(hero, ItPl_DesertHerb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_DesertHerb);
		
		CreateInvItem (hero, ItMi_DesertJoint);
		Print("Zwiniêto skrêta z pustynnego ziela!");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseHerb_Joint_SwampJoint()
{
	if (Npc_HasItems(hero, ItPl_SwampHerb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_SwampHerb);
		
		CreateInvItem (hero, ItMi_Joint);
		Print("Zwiniêto skrêta z bagiennego ziela!");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseHerb_Joint_SleJoint()
{
	if (Npc_HasItems(hero, ItPl_SwampHerb) >= 2)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	{
		Npc_RemoveInvItems (hero, ItPl_SwampHerb, 2);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		
		CreateInvItem (hero, ItMi_SleJoint);
		Print("Zwiniêto 'Zielonego Nowicjusza'!");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

///******************************************************************************************
/// Tabak
///******************************************************************************************
instance PC_UseHerb_Tabak (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_UseHerb_Condition;
	information							=	PC_UseHerb_Tabak_Info;
	permanent							=	true;
	description							=	"Zwiñ tytoñ";
};
func void PC_UseHerb_Tabak_Info()
{
	Info_ClearChoices	(PC_UseHerb_Tabak);
	Info_AddChoice		(PC_UseHerb_Tabak, DIALOG_BACK, PC_UseHerb_Tabak_BACK);
	
	Info_AddChoice (PC_UseHerb_Tabak, "Stwórz tytoñ czekoladowy (czekolada, tytoñ)", PC_UseHerb_Tabak_Chocolate);
	Info_AddChoice (PC_UseHerb_Tabak, "Stwórz tytoñ miodowy (miód, tytoñ)", PC_UseHerb_Tabak_Honey);
	Info_AddChoice (PC_UseHerb_Tabak, "Stwórz tytoñ grzybowy (piekielnik, tytoñ)", PC_UseHerb_Tabak_Mushroom03);
	Info_AddChoice (PC_UseHerb_Tabak, "Stwórz tytoñ grzybowy (mu³owy grzyb, tytoñ)", PC_UseHerb_Tabak_Mushroom01);
	Info_AddChoice (PC_UseHerb_Tabak, "Stwórz tytoñ kokosowy (kokos, tytoñ)", PC_UseHerb_Tabak_Coconut);
	Info_AddChoice (PC_UseHerb_Tabak, "Stwórz tytoñ owocowy (2x gruszka, tytoñ)", PC_UseHerb_Tabak_Pear);
	Info_AddChoice (PC_UseHerb_Tabak, "Stwórz tytoñ owocowy (2x jab³ko, tytoñ)", PC_UseHerb_Tabak_Apple);
};

///******************************************************************************************
func void PC_UseHerb_Tabak_BACK()
{
	Info_ClearChoices(PC_UseHerb_Tabak);
};

func void PC_UseHerb_Tabak_Apple()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItFo_Apple) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItems (hero, ItFo_Apple, 2);
		
		CreateInvItem (hero, ItMi_FruitTabak);
		Print("Stworzono tytoñ owocowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseHerb_Tabak_Pear()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItFo_Pear) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItems (hero, ItFo_Pear, 2);
		
		CreateInvItem (hero, ItMi_FruitTabak);
		Print("Stworzono tytoñ owocowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseHerb_Tabak_Coconut()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItFo_Coconut) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItFo_Coconut);
		
		CreateInvItem (hero, ItMi_CoconutTabak);
		Print("Stworzono tytoñ kokosowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseHerb_Tabak_Mushroom01()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mushroom_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItPl_Mushroom_01);
		
		CreateInvItem (hero, ItMi_MushroomTabak);
		Print("Stworzono tytoñ grzybowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseHerb_Tabak_Mushroom03()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mushroom_03) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItPl_Mushroom_03);
		
		CreateInvItem (hero, ItMi_MushroomTabak);
		Print("Stworzono tytoñ grzybowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseHerb_Tabak_Honey()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItFo_Honey) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItFo_Honey);
		
		CreateInvItem (hero, ItMi_HoneyTabak);
		Print("Stworzono tytoñ miodowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};

func void PC_UseHerb_Tabak_Chocolate()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItFo_Chocolate) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItFo_Chocolate);
		
		CreateInvItem (hero, ItMi_HoneyTabak);
		Print("Stworzono tytoñ czekoladowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
	};
};
