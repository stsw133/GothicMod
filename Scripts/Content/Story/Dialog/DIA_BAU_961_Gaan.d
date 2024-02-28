///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Gaan_EXIT   (C_INFO)
{
	npc         = BAU_961_Gaan;
	nr          = 999;
	condition   = DIA_Gaan_EXIT_Condition;
	information = DIA_Gaan_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
var int DIA_Gaan_EXIT_oneTime;
FUNC INT DIA_Gaan_EXIT_Condition()
{
		return TRUE;
};

FUNC VOID DIA_Gaan_EXIT_Info()
{
	AI_StopProcessInfos (self);
	if (DIA_Gaan_EXIT_oneTime == FALSE)
	{
	Npc_ExchangeRoutine	(self,"Start");
	DIA_Gaan_EXIT_oneTime = TRUE;
	};
};

///////////////////////////////////////////////////////////////////////
//	Info MeetingIsRunning
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Gaan_MeetingIsRunning		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	1;
	condition	 = 	DIA_Addon_Gaan_MeetingIsRunning_Condition;
	information	 = 	DIA_Addon_Gaan_MeetingIsRunning_Info;
	important	 = 	TRUE;
	permanent	 = 	TRUE;
};

func int DIA_Addon_Gaan_MeetingIsRunning_Condition ()
{
	if (Npc_IsInState (self,ZS_Talk))
	&& (RangerMeetingRunning == LOG_RUNNING)
		{
			return TRUE;
		};	
};
var int DIA_Addon_Gaan_MeetingIsRunning_One_time;
func void DIA_Addon_Gaan_MeetingIsRunning_Info ()
{
	if (DIA_Addon_Gaan_MeetingIsRunning_One_time == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Gaan_MeetingIsRunning_03_00"); //Ach! Nowy przybysz. Witaj w Wodnym Kr�gu.
		DIA_Addon_Gaan_MeetingIsRunning_One_time = TRUE;
	}
	else
	{
		AI_Output	(self, other, "DIA_Addon_Gaan_MeetingIsRunning_03_01"); //Vatras pragnie si� z tob� widzie�. Spotkaj si� z nim jak najszybciej.
	};
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_HALLO		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	3;
	condition	 = 	DIA_Gaan_HALLO_Condition;
	information	 = 	DIA_Gaan_HALLO_Info;

	description	 = 	"Masz tu sporo przestrzeni.";
};

func int DIA_Gaan_HALLO_Condition ()
{
	return TRUE;
};

func void DIA_Gaan_HALLO_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_HALLO_15_00"); //Masz tu sporo przestrzeni.
	AI_Output			(self, other, "DIA_Gaan_HALLO_03_01"); //To prawda, �adnie tu. Ale gdyby� zobaczy�, co jest po drugiej stronie prze��czy, pewnie przesta�by� tak my�le�.
	AI_Output			(self, other, "DIA_Gaan_HALLO_03_02"); //Je�li ten widok robi na tobie wra�enie, to poczekaj, a� zobaczysz G�rnicz� Dolin�.

};



///////////////////////////////////////////////////////////////////////
//	Info Wasmachstdu
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_WASMACHSTDU		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	4;
	condition	 = 	DIA_Gaan_WASMACHSTDU_Condition;
	information	 = 	DIA_Gaan_WASMACHSTDU_Info;

	description	 = 	"Kim jeste�?";
};

func int DIA_Gaan_WASMACHSTDU_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Gaan_HALLO))
	&& (self.aivar[AIV_TalkedToPlayer] == FALSE)
	&& (RangerMeetingRunning != LOG_SUCCESS)
	{
		return TRUE;
	};
};

func void DIA_Gaan_WASMACHSTDU_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_WASMACHSTDU_15_00"); //Kim jeste�?
	AI_Output			(self, other, "DIA_Gaan_WASMACHSTDU_03_01"); //Mam na imi� Gaan. Jestem my�liwym, pracuj� dla Bengara, miejscowego farmera.
	AI_Output			(self, other, "DIA_Gaan_WASMACHSTDU_03_02"); //Wi�kszo�� czasu sp�dzam na �wie�ym powietrzu, wyleguj�c si� na s�o�cu.
};

