///******************************************************************************************
/// MOBSI_UseWood
///******************************************************************************************
func void MOBSI_UseWood_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_UseWood;
		Ai_ProcessInfos(her);
	};
};
///******************************************************************************************
func int PC_UseWood_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseWood)
	{
		return true;
	};
};
instance PC_UseWood_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_UseWood_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};
///******************************************************************************************
instance PC_UseWood_Arrows (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_UseWood_Arrows_Condition;
	information							=	PC_UseWood_Arrows_Info;
	permanent							=	true;
	description							=	"Zrób 10 strza³ (drewno, zêby)";
};
func int PC_UseWood_Arrows_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseWood)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) >= 1)
	{
		return true;
	};
};
func void PC_UseWood_Arrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItem (hero, ItAt_Teeth);
		
		CreateInvItems (hero, ItRw_Arrow, 10);
		Print("Zrobiono 10 strza³.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_UseWood_FireArrows (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_UseWood_Arrows_Condition;
	information							=	PC_UseWood_FireArrows_Info;
	permanent							=	true;
	description							=	"Zrób 10 ognistych strza³ (drewno, zêby, smo³a)";
};
func void PC_UseWood_FireArrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 1)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItem (hero, ItAt_Teeth);
		Npc_RemoveInvItem (hero, ItMi_Pitch);
		
		CreateInvItems (hero, ItRw_fArrow, 10);
		Print("Zrobiono 10 ognistych strza³.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_UseWood_PoisonedArrows (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_UseWood_Arrows_Condition;
	information							=	PC_UseWood_PoisonedArrows_Info;
	permanent							=	true;
	description							=	"Zrób 10 zatrutych strza³ (drewno, zêby, trucizna)";
};
func void PC_UseWood_PoisonedArrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 1)
	&& (Npc_HasItems(hero, ItPo_Poison) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItem (hero, ItAt_Teeth);
		Npc_RemoveInvItem (hero, ItPo_Poison);
		
		CreateInvItems (hero, ItRw_pArrow, 10);
		Print("Zrobiono 10 zatrutych strza³.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_UseWood_Scroll (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_UseWood_Scroll_Condition;
	information							=	PC_UseWood_Scroll_Info;
	permanent							=	true;
	description							=	"Zrób pergaminy (drewno)";
};
func int PC_UseWood_Scroll_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseWood)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING))
	{
		return true;
	};
};
func void PC_UseWood_Scroll_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		CreateInvItem (hero, ItMi_Scrolls);
		Print("Zrobiono pergaminy.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
///******************************************************************************************
instance PC_UseWood_Torch (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_UseWood_Condition;
	information							=	PC_UseWood_Torch_Info;
	permanent							=	true;
	description							=	"Zrób 5 pochodni (drewno, smo³a)";
};
func void PC_UseWood_Torch_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItem (hero, ItMi_Pitch);
		
		CreateInvItems (hero, ItLsTorch, 5);
		Print("Zrobiono 5 pochodni.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
//		B_EndProductionDialog();
	};
};
