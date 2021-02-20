//***********************************************************************
//	Info EXIT 
//***********************************************************************
INSTANCE DIA_Babo_Kap1_EXIT   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 999;
	condition   = DIA_Babo_Kap1_EXIT_Condition;
	information = DIA_Babo_Kap1_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Babo_Kap1_EXIT_Condition()
{
	if (Kapitel == 7)
	{
		return true;
	};	
};
FUNC VOID DIA_Babo_Kap1_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
//***********************************************************************
//	Info Hello 
//***********************************************************************
INSTANCE DIA_Babo_Hello   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 2;
	condition   = DIA_Babo_Hello_Condition;
	information = DIA_Babo_Hello_Info;
	permanent   = false;
	important 	= true;
};
FUNC INT DIA_Babo_Hello_Condition()
{
	if (Npc_IsInState (self,ZS_Talk))
	&& (other.guild == GIL_NOV)
	{ 
		return true;
	};	
};
FUNC VOID DIA_Babo_Hello_Info()
{
	AI_Output (self ,other,"DIA_Babo_Hello_03_00"); //Ty te� tu jeste� nowy, prawda?
	AI_Output (other,self ,"DIA_Babo_Hello_15_01"); //Tak. D�ugo tu jeste�?
	AI_Output (self ,other,"DIA_Babo_Hello_03_02"); //Od czterech tygodni. Dosta�e� ju� kij do walki?
	AI_Output (other,self ,"DIA_Babo_Hello_15_03"); //Jeszcze nie.
	AI_Output (self ,other,"DIA_Babo_Hello_03_04"); //No to we� ten. Wszyscy nowicjusze nosz� takie kije jako znak, �e potrafimy si� broni�. Potrafisz walczy�?
	AI_Output (other,self ,"DIA_Babo_Hello_15_05"); //No c�, mia�em ju� kiedy� w r�kach bro�...
	AI_Output (self ,other,"DIA_Babo_Hello_03_06"); //Je�li chcesz, mog� ci� czego� nauczy�. Ale mam pro�b�...

	B_GiveInvItems (self, other, ITMW_2h_NOV_Mace, 1);
	AI_EquipBestMeleeWeapon(self);
};
//***********************************************************************
//	Info Anliegen
//***********************************************************************
INSTANCE DIA_Babo_Anliegen   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 2;
	condition   = DIA_Babo_Anliegen_Condition;
	information = DIA_Babo_Anliegen_Info;
	permanent   = false;
	description	= "Co to za pro�ba?";
};
FUNC INT DIA_Babo_Anliegen_Condition()
{
	if (other.guild == GIL_NOV)
	&& (Npc_KnowsInfo (other, DIA_Babo_Hello))
	{ 
		return true;
	};	
};
FUNC VOID DIA_Babo_Anliegen_Info()
{
	AI_Output (other,self ,"DIA_Babo_Anliegen_15_00"); //Co to za pro�ba?
	AI_Output (self ,other,"DIA_Babo_Anliegen_03_01"); //No c�, jeden z paladyn�w, Sergio, jest w tej chwili w klasztorze.
	AI_Output (self ,other,"DIA_Babo_Anliegen_03_02"); //Je�li nam�wisz go, �eby ze mn� troch� po�wiczy�, to ci� wyszkol�.
	AI_Output (other,self ,"DIA_Babo_Anliegen_15_03"); //Zobacz�, co da si� zrobi�.
	
	Log_CreateTopic (Topic_BaboTrain,LOG_MISSION);
	Log_SetTopicStatus (Topic_BaboTrain,LOG_RUNNING);
	B_LogEntry (Topic_BaboTrain, "Je�li przekonam paladyna Sergia, aby po�wiczy� z Babo, ten ostatni nauczy mnie walczy� or�em dwur�cznym.");
	
};
//***********************************************************************
//	Info Sergio
//***********************************************************************
INSTANCE DIA_Babo_Sergio   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 2;
	condition   = DIA_Babo_Sergio_Condition;
	information = DIA_Babo_Sergio_Info;
	permanent   = false;
	description	= "Rozmawia�em z Sergiem.";
};
FUNC INT DIA_Babo_Sergio_Condition()
{
	if Npc_KnowsInfo (other, DIA_Sergio_Babo)
	&& (other.guild == GIL_NOV)
	{ 
		return true;
	};	
};
FUNC VOID DIA_Babo_Sergio_Info()
{
	AI_Output (other,self ,"DIA_Babo_Sergio_15_00"); //Rozmawia�em z Sergiem. Codziennie rano b�dzie z tob� trenowa� przez dwie godziny, od pi�tej.
	AI_Output (self ,other,"DIA_Babo_Sergio_03_01"); //Dzi�kuj�! To dla mnie zaszczyt!
	AI_Output (self ,other,"DIA_Babo_Sergio_03_02"); //Je�li chcesz, wyja�ni� ci te� tajniki walki.
	
	self.aivar[AIV_CanTeach] = true;
	Babo_Training = true;
	B_GivePlayerXP(XP_Ambient*2);
	
	Log_CreateTopic (Topic_KlosterTeacher,LOG_NOTE);
	B_LogEntry (Topic_KlosterTeacher, "Babo mo�e mnie nauczy� walki or�em dwur�cznym.");
};