///////////////////////////////////////////////////////////////////////
//	Info Ranger
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Gaan_Ranger		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	2;
	condition	 = 	DIA_Addon_Gaan_Ranger_Condition;
	information	 = 	DIA_Addon_Gaan_Ranger_Info;

	description	 = 	"Sk�d ta powa�na mina?";
};

func int DIA_Addon_Gaan_Ranger_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Gaan_HALLO))
	&& (SCIsWearingRangerRing == TRUE)
	&& (RangerMeetingRunning == 0)
		{
			return TRUE;
		};
};

func void DIA_Addon_Gaan_Ranger_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Gaan_Ranger_15_00"); //Sk�d ta powa�na mina?
	AI_Output	(self, other, "DIA_Addon_Gaan_Ranger_03_01"); //Nosisz nasz pier�cie� z akwamarynem.
	AI_Output	(other, self, "DIA_Addon_Gaan_Ranger_15_02"); //Nale�ysz do Wodnego Kr�gu?
	AI_Output	(self, other, "DIA_Addon_Gaan_Ranger_03_03"); //Oczywi�cie. Dobrze widzie� w�r�d nas now� twarz.
	B_GivePlayerExp(100);
};

///////////////////////////////////////////////////////////////////////
//	Info AufgabeBeimRing
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Gaan_AufgabeBeimRing		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	2;
	condition	 = 	DIA_Addon_Gaan_AufgabeBeimRing_Condition;
	information	 = 	DIA_Addon_Gaan_AufgabeBeimRing_Info;

	description	 = 	"Czym si� zajmujesz w tym 'Kr�gu'?";
};

func int DIA_Addon_Gaan_AufgabeBeimRing_Condition ()
{
	if ((Npc_KnowsInfo (other, DIA_Addon_Gaan_Ranger))
	|| (RangerMeetingRunning != 0))
	&& (Kapitel < 9)
		{
			return TRUE;
		};
};

func void DIA_Addon_Gaan_AufgabeBeimRing_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Gaan_AufgabeBeimRing_15_00"); //Czym si� zajmujesz w tym 'Kr�gu'?
	AI_Output	(self, other, "DIA_Addon_Gaan_AufgabeBeimRing_03_01"); //Pilnuj� prze��czy. Mam uwa�a� na wszystkich, kt�rzy przez ni� przechodz�.
	AI_Output	(self, other, "DIA_Addon_Gaan_AufgabeBeimRing_03_02"); //Od kiedy paladyni zamkn�li bram� prze��czy, ma�o kto ni� chodzi.
};

///////////////////////////////////////////////////////////////////////
//	Info MissingPeople
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Gaan_MissingPeople		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	2;
	condition	 = 	DIA_Addon_Gaan_MissingPeople_Condition;
	information	 = 	DIA_Addon_Gaan_MissingPeople_Info;

	description	 = 	"Wiesz mo�e co� o zaginionych?";
};

func int DIA_Addon_Gaan_MissingPeople_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Gaan_AufgabeBeimRing))
	&& (SC_HearedAboutMissingPeople == TRUE)
			{
				return TRUE;
			};
};

func void DIA_Addon_Gaan_MissingPeople_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Gaan_MissingPeople_15_00"); //Wiesz mo�e co� o zaginionych?
	AI_Output	(self, other, "DIA_Addon_Gaan_MissingPeople_03_01"); //Oczywi�cie. To w�a�nie dlatego wszyscy zachowujemy wzmo�on� czujno��.
	AI_Output	(self, other, "DIA_Addon_Gaan_MissingPeople_03_02"); //Prawd� jednak m�wi�c, nie widzia�em tu nic podejrzanego.
};

///////////////////////////////////////////////////////////////////////
//	Info wald
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_WALD		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	5;
	condition	 = 	DIA_Gaan_WALD_Condition;
	information	 = 	DIA_Gaan_WALD_Info;

	description	 = 	"Co powinienem wiedzie� o G�rniczej Dolinie?";
};

func int DIA_Gaan_WALD_Condition ()
{
	return TRUE;
};

