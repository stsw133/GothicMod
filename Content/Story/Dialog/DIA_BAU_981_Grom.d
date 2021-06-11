///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Grom_EXIT   (C_INFO)
{
	npc         = BAU_981_Grom;
	nr          = 999;
	condition   = DIA_Grom_EXIT_Condition;
	information = DIA_Grom_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Grom_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Grom_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Grom_HALLO		(C_INFO)
{
	npc		 = 	BAU_981_Grom;
	nr		 = 	3;
	condition	 = 	DIA_Grom_HALLO_Condition;
	information	 = 	DIA_Grom_HALLO_Info;

	description	 = 	"Wszystko w porz�dku?";
};

func int DIA_Grom_HALLO_Condition ()
{
	return TRUE;
};

func void DIA_Grom_HALLO_Info ()
{
	AI_Output			(other, self, "DIA_Grom_HALLO_15_00"); //Wszystko w porz�dku?
	AI_Output			(self, other, "DIA_Grom_HALLO_08_01"); //Ach, witaj nieznajomy w�drowcze. Jestem troch� zaj�ty, wi�c lepiej m�w szybko, czego chcesz.

	Info_ClearChoices	(DIA_Grom_HALLO);
	Info_AddChoice	(DIA_Grom_HALLO, "Czy s� tutaj jakie� interesuj�ce rzeczy?", DIA_Grom_HALLO_waszusehen );
	Info_AddChoice	(DIA_Grom_HALLO, "Co tu porabiasz?", DIA_Grom_HALLO_was );
};

func void DIA_Grom_HALLO_waszusehen ()
{
	AI_Output			(other, self, "DIA_Grom_HALLO_waszusehen_15_00"); //Jest tu co� interesuj�cego?
	AI_Output			(self, other, "DIA_Grom_HALLO_waszusehen_08_01"); //Interesuj�cego, powiadasz... Tak, interesuj�cy to dobre s�owo. Je�li wejdziesz nieco g��biej w te lasy, mo�esz mie� bardzo niemi�e spotkanie.
	AI_Output			(self, other, "DIA_Grom_HALLO_waszusehen_08_02"); //Mieszkaj� tam kud�ate bestie pot�nej postury i wzrostu. Wi�c je�li nie czujesz si� na si�ach, �eby je pokona�, lepiej tam nie id�.
};

func void DIA_Grom_HALLO_was ()
{
	AI_Output			(other, self, "DIA_Grom_HALLO_was_15_00"); //Co tu porabiasz?
	AI_Output			(self, other, "DIA_Grom_HALLO_was_08_01"); //Wszystko to, czym zwykle zajmuj� si� my�liwi i drwale.
	Info_AddChoice	(DIA_Grom_HALLO, DIALOG_BACK, DIA_Grom_HALLO_BACK );
};

func void DIA_Grom_HALLO_BACK ()
{
	Info_ClearChoices	(DIA_Grom_HALLO);
};

// ************************************************************
// 			  			  ASK TEACHER 
// ************************************************************

INSTANCE DIA_Grom_AskTeacher (C_INFO)
{
	npc			= BAU_981_Grom;
	nr          = 10;
	condition	= DIA_Grom_AskTeacher_Condition;
	information	= DIA_Grom_AskTeacher_Info;

	description = "Mo�esz nauczy� mnie czego� o polowaniu?";
};                       

FUNC INT DIA_Grom_AskTeacher_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Grom_HALLO))
	{
				return TRUE;
		};
};

FUNC VOID DIA_Grom_AskTeacher_Info()
{
	AI_Output(other,self,"DIA_Grom_AskTeacher_15_00"); //Mo�esz nauczy� mnie czego� o polowaniu?
	AI_Output(self,other,"DIA_Grom_AskTeacher_08_01"); //Jasne. Ale najpierw przynie� mi co� normalnego do jedzenia. Umieram tu z g�odu.
	AI_Output(self,other,"DIA_Grom_AskTeacher_08_02"); //Podziel� si� z tob� swoj� wiedz�, je�li dostan� butelk� mleka, bochenek chleba i kawa�ek t�ustej szynki.
	Log_CreateTopic (TOPIC_GromAskTeacher, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_GromAskTeacher, LOG_RUNNING);
	B_LogEntry (TOPIC_GromAskTeacher,"My�liwy Grom nauczy mnie wszystkiego, co wie, je�li przynios� mu butelk� mleka, bochenek chleba i kawa� szynki."); 
};


// ************************************************************
// 			  			  PAY TEACHER 
// ************************************************************

INSTANCE DIA_Grom_PayTeacher (C_INFO)
{
	npc			= BAU_981_Grom;
	nr          = 11;
	condition	= DIA_Grom_PayTeacher_Condition;
	information	= DIA_Grom_PayTeacher_Info;
 
 	description = "Oto jedzenie.";
};                       

FUNC INT DIA_Grom_PayTeacher_Condition()
{
	if	(Npc_KnowsInfo (other, DIA_Grom_AskTeacher))
		&& (Npc_HasItems (other,Itfo_Milk))
		&& (Npc_HasItems (other,Itfo_Bread))
		&& (Npc_HasItems (other,Itfo_Bacon))
			{
				return TRUE;
			};
};
FUNC VOID DIA_Grom_PayTeacher_Info()
{
	B_GiveInvItems (other, self, Itfo_Milk, 1);
	B_GiveInvItems (other, self, Itfo_Bread, 1);
	B_GiveInvItems (other, self, Itfo_Bacon, 1);
	AI_Output(other,self,"DIA_Grom_PayTeacher_15_00"); //Oto jedzenie.
	AI_Output(self,other,"DIA_Grom_PayTeacher_08_01"); //Doskonale. Co teraz?
	self.aivar[AIV_CanTeach] = true;
	B_GivePlayerXP (XP_Ambient);
};
