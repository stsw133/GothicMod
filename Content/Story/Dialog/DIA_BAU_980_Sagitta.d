	
///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Sagitta_EXIT   (C_INFO)
{
	npc         = BAU_980_Sagitta;
	nr          = 999;
	condition   = DIA_Sagitta_EXIT_Condition;
	information = DIA_Sagitta_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Sagitta_EXIT_Condition()
{
	if (Kapitel < 9)
		{
				return TRUE;
		};
};

FUNC VOID DIA_Sagitta_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Sagitta_HALLO		(C_INFO)
{
	npc		 = 	BAU_980_Sagitta;
	nr		 = 	4;
	condition	 = 	DIA_Sagitta_HALLO_Condition;
	information	 = 	DIA_Sagitta_HALLO_Info;

	description	 = 	"Nie czujesz si� troch� samotna?";
};

func int DIA_Sagitta_HALLO_Condition ()
{
	return TRUE;
};

func void DIA_Sagitta_HALLO_Info ()
{
	AI_Output			(other, self, "DIA_Sagitta_HALLO_15_00"); //Nie czujesz si� troch� samotna?
	AI_Output			(self, other, "DIA_Sagitta_HALLO_17_01"); //Gadaj, co masz powiedzie� i spadaj. Jestem zaj�ta.

	Info_ClearChoices	(DIA_Sagitta_HALLO);
	Info_AddChoice	(DIA_Sagitta_HALLO, DIALOG_BACK, DIA_Sagitta_HALLO_ende );
	Info_AddChoice	(DIA_Sagitta_HALLO, "Mo�esz mnie uzdrowi�?", DIA_Sagitta_HALLO_Heil );
	Info_AddChoice	(DIA_Sagitta_HALLO, "Co tutaj robisz?", DIA_Sagitta_HALLO_was );
	Info_AddChoice	(DIA_Sagitta_HALLO, "Kim jeste�?", DIA_Sagitta_HALLO_wer );

};

func void DIA_Sagitta_HALLO_wer ()
{
	AI_Output			(other, self, "DIA_Sagitta_HALLO_wer_15_00"); //Kim jeste�?
	AI_Output			(self, other, "DIA_Sagitta_HALLO_wer_17_01"); //Widz�, �e� o mnie nie s�ysza�?
	AI_Output			(self, other, "DIA_Sagitta_HALLO_wer_17_02"); //Nazywaj� mnie zielark�, szarlatanem w sp�dnicy.
	AI_Output			(self, other, "DIA_Sagitta_HALLO_wer_17_03"); //Jednak kiedy poczuj� si� gorzej, od razu przypominaj� sobie o starej, dobrej Sagicie i jej leczniczych zio�ach.

};

func void DIA_Sagitta_HALLO_was ()
{
	AI_Output			(other, self, "DIA_Sagitta_HALLO_was_15_00"); //Czym si� zajmujesz?
	AI_Output			(self, other, "DIA_Sagitta_HALLO_was_17_01"); //Mieszkam tu i hoduj� zio�a, odk�d tylko pami�tam.
	AI_Output			(self, other, "DIA_Sagitta_HALLO_was_17_02"); //Las jest moim przyjacielem. W�r�d jego dar�w znajduj� wszystko, co jest mi potrzebne.

};

func void DIA_Sagitta_HALLO_Heil ()
{
	AI_Output			(other, self, "DIA_Sagitta_HALLO_Heil_15_00"); //Czy mog�aby� mnie uzdrowi�?
	AI_Output			(self, other, "DIA_Sagitta_HALLO_Heil_17_01"); //Po to w�a�nie przyszed�e�, prawda? Daj mi zna�, je�eli b�dziesz potrzebowa� pomocy.
	
	Log_CreateTopic (Topic_SoldierTrader,LOG_NOTE);
	B_LogEntry (Topic_SoldierTrader,"Sagitta sprzedaje swoje towary za farm� Sekoba.");
};

func void DIA_Sagitta_HALLO_ende ()
{
	Info_ClearChoices	(DIA_Sagitta_HALLO);
};

///////////////////////////////////////////////////////////////////////
//	Info TeachAlchemyRequest
///////////////////////////////////////////////////////////////////////
instance DIA_Sagitta_TeachAlchemyRequest		(C_INFO)
{
	npc			 = 	BAU_980_Sagitta;
	nr          = 	6;	
	condition	 = 	DIA_Sagitta_TeachAlchemyRequest_Condition;
	information	 = 	DIA_Sagitta_TeachAlchemyRequest_Info;
	permanent	 = 	TRUE;

	description	 = 	"Czy mog�aby� przekaza� mi sw� wiedz� o zio�ach?";
};

func int DIA_Sagitta_TeachAlchemyRequest_Condition ()
{	
	if (Npc_KnowsInfo(other, DIA_Sagitta_HALLO))
	&& (MIS_Sagitta_Herb == FALSE)
		{
				return TRUE;
		};
};
var int DIA_Sagitta_TeachAlchemyRequest_OneTime;
func void DIA_Sagitta_TeachAlchemyRequest_Info ()
{
	AI_Output			(other, self, "DIA_Sagitta_TeachAlchemyRequest_15_00"); //Czy mog�aby� przekaza� mi sw� wiedz� o zio�ach?

	if (DIA_Sagitta_TeachAlchemyRequest_OneTime ==FALSE)
	{
		AI_Output			(self, other, "DIA_Sagitta_TeachAlchemyRequest_17_01"); //Interesuj�ce. Ludzie niecz�sto mnie o to prosz�.
		AI_Output			(self, other, "DIA_Sagitta_TeachAlchemyRequest_17_02"); //Chcesz wi�c zosta� moim uczniem? Je�li tak, b�dziesz musia� dowie�� uczciwo�ci swoich intencji.
		AI_Output			(self, other, "DIA_Sagitta_TeachAlchemyRequest_17_03"); //Od jakiego� czasu pracuj� nad bardzo rzadk� mikstur� z unikalnych zi� i sok�w.
		AI_Output			(self, other, "DIA_Sagitta_TeachAlchemyRequest_17_04"); //Je�li zdob�dziesz dla mnie brakuj�cy sk�adnik mikstury, zostan� twoj� nauczycielk�.
		DIA_Sagitta_TeachAlchemyRequest_OneTime = TRUE;
	}
	else
	{
		AI_Output			(self, other, "DIA_Sagitta_TeachAlchemyRequest_17_05"); //Ju� przecie� m�wi�am: tak, jednak najpierw musisz mi przynie�� brakuj�cy sk�adnik.
	};
	
	Info_ClearChoices	(DIA_Sagitta_TeachAlchemyRequest);
	Info_AddChoice	(DIA_Sagitta_TeachAlchemyRequest, "Przykro mi, nie jestem zainteresowany.", DIA_Sagitta_TeachAlchemyRequest_nein );
	Info_AddChoice	(DIA_Sagitta_TeachAlchemyRequest, "Gdzie mog� znale�� ten sk�adnik?", DIA_Sagitta_TeachAlchemyRequest_wo );
	Info_AddChoice	(DIA_Sagitta_TeachAlchemyRequest, "Co to za sk�adnik?", DIA_Sagitta_TeachAlchemyRequest_was );
	
};
func void DIA_Sagitta_TeachAlchemyRequest_was ()
{
	AI_Output			(other, self, "DIA_Sagitta_TeachAlchemyRequest_was_15_00"); //Co to za sk�adnik?
	AI_Output			(self, other, "DIA_Sagitta_TeachAlchemyRequest_was_17_01"); //To niebywale rzadka ro�lina - ziele, zwane s�onecznym aloesem. Poznasz je po intensywnym zapachu migda��w.
	
};

func void DIA_Sagitta_TeachAlchemyRequest_wo ()
{
	AI_Output			(other, self, "DIA_Sagitta_TeachAlchemyRequest_wo_15_00"); //Gdzie mog� znale�� ten sk�adnik?
	AI_Output			(self, other, "DIA_Sagitta_TeachAlchemyRequest_wo_17_01"); //Ziele, o kt�rym m�wi�, mo�na znale�� tylko tam, gdzie s� odpowiednie warunki.
	AI_Output			(self, other, "DIA_Sagitta_TeachAlchemyRequest_wo_17_02"); //Odpowiednie gleby powstaj� jedynie na bazie odchod�w czarnych trolli.
	AI_Output			(self, other, "DIA_Sagitta_TeachAlchemyRequest_wo_17_03"); //Dlatego w�a�nie zdobycie tego sk�adnika jest dla mnie tak trudne, rozumiesz chyba?
	Info_AddChoice	(DIA_Sagitta_TeachAlchemyRequest, "W tej sytuacji nie pozostaje mi nic innego, jak si� za nim rozejrze�", DIA_Sagitta_TeachAlchemyRequest_wo_ja );
};
func void DIA_Sagitta_TeachAlchemyRequest_wo_ja ()
{
	AI_Output			(other, self, "DIA_Sagitta_TeachAlchemyRequest_wo_ja_15_00"); //W tej sytuacji nie pozostaje mi nic innego, jak si� za nim rozejrze�.
	AI_Output			(self, other, "DIA_Sagitta_TeachAlchemyRequest_wo_ja_17_01"); //C�, �ycz� powodzenia w poszukiwaniach.
	Info_ClearChoices	(DIA_Sagitta_TeachAlchemyRequest);
	MIS_Sagitta_Herb = LOG_RUNNING;
	
	Log_CreateTopic (TOPIC_SagittaHerb,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_SagittaHerb,LOG_RUNNING);
	B_LogEntry (TOPIC_SagittaHerb,"Sagitta prosi�a mnie o dziwne ziele, zwane s�onecznym aloesem. Ro�nie ono tylko na odchodach czarnego trolla.");

};


func void DIA_Sagitta_TeachAlchemyRequest_nein ()
{
	AI_Output			(other, self, "DIA_Sagitta_TeachAlchemyRequest_nein_15_00"); //Przykro mi, nie jestem zainteresowany.
	AI_Output			(self, other, "DIA_Sagitta_TeachAlchemyRequest_nein_17_01"); //Nie marnuj wi�c mojego cennego czasu.
	Info_ClearChoices	(DIA_Sagitta_TeachAlchemyRequest);
};

///////////////////////////////////////////////////////////////////////
//	Info Sagitta_Herb
///////////////////////////////////////////////////////////////////////
instance DIA_Sagitta_Sagitta_Herb		(C_INFO)
{
	npc			 = 	BAU_980_Sagitta;
	nr          = 	3;	
	condition	 = 	DIA_Sagitta_Sagitta_Herb_Condition;
	information	 = 	DIA_Sagitta_Sagitta_Herb_Info;

	description	 = 	"Znalaz�em s�oneczny aloes.";
};

func int DIA_Sagitta_Sagitta_Herb_Condition ()
{	
	if (Npc_HasItems (other,ItPl_SunHerb))
	&& (MIS_Sagitta_Herb == LOG_RUNNING)
	&& (Npc_KnowsInfo(other, DIA_Sagitta_HALLO))
		{
				return TRUE;
		};
};
func void DIA_Sagitta_Sagitta_Herb_Info ()
{
	AI_Output			(other, self, "DIA_Sagitta_Sagitta_Herb_15_00"); //Znalaz�em s�oneczny aloes.
	AI_Output			(self, other, "DIA_Sagitta_Sagitta_Herb_17_01"); //Dzi�kuj�. Mo�esz mnie pyta�, o co tylko zechcesz.
	B_GiveInvItems (other,self,ItPl_SunHerb,1);
	self.aivar[AIV_CanTeach] = true;
	MIS_Sagitta_Herb = LOG_SUCCESS;
	B_GivePlayerXP(200);
};

///////////////////////////////////////////////////////////////////////
//	Info HEAL
///////////////////////////////////////////////////////////////////////
instance DIA_Sagitta_HEAL		(C_INFO)
{
	npc			 = 	BAU_980_Sagitta;
	nr          = 	99;	//Joly: braucht ne hohe Nummer, denn wird in den sp�teren Kapiteln auch verwendet.
	condition	 = 	DIA_Sagitta_HEAL_Condition;
	information	 = 	DIA_Sagitta_HEAL_Info;
	permanent	 = 	TRUE;
	description	 = 	"Ulecz moje rany.";
};

func int DIA_Sagitta_HEAL_Condition ()
{	
	if (Npc_KnowsInfo(other, DIA_Sagitta_HALLO))
		{
				return TRUE;
		};
};
func void DIA_Sagitta_HEAL_Info ()
{
	AI_Output			(other, self, "DIA_Sagitta_HEAL_15_00"); //Wylecz mnie.
	
	if hero.attribute [ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX]
	{
		AI_Output			(self, other, "DIA_Sagitta_HEAL_17_01"); //Chwileczk�. Mmm. Moja ma�� powinna wyleczy� najgorsze z twoich ran.
		hero.attribute [ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		PrintScreen (PRINT_FullyHealed, - 1, - 1, FONT_Screen, 2);   
	}
	else 
	{	
		AI_Output			(self, other, "DIA_Sagitta_HEAL_17_02"); //W tej chwili nie potrzebujesz leczenia.
	};	
};

///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Sagitta_TRADE		(C_INFO)
{
	npc		 = 	BAU_980_Sagitta;
	condition	 = 	DIA_Sagitta_TRADE_Condition;
	information	 = 	DIA_Sagitta_TRADE_Info;
	permanent	 = 	TRUE;
	trade		 = 	TRUE;

	description	 = 	"Co mo�esz mi zaoferowa�?";
};

func int DIA_Sagitta_TRADE_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Sagitta_HALLO))
		{
				return TRUE;
		};
};