// *************************************************************************
// 							Wurst verteilen
// *************************************************************************
INSTANCE DIA_Babo_Wurst(C_INFO)
{
	npc         = NOV_612_Babo;
	nr			= 2;
	condition	= DIA_Babo_Wurst_Condition;
	information	= DIA_Babo_Wurst_Info;
	permanent	= false;
	description = "Prosz�, we� kie�bas�.";
};                       

FUNC INT DIA_Babo_Wurst_Condition()
{
	if (Kapitel == 7)
	&& (MIS_GoraxEssen == LOG_RUNNING)
	&& (Npc_HasItems (self, ItFo_SchafsWurst ) == 0)
	&& (Npc_HasItems (other, ItFo_SchafsWurst ) >= 1)
	{
		return true;
	};
};
FUNC VOID DIA_Babo_Wurst_Info()
{	
	AI_Output (other, self, "DIA_Babo_Wurst_15_00"); //Prosz�, we� kie�bas�.
	AI_Output (self, other, "DIA_Babo_Wurst_03_01"); //Och, kie�basy z barana, wspaniale! S� najlepsze - no, daj mi jeszcze jedn�!
	AI_Output (other, self, "DIA_Babo_Wurst_15_02"); //Wtedy nie wystarczy dla pozosta�ych.
	AI_Output (self, other, "DIA_Babo_Wurst_03_03"); //I tak masz o jedn� za du�o. T�, kt�ra jest dla ciebie. A co znaczy jedna kie�baska dla przyjaciela?
	AI_Output (self, other, "DIA_Babo_Wurst_03_04"); //Daj spok�j. Dam ci za ni� zw�j z czarem 'Ognista strza�a'.
	
	B_GiveInvItems (other, self, ItFo_SchafsWurst, 1);
	Wurst_Gegeben += 1;
	
	CreateInvItems (self, ITFO_Sausage,1);
	B_UseItem (self, ITFO_Sausage);
	
	var string NovizeText;
	var string NovizeLeft;
	NovizeLeft = IntToString (13 - Wurst_Gegeben);
	NovizeText = ConcatStrings(NovizeLeft, PRINT_NovizenLeft);
	AI_PrintScreen	(NovizeText, -1, YPOS_GOLDGIVEN, FONT_ScreenSmall, 2);
	
	Info_ClearChoices (DIA_Babo_Wurst);
	Info_AddChoice (DIA_Babo_Wurst,"Dobrze, we� jeszcze jedn�.",DIA_Babo_Wurst_JA);
	Info_AddChoice (DIA_Babo_Wurst,"Nie, nie zrobi� tego.",DIA_Babo_Wurst_NEIN);
};
FUNC VOID DIA_Babo_Wurst_JA()
{
	AI_Output (other, self, "DIA_Babo_Wurst_JA_15_00"); //Dobrze, we� jeszcze jedn�.
	AI_Output (self, other, "DIA_Babo_Wurst_JA_03_01"); //Dobrze. Oto tw�j zw�j z czarem.
	
	B_GiveInvItems (other, self, ItFo_SchafsWurst, 1);
	B_GiveInvItems (self, other, ItSC_Sleep, 1);
	
	Info_ClearChoices (DIA_Babo_Wurst);
};
FUNC VOID DIA_Babo_Wurst_NEIN()
{
	AI_Output (other, self, "DIA_Babo_Wurst_NEIN_15_00"); //Nie, nie zrobi� tego.
	AI_Output (self, other, "DIA_Babo_Wurst_NEIN_03_01"); //Cz�owieku, jeste� z tych, co to s� zawsze bardzo skrupulatni, no nie?
	Info_ClearChoices (DIA_Babo_Wurst);
};
//***********************************************************************
//	Was ist zwischen dir und Agon passiert? 
//***********************************************************************

INSTANCE DIA_Babo_YouAndAgon   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 3;
	condition   = DIA_Babo_YouAndAgon_Condition;
	information = DIA_Babo_YouAndAgon_Info;
	permanent   = false;
	description	= "Co zasz�o mi�dzy tob� i Agonem?";
};

FUNC INT DIA_Babo_YouAndAgon_Condition()
{
	if Npc_KnowsInfo (other,DIA_Opolos_Monastery)
	&& (other.guild == GIL_NOV)
	{
		return true;
	};		
};

