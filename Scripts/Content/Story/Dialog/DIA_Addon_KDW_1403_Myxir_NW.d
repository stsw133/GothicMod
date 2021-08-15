///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Myxir_EXIT   (C_INFO)
{
	npc         = KDW_1403_Addon_Myxir_NW;
	nr          = 999;
	condition   = DIA_Addon_Myxir_EXIT_Condition;
	information = DIA_Addon_Myxir_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};

FUNC INT DIA_Addon_Myxir_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Addon_Myxir_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Myxir_Hallo		(C_INFO)
{
	npc			 = 	KDW_1403_Addon_Myxir_NW;
	nr			 = 	5;
	condition	 = 	DIA_Addon_Myxir_Hallo_Condition;
	information	 = 	DIA_Addon_Myxir_Hallo_Info;

	description	 = 	"Wszystko w porz�dku?";
};

func int DIA_Addon_Myxir_Hallo_Condition ()
{
	return TRUE;
};

func void DIA_Addon_Myxir_Hallo_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Myxir_Hallo_15_00"); //Wszystko w porz�dku?
	AI_Output	(self, other, "DIA_Addon_Myxir_Hallo_12_01"); //Masz du�o odwagi, pokazuj�c si� tu.
};
///////////////////////////////////////////////////////////////////////
//	Info WasMachstDu
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Myxir_WasMachstDu		(C_INFO)
{
	npc			 = 	KDW_1403_Addon_Myxir_NW;
	nr			 = 	5;
	condition	 = 	DIA_Addon_Myxir_WasMachstDu_Condition;
	information	 = 	DIA_Addon_Myxir_WasMachstDu_Info;

	description	 = 	"Co tu robisz?";
};

func int DIA_Addon_Myxir_WasMachstDu_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Myxir_Hallo))
		{
			return TRUE;
		};
};

func void DIA_Addon_Myxir_WasMachstDu_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Myxir_WasMachstDu_15_00"); //Co tu robisz?
	AI_Output	(self, other, "DIA_Addon_Myxir_WasMachstDu_12_01"); //Ucz� si� j�zyka budowniczych.
	AI_Output	(self, other, "DIA_Addon_Myxir_WasMachstDu_12_02"); //J�zyk jest kluczem do wiedzy tego staro�ytnego ludu.
	AI_Output	(self, other, "DIA_Addon_Myxir_WasMachstDu_12_03"); //Ka�dy z nas musi si� go nauczy�, inaczej ta ekspedycja dobiegnie ko�ca, zanim si� zacznie.
	AI_Output	(self, other, "DIA_Addon_Myxir_WasMachstDu_12_04"); //Budowniczowie u�ywali kamiennych tabliczek do przekazywania swojej wiedzy. Niestety, wiele z nich zniszczono lub skradziono dawno temu.
};
///////////////////////////////////////////////////////////////////////
//	Info Steintafeln
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Myxir_Steintafeln		(C_INFO)
{
	npc			 = 	KDW_1403_Addon_Myxir_NW;
	nr			 = 	5;
	condition	 = 	DIA_Addon_Myxir_Steintafeln_Condition;
	information	 = 	DIA_Addon_Myxir_Steintafeln_Info;

	description	 = 	"Co zapisano na tych kamiennych tablicach?";
};

func int DIA_Addon_Myxir_Steintafeln_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Myxir_WasMachstDu))
	{
		return TRUE;
	};
};
func void DIA_Addon_Myxir_Steintafeln_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Myxir_Steintafeln_15_00"); //Co zapisano na tych kamiennych tablicach?
	AI_Output	(self, other, "DIA_Addon_Myxir_Steintafeln_12_01"); //Zawieraj� w sobie ca�� wiedz� staro�ytnych.
	AI_Output	(self, other, "DIA_Addon_Myxir_Steintafeln_12_02"); //Niekt�rzy z nich za pomoc� zakl�� zwi�kszali sw� znajomo�� magii i walki.
	AI_Output	(self, other, "DIA_Addon_Myxir_Steintafeln_12_03"); //Dla kogo�, kto potrafi odczyta� tablice, to prawdziwy skarb.


	Log_CreateTopic (TOPIC_Addon_Stoneplates, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_Stoneplates, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_Stoneplates,"Na kamiennych tablicach spisano wiedz� staro�ytnego ludu budowniczych. Dzi�ki niekt�rym z tych tablic mo�na zwi�kszy� swoje umiej�tno�ci bojowe i znajomo�� magii, ale trzeba je umie� odczyta�."); 
};
///////////////////////////////////////////////////////////////////////
//	Info WillYouTeachMe
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Myxir_WillYouTeachMe		(C_INFO)
{
	npc		 = 	KDW_1403_Addon_Myxir_NW;
	nr		 = 	10;
	condition	 = 	DIA_Addon_Myxir_WillYouTeachMe_Condition;
	information	 = 	DIA_Addon_Myxir_WillYouTeachMe_Info;

	description	 = 	"Mo�esz mnie nauczy� czytania w tym dawnym j�zyku?";
};

