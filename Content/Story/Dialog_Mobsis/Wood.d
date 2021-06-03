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
	description							=	DIALOG_ENDE;
};

///******************************************************************************************
instance PC_Wood_Arrows (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_Wood_Condition;
	information							=	PC_Wood_Arrows_Info;
	permanent							=	true;
	description							=	"Zrób 10 strza³ (drewno, 2 zêby)";
};

func void PC_Wood_Arrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Teeth, 2);
		
		CreateInvItems (hero, ItRw_Arrow, 10);
		Print("Zrobiono 10 strza³.");
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
	description							=	"Zrób 10 ognistych strza³ (drewno, 2 zêby, 2 siarki)";
};

func void PC_Wood_FireArrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 2)
	&& (Npc_HasItems(hero, ItMi_Sulfur) >= 2)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Teeth, 2);
		Npc_RemoveInvItems (hero, ItMi_Sulfur, 2);
		
		CreateInvItems (hero, ItRw_fArrow, 10);
		Print("Zrobiono 10 ognistych strza³.");
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
	description							=	"Zrób 10 zatrutych strza³ (drewno, 2 zêby, trucizna)";
};

func void PC_Wood_PoisonedArrows_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItAt_Teeth) >= 2)
	&& (Npc_HasItems(hero, ItPo_Poison) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItems (hero, ItAt_Teeth, 2);
		Npc_RemoveInvItem (hero, ItPo_Poison);
		
		CreateInvItems (hero, ItRw_pArrow, 10);
		Print("Zrobiono 10 zatrutych strza³.");
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
	description							=	"Zrób pochodniê (drewno, smo³a)";
};

func void PC_Wood_Torch_Info()
{
	if (Npc_HasItems(hero, ItMi_Wood) >= 1)
	&& (Npc_HasItems(hero, ItMi_Pitch) >= 1)
	{
		Npc_RemoveInvItem (hero, ItMi_Wood);
		Npc_RemoveInvItem (hero, ItMi_Pitch);
		
		CreateInvItems (hero, ItLsTorch, 1);
		Print("Zrobiono pochodniê.");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
