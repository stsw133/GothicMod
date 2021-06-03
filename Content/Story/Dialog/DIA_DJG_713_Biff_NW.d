
//*********************************************************************
//	Info EXIT 
//*********************************************************************
INSTANCE DIA_Biff_NW_EXIT   (C_INFO)
{
	npc         = DJG_713_Biff_NW;
	nr          = 999;
	condition   = DIA_Biff_NW_EXIT_Condition;
	information = DIA_Biff_NW_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Biff_NW_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Biff_NW_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info HAfen
///////////////////////////////////////////////////////////////////////
instance DIA_Biff_NW_HAfen		(C_INFO)
{
	npc		 = 	DJG_713_Biff_NW;
	nr		 = 	5;
	condition	 = 	DIA_Biff_NW_HAfen_Condition;
	information	 = 	DIA_Biff_NW_HAfen_Info;
	permanent	 = 	TRUE;

	description	 = 	"Dobra. Ju¿ nied³ugo.";
};

func int DIA_Biff_NW_HAfen_Condition ()
{
	return TRUE;
};

func void DIA_Biff_NW_HAfen_Info ()
{
	AI_Output			(other, self, "DIA_Biff_NW_HAfen_15_00"); //Dobra. Ju¿ nied³ugo.
	AI_Output			(self, other, "DIA_Biff_NW_HAfen_07_01"); //Nie mogê siê ju¿ doczekaæ.
	
	if (MIS_ReadyforChapter6 == TRUE)
		{
			Npc_ExchangeRoutine (self,"SHIP"); 
		}
		else
		{
			Npc_ExchangeRoutine (self,"WAITFORSHIP"); 
		};
	AI_StopProcessInfos (self);
};