func void DIA_Sagitta_TRADE_Info ()
{
	AI_Output			(other, self, "DIA_Sagitta_TRADE_15_00"); //Co mo�esz mi zaoferowa�?
	B_GiveTradeInv (self);
	AI_Output			(self, other, "DIA_Sagitta_TRADE_17_01"); //Powiedz, co ci� interesuje.
};

//#####################################################################
//##
//##
//##							KAPITEL 3
//##
//##
//#####################################################################

// ************************************************************
// 	  				   EXIT KAP3
// ************************************************************

INSTANCE DIA_Sagitta_KAP3_EXIT(C_INFO)
{
	npc			= BAU_980_Sagitta;
	nr			= 999;
	condition	= DIA_Sagitta_KAP3_EXIT_Condition;
	information	= DIA_Sagitta_KAP3_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Sagitta_KAP3_EXIT_Condition()
{
	if (Kapitel == 9)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Sagitta_KAP3_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

///////////////////////////////////////////////////////////////////////
//	Info Obsession
///////////////////////////////////////////////////////////////////////
instance DIA_Sagitta_OBSESSION		(C_INFO)
{
	npc		 = 	BAU_980_Sagitta;
	nr		 = 	30;
	condition	 = 	DIA_Sagitta_OBSESSION_Condition;
	information	 = 	DIA_Sagitta_OBSESSION_Info;

	description	 = 	"Chyba mam dreszcze.";
};

func int DIA_Sagitta_OBSESSION_Condition ()
{
	if (SC_IsObsessed == TRUE)
	&& (Npc_KnowsInfo(other, DIA_Sagitta_HALLO))
		{
				return TRUE;
		};
};

func void DIA_Sagitta_OBSESSION_Info ()
{
	AI_Output			(other, self, "DIA_Sagitta_OBSESSION_15_00"); //Od jakiego� czasu cierpi� na dziwaczne drgawki. Potrzebuj� pomocy.
	AI_Output			(self, other, "DIA_Sagitta_OBSESSION_17_01"); //Widz�, �e w twoim przypadku sen nie b�dzie wystarczaj�cym lekarstwem. Narazi�e� si� na czarne spojrzenie Poszukiwaczy.
	AI_Output			(self, other, "DIA_Sagitta_OBSESSION_17_02"); //Udaj si� do Pyrokara, do klasztoru. Moje skromne leki nie wystarcz�.
};

///////////////////////////////////////////////////////////////////////
//	Info Thekla
///////////////////////////////////////////////////////////////////////
instance DIA_Sagitta_Thekla		(C_INFO)
{
	npc		 = 	BAU_980_Sagitta;
	nr		 = 	3;
	condition	 = 	DIA_Sagitta_Thekla_Condition;
	information	 = 	DIA_Sagitta_Thekla_Info;

	description	 = 	"Thekla przysy�a mnie po odbi�r przesy�ki.";
};

func int DIA_Sagitta_Thekla_Condition ()
{
	if (MIS_Thekla_Paket == LOG_RUNNING)
	&& (Npc_KnowsInfo(other, DIA_Sagitta_HALLO))
		{
				return TRUE;
		};
};

func void DIA_Sagitta_Thekla_Info ()
{
	AI_Output			(other, self, "DIA_Sagitta_Thekla_15_00"); //Thekla przysy�a mnie po odbi�r przesy�ki.
	AI_Output			(self, other, "DIA_Sagitta_Thekla_17_01"); //Ach, tak. W�a�ciwie spodziewa�am si� jej ju� kilka dni temu.
	AI_Output			(self, other, "DIA_Sagitta_Thekla_17_02"); //Oto paczka, dbaj o ni�!
	B_GivePlayerXP(150);
	B_GiveInvItems (self, other, ItMi_TheklasPaket, 1);					
};

//#####################################################################
//##
//##
//##							KAPITEL 4
//##
//##
//#####################################################################


// ************************************************************
// 	  				   EXIT KAP4
// ************************************************************

INSTANCE DIA_Sagitta_KAP4_EXIT(C_INFO)
{
	npc			= BAU_980_Sagitta;
	nr			= 999;
	condition	= DIA_Sagitta_KAP4_EXIT_Condition;
	information	= DIA_Sagitta_KAP4_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Sagitta_KAP4_EXIT_Condition()
{
	if (Kapitel == 10)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Sagitta_KAP4_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

///////////////////////////////////////////////////////////////////////
//	Info HealRandolph
///////////////////////////////////////////////////////////////////////
instance DIA_Sagitta_HEALRANDOLPH		(C_INFO)
{
	npc		 = 	BAU_980_Sagitta;
	nr		 = 	30;
	condition	 = 	DIA_Sagitta_HEALRANDOLPH_Condition;
	information	 = 	DIA_Sagitta_HEALRANDOLPH_Info;
	permanent	 = 	TRUE;

	description	 = 	"Randolph cierpi na syndrom odstawienia alkoholu.";
};

var int DIA_Sagitta_HEALRANDOLPH_GotOne;
var int DIA_Sagitta_HEALRANDOLPH_KnowsPrice;

func int DIA_Sagitta_HEALRANDOLPH_Condition ()
{
	if (MIS_HealRandolph == LOG_RUNNING)
	&& (Npc_HasItems (other,ItPo_HealRandolph_MIS) == 0)
	&& (Npc_KnowsInfo(other, DIA_Sagitta_HALLO))
		{
				return TRUE;
		};
};

func void DIA_Sagitta_HEALRANDOLPH_Info ()
{
	AI_Output			(other, self, "DIA_Sagitta_HEALRANDOLPH_15_00"); //Randolph �le si� czuje, odk�d przesta� pi�.

	if (DIA_Sagitta_HEALRANDOLPH_KnowsPrice == FALSE)
		{
			AI_Output			(self, other, "DIA_Sagitta_HEALRANDOLPH_17_01"); //Kiedy ten cz�owiek w ko�cu zm�drzeje?
			DIA_Sagitta_HEALRANDOLPH_KnowsPrice = TRUE;
		};
	
	if(DIA_Sagitta_HEALRANDOLPH_GotOne == TRUE)
		{
			AI_Output			(self, other, "DIA_Sagitta_HEALRANDOLPH_17_02"); //Da�am ci ju� odpowiedni� dawk� dla niego. Lepiej b�d� ostro�ny.
		}
	else
		{
			AI_Output			(self, other, "DIA_Sagitta_HEALRANDOLPH_17_03"); //Dam ci pewne remedium. W ci�gu kilu dni powinno go postawi� na nogi.
		};

	AI_Output			(self, other, "DIA_Sagitta_HEALRANDOLPH_17_04"); //B�dzie ci� to kosztowa� 300 sztuk z�ota.

	if (DIA_Sagitta_HEALRANDOLPH_KnowsPrice == FALSE)
	{
		AI_Output			(other, self, "DIA_Sagitta_HEALRANDOLPH_15_05"); //Ile?
		AI_Output			(self, other, "DIA_Sagitta_HEALRANDOLPH_17_06"); //Jedyna rzecz, jak� mo�esz dosta� za darmo, to �mier�.
	};	

	Info_ClearChoices	(DIA_Sagitta_HEALRANDOLPH);
	Info_AddChoice	(DIA_Sagitta_HEALRANDOLPH, "Nie za tak� bzdur�."	, DIA_Sagitta_HEALRANDOLPH_no );
	Info_AddChoice	(DIA_Sagitta_HEALRANDOLPH, "Oto twoje pieni�dze."				, DIA_Sagitta_HEALRANDOLPH_geld );
};

func void DIA_Sagitta_HEALRANDOLPH_geld ()
{
	AI_Output			(other, self, "DIA_Sagitta_HEALRANDOLPH_geld_15_00"); //Oto twoje pieni�dze.

	if (B_GiveInvItems (other, self, ItMi_Gold,300))
		{
			AI_Output			(self, other, "DIA_Sagitta_HEALRANDOLPH_geld_17_01"); //Doskonale. Zawsze mo�esz poprosi� go o ich zwrot.
			CreateInvItems 		(self, ItPo_HealRandolph_MIS, 1);									
			B_GiveInvItems 		(self, other, ItPo_HealRandolph_MIS, 1);					
			DIA_Sagitta_HEALRANDOLPH_GotOne = TRUE;
		B_LogEntry (TOPIC_HealRandolph,"Sagitta da�a mi lekarstwo dla Randolpha."); 
		}
	else
		{
			AI_Output			(self, other, "DIA_Sagitta_HEALRANDOLPH_geld_17_02"); //Dop�ki nie b�dziesz mia� pieni�dzy - nici z interes�w.
		};

	Info_ClearChoices	(DIA_Sagitta_HEALRANDOLPH);
};

func void DIA_Sagitta_HEALRANDOLPH_no ()
{
	AI_Output			(other, self, "DIA_Sagitta_HEALRANDOLPH_no_15_00"); //Nie za tak� bzdur�.
	AI_Output			(self, other, "DIA_Sagitta_HEALRANDOLPH_no_17_01"); //Nie da� ci pieni�dzy? To ca�y Randolph!
	Info_ClearChoices	(DIA_Sagitta_HEALRANDOLPH);
};

//#####################################################################
//##
//##
//##							KAPITEL 5
//##
//##
//#####################################################################

// ************************************************************
// 	  				   EXIT KAP5
// ************************************************************

INSTANCE DIA_Sagitta_KAP5_EXIT(C_INFO)
{
	npc			= BAU_980_Sagitta;
	nr			= 999;
	condition	= DIA_Sagitta_KAP5_EXIT_Condition;
	information	= DIA_Sagitta_KAP5_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Sagitta_KAP5_EXIT_Condition()
{
	if (Kapitel == 11)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Sagitta_KAP5_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};


//#####################################################################
//##
//##
//##							KAPITEL 6
//##
//##
//#####################################################################

// ************************************************************
// 	  				   EXIT KAP6
// ************************************************************


INSTANCE DIA_Sagitta_KAP6_EXIT(C_INFO)
{
	npc			= BAU_980_Sagitta;
	nr			= 999;
	condition	= DIA_Sagitta_KAP6_EXIT_Condition;
	information	= DIA_Sagitta_KAP6_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Sagitta_KAP6_EXIT_Condition()
{
	if (Kapitel == 12)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Sagitta_KAP6_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};