FUNC VOID DIA_Babo_YouAndAgon_Info()
{
	AI_Output (other,self ,"DIA_Babo_YouAndAgon_15_00"); //Co zasz�o mi�dzy tob� i Agonem?
	AI_Output (self ,other,"DIA_Babo_YouAndAgon_03_01"); //Och, mieli�my odmienne pogl�dy na temat ognistych pokrzyw.
	AI_Output (self ,other,"DIA_Babo_YouAndAgon_03_02"); //Agon za bardzo je podlewa� i zgni�y im korzenie.
	AI_Output (self ,other,"DIA_Babo_YouAndAgon_03_03"); //A kiedy tak si� sta�o, mnie za to obwini�.
	AI_Output (self ,other,"DIA_Babo_YouAndAgon_03_04"); //Od tej pory ka�� mi przez ca�y dzie� zamiata� dziedziniec.
};
//***********************************************************************
//	Warum hat Agon das getan?
//***********************************************************************
INSTANCE DIA_Babo_WhyDidAgon  (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 4;
	condition   = DIA_Babo_WhyDidAgon_Condition;
	information = DIA_Babo_WhyDidAgon_Info;
	permanent   = false;
	description	= "Dlaczego Agon to zrobi�?";
};
FUNC INT DIA_Babo_WhyDidAgon_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Babo_YouAndAgon))
	&& (other.guild == GIL_NOV)
	{
		return true;
	};		
};
FUNC VOID DIA_Babo_WhyDidAgon_Info()
{
	AI_Output (other,self ,"DIA_Babo_WhyDidAgon_15_00"); //Dlaczego Agon to zrobi�?
	AI_Output (self ,other,"DIA_Babo_WhyDidAgon_03_01"); //Musisz go o to zapyta�. Wydaje mi si�, �e on po prostu nie znosi, kiedy kto� jest lepszy od niego.
};
//***********************************************************************
//	Du hast wohl Ahnung von Pflanzen?
//***********************************************************************
INSTANCE DIA_Babo_PlantLore  (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 5;
	condition   = DIA_Babo_PlantLore_Condition;
	information = DIA_Babo_PlantLore_Info;
	permanent   = false;
	description	= "Wygl�da na to, �e wiesz co nieco o ro�linach?";
};
FUNC INT DIA_Babo_PlantLore_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Babo_YouAndAgon))
	&& (other.guild == GIL_NOV)
	{
		return true;
	};		
};
FUNC VOID DIA_Babo_PlantLore_Info()
{
	AI_Output (other,self ,"DIA_Babo_PlantLore_15_00"); //Wygl�da na to, �e wiesz co nieco o ro�linach?
	AI_Output (self ,other,"DIA_Babo_PlantLore_03_01"); //Mieli�my ogr�d z zio�ami i tam nauczy�em si� paru sztuczek od mojego dziadka.
	AI_Output (self ,other,"DIA_Babo_PlantLore_03_02"); //Naprawd� wola�bym znowu pracowa� w ogrodzie.
	
	MIS_HelpBabo = LOG_RUNNING;
	Log_CreateTopic (Topic_BaboGaertner,LOG_MISSION);
	Log_SetTopicStatus (Topic_BaboGaertner,LOG_RUNNING);
	B_LogEntry (Topic_BaboGaertner,"Babo wola�by pracowa� w ogrodzie, ni� zamiata� podw�rze.");
};
//***********************************************************************
//	Fegen
//***********************************************************************
INSTANCE DIA_Babo_Fegen  (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 2;
	condition   = DIA_Babo_Fegen_Condition;
	information = DIA_Babo_Fegen_Info;
	permanent   = false;
	description	= "Mam posprz�ta� komnaty nowicjuszy.";
};
FUNC INT DIA_Babo_Fegen_Condition()
{
	if (MIS_ParlanFegen == LOG_RUNNING)
	{
		return true;
	};		
};
FUNC VOID DIA_Babo_Fegen_Info()
{
	AI_Output (other,self ,"DIA_Babo_Fegen_15_00"); //Mam posprz�ta� komnaty nowicjuszy.
	AI_Output (self ,other,"DIA_Babo_Fegen_03_01"); //Wzi��e� spory ci�ar na barki. Wiesz co - pomog� ci. Sam nigdy tego nie sko�czysz.
	
	NOV_Helfer += 1;
	B_GivePlayerXP(XP_BONUS_0);
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "FEGEN");

	B_LogEntry 	(Topic_ParlanFegen,"Babo pomo�e mi pozamiata� komnaty nowicjuszy.");
};

//***********************************************************************
//	 Wie ist das Leben hier im Kloster?
//***********************************************************************
INSTANCE DIA_Babo_Life   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 10;
	condition   = DIA_Babo_Life_Condition;
	information = DIA_Babo_Life_Info;
	permanent   = true;
	description	= "Jak tu si� �yje, w klasztorze?";
};
FUNC INT DIA_Babo_Life_Condition()
{
	if (other.guild == GIL_NOV)
	{
		return true;
	};	
};
FUNC VOID DIA_Babo_Life_Info()
{
	AI_Output (other,self ,"DIA_Babo_Life_15_00"); //Jak tu si� �yje, w klasztorze?
	AI_Output (self ,other,"DIA_Babo_Life_03_01"); //Nie chc� narzeka�, ale nie s�dzi�em, �e obowi�zuje tutaj taki rygor. Je�li nie trzymasz si� �ci�le zasad, spotyka ci� kara.
	AI_Output (self ,other,"DIA_Babo_Life_03_02"); //Oczywi�cie, wielu nowicjuszy chce studiowa� nauki Innosa w bibliotece. Pragn� by� gotowi, kiedy zostan� wybrani.
	AI_Output (self ,other,"DIA_Babo_Life_03_03"); //Ale ja my�l�, �e najlepszym przygotowaniem do Pr�by Magii jest wykonywanie w�asnych zada�.
	
	if (Npc_KnowsInfo (other,DIA_Igaranz_Choosen) == false)
	{
		AI_Output (other,self ,"DIA_Babo_Life_15_04"); //O co chodzi z tym Wybranym i Pr�b�?
		AI_Output (self ,other,"DIA_Babo_Life_03_05"); //Porozmawiaj z bratem Igarazem. On wie du�o na ten temat.
	};
};
//*********************************************************************
//		Sc hat Babo den G�rtnerposten verschafft (Kap. 2)
//*********************************************************************
INSTANCE DIA_Babo_HowIsIt   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 1;
	condition   = DIA_Babo_HowIsIt_Condition;
	information = DIA_Babo_HowIsIt_Info;
	permanent   = true;
	description	= "Jak si� masz?";
};
FUNC INT DIA_Babo_HowIsIt_Condition()
{
	if (hero.guild == GIL_KDF)
	&& (Kapitel < 9)
	{
		return true;
	};	
};
//--------------------
var int Babo_XPgiven;
//--------------------
FUNC VOID DIA_Babo_HowIsIt_Info()
{
	AI_Output (other,self ,"DIA_Babo_HowIsIt_15_00"); //Jak si� masz?
	
	if (MIS_HelpBabo == LOG_SUCCESS)
	{
		AI_Output (self ,other,"DIA_Babo_HowIsIt_03_01"); //Dzi�kuj� magom za moje zadanie.
		AI_Output (self ,other,"DIA_Babo_HowIsIt_03_02"); //Cieszy mnie praca w ogrodzie i mam nadziej�, �e magowie s� ze mnie zadowoleni, Panie.
		
		if (Babo_XPgiven == false)
		{
			B_GivePlayerXP(XP_Ambient);
			Babo_XPgiven = true;
		};
	}
	else
	{
		AI_Output (self ,other,"DIA_Babo_HowIsIt_03_03"); //D... d... dobrze, Panie.
		AI_Output (self ,other,"DIA_Babo_HowIsIt_03_04"); //Pracuj� ci�ko i staram si� nie zawie�� mag�w.
	};
	
	AI_StopProcessInfos (self);
};

