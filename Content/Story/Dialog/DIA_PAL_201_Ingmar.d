///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Ingmar_EXIT   (C_INFO)
{
	npc         = Pal_201_Ingmar;
	nr          = 999;
	condition   = DIA_Ingmar_EXIT_Condition;
	information = DIA_Ingmar_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Ingmar_EXIT_Condition()
{
	if (Kapitel < 9)
	{
		return true;
	};
};

FUNC VOID DIA_Ingmar_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info GREET
///////////////////////////////////////////////////////////////////////
instance DIA_Ingmar_Hallo		(C_INFO)
{
	npc		 	 = 	Pal_201_Ingmar;
	nr			 =  2;
	condition	 = 	DIA_Ingmar_Hallo_Condition;
	information	 = 	DIA_Ingmar_Hallo_Info;
	permanent    =  true;
	important	 = 	true;
};
//------------------------------------
var int DIA_Ingmar_Hallo_permanent;
//------------------------------------
func int DIA_Ingmar_Hallo_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	&& (DIA_Ingmar_Hallo_permanent == false)
	&& (Kapitel < 10)
	{
		return true;
	};
};
func void DIA_Ingmar_Hallo_Info ()
{
	if (EnterOW_Kapitel2 == false)
	&& (LordHagen.aivar[AIV_TalkedToPlayer] == true)
	{ 
		AI_Output (self, other, "DIA_Ingmar_Hallo_06_00"); //Z otrzymanych przeze mnie raport�w wynika, �e G�rnicza Dolina to niebezpieczne miejsce.
		AI_Output (self, other, "DIA_Ingmar_Hallo_06_01"); //Pami�taj, aby zabra� ze sob� odpowiednie wyposa�enie.
	}
	else if (MIS_OLDWORLD == LOG_SUCCESS)
	&& 		(LordHagen.aivar[AIV_TalkedToPlayer] == true)
	{
		AI_Output (self, other, "DIA_Ingmar_Hallo_06_02"); //Sytuacja w G�rniczej Dolinie jest do�� niepokoj�ca. Potrzebny nam plan, dzi�ki kt�remu za�egnane zostanie niebezpiecze�stwo, a nasi ch�opcy wr�c� do domu wraz z wydobyt� rud�.
		DIA_Ingmar_Hallo_permanent = true;
	}
	else 
	{
		AI_Output (self, other, "DIA_Ingmar_Hallo_06_03"); //S�dzi�em, �e przyszed�e� porozmawia� z Lordem Hagenem. Na co czekasz?
	};
};
///////////////////////////////////////////////////////////////////////
//	Info Krieg mit den Orks 
///////////////////////////////////////////////////////////////////////
instance DIA_Ingmar_Krieg		(C_INFO)
{
	npc		 	 = 	Pal_201_Ingmar;
	nr			 =  99;
	condition	 = 	DIA_Ingmar_Krieg_Condition;
	information	 = 	DIA_Ingmar_Krieg_Info;
	permanent    =  false;
	description	 =  "Jak sytuacja na kontynencie?";
};
func int DIA_Ingmar_Krieg_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	{
		return true;
	};
};
func void DIA_Ingmar_Krieg_Info ()
{
	AI_Output (other, self, "DIA_Ingmar_Krieg_15_00"); //Jak sytuacja na kontynencie?
	AI_Output (self, other, "DIA_Ingmar_Krieg_06_01"); //Jeszcze nie wygrali�my wojny, chocia� kr�lewska armia zmusi�a ork�w do odwrotu.
	AI_Output (self, other, "DIA_Ingmar_Krieg_06_02"); //Wci�� jednak musimy stawia� czo�a niewielkim grupom naje�d�c�w.
	AI_Output (self, other, "DIA_Ingmar_Krieg_06_03"); //Te stworzenia nie znaj� honoru ani wiary - dlatego wierz� w nasze ostateczne zwyci�stwo.
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

INSTANCE DIA_Ingmar_KAP3_EXIT(C_INFO)
{
	npc			= Pal_201_Ingmar;
	nr			= 999;
	condition	= DIA_Ingmar_KAP3_EXIT_Condition;
	information	= DIA_Ingmar_KAP3_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Ingmar_KAP3_EXIT_Condition()
{
	if (Kapitel == 9)	
	{
		return true;
	};
};
FUNC VOID DIA_Ingmar_KAP3_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
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

INSTANCE DIA_Ingmar_KAP4_EXIT(C_INFO)
{
	npc			= Pal_201_Ingmar;
	nr			= 999;
	condition	= DIA_Ingmar_KAP4_EXIT_Condition;
	information	= DIA_Ingmar_KAP4_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Ingmar_KAP4_EXIT_Condition()
{
	if (Kapitel == 10)	
	{
		return true;
	};
};
FUNC VOID DIA_Ingmar_KAP4_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

	
///////////////////////////////////////////////////////////////////////
//	Info Orkelite
///////////////////////////////////////////////////////////////////////
instance DIA_Ingmar_ORKELITE		(C_INFO)
{
	npc		 = 	Pal_201_Ingmar;
	nr		 = 	40;
	condition	 = 	DIA_Ingmar_ORKELITE_Condition;
	information	 = 	DIA_Ingmar_ORKELITE_Info;
	description	 = 	"Orkowie planuj� ogromny atak.";
};

func int DIA_Ingmar_ORKELITE_Condition ()
{
	if ((TalkedTo_AntiPaladin == true) || (Npc_HasItems (other,ItRi_OrcElite)) || (Hagen_SawOrcRing == true))
	&& (hero.guild == GIL_PAL)
	{
		return true;
	};
};

func void DIA_Ingmar_ORKELITE_Info ()
{

	AI_Output (other, self, "DIA_Ingmar_ORKELITE_15_00"); //Orkowie planuj� ogromny atak.
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_06_01"); //Doprawdy? Bardzo interesuj�ce. A sk�d niby o tym wiesz?

	if (TalkedTo_AntiPaladin == true)
	{
	AI_Output (other, self, "DIA_Ingmar_ORKELITE_15_02"); //Rozmawia�em z nimi.
	};

	AI_Output (other, self, "DIA_Ingmar_ORKELITE_15_03"); //Niekt�rzy z ich przyw�dc�w grasuj� w tej okolicy.
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_06_04"); //Hm. Nie wygl�da mi to na typow� strategi� ork�w.

	Info_ClearChoices	(DIA_Ingmar_ORKELITE);
	Info_AddChoice	(DIA_Ingmar_ORKELITE, "Lepiej wymy�l, jak si� ich pozby�.", DIA_Ingmar_ORKELITE_loswerden );
	Info_AddChoice	(DIA_Ingmar_ORKELITE, "Co teraz zrobimy?", DIA_Ingmar_ORKELITE_wasTun );
	Info_AddChoice	(DIA_Ingmar_ORKELITE, "Co masz na my�li?", DIA_Ingmar_ORKELITE_wieso );

	Log_CreateTopic (TOPIC_OrcElite, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_OrcElite, LOG_RUNNING);
	B_LogEntry (TOPIC_OrcElite,"Ingmara bardzo zainteresowa�a historia o przyw�dcy herszt�w ork�w."); 

	MIS_KillOrkOberst = LOG_RUNNING;
};
func void DIA_Ingmar_ORKELITE_loswerden ()
{
	AI_Output (other, self, "DIA_Ingmar_ORKELITE_loswerden_15_00"); //Lepiej wymy�l, jak si� ich pozby�.
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_loswerden_06_01"); //Gdyby�my mieli wi�cej informacji... Wy�l� kogo� na zwiady.
	Info_ClearChoices	(DIA_Ingmar_ORKELITE);
};

func void DIA_Ingmar_ORKELITE_wieso ()
{
	AI_Output (other, self, "DIA_Ingmar_ORKELITE_wieso_15_00"); //Co to oznacza?
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_wieso_06_01"); //A je�li m�wisz prawd�, oznacza to, �e pr�buj� nas najpierw os�abi�, wysy�aj�c tu swoich najlepszych wojownik�w.
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_wieso_06_02"); //Przewa�nie jeden dow�dca prowadzi ca�� hord� orkowych wojownik�w. Zwykle nie spotyka si� ich w grupach.
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_wieso_06_03"); //Taka strategia ma swoje uzasadnienie - przyw�dcy stanowi� rdze� si� szturmowych i zwykle s� otoczeni kordonem wojownik�w.
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_wieso_06_04"); //Dlatego, aby si� do nich zbli�y�, trzeba pokona� przynajmniej 30 wojownik�w.
	
	B_LogEntry (TOPIC_OrcElite,"Ingmar wspomina� co� o przyw�dcy herszt�w ork�w."); 
};

func void DIA_Ingmar_ORKELITE_wasTun ()
{
	AI_Output (other, self, "DIA_Ingmar_ORKELITE_wasTun_15_00"); //Co teraz zrobimy?
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_wasTun_06_01"); //Kiedy pojawiaj� si� w takiej liczbie, to przewa�nie tworz� patrol prowadzony przez najwy�szego rang� przyw�dc�.
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_wasTun_06_02"); //Herszt zak�ada siedzib� i wycofuje si� do jakiej� jaskini, z kt�rej wydaje rozkazy swoim oddzia�om.
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_wasTun_06_03"); //Gdyby uda�o nam si� schwyta� tego przyw�dc�, zyskaliby�my ogromn� przewag�.
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_wasTun_06_04"); //Orkowi przyw�dcy lubi� przebywa� blisko wroga. Jego jaskini nale�y zatem szuka� gdzie� w pobli�u miasta.
	AI_Output (self, other, "DIA_Ingmar_ORKELITE_wasTun_06_05"); //W pobli�u farmy Lobarta zauwa�ono kilku ork�w. Mo�e w�a�nie tam nale�a�oby rozpocz�� poszukiwania.

	B_LogEntry (TOPIC_OrcElite,"Ingmar s�dzi, �e orkowy przyw�dca przebywa prawdopodobnie w jaskini gdzie� w pobli�u farmy Lobarta. Ingmar chce, abym go odnalaz� i pokona�."); 
	
	Info_ClearChoices	(DIA_Ingmar_ORKELITE);
};


///////////////////////////////////////////////////////////////////////
//	Info Hauptquartier
///////////////////////////////////////////////////////////////////////
instance DIA_Ingmar_HAUPTQUARTIER		(C_INFO)
{
	npc			 = 	Pal_201_Ingmar;
	nr			 = 	41;
	condition	 = 	DIA_Ingmar_HAUPTQUARTIER_Condition;
	information	 = 	DIA_Ingmar_HAUPTQUARTIER_Info;
	permanent	 =  false;
	description	 = 	"Uda�o mi si� odnale�� siedzib� ork�w.";
};

func int DIA_Ingmar_HAUPTQUARTIER_Condition ()
{
	if (Npc_IsDead(OrkElite_AntiPaladinOrkOberst))
	&& (Npc_KnowsInfo(other, DIA_Ingmar_ORKELITE))
	{
		return true;
	};
};

func void DIA_Ingmar_HAUPTQUARTIER_Info ()
{
	AI_Output (other, self, "DIA_Ingmar_HAUPTQUARTIER_15_00"); //Uda�o mi si� odnale�� siedzib� ork�w. Ich herszt poleg� w walce.
	AI_Output (self, other, "DIA_Ingmar_HAUPTQUARTIER_06_01"); //To wspania�a wiadomo��. Przez jaki� czas w szeregach wroga zapanuje chaos.
	AI_Output (self, other, "DIA_Ingmar_HAUPTQUARTIER_06_02"); //Musz� przyzna�, �e nie�le si� spisa�e�. Gdyby�my mieli wi�cej rycerzy takich jak ty, nadchodz�ca bitwa by�aby dla nas bu�k� z mas�em.
	AI_Output (self, other, "DIA_Ingmar_HAUPTQUARTIER_06_03"); //Prosz�, we� to z�oto i kup sobie za nie troch� ekwipunku.

	B_GivePlayerXP(XP_BONUS_10);
	CreateInvItems (self, ItMi_Gold, 300);									
	B_GiveInvItems (self, other, ItMi_Gold, 300);					
	MIS_KillOrkOberst = LOG_SUCCESS;
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

INSTANCE DIA_Ingmar_KAP5_EXIT(C_INFO)
{
	npc			= Pal_201_Ingmar;
	nr			= 999;
	condition	= DIA_Ingmar_KAP5_EXIT_Condition;
	information	= DIA_Ingmar_KAP5_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Ingmar_KAP5_EXIT_Condition()
{
	if (Kapitel == 11)	
	{
		return true;
	};
};
FUNC VOID DIA_Ingmar_KAP5_EXIT_Info()
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


INSTANCE DIA_Ingmar_KAP6_EXIT(C_INFO)
{
	npc			= Pal_201_Ingmar;
	nr			= 999;
	condition	= DIA_Ingmar_KAP6_EXIT_Condition;
	information	= DIA_Ingmar_KAP6_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Ingmar_KAP6_EXIT_Condition()
{
	if (Kapitel == 12)	
	{
		return true;
	};
};
FUNC VOID DIA_Ingmar_KAP6_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};
