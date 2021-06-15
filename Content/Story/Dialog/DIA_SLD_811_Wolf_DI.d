///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Wolf_DI_EXIT   (C_INFO)
{
	npc         = SLD_811_Wolf_DI;
	nr          = 999;
	condition   = DIA_Wolf_DI_EXIT_Condition;
	information = DIA_Wolf_DI_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Wolf_DI_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Wolf_DI_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Wolf_DI_HALLO		(C_INFO)
{
	npc		 = 	SLD_811_Wolf_DI;
	nr		 = 	4;
	condition	 = 	DIA_Wolf_DI_HALLO_Condition;
	information	 = 	DIA_Wolf_DI_HALLO_Info;
	permanent	 = 	TRUE;

	description	 = 	"Co s�ycha�?";
};

func int DIA_Wolf_DI_HALLO_Condition ()
{
	if (Npc_IsDead(UndeadDragon) == FALSE)
	{
		return TRUE;
	};
};
var int DIA_Wolf_DI_HALLO_OneTime;
func void DIA_Wolf_DI_HALLO_Info ()
{
	AI_Output			(other, self, "DIA_Wolf_DI_HALLO_15_00"); //Co s�ycha�?

	if ( Bennet_IsOnBoard == LOG_SUCCESS)
	&& (Npc_IsDead(Bennet_DI)	==	FALSE)
		{
			AI_Output			(self, other, "DIA_Wolf_DI_HALLO_08_01"); //Cholera! Musia�e� bra� ze sob� Benneta?
			AI_Output			(other, self, "DIA_Wolf_DI_HALLO_15_02"); //Jaki� problem?
			AI_Output			(self, other, "DIA_Wolf_DI_HALLO_08_03"); //Ech... nie, �aden. R�b, co masz do zrobienia i wyno�my si� st�d, dobra?
		}
	else
		{
			if (DIA_Wolf_DI_HALLO_OneTime == FALSE)
				{
					AI_Output			(self, other, "DIA_Wolf_DI_HALLO_08_04"); //Ku�nia nie jest w najlepszym stanie, ale zrobi� co w mojej mocy.
					B_GivePlayerXP(300);
					DIA_Wolf_DI_HALLO_OneTime = TRUE;
					AI_StopProcessInfos (self);
					Npc_ExchangeRoutine	(self,"SmithDI");
				}
			else
				{
					AI_Output			(other, self, "DIA_Wolf_DI_HALLO_15_05"); //M�g�by� sporz�dzi� dla mnie now� zbroj�?
					AI_Output			(self, other, "DIA_Wolf_DI_HALLO_08_06"); //Przykro mi, ale nie z tymi narz�dziami. Musisz poczeka�, a� wyl�dujemy na kontynencie.
				};
		};
};

// ************************************************************
// 	  	  Training
// ************************************************************

INSTANCE DIA_Wolf_DI_Training (C_INFO)
{
	npc			= SLD_811_Wolf_DI;
	nr			= 10;
	condition	= DIA_Wolf_DI_Training_Condition;
	information	= DIA_Wolf_DI_Training_Info;
	permanent	 = 	FALSE;
	description = "Naucz mnie czego� o walce na dystans.";
};                       
FUNC INT DIA_Wolf_DI_Training_Condition()
{
	if (Npc_IsDead(UndeadDragon) == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Wolf_DI_Training_Info()
{	
	AI_Output (other,self ,"DIA_Wolf_DI_Training_15_00"); //Naucz mnie czego� o walce na dystans.
	AI_Output (self ,other,"DIA_Wolf_DI_Training_08_01"); //A czego konkretnie?
	self.aivar[AIV_CanTeach] = true;
	
};

///////////////////////////////////////////////////////////////////////
//	Info UndeadDragonDead
///////////////////////////////////////////////////////////////////////
instance DIA_Wolf_DI_UndeadDragonDead		(C_INFO)
{
	npc			 = 	SLD_811_Wolf_DI;
	nr			 = 	2;
	condition	 = 	DIA_Wolf_DI_UndeadDragonDead_Condition;
	information	 = 	DIA_Wolf_DI_UndeadDragonDead_Info;
	permanent	 = 	TRUE;
	
	description = 	"Wszystko w porz�dku?";
};

func int DIA_Wolf_DI_UndeadDragonDead_Condition ()
{	
	if (Npc_IsDead(UndeadDragon))
	{
		return TRUE;
	};
};

var int DIA_Wolf_DI_UndeadDragonDead_OneTime;
func void DIA_Wolf_DI_UndeadDragonDead_Info ()
{
	AI_Output			(other ,self, "DIA_Wolf_DI_UndeadDragonDead_15_00"); //Wszystko w porz�dku?
	AI_Output			(self ,other, "DIA_Wolf_DI_UndeadDragonDead_08_01"); //U mnie tak, a u ciebie? Nie by�o lekko, co?

	if (DIA_Wolf_DI_UndeadDragonDead_OneTime == FALSE)
		{
			AI_Output			(other ,self, "DIA_Wolf_DI_UndeadDragonDead_15_02"); //Dok�d zamierzasz si� teraz uda�?
			AI_Output			(self ,other, "DIA_Wolf_DI_UndeadDragonDead_08_03"); //Gdziekolwiek, byle nie z powrotem. Mam ju� serdecznie do�� Khorinis.
			AI_Output			(self ,other, "DIA_Wolf_DI_UndeadDragonDead_08_04"); //Nie obchodzi mnie, dok�d pop�yniemy, byle jak najdalej st�d.
			DIA_Wolf_DI_UndeadDragonDead_OneTime = TRUE;
		};
	AI_StopProcessInfos (self);
};