//####################################################
//##
//##	Kapitel 2
//##
//####################################################

INSTANCE DIA_Babo_Kap2_EXIT   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 999;
	condition   = DIA_Babo_Kap2_EXIT_Condition;
	information = DIA_Babo_Kap2_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Babo_Kap2_EXIT_Condition()
{
	if (Kapitel == 8)
	{
		return true;
	};	
};
FUNC VOID DIA_Babo_Kap2_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//####################################################
//##
//##	Kapitel 3
//##
//####################################################

INSTANCE DIA_Babo_Kap3_EXIT   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 999;
	condition   = DIA_Babo_Kap3_EXIT_Condition;
	information = DIA_Babo_Kap3_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Babo_Kap3_EXIT_Condition()
{
	if (Kapitel == 9)
	{
		return true;
	};	
};
FUNC VOID DIA_Babo_Kap3_EXIT_Info()
{
	AI_StopProcessInfos (self);
};



//******************************
// hallo!
//******************************

INSTANCE DIA_Babo_Kap3_Hello   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 31;
	condition   = DIA_Babo_Kap3_Hello_Condition;
	information = DIA_Babo_Kap3_Hello_Info;
	permanent   = false;
	description = "Co tu porabiasz?";
};
FUNC INT DIA_Babo_Kap3_Hello_Condition()
{
	if (Kapitel >= 9)
	{
		return true;
	};	
};
FUNC VOID DIA_Babo_Kap3_Hello_Info()
{
	AI_Output (other,self ,"DIA_Babo_Kap3_Hello_15_00"); //Co tu robisz?

	if (hero.guild == GIL_KDF)
	{
		AI_Output (self ,other,"DIA_Babo_Kap3_Hello_03_01"); //Staram si� wykona� moje zadania dla dobra klasztoru.
	}	
	else
	{
		AI_Output (self ,other,"DIA_Babo_Kap3_Hello_03_02"); //Nie wolno mi z tob� rozmawia�. Naszym prze�o�onym nie podoba si�, kiedy kontaktujemy si� z obcymi.
	}; 
};

//*********************************************
//	Kopf hoch!
//*********************************************

INSTANCE DIA_Babo_Kap3_KeepTheFaith   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 31;
	condition   = DIA_Babo_Kap3_KeepTheFaith_Condition;
	information = DIA_Babo_Kap3_KeepTheFaith_Info;
	permanent   = false;
	description = "Nie wolno ci traci� wiary.";
};
FUNC INT DIA_Babo_Kap3_KeepTheFaith_Condition()
{
	if (Kapitel >= 9)
	&& (Npc_KnowsInfo (other,DIA_Babo_Kap3_Hello))
	&& (hero.guild == GIL_KDF)
	{
		return true;
	};	
};
FUNC VOID DIA_Babo_Kap3_KeepTheFaith_Info()
{
	AI_Output (other,self ,"DIA_Babo_Kap3_KeepTheFaith_15_00"); //Nie wolno ci traci� wiary.
	AI_Output (self ,other,"DIA_Babo_Kap3_KeepTheFaith_03_01"); //Nie... To znaczy, nigdy bym czego� takiego nie zrobi�. Naprawd�!
	AI_Output (other,self ,"DIA_Babo_Kap3_KeepTheFaith_15_02"); //Ka�dy z nas wystawiany jest na ci�kie pr�by.
	AI_Output (self ,other,"DIA_Babo_Kap3_KeepTheFaith_03_03"); //Tak, Panie. B�d� o tym pami�ta�. Dzi�kuj� ci.
	
	B_GivePlayerXP(XP_Ambient); 
};

//*********************************************
//	Das klingt aber nicht sehr gl�cklich.
//*********************************************

