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
	AI_Output (self, other, "DIA_STRF_1107_FINGER_01_00"); //£apy precz od moich garnków! Nikt nie bêdzie ich rusza³.
	AI_Output (self, other, "DIA_STRF_1107_FINGER_01_01"); //Ja odpowiadam za jedzenie, a to oznacza, ¿e nikt inny nie ma tu wstêpu! Rozumiemy siê!
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
	description							=	"Kto wybra³ ciê na kucharza?";
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
	AI_Output (other, self, "DIA_STRF_1107_COOK_15_00"); //Kto wybra³ ciê na kucharza?
	AI_Output (self, other, "DIA_STRF_1107_COOK_01_01"); //Kapitan Garond. Nim zosta³em wiêŸniem, by³em kucharzem we 'Wœciek³ym Dziku'.
	AI_Output (other, self, "DIA_STRF_1107_COOK_15_02"); //Za co ciê zamknêli?
	AI_Output (self, other, "DIA_STRF_1107_COOK_01_03"); //Miêdzy mn¹, a pewnym goœciem dosz³o do ma³ej sprzeczki z u¿yciem tasaków.
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
	description							=	"Coœ nowego?";
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
	AI_Output (other, self, "DIA_STRF_1107_PERM_15_00"); //Coœ nowego?
	AI_Output (self, other, "DIA_STRF_1107_PERM_01_01"); //Jeœli chcesz poznaæ najnowsze wieœci, pogadaj z rycerzami. Ja tu jestem tylko kucharzem... Za kratkami.
};
