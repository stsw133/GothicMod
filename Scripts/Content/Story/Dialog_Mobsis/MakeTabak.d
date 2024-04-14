///******************************************************************************************
/// MOBSI_MakeTabak
///******************************************************************************************
func void MOBSI_MakeTabak_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_MakeTabak;
		Ai_ProcessInfos(her);
	};
};
///******************************************************************************************
func int PC_MakeTabak_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeTabak)
	{
		return true;
	};
};
instance PC_MakeTabak_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_MakeTabak_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};
///******************************************************************************************
instance PC_MakeTabak_Apple (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_MakeTabak_Condition;
	information							=	PC_MakeTabak_Apple_Info;
	permanent							=	true;
	description							=	"Zrób tytoñ owocowy (tytoñ, 2 jab³ka)";
};
func void PC_MakeTabak_Apple_Info()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItFo_Apple) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItems (hero, ItFo_Apple, 2);
		
		CreateInvItem (hero, ItMi_FruitTabak);
		Print("Zrobiono tytoñ owocowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_MakeTabak_Pear (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_MakeTabak_Condition;
	information							=	PC_MakeTabak_Pear_Info;
	permanent							=	true;
	description							=	"Zrób tytoñ owocowy (tytoñ, 2 gruszki)";
};
func void PC_MakeTabak_Pear_Info()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItFo_Pear) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItems (hero, ItFo_Pear, 2);
		
		CreateInvItem (hero, ItMi_FruitTabak);
		Print("Zrobiono tytoñ owocowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_MakeTabak_Coconut (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_MakeTabak_Condition;
	information							=	PC_MakeTabak_Coconut_Info;
	permanent							=	true;
	description							=	"Zrób tytoñ kokosowy (tytoñ, kokos)";
};
func void PC_MakeTabak_Coconut_Info()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItFo_Coconut) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItFo_Coconut);
		
		CreateInvItem (hero, ItMi_CoconutTabak);
		Print("Zrobiono tytoñ kokosowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_MakeTabak_Mushroom01 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_MakeTabak_Condition;
	information							=	PC_MakeTabak_Mushroom01_Info;
	permanent							=	true;
	description							=	"Zrób tytoñ grzybowy (tytoñ, mu³owy grzyb)";
};
func void PC_MakeTabak_Mushroom01_Info()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mushroom_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItPl_Mushroom_01);
		
		CreateInvItem (hero, ItMi_MushroomTabak);
		Print("Zrobiono tytoñ grzybowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_MakeTabak_Mushroom02 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_MakeTabak_Condition;
	information							=	PC_MakeTabak_Mushroom02_Info;
	permanent							=	true;
	description							=	"Zrób tytoñ grzybowy (tytoñ, piekielnik)";
};
func void PC_MakeTabak_Mushroom02_Info()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItPl_Mushroom_03) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItPl_Mushroom_03);
		
		CreateInvItem (hero, ItMi_MushroomTabak);
		Print("Zrobiono tytoñ grzybowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_MakeTabak_Honey (C_Info)
{
	npc									=	PC_Hero;
	nr									=	6;
	condition							=	PC_MakeTabak_Condition;
	information							=	PC_MakeTabak_Honey_Info;
	permanent							=	true;
	description							=	"Zrób tytoñ miodowy (tytoñ, miód)";
};
func void PC_MakeTabak_Honey_Info()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItFo_Honey) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItFo_Honey);
		
		CreateInvItem (hero, ItMi_HoneyTabak);
		Print("Zrobiono tytoñ miodowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_MakeTabak_Chocolate (C_Info)
{
	npc									=	PC_Hero;
	nr									=	7;
	condition							=	PC_MakeTabak_Condition;
	information							=	PC_MakeTabak_Chocolate_Info;
	permanent							=	true;
	description							=	"Zrób tytoñ czekoladowy (tytoñ, czekolada)";
};
func void PC_MakeTabak_Chocolate_Info()
{
	if (Npc_HasItems(hero, ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero, ItFo_Chocolate) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItFo_Chocolate);
		
		CreateInvItem (hero, ItMi_ChocolateTabak);
		Print("Zrobiono tytoñ czekoladowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