INSTANCE DIA_Babo_Kap3_Unhappy   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 31;
	condition   = DIA_Babo_Kap3_Unhappy_Condition;
	information = DIA_Babo_Kap3_Unhappy_Info;
	permanent   = false;
	description = "To nie brzmia�o, jakby� by� zadowolony.";
};
FUNC INT DIA_Babo_Kap3_Unhappy_Condition()
{
	if (Kapitel >= 9)
	&& (hero.guild != GIL_KDF)
	&& (Npc_KnowsInfo (other,DIA_Babo_Kap3_Hello))
	{
		return true;
	};	
};
FUNC VOID DIA_Babo_Kap3_Unhappy_Info()
{
	AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_15_00"); //To nie brzmia�o, jakby� by� zadowolony.
	AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_03_01"); //No c�... To znaczy, wszystko w porz�dku, naprawd�.
	AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_03_02"); //Tylko... Och, nie chc� narzeka�.

	Info_ClearChoices	(DIA_Babo_Kap3_Unhappy);
	Info_AddChoice	(DIA_Babo_Kap3_Unhappy,"Wi�c przesta� j�cze�.",DIA_Babo_Kap3_Unhappy_Lament); 
	Info_AddChoice	(DIA_Babo_Kap3_Unhappy,"No dalej, mnie mo�esz powiedzie�.",DIA_Babo_Kap3_Unhappy_TellMe);
};

	FUNC VOID DIA_Babo_Kap3_Unhappy_Lament ()
	{
		AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_Lament_15_00"); //Wi�c przesta� j�cze�.
		AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_Lament_03_01"); //Tylko... prosz�... nie m�w magom.
		AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_Lament_03_02"); //Nie chc�, �eby mnie znowu ukarali.
		AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_Lament_15_03"); //Zastanowi� si�.
		
		Info_ClearChoices	(DIA_Babo_Kap3_Unhappy);
	};
	
	FUNC VOID DIA_Babo_Kap3_Unhappy_TellMe ()
	{
		AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_TellMe_15_00"); //No dalej, mnie mo�esz powiedzie�.
		AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_TellMe_03_01"); //I naprawd� nie dasz zna� magom?
		AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_TellMe_15_02"); //Czy wygl�dam na takiego, kt�ry by to zrobi�?
		AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_TellMe_03_03"); //W porz�dku. Mam problem z jednym z nowicjuszy. Ma mnie w gar�ci.
		AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_TellMe_15_04"); //No dalej, wykrztu� to z siebie.
		AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_TellMe_03_05"); //Igaraz, tak si� nazywa, znalaz� moje prywatne dokumenty.
		AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_TellMe_03_06"); //Zagrozi�, �e da je magom, je�li nie b�d� robi�, co mi ka�e.
		
		MIS_BabosDocs = LOG_RUNNING; 
		
		Log_CreateTopic (Topic_BabosDocs,LOG_MISSION);
		Log_SetTopicStatus (Topic_BabosDocs,LOG_RUNNING);
		B_LogEntry (Topic_BabosDocs,"Igaraz szanta�uje nowicjusza Babo jakimi� dokumentami.");
		
		Info_ClearChoices (DIA_Babo_Kap3_Unhappy);
		Info_AddChoice (DIA_Babo_Kap3_Unhappy,"S�dz�, �e to zbyt osobista sprawa.",DIA_Babo_Kap3_Unhappy_Privat);
		Info_AddChoice (DIA_Babo_Kap3_Unhappy,"Co masz dla niego zrobi�?",DIA_Babo_Kap3_Unhappy_ShouldDo);
		Info_AddChoice (DIA_Babo_Kap3_Unhappy,"Co to za dokumenty?",DIA_Babo_Kap3_Unhappy_Documents); 
		Info_AddChoice (DIA_Babo_Kap3_Unhappy,"Mog� ci jako� pom�c?",DIA_Babo_Kap3_Unhappy_CanHelpYou);
	};

		FUNC VOID DIA_Babo_Kap3_Unhappy_Privat ()
		{
			AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_Privat_15_00"); //S�dz�, �e to zbyt osobista sprawa.
			AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_Privat_03_01"); //Rozumiem, nie chcesz mie� k�opot�w. Wi�c b�d� musia� si� tym sam zaj��.
			AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_Privat_15_02"); //Jako� sobie poradzisz.
		
			Info_ClearChoices (DIA_Babo_Kap3_Unhappy);
		};
		
		FUNC VOID DIA_Babo_Kap3_Unhappy_ShouldDo ()
		{
			AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_ShouldDo_15_00"); //Co masz dla niego zrobi�?
			AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_ShouldDo_03_01"); //Nie lubi� o tym m�wi�. W ka�dym razie, nie spodoba�oby si� to Innosowi.
			AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_ShouldDo_03_02"); //Wol� nie my�le�, co by si� sta�o, gdyby to wysz�o na jaw.
		
		};
		
		FUNC VOID DIA_Babo_Kap3_Unhappy_Documents ()
		{
			AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_Documents_15_00"); //Co to za dokumenty?
			AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_Documents_03_01"); //To wy��cznie moja prywatna sprawa.
			AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_Documents_15_02"); //No dalej, powiedz mi.
			AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_Documents_03_03"); //To s�, eee... ca�kiem zwyczajne dokumenty. Nic szczeg�lnego.
			AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_Documents_15_04"); //Nie b�d� wi�cej pyta�.
		};
		
		FUNC VOID DIA_Babo_Kap3_Unhappy_CanHelpYou ()
		{
			AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_CanHelpYou_15_00"); //Mog� ci jako� pom�c?
			AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_CanHelpYou_03_01"); //Zrobi�by� to?
			AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_CanHelpYou_15_02"); //To zale�y, oczywi�cie.
			AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_CanHelpYou_03_03"); //Oczywi�cie, zap�ac� ci za to.
			AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_CanHelpYou_15_04"); //Ile?
			AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_CanHelpYou_03_05"); //Rzecz jasna, nie mam wiele pieni�dzy, ale mog� da� ci zw�j z czarem. Mam czar leczniczy.
			
			Info_ClearChoices (DIA_Babo_Kap3_Unhappy);
			Info_AddChoice (DIA_Babo_Kap3_Unhappy,"Wola�bym si� w to nie miesza�.",DIA_Babo_Kap3_Unhappy_No);
			Info_AddChoice (DIA_Babo_Kap3_Unhappy,"Zobacz�, co da si� zrobi�.",DIA_Babo_Kap3_Unhappy_Yes);
		};

			FUNC VOID DIA_Babo_Kap3_Unhappy_No ()
			{
				AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_No_15_00"); //Wola�bym si� w to nie miesza�.
				AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_No_03_01"); //A wi�c nie mam wyboru, musz� ta�czy�, jak mi zagraj�.
			
				Info_ClearChoices (DIA_Babo_Kap3_Unhappy);
			};
			
			FUNC VOID DIA_Babo_Kap3_Unhappy_Yes ()
			{
				AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_Yes_15_00"); //Zobacz�, co da si� zrobi�.
				AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_Yes_03_01"); //Naprawd�, to si� musi uda�. Musi!
				AI_Output (self ,other,"DIA_Babo_Kap3_Unhappy_Yes_03_02"); //Musisz si� tylko dowiedzie�, gdzie Igaraz schowa� te rzeczy. Potem je zakosisz i wszystko b�dzie w porz�dku.
				AI_Output (other,self ,"DIA_Babo_Kap3_Unhappy_Yes_15_03"); //Spokojnie. Wr�� do swoich zaj��. Ja zajm� si� reszt�.
				
				Info_ClearChoices (DIA_Babo_Kap3_Unhappy);
			};

