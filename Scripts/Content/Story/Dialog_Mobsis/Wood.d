///******************************************************************************************
///	MOBSI_WOOD
///******************************************************************************************
func void MOBSI_WOOD_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_WOOD;
		Ai_ProcessInfos(her);
	};
};
///******************************************************************************************
func int PC_Wood_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_WOOD)
	{
		return true;
	};
};
instance PC_Wood_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_Wood_Condition;
	information							=	B_ENDPRODUCTIONDIALOG;
	permanent							=	true;
	description							=	DIALOG_END;
};
///******************************************************************************************
instance PC_Wood_Arrows (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Wood_Arrows_Condition;
	information							=	PC_Wood_Arrows_Info;
	permanent							=	true;
	description							=	"Zr�b 10 strza� (drewno, z�by)";
};
func int PC_Wood_Arrows_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_WOOD)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) >= 1)
	{
		return true;
	};
};
func void PC_Wood_Arrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItem (hero, ItAt_Teeth);
		
		CreateInvItems (hero, ItRw_Arrow, 10);
		Print("Zrobiono 10 strza�.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
instance PC_Wood_FireArrows (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Wood_Arrows_Condition;
	information							=	PC_Wood_FireArrows_Info;
	permanent							=	true;
	description							=	"Zr�b 10 ognistych strza� (drewno, z�by, smo�a)";
};
func void PC_Wood_FireArrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 1)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItem (hero, ItAt_Teeth);
		Npc_RemoveInvItem (hero, ItMi_Pitch);
		
		CreateInvItems (hero, ItRw_fArrow, 10);
		Print("Zrobiono 10 ognistych strza�.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
instance PC_Wood_PoisonedArrows (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_Wood_Arrows_Condition;
	information							=	PC_Wood_PoisonedArrows_Info;
	permanent							=	true;
	description							=	"Zr�b 10 zatrutych strza� (drewno, z�by, trucizna)";
};
func void PC_Wood_PoisonedArrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 1)
	&& (Npc_HasItems(hero, ItPo_Poison) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItem (hero, ItAt_Teeth);
		Npc_RemoveInvItem (hero, ItPo_Poison);
		
		CreateInvItems (hero, ItRw_pArrow, 10);
		Print("Zrobiono 10 zatrutych strza�.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
instance PC_Wood_Scroll (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_Wood_Scroll_Condition;
	information							=	PC_Wood_Scroll_Info;
	permanent							=	true;
	description							=	"Zr�b pergaminy (drewno)";
};
func int PC_Wood_Scroll_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_WOOD)
	&& (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING))
	{
		return true;
	};
};
func void PC_Wood_Scroll_Info()
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
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
instance PC_Wood_Torch (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_Wood_Condition;
	information							=	PC_Wood_Torch_Info;
	permanent							=	true;
	description							=	"Zr�b 5 pochodni (drewno, smo�a)";
};
func void PC_Wood_Torch_Info()
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
		B_ENDPRODUCTIONDIALOG();
	};
};
