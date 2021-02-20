//******************************************************************************************
INSTANCE PC_SharpWeapon_End (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_SharpWeapon_End_Condition;
	information							=	PC_SharpWeapon_End_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC INT PC_SharpWeapon_End_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SharpWeapon)
	{
		return true;
	};
};

FUNC VOID PC_SharpWeapon_End_Info()
{
	B_ENDPRODUCTIONDIALOG();
};
