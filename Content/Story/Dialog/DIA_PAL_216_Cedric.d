///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Cedric_EXIT   (C_INFO)
{
	npc         = PAL_216_Cedric;
	nr          = 999;
	condition   = DIA_Cedric_EXIT_Condition;
	information = DIA_Cedric_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Cedric_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Cedric_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Cedric_Hallo		(C_INFO)
{
	npc		 	 = 	PAL_216_Cedric;
	nr			 =  2;
	condition	 = 	DIA_Cedric_Hallo_Condition;
	information	 = 	DIA_Cedric_Hallo_Info;
	permanent    =  FALSE;
	important	 = 	TRUE;
};

func int DIA_Cedric_Hallo_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	{
		return TRUE;
	};
};
func void DIA_Cedric_Hallo_Info ()
{
	AI_Output (self, other, "DIA_Cedric_Hallo_12_00"); //Jestem Cedrik, mistrz miecza i kr�lewski paladyn.
};

///////////////////////////////////////////////////////////////////////
//	Can You Teach Me?
///////////////////////////////////////////////////////////////////////
instance DIA_Cedric_CanTeach		(C_INFO)
{
	npc			 = 	PAL_216_Cedric;
	nr			 = 	5;
	condition	 = 	DIA_Cedric_CanTeach_Condition;
	information	 = 	DIA_Cedric_CanTeach_Info;
	PERMANENT 	 =  TRUE;
	description	 = 	"Czy mo�esz mnie wyszkoli�?";
};
func int DIA_Cedric_CanTeach_Condition ()
{	
	if (self.aivar[AIV_CanTeach] == false)
	{
		return TRUE;
	};
};
func void DIA_Cedric_CanTeach_Info ()
{
	AI_Output (other, self, "DIA_Cedric_CanTeach_15_00"); //Czy mo�esz mnie wyszkoli�?
	
	if (other.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Cedric_CanTeach_12_01"); //Mog� ci� nauczy� walki broniami jednor�cznymi.
		self.aivar[AIV_CanTeach] = true;
		B_LogEntry (TOPIC_CityTeacher,"Paladyn Cedrik mo�e mnie nauczy� walki or�em jednor�cznym.");
	}
	else
	{
		AI_Output (self, other, "DIA_Cedric_CanTeach_12_02"); //Szkol� tylko paladyn�w.
	};
	
};
