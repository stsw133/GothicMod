///******************************************************************************************
///	MOBSI_SMITHWEAPON
///******************************************************************************************
func void SharpWeapon_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_SharpWeapon;
		Ai_ProcessInfos(her);
	};
}; 
///******************************************************************************************
instance PC_SharpWeapon_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_SharpWeapon_End_Condition;
	information							=	PC_SharpWeapon_End_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int PC_SharpWeapon_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SharpWeapon)
	{
		return true;
	};
};
func void PC_SharpWeapon_End_Info()
{
	B_ENDPRODUCTIONDIALOG();
};