func void DIA_Gaan_WALD_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_WALD_15_00"); //Co powinienem wiedzie� o G�rniczej Dolinie?
	AI_Output			(self, other, "DIA_Gaan_WALD_03_01"); //Sam nie wiem. Widzia�em j� jedynie z daleka, ale wygl�da�a do�� niebezpiecznie.
	AI_Output			(self, other, "DIA_Gaan_WALD_03_02"); //Je�li zechcesz si� tam uda�, pami�taj, aby trzyma� si� drogi.
	AI_Output			(self, other, "DIA_Gaan_WALD_03_03"); //Masz do wyboru drog� przez wielki jar albo przez kamienny most. Ta druga jest kr�tsza i bardziej bezpieczna.
	AI_Output			(self, other, "DIA_Gaan_WALD_03_04"); //Musisz by� ostro�ny, po okolicy kr�ci si� pe�no ork�w.
	AI_Output			(self, other, "DIA_Gaan_WALD_03_05"); //Nie chc�, �eby si� okaza�o, �e b�d� musia� zaci�gn�� ci� do zielarki.

};

///////////////////////////////////////////////////////////////////////
//	Info sagitta
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_SAGITTA		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	7;
	condition	 = 	DIA_Gaan_SAGITTA_Condition;
	information	 = 	DIA_Gaan_SAGITTA_Info;

	description	 = 	"Zielarki?";
};

func int DIA_Gaan_SAGITTA_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Gaan_WALD))
		{
				return TRUE;
		};
};

func void DIA_Gaan_SAGITTA_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_SAGITTA_15_00"); //Zielarki?
	AI_Output			(self, other, "DIA_Gaan_SAGITTA_03_01"); //Nazywa si� Sagitta. Zajmuje si� uzdrawianiem farmer�w i ludzi spoza miasta portowego.
	AI_Output			(self, other, "DIA_Gaan_SAGITTA_03_02"); //Zadziwiaj�ca kobieta.
	AI_Output			(self, other, "DIA_Gaan_SAGITTA_03_03"); //Nikt nie lubi do niej chodzi�, za to wszyscy uwielbiaj� o niej plotkowa�.
	AI_Output			(self, other, "DIA_Gaan_SAGITTA_03_04"); //Ale je�li zachorujesz, zapewniam ci�, �e nigdzie nie uzyskasz bardziej skutecznej pomocy ni� w pe�nej zi� kuchni Sagitty.
	AI_Output			(self, other, "DIA_Gaan_SAGITTA_03_05"); //Znajdziesz j� w lesie rosn�cym za farm� Sekoba.

};

///////////////////////////////////////////////////////////////////////
//	Info monster
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_MONSTER		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	8;
	condition	 = 	DIA_Gaan_MONSTER_Condition;
	information	 = 	DIA_Gaan_MONSTER_Info;

	description	 = 	"Jak wygl�da to niebezpieczne zwierz�?";
};

func int DIA_Gaan_MONSTER_Condition ()
{
	if 	(
		(MIS_Gaan_Snapper == LOG_RUNNING)	
		&&((Npc_IsDead(Gaans_Snapper))== FALSE)
		)
			{
					return TRUE;
			};
};

func void DIA_Gaan_MONSTER_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_MONSTER_15_00"); //Jak wygl�da to niebezpieczne zwierz�?
	AI_Output			(self, other, "DIA_Gaan_MONSTER_03_01"); //Nie wiem dok�adnie, nigdy go nie widzia�em. S�ysza�em tylko pochrz�kiwanie i g�o�ne sapanie. Ale widzia�em, do czego jest zdolne.
	AI_Output			(self, other, "DIA_Gaan_MONSTER_03_02"); //Zabija nawet wilki. Co wi�cej, jednemu z nich dos�ownie odgryz�o g�ow�.

};

///////////////////////////////////////////////////////////////////////
//	Info monster
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_WASZAHLSTDU		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	9;
	condition	 = 	DIA_Gaan_WASZAHLSTDU_Condition;
	information	 = 	DIA_Gaan_WASZAHLSTDU_Info;

	description	 = 	"Ile mi zap�acisz, je�li zabij� dla ciebie t� besti�?";
};

func int DIA_Gaan_WASZAHLSTDU_Condition ()
{
	if 	(
		(Npc_KnowsInfo(other, DIA_Gaan_MONSTER))
		&&((Npc_IsDead(Gaans_Snapper))== FALSE)
		)
			{
					return TRUE;
			};
}; 