//********************************
//Ich hab deine Dokumente
//********************************
INSTANCE DIA_Babo_Kap3_HaveYourDocs   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 31;
	condition   = DIA_Babo_Kap3_HaveYourDocs_Condition;
	information = DIA_Babo_Kap3_HaveYourDocs_Info;
	permanent   = false;
	description = "Mam twoje dokumenty.";
};
FUNC INT DIA_Babo_Kap3_HaveYourDocs_Condition()
{
	if ((MIS_BabosDocs == LOG_RUNNING				)
	&&   (Npc_HasItems (other,ItWr_BabosDocs_MIS) 	>= 1)
	||  ((Npc_HasItems (other,ItWr_BabosPinUp_MIS) 	>= 1)
	&&   (Npc_HasItems (other,ItWr_BabosLetter_MIS) >= 1)))
	{
		return true;
	};	
};
FUNC VOID DIA_Babo_Kap3_HaveYourDocs_Info()
{
	AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_15_00"); //Mam twoje dokumenty.
	AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_03_01"); //Naprawd�? Dzi�ki, uratowa�e� mnie. Nie wiem, jak ci dzi�kowa�.
	AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_15_02"); //Tak, tak, uspok�j si�.
	AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_03_03"); //To na pewno moje? Jeste� pewien? Poka�.
	
	Info_ClearChoices (DIA_Babo_Kap3_HaveYourDocs);
	Info_AddChoice (DIA_Babo_Kap3_HaveYourDocs,"Zamierzam je na razie zatrzyma�.",DIA_Babo_Kap3_HaveYourDocs_KeepThem);
	
	if (BaboSDocsOpen == true)
	{
		Info_AddChoice (DIA_Babo_Kap3_HaveYourDocs,"Pewne okoliczno�ci spowodowa�y, �e cena posz�a w g�r�.",DIA_Babo_Kap3_HaveYourDocs_IWantMore);
	};
	
	Info_AddChoice (DIA_Babo_Kap3_HaveYourDocs,"Trzymaj.",DIA_Babo_Kap3_HaveYourDocs_HereTheyAre);
};

