///******************************************************************************************
/// MOBSI_MAKEJOINT
///******************************************************************************************
func void MOBSI_MAKEJOINT_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_MAKEJOINT;
		Ai_ProcessInfos(her);
	};
};
///******************************************************************************************
func int PC_MakeJoint_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKEJOINT)
	{
		return true;
	};
};
instance PC_MakeJoint_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_MakeJoint_Condition;
	information							=	B_ENDPRODUCTIONDIALOG;
	permanent							=	true;
	description							=	DIALOG_END;
};
///******************************************************************************************
instance PC_MakeJoint_Joint (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_MakeJoint_Condition;
	information							=	PC_MakeJoint_Joint_Info;
	permanent							=	true;
	description							=	"Zrób skrêta (bagienne ziele)";
};
func void PC_MakeJoint_Joint_Info()
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
		B_ENDPRODUCTIONDIALOG();
	};
};
///******************************************************************************************
instance PC_MakeJoint_SleJoint (C_INFO)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_MakeJoint_Condition;
	information							=	PC_MakeJoint_SleJoint_Info;
	permanent							=	true;
	description							=	"Zrób Zielonego Nowicjusza (bagienne ziele, rdest polny)";
};
func void PC_MakeJoint_SleJoint_Info()
{
	if (Npc_HasItems(hero, ItPl_SwampHerb) >= 1)
	&& (Npc_HasItems(hero, ItPl_Temp_Herb) >= 1)
	{
		Npc_RemoveInvItem (hero, ItPl_SwampHerb);
		Npc_RemoveInvItem (hero, ItPl_Temp_Herb);
		
		CreateInvItem (hero, ItMi_SleJoint);
		Print("Zwiniêto Zielonego Nowicjusza!");
	}
	else
	{
		Print(PRINT_ProdItemsMissing);
		B_ENDPRODUCTIONDIALOG();
	};
};
