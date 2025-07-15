///******************************************************************************************
/// MOBSI_UseWoodaxe
///******************************************************************************************
func void MOBSI_UseWoodaxe_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_UseWoodaxe;
		AI_ProcessInfos(self);
	};
};

func int PC_UseWoodaxe_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_UseWoodaxe)
	{
		return true;
	};
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance PC_UseWoodaxe_EXIT (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_UseWoodaxe_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// Chop wood
///******************************************************************************************
instance PC_UseWoodaxe_ChopWood (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_UseWoodaxe_Condition;
	information							=	PC_UseWoodaxe_ChopWood_Info;
	permanent							=	true;
	description							=	"R¹b drewno";
};
func void PC_UseWoodaxe_ChopWood_Info()
{
	B_PlayerFindItem (ItMi_Wood, 2);
	B_PlayerFindItem (ItMw_1h_Bau_Mace, 1);
};
