///******************************************************************************************
/// MOBSI_SHARPWEAPON
///******************************************************************************************
func void MOBSI_SHARPWEAPON_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_SharpWeapon;
		Ai_ProcessInfos(self);
	};
}; 

func int PC_SharpWeapon_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SharpWeapon)
	{
		return true;
	};
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance PC_SharpWeapon_EXIT (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_SharpWeapon_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};
