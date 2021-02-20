///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Wolf_DI_EXIT   (C_INFO)
{
	npc         = SLD_811_Wolf_DI;
	nr          = 999;
	condition   = DIA_Wolf_DI_EXIT_Condition;
	information = DIA_Wolf_DI_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Wolf_DI_EXIT_Condition()
{
	return true;
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
	permanent	 = 	true;

	description	 = 	"Co s³ychaæ?";
};

func int DIA_Wolf_DI_HALLO_Condition ()
{
	if (Npc_IsDead(UndeadDragon) == false)
	{
		return true;
	};
};
var int DIA_Wolf_DI_HALLO_OneTime;
func void DIA_Wolf_DI_HALLO_Info ()
{
	AI_Output			(other, self, "DIA_Wolf_DI_HALLO_15_00"); //Co s³ychaæ?

	if ( Bennet_IsOnBoard == LOG_SUCCESS)
	&& (Npc_IsDead(Bennet_DI)	==	false)
		{
			AI_Output			(self, other, "DIA_Wolf_DI_HALLO_08_01"); //Cholera! Musia³eœ braæ ze sob¹ Benneta?
			AI_Output			(other, self, "DIA_Wolf_DI_HALLO_15_02"); //Jakiœ problem?
			AI_Output			(self, other, "DIA_Wolf_DI_HALLO_08_03"); //Ech... nie, ¿aden. Rób, co masz do zrobienia i wynoœmy siê st¹d, dobra?
		}
	else
		{
			if (DIA_Wolf_DI_HALLO_OneTime == false)
				{
					AI_Output			(self, other, "DIA_Wolf_DI_HALLO_08_04"); //KuŸnia nie jest w najlepszym stanie, ale zrobiê co w mojej mocy.
					B_GivePlayerXP(XP_Ambient);
					DIA_Wolf_DI_HALLO_OneTime = true;
					AI_StopProcessInfos (self);
					Npc_ExchangeRoutine	(self,"SmithDI");
				}
			else
				{
					AI_Output			(other, self, "DIA_Wolf_DI_HALLO_15_05"); //Móg³byœ sporz¹dziæ dla mnie now¹ zbrojê?
					AI_Output			(self, other, "DIA_Wolf_DI_HALLO_08_06"); //Przykro mi, ale nie z tymi narzêdziami. Musisz poczekaæ, a¿ wyl¹dujemy na kontynencie.
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
	permanent	 = 	false;
	description = "Naucz mnie czegoœ o walce na dystans.";
};                       
FUNC INT DIA_Wolf_DI_Training_Condition()
{
	if (Npc_IsDead(UndeadDragon) == false)
	{
		return true;
	};
};

FUNC VOID DIA_Wolf_DI_Training_Info()
{	
	AI_Output (other,self ,"DIA_Wolf_DI_Training_15_00"); //Naucz mnie czegoœ o walce na dystans.
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
	permanent	 = 	true;
	
	description = 	"Wszystko w porz¹dku?";
};

func int DIA_Wolf_DI_UndeadDragonDead_Condition ()
{	
	if (Npc_IsDead(UndeadDragon))
	{
		return true;
	};
};

var int DIA_Wolf_DI_UndeadDragonDead_OneTime;
func void DIA_Wolf_DI_UndeadDragonDead_Info ()
{
	AI_Output			(other ,self, "DIA_Wolf_DI_UndeadDragonDead_15_00"); //Wszystko w porz¹dku?
	AI_Output			(self ,other, "DIA_Wolf_DI_UndeadDragonDead_08_01"); //U mnie tak, a u ciebie? Nie by³o lekko, co?

	if (DIA_Wolf_DI_UndeadDragonDead_OneTime == false)
		{
			AI_Output			(other ,self, "DIA_Wolf_DI_UndeadDragonDead_15_02"); //Dok¹d zamierzasz siê teraz udaæ?
			AI_Output			(self ,other, "DIA_Wolf_DI_UndeadDragonDead_08_03"); //Gdziekolwiek, byle nie z powrotem. Mam ju¿ serdecznie doœæ Khorinis.
			AI_Output			(self ,other, "DIA_Wolf_DI_UndeadDragonDead_08_04"); //Nie obchodzi mnie, dok¹d pop³yniemy, byle jak najdalej st¹d.
			DIA_Wolf_DI_UndeadDragonDead_OneTime = true;
		};
	AI_StopProcessInfos (self);
};
