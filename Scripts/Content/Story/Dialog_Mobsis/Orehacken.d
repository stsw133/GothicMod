///******************************************************************************************
/// MOBSI_SMITHWEAPON
///******************************************************************************************
func void OreHacken_S1()
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(her))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_OreHacken;
		Ai_ProcessInfos(her);
	};
}; 
///******************************************************************************************
instance PC_OreHacken_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_OreHacken_End_Condition;
	information							=	PC_OreHacken_End_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int PC_OreHacken_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Orehacken)
	{
		return true;
	};
};
func void PC_OreHacken_End_Info()
{
	B_ENDPRODUCTIONDIALOG();
};
