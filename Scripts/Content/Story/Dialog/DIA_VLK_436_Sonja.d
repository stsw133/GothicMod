///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Sonja_EXIT   (C_INFO)
{
	npc         = VLK_436_Sonja;
	nr          = 999;
	condition   = DIA_Sonja_EXIT_Condition;
	information = DIA_Sonja_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};

FUNC INT DIA_Sonja_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Sonja_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info STANDARD
///////////////////////////////////////////////////////////////////////
instance DIA_Sonja_STANDARD		(C_INFO)
{
	npc			 = 	VLK_436_Sonja;
	condition	 = 	DIA_Sonja_STANDARD_Condition;
	information	 = 	DIA_Sonja_STANDARD_Info;
	important	 = 	TRUE;
	permanent	 = 	TRUE;
};

func int DIA_Sonja_STANDARD_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk) 
	&& (MIS_Andre_REDLIGHT != LOG_RUNNING)
	{
		return TRUE;
	};
};
func void DIA_Sonja_STANDARD_Info ()
{
	if (self.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		AI_Output (self, other, "DIA_Sonja_STANDARD_16_00"); //Jeœli chcesz siê zabawiæ, pogadaj z Bromorem.
	}
	else if (other.guild == GIL_DJG)
	&& (Sonja_Says == FALSE)
	{
		AI_Output (self, other, "DIA_Sonja_STANDARD_16_01"); //Problem z wami panowie jest taki, ¿e miast uprawiaæ porz¹dny seks, wolicie wytaczaæ krew z orków.
		Sonja_Says = TRUE;
	}
	else
	{
		AI_Output (self, other, "DIA_Sonja_STANDARD_16_02"); //Jeœli szukasz mi³ych s³ówek, znajdŸ sobie babê i siê z ni¹ o¿eñ.
	};
	AI_StopProcessInfos (self);
};


 





