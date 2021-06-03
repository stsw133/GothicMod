///******************************************************************************************
instance PC_OreHacken_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_OreHacken_End_Condition;
	information							=	PC_OreHacken_End_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
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