func int DIA_Addon_Myxir_WillYouTeachMe_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Addon_Myxir_WasMachstDu))
	&& (Npc_GetTalentSkill(other, NPC_TALENT_LANGUAGE) == false)
	{
		return TRUE;
	};
};

func void DIA_Addon_Myxir_WillYouTeachMe_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Myxir_WillYouTeachMe_15_00"); //Mo�esz mnie nauczy� czytania w tym dawnym j�zyku?
	AI_Output	(self, other, "DIA_Addon_Myxir_WillYouTeachMe_12_01"); //Czemu nie? Przeka�� ci moj� wiedz�.
	Myxir_Addon_TeachPlayer = TRUE;

	Log_CreateTopic (TOPIC_Addon_Stoneplates, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_Stoneplates, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_Stoneplates, LogText_Addon_MyxirTeach); 

	Log_CreateTopic	(TOPIC_Addon_KDWTeacher, LOG_NOTE);
	B_LogEntry		(TOPIC_Addon_KDWTeacher, LogText_Addon_MyxirTeach);
};

///////////////////////////////////////////////////////////////////////
//	Info Teach
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Myxir_Teach		(C_INFO)
{
	npc		 = 	KDW_1403_Addon_Myxir_NW;
	nr		 = 	90;
	condition	 = 	DIA_Addon_Myxir_Teach_Condition;
	information	 = 	DIA_Addon_Myxir_Teach_Info;
	permanent	 = 	TRUE;

	description	 = 	"Naucz mnie tego dziwnego j�zyka.";
};

func int DIA_Addon_Myxir_Teach_Condition ()
{
	if (Myxir_Addon_TeachPlayer == TRUE)
	&& (Npc_GetTalentSkill(other, NPC_TALENT_LANGUAGE) == false)
		{
			return TRUE;
		};
};

func void DIA_Addon_Myxir_Teach_Info()
{
	AI_Output (other, self, "DIA_Addon_Myxir_TeachRequest_15_00"); //Naucz mnie tego dziwnego j�zyka.
	
	Info_ClearChoices (DIA_Addon_Myxir_Teach);
	Info_AddChoice (DIA_Addon_Myxir_Teach, DIALOG_BACK, DIA_Addon_Myxir_Teach_BACK);
	Info_AddChoice (DIA_Addon_Myxir_Teach, B_BuildLearnString(PRINT_LearnTalent_Language, B_GetLearnCostTalent(other, NPC_TALENT_LANGUAGE, true)),DIA_Addon_Myxir_Teach_LANGUAGE);
};

func void DIA_Addon_Myxir_Teach_BACK()
{
	Info_ClearChoices (DIA_Addon_Myxir_Teach);
};
func void DIA_Addon_Myxir_Teach_LANGUAGE()
{
	if (B_TeachTalent(self, other, NPC_TALENT_LANGUAGE, true))
	{
		AI_Output (self, other, "DIA_Addon_Myxir_TeachL1_12_01"); //Teksty pisane w j�zyku wie�niak�w traktuj� zwykle o sprawach przyziemnych: pracy, mi�o�ci, zaopatrzeniu czy �ywno�ci.
		AI_Output (self, other, "DIA_Addon_Myxir_TeachL2_12_01"); //Teksty pisane w j�zyku wojownik�w dotycz� zwykle wojny i broni. Nauczysz si� wielu przydatnych rzeczy.
		AI_Output (self, other, "DIA_Addon_Myxir_TeachL3_12_01"); //W j�zyku kap�an�w spisane s� wszystkie �wi�te pisma obja�niaj�ce histori� i magi� budowniczych.
		AI_Output (self, other, "DIA_Addon_Myxir_Teach_LANGUAGE_X_12_00"); //Id� i sprawd� swoj� now� wiedz�. Przekonasz si�, �e pisma budowniczych nie stanowi� ju� dla ciebie zagadki.
	};	
	Info_ClearChoices (DIA_Addon_Myxir_Teach);
};



