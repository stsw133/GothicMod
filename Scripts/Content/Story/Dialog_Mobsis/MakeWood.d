///******************************************************************************************
/// MOBSI_MakeWood
///******************************************************************************************
func void MOBSI_MakeWood_S1()
{
	var C_Npc her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION	= MOBSI_MakeWood;
		AI_ProcessInfos(her);
	};
};
///******************************************************************************************
func int PC_MakeWood_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeWood)
	{
		return true;
	};
};
instance PC_MakeWood_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_MakeWood_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};
///******************************************************************************************
instance PC_MakeWood_SawWood (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_MakeWood_SawWood_Condition;
	information							=	PC_MakeWood_SawWood_Info;
	permanent							=	true;
	description							=	"Pi³uj drewno";
};
func int PC_MakeWood_SawWood_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MakeWood)
	{
		return true;
	};
};
func void PC_MakeWood_SawWood_Info()
{
	CreateInvItems (hero, ItMi_Wood, 2);
	Print("Spi³owano 2 sterty drewna.");
};
