///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Vanja_EXIT   (C_INFO)
{
	npc         = VLK_491_Vanja;
	nr          = 999;
	condition   = DIA_Vanja_EXIT_Condition;
	information = DIA_Vanja_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Vanja_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Vanja_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info STANDARD
///////////////////////////////////////////////////////////////////////
instance DIA_Vanja_STANDARD		(C_INFO)
{
	npc			 = 	VLK_491_Vanja;
	condition	 = 	DIA_Vanja_STANDARD_Condition;
	information	 = 	DIA_Vanja_STANDARD_Info;
	important	 = 	TRUE;
	permanent	 = 	TRUE;
};

func int DIA_Vanja_STANDARD_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	&&(MIS_Andre_REDLIGHT != LOG_RUNNING)
	{
		return TRUE;
	};
};
func void DIA_Vanja_STANDARD_Info ()
{
	AI_Output			(self, other, "DIA_Vanja_STANDARD_17_00"); //Jestem zajêta.
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info DOPE
///////////////////////////////////////////////////////////////////////
instance DIA_Vanja_DOPE		(C_INFO)
{
	npc			 = 	VLK_491_Vanja;
	nr			 = 	3;
	condition	 = 	DIA_Vanja_DOPE_Condition;
	information	 = 	DIA_Vanja_DOPE_Info;
	permanent	 =  FALSE;
	description	 = 	"Nie wiesz, gdzie mogê znaleŸæ trochê ziela?";
};

func int DIA_Vanja_DOPE_Condition ()
{	
	if (MIS_Andre_REDLIGHT == LOG_RUNNING)
	&& (Knows_Borka_Dealer == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Vanja_DOPE_Info ()
{
	AI_Output (other, self, "DIA_Vanja_DOPE_15_00"); //Nie wiesz, gdzie mogê znaleŸæ trochê ziela?
	AI_Output (self, other, "DIA_Vanja_DOPE_17_01"); //Nie mam pojêcia. Trzymaj siê lepiej od tego z dala.
	AI_Output (self, other, "DIA_Vanja_DOPE_17_02"); //Jeœli tego nie zrobisz, gorzko po¿a³ujesz...
};


 





