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
instance PC_Wood_Arrows (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Wood_Condition;
	information							=	PC_Wood_Arrows_Info;
	permanent							=	true;
	description							=	"Zrób 50 strza³ (drewno, 10 zêbów)";
};
func void PC_Wood_Arrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 10)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Teeth, 10);
		
		CreateInvItems (hero, ItRw_Arrow, 50);
		Print("Zrobiono 50 strza³.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
instance PC_Wood_FireArrows (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_Wood_Condition;
	information							=	PC_Wood_FireArrows_Info;
	permanent							=	true;
	description							=	"Zrób 50 ognistych strza³ (drewno, 10 zêbów, smo³a)";
};
func void PC_Wood_FireArrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 10)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Teeth, 10);
		Npc_RemoveInvItems (hero, ItMi_Pitch, 1);
		
		CreateInvItems (hero, ItRw_fArrow, 50);
		Print("Zrobiono 50 ognistych strza³.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
instance PC_Wood_PoisonedArrows (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_Wood_Condition;
	information							=	PC_Wood_PoisonedArrows_Info;
	permanent							=	true;
	description							=	"Zrób 50 zatrutych strza³ (drewno, 10 zêbów, trucizna)";
};
func void PC_Wood_PoisonedArrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 10)
	&& (Npc_HasItems(hero, ItPo_Poison) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Teeth, 10);
		Npc_RemoveInvItem (hero, ItPo_Poison);
		
		CreateInvItems (hero, ItRw_pArrow, 50);
		Print("Zrobiono 50 zatrutych strza³.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
instance PC_Wood_Torch (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_Wood_Condition;
	information							=	PC_Wood_Torch_Info;
	permanent							=	true;
	description							=	"Zrób 5 pochodni (drewno, smo³a)";
};
func void PC_Wood_Torch_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItem (hero, ItMi_Pitch);
		
		CreateInvItems (hero, ItLsTorch, 1);
		Print("Zrobiono 5 pochodni.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
instance PC_Wood_Scroll (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_Wood_Condition;
	information							=	PC_Wood_Scroll_Info;
	permanent							=	true;
	description							=	"Zrób 20 pergaminów (drewno)";
};
func void PC_Wood_Scroll_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		
		CreateInvItems (hero, ItMi_Scroll, 20);
		Print("Zrobiono 20 pergaminów.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
