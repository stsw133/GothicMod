
///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Myxir_CITY_EXIT   (C_INFO)
{
	npc         = KDW_140300_Addon_Myxir_CITY;
	nr          = 999;
	condition   = DIA_Addon_Myxir_CITY_EXIT_Condition;
	information = DIA_Addon_Myxir_CITY_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Addon_Myxir_CITY_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Addon_Myxir_CITY_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info HelloCITY
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Myxir_CITY_HelloCITY		(C_INFO)
{
	npc		 = 	KDW_140300_Addon_Myxir_CITY;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Myxir_CITY_HelloCITY_Condition;
	information	 = 	DIA_Addon_Myxir_CITY_HelloCITY_Info;
	permanent	 = 	TRUE;

	description	 = 	"Zostaniesz w mieœcie?";
};

func int DIA_Addon_Myxir_CITY_HelloCITY_Condition ()
{
	return TRUE;
};
var int DIA_Addon_Myxir_CITY_HelloCITY_OneTime;
func void DIA_Addon_Myxir_CITY_HelloCITY_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Myxir_CITY_HelloCITY_15_00"); //Zostaniesz w mieœcie?
	AI_Output	(self, other, "DIA_Addon_Myxir_CITY_HelloCITY_12_01"); //Jeden z nas musi TU zostaæ, jeœli Vatras opuœci miasto.
	
	VatrasAbloeseIstDa = TRUE;
	
	if (RavenIsDead == TRUE)
	&& (DIA_Addon_Myxir_CITY_HelloCITY_OneTime == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Myxir_CITY_HelloCITY_12_02"); //Chcê ci powiedzieæ jeszcze jedno.
		AI_Output	(self, other, "DIA_Addon_Myxir_CITY_HelloCITY_12_03"); //To, czego dokona³eœ w Jarkendarze, to by³ naprawdê bohaterski wyczyn.
		AI_Output	(other, self, "DIA_Addon_Myxir_CITY_HelloCITY_15_04"); //Niestety, nie skoñczy³em jeszcze moich zadañ w Khorinis.
		AI_Output	(self, other, "DIA_Addon_Myxir_CITY_HelloCITY_12_05"); //Jestem pewien, ¿e sobie poradzisz, Stra¿niku.
		AI_Output	(other, self, "DIA_Addon_Myxir_CITY_HelloCITY_15_06"); //Zobaczymy.
		DIA_Addon_Myxir_CITY_HelloCITY_OneTime = TRUE;
		B_GivePlayerXP(150);
	};	
};
///////////////////////////////////////////////////////////////////////
//	Info Teach
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Myxir_CITY_Teach		(C_INFO)
{
	npc		 = 	KDW_140300_Addon_Myxir_CITY;
	nr		 = 	90;
	condition	 = 	DIA_Addon_Myxir_CITY_Teach_Condition;
	information	 = 	DIA_Addon_Myxir_CITY_Teach_Info;
	permanent	 = 	TRUE;

	description	 = 	"Naucz mnie tego dziwnego jêzyka.";
};

var int DIA_Addon_Myxir_CITY_Teach_OneTime;

func int DIA_Addon_Myxir_CITY_Teach_Condition ()
{
	if (Myxir_Addon_TeachPlayer == TRUE)
	&& (Npc_GetTalentSkill(other, NPC_TALENT_LANGUAGE) == false)
		{
			return TRUE;
		};
};

func void DIA_Addon_Myxir_CITY_Teach_Info()
{
	AI_Output (other, self, "DIA_Addon_Myxir_TeachRequest_15_00"); //Naucz mnie tego dziwnego jêzyka.
	
	if (!DIA_Addon_Myxir_CITY_Teach_OneTime)
	{
		Log_CreateTopic	(TOPIC_Addon_KDWTeacher, LOG_NOTE);
		B_LogEntry (TOPIC_Addon_KDWTeacher, LogText_Addon_MyxirTeach); 
		DIA_Addon_Myxir_CITY_Teach_OneTime = true;
	};
	
	Info_ClearChoices (DIA_Addon_Myxir_CITY_Teach);
	Info_AddChoice (DIA_Addon_Myxir_CITY_Teach, DIALOG_BACK, DIA_Addon_Myxir_CITY_Teach_BACK);
	Info_AddChoice (DIA_Addon_Myxir_CITY_Teach, B_BuildLearnString(PRINT_LearnTalent_Language, B_GetLearnCostTalent(other, NPC_TALENT_LANGUAGE, true)), DIA_Addon_Myxir_CITY_Teach_LANGUAGE);
};

func void DIA_Addon_Myxir_CITY_Teach_BACK()
{
	Info_ClearChoices (DIA_Addon_Myxir_CITY_Teach);
};
func void DIA_Addon_Myxir_CITY_Teach_LANGUAGE()
{
	if (B_TeachTalents(self, other, NPC_TALENT_LANGUAGE, true))
	{
		AI_Output (self, other, "DIA_Addon_Myxir_TeachL1_12_01"); //Teksty pisane w jêzyku wieœniaków traktuj¹ zwykle o sprawach przyziemnych: pracy, mi³oœci, zaopatrzeniu czy ¿ywnoœci.
		AI_Output (self, other, "DIA_Addon_Myxir_TeachL2_12_01"); //Teksty pisane w jêzyku wojowników dotycz¹ zwykle wojny i broni. Nauczysz siê wielu przydatnych rzeczy.
		AI_Output (self, other, "DIA_Addon_Myxir_TeachL3_12_01"); //W jêzyku kap³anów spisane s¹ wszystkie œwiête pisma objaœniaj¹ce historiê i magiê budowniczych.
		AI_Output (self, other, "DIA_Addon_Myxir_Teach_LANGUAGE_X_12_00"); //IdŸ i sprawdŸ swoj¹ now¹ wiedzê. Przekonasz siê, ¿e pisma budowniczych nie stanowi¹ ju¿ dla ciebie zagadki.
	};	
	Info_ClearChoices (DIA_Addon_Myxir_CITY_Teach);
};
