///******************************************************************************************
/// MOBSI_MAKEALCOHOL
///******************************************************************************************
func void MOBSI_MAKEALCOHOL_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_MAKEALCOHOL;
		AI_ProcessInfos(her);
	};
};
///******************************************************************************************
instance PC_MakeAlcohol_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_MakeAlcohol_End_Condition;
	information							=	B_ENDPRODUCTIONDIALOG;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int PC_MakeAlcohol_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEALCOHOL)
	{
		return true;
	};
};
///******************************************************************************************
instance PC_MakeAlcohol_Booze (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_MakeAlcohol_Booze_Condition;
	information							=	PC_MakeAlcohol_Booze_Info;
	permanent							=	true;
	description							=	"Gorza�a (2 alkojagody, woda)";
};
func int PC_MakeAlcohol_Booze_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_MAKEALCOHOL)
	&& (Npc_HasItems(hero, ItPl_Planeberry) >= 1)
	{
		return true;
	};
};
func void PC_MakeAlcohol_Booze_Info()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Planeberry) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);
		Npc_RemoveInvItems (hero, ItPl_Planeberry, 2);
		
		CreateInvItem (hero, ItFo_Booze);
		Print("Uwarzono gorza��.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
instance PC_MakeAlcohol_Tequila (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_MakeAlcohol_Tequila_Condition;
	information							=	PC_MakeAlcohol_Tequila_Info;
	permanent							=	true;
	description							=	"Tequila (2 kaktusy, woda)";
};
func int PC_MakeAlcohol_Tequila_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_MAKEALCOHOL)
	&& (Npc_HasItems(hero, ItPl_Cactus) >= 1)
	{
		return true;
	};
};
func void PC_MakeAlcohol_Tequila_Info()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Cactus) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);
		Npc_RemoveInvItems (hero, ItPl_Cactus, 2);
		
		CreateInvItem (hero, ItFo_Tequila);
		Print("Uwarzono tequil�.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
instance PC_MakeAlcohol_Wine (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_MakeAlcohol_Wine_Condition;
	information							=	PC_MakeAlcohol_Wine_Info;
	permanent							=	true;
	description							=	"Wino (2 dzikie jagody, woda)";
};
func int PC_MakeAlcohol_Wine_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION	== MOBSI_MAKEALCOHOL)
	&& (Npc_HasItems(hero, ItPl_Forestberry) >= 1)
	{
		return true;
	};
};
func void PC_MakeAlcohol_Wine_Info()
{
	if (Npc_HasItems(hero, ItFo_Water) >= 1)
	&& (Npc_HasItems(hero, ItPl_Forestberry) >= 2)
	{
		Npc_RemoveInvItem (hero, ItFo_Water);
		Npc_RemoveInvItems (hero, ItPl_Forestberry, 2);
		
		CreateInvItem (hero, ItFo_Wine);
		Print("Uwarzono wino.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