FUNC VOID DIA_Babo_Kap3_HaveYourDocs_KeepThem()
{
	AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_15_00"); //Zamierzam je na razie zatrzyma�.
	AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_03_01"); //Co?! Co to ma znaczy�?! Co zamierzasz?
	
	Info_ClearChoices (DIA_Babo_Kap3_HaveYourDocs);
	Info_AddChoice (DIA_Babo_Kap3_HaveYourDocs,"Tylko �artowa�em.",DIA_Babo_Kap3_HaveYourDocs_KeepThem_JustJoke);
	Info_AddChoice (DIA_Babo_Kap3_HaveYourDocs,"To ju� moje zmartwienie.",DIA_Babo_Kap3_HaveYourDocs_KeepThem_MyConcern);
	
	if (Igaraz_IsPartner == LOG_SUCCESS)
	{
		Info_AddChoice (DIA_Babo_Kap3_HaveYourDocs,"Igaraz to m�j wsp�lnik.",DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner);
	};
};

	FUNC VOID DIA_Babo_Kap3_HaveYourDocs_KeepThem_JustJoke()
	{
		AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_JustJoke_15_00"); //Tylko �artowa�em.
		AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_JustJoke_03_01"); //Ha, ha, jako� mnie to nie �mieszy. A wi�c gdzie one s�?
		AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_JustJoke_15_02"); //Tutaj.
		
		if (Npc_HasItems (other,ItWr_BabosDocs_MIS) >= 1)
		{
			B_GiveInvItems (other,self,ItWr_BabosDocs_MIS,1);	
		}
		else
		{
			B_GiveInvItems (other,self,ItWr_BabosPinUp_MIS,1);
			B_GiveInvItems (other,self,ItWr_BabosLetter_MIS,1);
		};
		
		B_UseFakeScroll ();
		
		AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_JustJoke_03_03"); //Nie chcia�em ci� obrazi�, ale ca�a ta sytuacja troch� mnie niepokoi.
		AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_JustJoke_15_04"); //W porz�dku. Mi�ej zabawy z tymi DOKUMENTAMI.
		
		MIS_BabosDocs = LOG_SUCCESS;
		B_GivePlayerXP(XP_BONUS_3);
		
		Info_ClearChoices (DIA_Babo_Kap3_HaveYourDocs);
	};
	
	FUNC VOID DIA_Babo_Kap3_HaveYourDocs_KeepThem_MyConcern()
	{
		AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_MyConcern_15_00"); //To moja sprawa.
		AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_MyConcern_03_01"); //Te dokumenty s� moje. Nie masz prawa ich zatrzymywa�.
		AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_MyConcern_15_02"); //Na razie.
		
		Info_ClearChoices (DIA_Babo_Kap3_HaveYourDocs);
	};
	
	FUNC VOID DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner()
	{
		AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_15_00"); //Igaraz jest teraz moim wsp�lnikiem.
		AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_03_01"); //Co?! Nie mo�esz tego zrobi�.
		AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_15_02"); //Wygl�da na to, �e mog�. Zatrzymam te papiery i nic si� nie zmieni.
		AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_15_03"); //Kwestie finansowe za�atwi� z Igarazem.
		AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_15_04"); //No c�, zatem dbaj dobrze o ro�liny.
		AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_03_05"); //Jeste� �wini�. N�dzn�, chciw� �wini�. Innos ci� uka�e.
		
		Info_ClearChoices (DIA_Babo_Kap3_HaveYourDocs);
		Info_AddChoice (DIA_Babo_Kap3_HaveYourDocs,Dialog_Ende,DIA_Babo_Kap3_HaveYourDocs_End);
		Info_AddChoice (DIA_Babo_Kap3_HaveYourDocs,"Uwa�aj na to, co m�wisz.",DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_KeepCalm);
		Info_AddChoice (DIA_Babo_Kap3_HaveYourDocs,"Nie masz co robi�?",DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_NothingToDo);
	};
	
		FUNC VOID DIA_Babo_Kap3_HaveYourDocs_End ()
		{
			AI_StopProcessInfos (self);
		};
		
		FUNC VOID DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_KeepCalm()
		{
			AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_KeepCalm_15_00"); //Uwa�aj na to, co m�wisz.
			AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_KeepCalm_03_01"); //Jestem jak zwykle zbyt uprzejmy.
			
			AI_StopProcessInfos (self); 
		};
						
		FUNC VOID DIA_Babo_Kap3_HaveYourDocs_KeepThem_Partner_NothingToDo ()
		{
			AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_NothingToDo_15_00"); //Nie masz co robi�?
			AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_NothingToDo_03_01"); //Dobrze to rozumiem, ale uwierz mi, to b�dzie mia�o pewne konsekwencje.
			
			AI_StopProcessInfos (self); 
		};

FUNC VOID DIA_Babo_Kap3_HaveYourDocs_IWantMore()
{
	AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_IWantMore_15_00"); //Pewne okoliczno�ci spowodowa�y, �e cena posz�a w g�r�.
	AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_IWantMore_03_01"); //Nie jeste� lepszy od pozosta�ych. Czego chcesz?
	AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_IWantMore_15_02"); //Co masz?
	AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_IWantMore_03_03"); //Mog� ci da� 121 sztuk z�ota. To wszystko, co mam.
	
	Info_ClearChoices (DIA_Babo_Kap3_HaveYourDocs);
	Info_AddChoice (DIA_Babo_Kap3_HaveYourDocs,"To nie wystarczy.",DIA_Babo_Kap3_HaveYourDocs_IWantMore_NotEnough);
	Info_AddChoice (DIA_Babo_Kap3_HaveYourDocs,"Zgoda.",DIA_Babo_Kap3_HaveYourDocs_IWantMore_ThatsEnough);
};

	FUNC VOID DIA_Babo_Kap3_HaveYourDocs_IWantMore_NotEnough()
	{
		AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_IWantMore_NotEnough_15_00"); //To nie wystarczy.
		AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_IWantMore_NotEnough_03_01"); //Ale ja ju� nie mam pieni�dzy. Gdybym przypuszcza�, �e tak si� stanie, nigdy nie wszed�bym do tego klasztoru.
		
		Info_ClearChoices (DIA_Babo_Kap3_HaveYourDocs);
	};
	
	FUNC VOID DIA_Babo_Kap3_HaveYourDocs_IWantMore_ThatsEnough()
	{
		AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_IWantMore_ThatsEnough_15_00"); //Zgoda.
		AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_IWantMore_ThatsEnough_03_01"); //Tu masz pieni�dze i zw�j z czarem.
		
		CreateInvItems (self ,ItPo_Health_01,1);
		CreateInvItems (self ,ItMi_Gold,121);
		B_GiveInvItems (self,other,ItPo_Health_01,1);
		B_GiveInvItems (self ,other,ItMi_Gold,121);
		
		MIS_BabosDocs = LOG_SUCCESS;
		B_GivePlayerXP(XP_BONUS_3); 
		
		Info_ClearChoices (DIA_Babo_Kap3_HaveYourDocs);
	};

