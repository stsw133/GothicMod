///******************************************************************************************
/// MOBSI_OreHacken
///******************************************************************************************
func void OreHacken_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_OreHacken;
		Ai_ProcessInfos(self);
	};
}; 

func int PC_OreHacken_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Orehacken)
	{
		return true;
	};
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance PC_OreHacken_EXIT (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_OreHacken_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};
