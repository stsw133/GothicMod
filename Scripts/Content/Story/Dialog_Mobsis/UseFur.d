///******************************************************************************************
/// MOBSI_UseFur
///******************************************************************************************
func void MOBSI_UseFur_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_UseFur;
		Ai_ProcessInfos(her);
	};
};
///******************************************************************************************
func int PC_UseFur_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseFur)
	{
		return true;
	};
};
instance PC_UseFur_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_UseFur_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};
///******************************************************************************************
instance PC_UseFur_SheepFurScrolls (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_UseFur_SheepFurScrolls_Condition;
	information							=	PC_UseFur_SheepFurScrolls_Info;
	permanent							=	true;
	description							=	"Zrób 2 zestawy pergaminów (owcza skóra, wapno, woda)";
};
func int PC_UseFur_SheepFurScrolls_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseFur)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING))
	{
		return true;
	};
};
func void PC_UseFur_SheepFurScrolls_Info()
{
	if (Npc_HasItems(hero, ItAt_SheepFur) >= 1)
	&& (Npc_HasItems(hero, ItMi_Calcium) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_SheepFur);
		Npc_RemoveInvItem (hero, ItMi_Calcium);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItems (hero, ItMi_Scrolls, 2);
		Print("Zrobiono 2 zestawy pergaminów.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_UseFur_GoatFurScrolls (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_UseFur_GoatFurScrolls_Condition;
	information							=	PC_UseFur_GoatFurScrolls_Info;
	permanent							=	true;
	description							=	"Zrób 2 zestawy pergaminów (kozia skóra, wapno, woda)";
};
func int PC_UseFur_GoatFurScrolls_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseFur)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING))
	{
		return true;
	};
};
func void PC_UseFur_GoatFurScrolls_Info()
{
	if (Npc_HasItems(hero, ItAt_GoatFur) >= 1)
	&& (Npc_HasItems(hero, ItMi_Calcium) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_GoatFur);
		Npc_RemoveInvItem (hero, ItMi_Calcium);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItems (hero, ItMi_Scrolls, 2);
		Print("Zrobiono 2 zestawy pergaminów.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_UseFur_WolfFurScrolls (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_UseFur_WolfFurScrolls_Condition;
	information							=	PC_UseFur_WolfFurScrolls_Info;
	permanent							=	true;
	description							=	"Zrób 2 zestawy pergaminów (skóra wilka, wapno, woda)";
};
func int PC_UseFur_WolfFurScrolls_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseFur)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING))
	{
		return true;
	};
};
func void PC_UseFur_WolfFurScrolls_Info()
{
	if (Npc_HasItems(hero, ItAt_WolfFur) >= 1)
	&& (Npc_HasItems(hero, ItMi_Calcium) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_WolfFur);
		Npc_RemoveInvItem (hero, ItMi_Calcium);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItems (hero, ItMi_Scrolls, 2);
		Print("Zrobiono 2 zestawy pergaminów.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_UseFur_KeilerFurScrolls (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_UseFur_KeilerFurScrolls_Condition;
	information							=	PC_UseFur_KeilerFurScrolls_Info;
	permanent							=	true;
	description							=	"Zrób 2 zestawy pergaminów (skóra dzika, wapno, woda)";
};
func int PC_UseFur_KeilerFurScrolls_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseFur)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING))
	{
		return true;
	};
};
func void PC_UseFur_KeilerFurScrolls_Info()
{
	if (Npc_HasItems(hero, ItAt_KeilerFur) >= 1)
	&& (Npc_HasItems(hero, ItMi_Calcium) >= 1)
	&& (Npc_HasItems(hero, ItFo_Water) >= 1)
	{
		Npc_RemoveInvItem (hero, ItAt_KeilerFur);
		Npc_RemoveInvItem (hero, ItMi_Calcium);
		Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
		
		CreateInvItems (hero, ItMi_Scrolls, 2);
		Print("Zrobiono 2 zestawy pergaminów.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