FUNC VOID DIA_Babo_Kap3_HaveYourDocs_HereTheyAre()
{
	AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_HereTheyAre_15_00"); //Trzymaj.
	
	if (Npc_HasItems (other,ItWr_BabosDocs_MIS) >= 1)
	{
		B_GiveInvItems (other,self,ItWr_BabosDocs_MIS,1);	
	}
	else
	{
		B_GiveInvItems (other,self,ItWr_BabosPinUp_MIS,1);
		B_GiveInvItems (other,self,ItWr_BabosLetter_MIS,1);
	};
	
	B_UseFakeScroll ();
	AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_HereTheyAre_03_01"); //Tak, s� w komplecie.
	AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_HereTheyAre_03_02"); //Zagl�da�e� do nich?
	AI_Output (other,self ,"DIA_Babo_Kap3_HaveYourDocs_HereTheyAre_15_03"); //A czy to jaka� r�nica?
	AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_HereTheyAre_03_04"); //Nie, pod warunkiem, �e dostan� je z powrotem.
	AI_Output (self ,other,"DIA_Babo_Kap3_HaveYourDocs_HereTheyAre_03_05"); //Mam nadziej�, �e teraz b�d� m�g� odpocz�� w spokoju.
	
	CreateInvItems (self ,ItPo_Health_01,1);
	B_GiveInvItems (self,other,ItPo_Health_01,1);
	
	MIS_BabosDocs = LOG_SUCCESS;
	B_GivePlayerXP(XP_BONUS_3);
	
	Info_ClearChoices (DIA_Babo_Kap3_HaveYourDocs);
};

//*********************************************
//	Bist du zufrieden?
//*********************************************

INSTANCE DIA_Babo_Kap3_Perm   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 39;
	condition   = DIA_Babo_Kap3_Perm_Condition;
	information = DIA_Babo_Kap3_Perm_Info;
	permanent   = true;
	description = "Czy jeste� zadowolony ze swojego zadania?";
};
FUNC INT DIA_Babo_Kap3_Perm_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Babo_Kap3_Hello))
	{
		return true;
	};	
};
FUNC VOID DIA_Babo_Kap3_Perm_Info()
{
	AI_Output (other,self ,"DIA_Babo_Kap3_Perm_15_00"); //Czy jeste� zadowolony ze swojego zadania?
	if (hero.guild == GIL_KDF)
	{
		AI_Output (self ,other,"DIA_Babo_Kap3_Perm_03_01"); //Tak, oczywi�cie. Wiara w m�dro�� i pot�g� Innosa daje mi si��.
		AI_Output (self ,other,"DIA_Babo_Kap3_Perm_03_02"); //Nie chc� okaza� braku szacunku, ale mam dzi� du�o do zrobienia.
		AI_Output (other,self ,"DIA_Babo_Kap3_Perm_15_03"); //Mo�esz kontynuowa�.
		AI_Output (self ,other,"DIA_Babo_Kap3_Perm_03_04"); //Dzi�kuj�.
	}
	else
	{
		AI_Output (self ,other,"DIA_Babo_Kap3_Perm_03_05"); //Jako� idzie, ale musz� wraca� do pracy, bo w przeciwnym razie dzisiaj jej nie sko�cz�.
		AI_Output (self ,other,"DIA_Babo_Kap3_Perm_03_06"); //Nie chc� znowu pracowa� przez p� nocy, �eby wype�ni� moje obowi�zki i unikn�� k�opot�w.
	};
	
	AI_StopProcessInfos (self); 
};



//####################################################
//##
//##	Kapitel 4
//##
//####################################################

INSTANCE DIA_Babo_Kap4_EXIT   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 999;
	condition   = DIA_Babo_Kap4_EXIT_Condition;
	information = DIA_Babo_Kap4_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Babo_Kap4_EXIT_Condition()
{
	if (Kapitel == 10)
	{
		return true;
	};	
};
FUNC VOID DIA_Babo_Kap4_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//####################################################
//##
//##	Kapitel 5
//##
//####################################################

INSTANCE DIA_Babo_Kap5_EXIT   (C_INFO)
{
	npc         = NOV_612_Babo;
	nr          = 999;
	condition   = DIA_Babo_Kap5_EXIT_Condition;
	information = DIA_Babo_Kap5_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Babo_Kap5_EXIT_Condition()
{
	if (Kapitel == 11)
	{
		return true;
	};	
};
FUNC VOID DIA_Babo_Kap5_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