func void DIA_Gaan_WASZAHLSTDU_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_WASZAHLSTDU_15_00"); //Ile mi zap�acisz, je�li zabij� dla ciebie t� besti�?
	AI_Output			(self, other, "DIA_Gaan_WASZAHLSTDU_03_01"); //Je�li j� zabijesz, jestem got�w odda� ci wszystkie swoje oszcz�dno�ci.
	//AI_Output			(self, other, "DIA_Gaan_WASZAHLSTDU_03_02"); //30 Goldm�nzen? 
	//Auskommentiert, weil "?" ist auch so gesprochen worden - kommt nicht gut
	B_Say_Gold   (self,other,30);
	MIS_Gaan_Deal = LOG_RUNNING;
};

///////////////////////////////////////////////////////////////////////
//	Info wohermonster
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_WOHERMONSTER		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	10;
	condition	 = 	DIA_Gaan_WOHERMONSTER_Condition;
	information	 = 	DIA_Gaan_WOHERMONSTER_Info;

	description	 = 	"Sk�d przychodzi to stworzenie?";
};

func int DIA_Gaan_WOHERMONSTER_Condition ()
{
	if 	(
		(Npc_KnowsInfo(other, DIA_Gaan_MONSTER))
		&&((Npc_IsDead(Gaans_Snapper))== FALSE)
		)
			{
					return TRUE;
			};
};

func void DIA_Gaan_WOHERMONSTER_Info ()
{
	AI_Output			(other, self, "DIA_Gaan_WOHERMONSTER_15_00"); //Sk�d przychodzi to stworzenie?
	AI_Output			(self, other, "DIA_Gaan_WOHERMONSTER_03_01"); //Na pewno nie z lasu. Mo�e z G�rniczej Doliny. Nie jestem do ko�ca pewien.
	AI_Output			(self, other, "DIA_Gaan_WOHERMONSTER_03_02"); //Nigdy nie by�em w G�rniczej Dolinie.
 
};


///////////////////////////////////////////////////////////////////////
//	Info MonsterTot
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_MONSTERTOT		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 11;
	condition	 = 	DIA_Gaan_MONSTERTOT_Condition;
	information	 = 	DIA_Gaan_MONSTERTOT_Info;
	important	 = 	TRUE;
};

func int DIA_Gaan_MONSTERTOT_Condition ()
{
	if 	((Npc_IsDead(Gaans_Snapper))== TRUE) 
	&& 	(RangerMeetingRunning != LOG_RUNNING)
			{
					return TRUE;
			};
};

func void DIA_Gaan_MONSTERTOT_Info ()
{
	AI_Output			(self, other, "DIA_Gaan_MONSTERTOT_03_00"); //Ta obrzydliwa bestia nie �yje.
	AI_Output			(self, other, "DIA_Gaan_MONSTERTOT_03_01"); //A wi�c znowu b�d� m�g� normalnie polowa�.
	

	if (MIS_Gaan_Deal == LOG_RUNNING)
		{
			AI_Output			(self, other, "DIA_Gaan_MONSTERTOT_03_02");	//Prosz�, oto obiecane pieni�dze.

			CreateInvItems (self, ItMi_Gold, 30);									
			B_GiveInvItems (self, other, ItMi_Gold, 30);					
		};
	
	MIS_Gaan_Snapper = LOG_SUCCESS;
	B_GivePlayerExp(100);
	AI_StopProcessInfos (self);
};


// ************************************************************
// 			  			  ASK TEACHER 
// ************************************************************

INSTANCE DIA_Gaan_AskTeacher (C_INFO)
{
	npc			= BAU_961_Gaan;
	nr          = 10;
	condition	= DIA_Gaan_AskTeacher_Condition;
	information	= DIA_Gaan_AskTeacher_Info;

	description = "Mo�esz mnie nauczy� czego� o polowaniu?";
};                       

FUNC INT DIA_Gaan_AskTeacher_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Gaan_AskTeacher_Info()
{
	AI_Output(other,self,"DIA_Gaan_AskTeacher_15_00"); //Mo�esz mnie nauczy� czego� o polowaniu?
	AI_Output(self,other,"DIA_Gaan_AskTeacher_03_01"); //Nie ma problemu. Za 100 monet mog� ci pokaza�, jak si� patroszy upolowane zwierz�ta.
	AI_Output(self,other,"DIA_Gaan_AskTeacher_03_02"); //Za futra i inne trofea mo�na dosta� naprawd� sporo pieni�dzy.
		
	Log_CreateTopic	(TOPIC_Teacher, LOG_NOTE);
	B_LogEntry		(TOPIC_Teacher, "Gaan mo�e mnie nauczy�, jak sporz�dza� trofea.");
};


