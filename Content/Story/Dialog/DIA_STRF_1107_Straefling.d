//******************************************************************************************
//	Info EXIT
//******************************************************************************************
INSTANCE DIA_STRF_1107_EXIT (C_INFO)
{
	npc									=	STRF_1107_Straefling;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_STRF_1107_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_STRF_1107_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Info FINGER
//******************************************************************************************
instance DIA_STRF_1107_FINGER (C_INFO)
{
	npc									= 	STRF_1107_Straefling;
	condition							= 	DIA_STRF_1107_FINGER_Condition;
	information							= 	DIA_STRF_1107_FINGER_Info;
	permanent							=	false;
	important							= 	true;
};

func int DIA_STRF_1107_FINGER_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	{
		return true;
	};
};

func void DIA_STRF_1107_FINGER_Info()
{
	AI_Output (self, other, "DIA_STRF_1107_FINGER_01_00"); //�apy precz od moich garnk�w! Nikt nie b�dzie ich rusza�.
	AI_Output (self, other, "DIA_STRF_1107_FINGER_01_01"); //Ja odpowiadam za jedzenie, a to oznacza, �e nikt inny nie ma tu wst�pu! Rozumiemy si�!
};

//******************************************************************************************
//	Info COOK
//******************************************************************************************
instance DIA_STRF_1107_COOK (C_INFO)
{
	npc									=	STRF_1107_Straefling;
	condition							=	DIA_STRF_1107_COOK_Condition;
	information							=	DIA_STRF_1107_COOK_Info;
	permanent							=	false;
	description							=	"Kto wybra� ci� na kucharza?";
};

func int DIA_STRF_1107_COOK_Condition()
{
	if (Npc_KnowsInfo(other,DIA_STRF_1107_FINGER))
	{
		return true;
	};
};

func void DIA_STRF_1107_COOK_Info ()
{
	AI_Output (other, self, "DIA_STRF_1107_COOK_15_00"); //Kto wybra� ci� na kucharza?
	AI_Output (self, other, "DIA_STRF_1107_COOK_01_01"); //Kapitan Garond. Nim zosta�em wi�niem, by�em kucharzem we 'W�ciek�ym Dziku'.
	AI_Output (other, self, "DIA_STRF_1107_COOK_15_02"); //Za co ci� zamkn�li?
	AI_Output (self, other, "DIA_STRF_1107_COOK_01_03"); //Mi�dzy mn�, a pewnym go�ciem dosz�o do ma�ej sprzeczki z u�yciem tasak�w.
};

//******************************************************************************************
//	Info PERM
//******************************************************************************************
instance DIA_STRF_1107_PERM (C_INFO)
{
	npc									=	STRF_1107_Straefling;
	nr									=	900;
	condition							=	DIA_STRF_1107_PERM_Condition;
	information							=	DIA_STRF_1107_PERM_Info;
	permanent							=	true;
	description							=	"Co� nowego?";
};

func int DIA_STRF_1107_PERM_Condition()
{
	if (Npc_KnowsInfo(other,DIA_STRF_1107_FINGER))
	{
		return true;
	};
};

func void DIA_STRF_1107_PERM_Info()
{
	AI_Output (other, self, "DIA_STRF_1107_PERM_15_00"); //Co� nowego?
	AI_Output (self, other, "DIA_STRF_1107_PERM_01_01"); //Je�li chcesz pozna� najnowsze wie�ci, pogadaj z rycerzami. Ja tu jestem tylko kucharzem... Za kratkami.
};
