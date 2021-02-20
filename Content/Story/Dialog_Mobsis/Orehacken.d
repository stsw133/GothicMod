//******************************************************************************************
INSTANCE PC_OreHacken_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_OreHacken_End_Condition;
	information							=	PC_OreHacken_End_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC INT PC_OreHacken_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_Orehacken)
	{
		return true;
	};
};

FUNC VOID PC_OreHacken_End_Info()
{
	B_ENDPRODUCTIONDIALOG();
};