// ************************************************************
// 			  			  PAY TEACHER 
// ************************************************************

INSTANCE DIA_Gaan_PayTeacher (C_INFO)
{
	npc			= BAU_961_Gaan;
	nr          = 11;
	condition	= DIA_Gaan_PayTeacher_Condition;
	information	= DIA_Gaan_PayTeacher_Info;
	permanent	= TRUE;
	description = "Prosz� - oto 100 sztuk z�ota. Opowiedz mi o oprawianiu zwierz�t.";
};                       

var int DIA_Gaan_PayTeacher_noPerm;

FUNC INT DIA_Gaan_PayTeacher_Condition()
{
	if 	(Npc_KnowsInfo (other, DIA_Gaan_AskTeacher))
		&& (DIA_Gaan_PayTeacher_noPerm == FALSE)
			{
				return TRUE;
			};
};

FUNC VOID DIA_Gaan_PayTeacher_Info()
{
	AI_Output(other,self,"DIA_Gaan_PayTeacher_15_00"); //Zap�ac� ci 100 sztuk z�ota, je�li powiesz mi, jak si� oprawia zwierz�ta.

	if (B_GiveInvItems (other, self, ItMi_Gold, 100))
	{
		AI_Output(self,other,"DIA_Gaan_PayTeacher_03_01"); //No, to mi si� podoba.
		Gaan_TeachPlayer = TRUE;
		DIA_Gaan_PayTeacher_noPerm = TRUE;
		self.aivar[AIV_CanOffer] = self.aivar[AIV_CanOffer] | OFFER_Teaching;
	}
	else	
	{
		AI_Output(self,other,"DIA_Gaan_PayTeacher_03_02"); //Przyjd� p�niej, kiedy ju� b�dziesz mia� czym zap�aci�.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info jagd
///////////////////////////////////////////////////////////////////////
instance DIA_Gaan_JAGD		(C_INFO)
{
	npc		 = 	BAU_961_Gaan;
	nr		 = 	80;
	condition	 = 	DIA_Gaan_JAGD_Condition;
	information	 = 	DIA_Gaan_JAGD_Info;
	permanent	 = 	TRUE;

	description	 = 	"Jak idzie polowanie?";
};

func int DIA_Gaan_JAGD_Condition ()
{
	return TRUE;
};

func void B_WasMachtJagd ()
{
	AI_Output			(other, self, "DIA_Gaan_JAGD_15_00"); //Jak idzie polowanie?
};

func void DIA_Gaan_JAGD_Info ()
{
	B_WasMachtJagd ();

	if ((Npc_IsDead(Gaans_Snapper))== FALSE)
		{
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_01"); //Ostatnie zwierz�, kt�re upolowa�em, to by� olbrzymi szczur. Niezbyt cenna zdobycz.
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_02"); //Par� dni temu w okolicy pojawi�a si� jaka� bestia.
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_03"); //Zabija wszystko, co si� rusza. A ja trac� przez ni� zarobek.
			Log_CreateTopic (TOPIC_GaanSchnaubi, LOG_MISSION);
			Log_SetTopicStatus(TOPIC_GaanSchnaubi, LOG_RUNNING);
			B_LogEntry (TOPIC_GaanSchnaubi,"Jaka� dziwna bestia sprawia problemy my�liwemu Gaanowi. Dop�ki potw�r tu grasuje, Gaan nie b�dzie m�g� normalnie polowa�."); 
			MIS_Gaan_Snapper = LOG_RUNNING;
		}
	else if (Kapitel >= 9)
		{
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_04"); //Jest coraz gorzej. Od tego czasu od strony prze��czy nadci�gn�y ca�e tuziny tych istot.
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_05"); //Trudno co� upolowa� w tych warunkach.
		}
	else
		{
			AI_Output			(self, other, "DIA_Gaan_JAGD_03_06"); //Nie narzekam.
		};
};
