//******************************************************************************************
//	Info EXIT
//******************************************************************************************
INSTANCE DIA_Draal_EXIT (C_INFO)
{
	npc									=	STRF_1101_Draal;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Draal_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Draal_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Info DRAGON
//******************************************************************************************
instance DIA_Draal_DRAGON (C_INFO)
{
	npc									= 	STRF_1101_Draal;
	nr									= 	1;
	condition							= 	DIA_Draal_DRAGON_Condition;
	information							= 	DIA_Draal_DRAGON_Info;
	permanent							= 	true;
	important							= 	true;
};

func int DIA_Draal_DRAGON_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return true;
	};
};

func void DIA_Draal_DRAGON_Info()
{
	AI_Output (self, other, "DIA_Draal_DRAGON_03_00"); //By³em na zewn¹trz, kiedy smok zaatakowa³.
	AI_Output (self, other, "DIA_Draal_DRAGON_03_01"); //Widzia³em go - by³ wielki niczym dziesiêciu ros³ych mê¿czyzn! Jego ognisty oddech w mgnieniu oka spopieli³ chaty!
	AI_Output (self, other, "DIA_Draal_DRAGON_03_02"); //Smok! Za ¿adne skarby siê st¹d nie ruszê! Nie jestem szaleñcem!
};
