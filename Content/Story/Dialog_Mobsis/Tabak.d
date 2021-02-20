//******************************************************************************************
//	MOBSI_TABAK
//******************************************************************************************
func void MOBSI_TABAK_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_TABAK;
		Ai_ProcessInfos(her);
	};
};

//******************************************************************************************
FUNC INT PC_Tabak_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_TABAK)
	{
		return true;
	};
};

INSTANCE PC_Tabak_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_Tabak_Condition;
	information							=	B_ENDPRODUCTIONDIALOG;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

//******************************************************************************************
INSTANCE PC_Tabak_Apple (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Tabak_Condition;
	information							=	PC_Tabak_Apple_Info;
	permanent							=	true;
	description							=	"Zr�b tyto� jab�kowy (tyto�, 2 jab�ka)";
};

FUNC VOID PC_Tabak_Apple_Info()
{
	if (Npc_HasItems(hero,ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero,ItFo_Apple) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItems (hero, ItFo_Apple, 2);
		
		CreateInvItem (hero, ItMi_AppleTabak);
		Print("Zrobiono tyto� jab�kowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};

//******************************************************************************************
INSTANCE PC_Tabak_Pear (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Tabak_Condition;
	information							=	PC_Tabak_Pear_Info;
	permanent							=	true;
	description							=	"Zr�b tyto� gruszkowy (tyto�, 2 gruszki)";
};

FUNC VOID PC_Tabak_Pear_Info()
{
	if (Npc_HasItems(hero,ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero,ItFo_Pear) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItems (hero, ItFo_Pear, 2);
		
		CreateInvItem (hero, ItMi_PearTabak);
		Print("Zrobiono tyto� gruszkowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};

//******************************************************************************************
INSTANCE PC_Tabak_Coconut (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_Tabak_Condition;
	information							=	PC_Tabak_Coconut_Info;
	permanent							=	true;
	description							=	"Zr�b tyto� kokosowy (tyto�, kokos)";
};

FUNC VOID PC_Tabak_Coconut_Info()
{
	if (Npc_HasItems(hero,ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero,ItFo_Coconut) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItFo_Coconut);
		
		CreateInvItem (hero, ItMi_CoconutTabak);
		Print("Zrobiono tyto� kokosowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};

//******************************************************************************************
INSTANCE PC_Tabak_Mushroom (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_Tabak_Condition;
	information							=	PC_Tabak_Mushroom_Info;
	permanent							=	true;
	description							=	"Zr�b tyto� grzybowy (tyto�, mu�owy grzyb)";
};

FUNC VOID PC_Tabak_Mushroom_Info()
{
	if (Npc_HasItems(hero,ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero,ItPl_Mushroom_01) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItPl_Mushroom_01);
		
		CreateInvItem (hero, ItMi_MushroomTabak);
		Print("Zrobiono tyto� grzybowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};

//******************************************************************************************
INSTANCE PC_Tabak_Honey (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_Tabak_Condition;
	information							=	PC_Tabak_Honey_Info;
	permanent							=	true;
	description							=	"Zr�b tyto� miodowy (tyto�, mi�d)";
};

FUNC VOID PC_Tabak_Honey_Info()
{
	if (Npc_HasItems(hero,ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero,ItFo_Honey) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItFo_Honey);
		
		CreateInvItem (hero, ItMi_HoneyTabak);
		Print("Zrobiono tyto� miodowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};

//******************************************************************************************
INSTANCE PC_Tabak_Chocolate (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	6;
	condition							=	PC_Tabak_Condition;
	information							=	PC_Tabak_Chocolate_Info;
	permanent							=	true;
	description							=	"Zr�b tyto� czekoladowy (tyto�, czekolada)";
};

FUNC VOID PC_Tabak_Chocolate_Info()
{
	if (Npc_HasItems(hero,ItMi_Tabak) >= 1)
	&& (Npc_HasItems(hero,ItFo_Chocolate) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Tabak);
		Npc_RemoveInvItem (hero, ItFo_Chocolate);
		
		CreateInvItem (hero, ItMi_ChocolateTabak);
		Print("Zrobiono tyto� czekoladowy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
