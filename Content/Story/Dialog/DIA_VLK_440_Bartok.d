// ************************************************************
// 			  					EXIT
// ************************************************************
INSTANCE DIA_Bartok_EXIT   (C_INFO)
{
	npc         = VLK_440_Bartok;
	nr          = 999;
	condition   = DIA_Bartok_EXIT_Condition;
	information = DIA_Bartok_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Bartok_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Bartok_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

// *****************************************************
//						Hallo
// *****************************************************
INSTANCE DIA_Bartok_Hallo (C_INFO)
{
	npc			= VLK_440_Bartok;
	nr			= 1;
	condition	= DIA_Bartok_Hallo_Condition;
	information	= DIA_Bartok_Hallo_Info;
	permanent	= false;
	description = "Co s�ycha�?";
};                       
FUNC INT DIA_Bartok_Hallo_Condition()
{
	return true;
};
FUNC VOID DIA_Bartok_Hallo_Info()
{	
	AI_Output (other ,self,"DIA_Bartok_Hello_15_00"); //Co s�ycha�?
	AI_Output (self ,other,"DIA_Bartok_Hello_04_01"); //Nie jeste� st�d, co? Niewa�ne, ja te� nie.
	AI_Output (other ,self,"DIA_Bartok_Hello_15_02"); //Gdzie si� wcze�niej kr�ci�e�?
	AI_Output (self ,other,"DIA_Bartok_Hello_04_03"); //W lasach, polowa�em na wilki i �cierwojady razem z innymi my�liwymi.
	AI_Output (self ,other,"DIA_Bartok_Hello_04_04"); //Ale rzuci�em to. Czasy zrobi�y si� niebezpieczne. Kr�ci si� tam sporo podejrzanych typ�w...
};
// *****************************************************
//						Jaeger
// *****************************************************
INSTANCE DIA_Bartok_Jaeger(C_INFO)
{
	npc			= VLK_440_Bartok;
	nr			= 2;
	condition	= DIA_Bartok_Jaeger_Condition;
	information	= DIA_Bartok_Jaeger_Info;
	permanent	= false;
	description	= "Gdzie mog� znale�� innych my�liwych?";
};                       
FUNC INT DIA_Bartok_Jaeger_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Bartok_Hallo))
	{
		return true;
	};
};
FUNC VOID DIA_Bartok_Jaeger_Info()
{	
	AI_Output (other ,self,"DIA_Bartok_Jager_15_00"); //Gdzie mog� znale�� innych my�liwych?
	AI_Output (self ,other,"DIA_Bartok_Jager_04_01"); //Mieli�my ob�z niedaleko tawerny, w po�owie drogi do gospodarstwa Onara.
	AI_Output (self ,other,"DIA_Bartok_Jager_04_02"); //Ale nie wiem, czy kto� jeszcze tam zosta�.
	
	AI_Output (self ,other,"DIA_Addon_Bartok_Jager_04_00"); //Do niedawna obaj przebywali�my w mie�cie.
	AI_Output (self ,other,"DIA_Addon_Bartok_Jager_04_01"); //M�j przyjaciel Trokar jest bardzo dobrym my�liwym.
};	

///////////////////////////////////////////////////////////////////////
//	Info MissingPeople
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Bartok_MissingPeople		(C_INFO)
{
	npc		 = 	VLK_440_Bartok;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Bartok_MissingPeople_Condition;
	information	 = 	DIA_Addon_Bartok_MissingPeople_Info;

	description	 = 	"Gdzie on teraz przebywa?";
};

func int DIA_Addon_Bartok_MissingPeople_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Bartok_Jaeger))
		{
			return true;
		};
};

func void DIA_Addon_Bartok_MissingPeople_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Bartok_MissingPeople_15_00"); //Gdzie on teraz przebywa?
	AI_Output	(self, other, "DIA_Addon_Bartok_MissingPeople_04_01"); //To dziwna historia...
	AI_Output	(self, other, "DIA_Addon_Bartok_MissingPeople_04_02"); //Kilka dni temu siedzieli�my w knajpie Coragona i gadali�my o �owach.
	AI_Output	(self, other, "DIA_Addon_Bartok_MissingPeople_04_03"); //Nie pytaj mnie, co si� dok�adnie sta�o - by�em nie�le wstawiony.
	AI_Output	(self, other, "DIA_Addon_Bartok_MissingPeople_04_04"); //Pami�tam tylko, �e Trokar wspomnia� co� o zakupie bagiennego ziela... Nigdy nie wr�ci�.

	MIS_Bartok_MissingTrokar = LOG_RUNNING;
	
	Info_ClearChoices	(DIA_Addon_Bartok_MissingPeople);
	Info_AddChoice	(DIA_Addon_Bartok_MissingPeople, "Nie pr�bowa�e� go szuka�?", DIA_Addon_Bartok_MissingPeople_such );
	Info_AddChoice	(DIA_Addon_Bartok_MissingPeople, "Gdzie mia� kupi� to ziele?", DIA_Addon_Bartok_MissingPeople_wo );
};
func void DIA_Addon_Bartok_MissingPeople_wo ()
{
	AI_Output			(other, self, "DIA_Addon_Bartok_MissingPeople_wo_15_00"); //Gdzie mia� kupi� to ziele?
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_wo_04_01"); //Chyba gdzie� w porcie.
};
func void DIA_Addon_Bartok_MissingPeople_such ()
{
	AI_Output			(other, self, "DIA_Addon_Bartok_MissingPeople_such_15_00"); //Nie pr�bowa�e� go szuka�?
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_such_04_01"); //Nie. Powiadomi�em tylko stra�.
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_such_04_02"); //Jej funkcjonariusze nie zdo�ali go odnale��...
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_such_04_03"); //Mam nadziej�, �e nie zaatakowa� go wilk lub nie sta�o si� co� jeszcze gorszego.
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_such_04_04"); //My�l, �e podczas polowania m�g�bym natkn�� si� na jego zimne truch�o... przepe�nia mnie strachem.
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_such_04_05"); //Ten obraz nigdy chyba nie zniknie z mej pami�ci...
};

// *****************************************************
//						Bosper
// *****************************************************
INSTANCE DIA_Bartok_Bosper (C_INFO)
{
	npc			= VLK_440_Bartok;
	nr			= 3;
	condition	= DIA_Bartok_Bosper_Condition;
	information	= DIA_Bartok_Bosper_Info;
	permanent	= false;
	description	= "Bosper m�wi�, �e kiedy� dla niego pracowa�e�...";
};                       
FUNC INT DIA_Bartok_Bosper_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Bosper_Bartok))
	&& (Npc_KnowsInfo (other, DIA_Bartok_Hallo))
	{
		return true;
	};
};
FUNC VOID DIA_Bartok_Bosper_Info()
{	
	AI_Output (other ,self,"DIA_Bartok_Bosper_15_00"); //Bosper m�wi�, �e kiedy� dla niego pracowa�e�...
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_01"); //To prawda. Ale jego interesuj� tylko te cholerne sk�ry.
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_02"); //M�wi�em mu, jak si� tam zrobi�o niebezpiecznie. Nie zwr�ci� na to uwagi.
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_03"); //No c�, przynajmniej dobrze zap�aci� - nie mog� narzeka�.
	AI_Output (other ,self,"DIA_Bartok_Bosper_15_04"); //Mo�esz mi co� o nim powiedzie�?
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_05"); //Ostatnio kto� ukrad� Bosperowi jeden z jego �uk�w. W bia�y dzie�.
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_06"); //Jaki� facet po prostu wszed� do jego sklepu, wzi�� �uk i wyszed�.
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_07"); //Z�odzieje s� coraz bardziej bezczelni!
	
	if (MIS_Bosper_Bogen != LOG_SUCCESS) 
	{    
		MIS_Bosper_Bogen = LOG_RUNNING;
	};   
};
	
// *****************************************************
//						WannaLearn
// *****************************************************
INSTANCE DIA_Bartok_WannaLearn (C_INFO)
{
	npc			= VLK_440_Bartok;
	nr			= 4;
	condition	= DIA_Bartok_WannaLearn_Condition;
	information	= DIA_Bartok_WannaLearn_Info;
	permanent	= false;
	description	= "Mo�esz nauczy� mnie czego� o polowaniu?";
};                       
FUNC INT DIA_Bartok_WannaLearn_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Bartok_Hallo))
	{
		return true;
	};
};
FUNC VOID DIA_Bartok_WannaLearn_Info()
{	
	AI_Output (other ,self,"DIA_Bartok_WannaLearn_15_00"); //Mo�esz nauczy� mnie czego� o polowaniu?
	AI_Output (self ,other,"DIA_Bartok_WannaLearn_04_01"); //Mog� ci pokaza�, jak si� cicho skrada� i pos�ugiwa� si� �ukiem.
	if (Npc_GetTalentSkill(other,NPC_TALENT_HUNTING) == 0)
	{
		AI_Output (self ,other,"DIA_Bartok_WannaLearn_04_02"); //Je�li chcesz si� nauczy�, jak zdejmowa� sk�ry ze zwierz�t, id� do Bospera. To on mnie tego nauczy�.
	};

	self.aivar[AIV_CanTeach] = true;
	Log_CreateTopic (Topic_CityTeacher, LOG_NOTE);
	B_LogEntry (Topic_CityTeacher, "Bartok mo�e mnie nauczy� strzelania z �uku oraz skradania si�.");
};

// *****************************************************
//						Zusammen
// *****************************************************
var int Bartok_Bereit; 
var int Bartok_Later;
// ---------------------------

INSTANCE DIA_Bartok_Zusammen (C_INFO)
{
	npc			= VLK_440_Bartok;
	nr			= 5;
	condition	= DIA_Bartok_Zusammen_Condition;
	information	= DIA_Bartok_Zusammen_Info;
	permanent	= true;
	description	= "Czemu nie p�jdziemy na polowanie razem?";
};                       
FUNC INT DIA_Bartok_Zusammen_Condition()
{
	if (Bartok_Bereit == false)
	&& (Npc_KnowsInfo (other, DIA_Bartok_Hallo))
	{
		return true;
	};
};
FUNC VOID DIA_Bartok_Zusammen_Info()
{	
	if (Bartok_Later == false)
	{
		AI_Output (other ,self,"DIA_Bartok_Zusammen_15_00"); //Czemu nie p�jdziemy na polowanie razem?
		AI_Output (self ,other,"DIA_Bartok_Zusammen_04_01"); //Hmmm. We dw�ch jest bezpieczniej, to prawda...
		AI_Output (self ,other,"DIA_Bartok_Zusammen_04_02"); //A wi�c znasz si� troch� na polowaniu?
		AI_Output (self ,other,"DIA_Bartok_Zusammen_04_03"); //To znaczy, umiesz zdejmowa� sk�r� ze zwierz�cia?
	};
	
	if (Npc_GetTalentSkill(other,NPC_TALENT_HUNTING) > 0)
	{
		if (Bartok_Later == true)
		{
			AI_Output (self ,other,"DIA_Bartok_HuntNOW_04_01"); //Masz 50 sztuk z�ota?
		}
		else
		{
			AI_Output (other ,self,"DIA_Bartok_Zusammen_15_04"); //Tak.
			AI_Output (self ,other,"DIA_Bartok_Zusammen_04_05"); //Dobra, ale chc� zobaczy� 50 sztuk z�ota. Za to b�dziesz m�g� zatrzyma� sk�ry i sprzeda� je Bosperowi.
			AI_Output (self ,other,"DIA_Bartok_Zusammen_04_06"); //Uczciwy uk�ad, no nie?
		};
		
		Info_ClearChoices (DIA_Bartok_Zusammen);
		Info_AddChoice	  (DIA_Bartok_Zusammen, "Na razie...", DIA_Bartok_Zusammen_Later);
		Info_AddChoice	  (DIA_Bartok_Zusammen, "Tak.", DIA_Bartok_Zusammen_Pay);
	}
	else
	{
		AI_Output (other ,self,"DIA_Bartok_Zusammen_15_07"); //Nie.
		AI_Output (self ,other,"DIA_Bartok_Zusammen_04_08"); //W takim razie to nie ma sensu.
		AI_Output (self ,other,"DIA_Bartok_Zusammen_04_09"); //Wr��, jak si� czego� nauczysz.
	};
};

func void DIA_Bartok_Zusammen_Later()
{
	AI_Output (other ,self,"DIA_Bartok_HuntNOW_Later_15_00"); //Na razie...
	Bartok_Later = true;
	Info_ClearChoices (DIA_Bartok_Zusammen);
};

func void DIA_Bartok_Zusammen_Pay()
{
	Info_ClearChoices (DIA_Bartok_Zusammen);
	
	if (B_GiveInvItems (other, self, itmi_gold, 50))
	{
		AI_Output (other ,self,"DIA_Bartok_HuntNOW_GO_15_00"); //Prosz� bardzo...
		Bartok_Bereit = true;
	}
	else
	{
		AI_Output (self ,other,"DIA_Bartok_HuntNOW_GO_04_03"); //Nie masz z�ota.
	};
};


// *****************************************************
//						HuntNOW
// *****************************************************
var int Bartok_Los;
// ----------------------

INSTANCE DIA_Bartok_HuntNOW (C_INFO)
{
	npc			= VLK_440_Bartok;
	nr			= 5;
	condition	= DIA_Bartok_HuntNOW_Condition;
	information	= DIA_Bartok_HuntNOW_Info;
	permanent	= false;
	description	= "Chod�my na polowanie!";
};                       
FUNC INT DIA_Bartok_HuntNOW_Condition()
{
	if (Bartok_Bereit == true)
	{
		return true;
	};
};
FUNC VOID DIA_Bartok_HuntNOW_Info()
{	
	AI_Output (other ,self,"DIA_Bartok_HuntNOW_15_00"); //Chod�my na polowanie!
	AI_Output (self ,other,"DIA_Bartok_HuntNOW_GO_04_01"); //W porz�dku, id� za mn�. Za po�udniow� bram� zaczyna si� las. Tam znajdziemy du�o zwierz�t.
	AI_Output (self ,other,"DIA_Bartok_HuntNOW_GO_04_02"); //Pewnie wi�cej, ni� by�my chcieli...
	Bartok_Los = true;
	
	AI_StopProcessInfos (self);
	
	self.aivar[AIV_PARTYMEMBER] = true;
	Npc_ExchangeRoutine (self, "GUIDEMITTE");

	CreateInvItem	(self, ITAR_LEATHER_L);
	AI_EquipArmor	(self, ITAR_LEATHER_L);
	
	Wld_InsertNpc		(Wolf, 		"NW_FARM1_CITYWALL_FOREST_02"); 
	Wld_InsertNpc		(Wolf, 		"NW_FARM1_CITYWALL_FOREST_02");
	Wld_InsertNpc		(Wolf, 		"NW_FARM1_CITYWALL_FOREST_02");
};

// *****************************************************
//						Im Wald
// *****************************************************
var int Bartok_OrkStillThere;
// ---------------------

INSTANCE DIA_Bartok_ImWald (C_INFO)
{
	npc			= VLK_440_Bartok;
	nr			= 1;
	condition	= DIA_Bartok_ImWald_Condition;
	information	= DIA_Bartok_ImWald_Info;
	permanent	= false;
	important 	= true;
};                       
FUNC INT DIA_Bartok_ImWald_Condition()
{
	if (Bartok_Los == true)
	&& (Npc_GetDistToWP (self, "NW_FARM1_CITYWALL_FOREST_03") < 500)
	{
		return true;
	};
};
FUNC VOID DIA_Bartok_ImWald_Info()
{	
	AI_Output (self ,other,"DIA_Bartok_ImWald_04_00"); //No i jak my�lisz, powinni�my i�� dalej w las, czy nie?
	
	Info_ClearChoices (DIA_Bartok_ImWald);
	Info_AddChoice	  (DIA_Bartok_ImWald, "Wracajmy!", DIA_Bartok_ImWald_NachHause);
	Info_AddChoice	  (DIA_Bartok_ImWald, "Chod�my dalej.", DIA_Bartok_ImWald_Weiter);
};

func void DIA_Bartok_ImWald_NachHause()
{
	AI_Output (other ,self,"DIA_Bartok_ImWald_NachHause_15_00"); //Wracajmy!
	AI_Output (self ,other,"DIA_Bartok_ImWald_NachHause_04_01"); //To mi si� podoba. Pewnie wle�liby�my prosto w u�cisk jakiego� orka.
	
	Info_ClearChoices (DIA_Bartok_ImWald);
	AI_StopProcessInfos (self);
	self.aivar[AIV_PARTYMEMBER] = false;
	Npc_ExchangeRoutine (self, "START");

	AI_EquipArmor	(self, ITAR_VLK_L_03);
};

func void DIA_Bartok_ImWald_Weiter()
{
	AI_Output (other ,self,"DIA_Bartok_ImWald_Weiter_15_00"); //Chod�my dalej.
	AI_Output (self ,other,"DIA_Bartok_ImWald_Weiter_04_01"); //W porz�dku. Miejmy nadziej�, �e jako� to b�dzie...
	
	if (!Npc_IsDead(CityOrc))
	{
		Bartok_OrkStillThere = true;
	};
	
	Info_ClearChoices (DIA_Bartok_ImWald);
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine (self, "GUIDEENDE");
};

// *****************************************************
//						Angekommen
// *****************************************************
var int Bartok_Ende;
// -------------------

INSTANCE DIA_Bartok_Angekommen (C_INFO)
{
	npc			= VLK_440_Bartok;
	nr			= 1;
	condition	= DIA_Bartok_Angekommen_Condition;
	information	= DIA_Bartok_Angekommen_Info;
	permanent	= false;
	important 	= true;
};                       
FUNC INT DIA_Bartok_Angekommen_Condition()
{
	if (Bartok_Los == true)
	&& (Npc_GetDistToWP (self, "NW_FARM1_CITYWALL_FOREST_07") < 500)
	{
		return true;
	};
};
FUNC VOID DIA_Bartok_Angekommen_Info()
{	
	AI_Output (self ,other,"DIA_Bartok_Angekommen_04_00"); //Do�� tego! Wracam do miasta.
	AI_Output (self ,other,"DIA_Bartok_Angekommen_04_01"); //Tutaj jest zbyt niebezpiecznie jak dla mnie - nawet we dw�ch.
	
	if (Bartok_OrkStillThere == true)
	//&& (Npc_IsDead (CityOrc))
	{
		B_Bartok_ShitAnOrc();
		
		Bartok_OrkGesagt = true;
	};
	
	AI_Output (self ,other,"DIA_Bartok_Angekommen_04_03"); //No to na razie!
	AI_Output (self ,other,"DIA_Bartok_Angekommen_04_04"); //Mo�esz sprzeda� te sk�ry Bosperowi.
	
	Bartok_Ende = true;
	AI_StopProcessInfos (self);
	self.aivar[AIV_PARTYMEMBER] = false;
	Npc_ExchangeRoutine (self, "START");
	
	AI_EquipArmor	(self, ITAR_VLK_L_03);
};

// *****************************************************
//							PERM
// *****************************************************
INSTANCE DIA_Bartok_PERM (C_INFO)
{
	npc			= VLK_440_Bartok;
	nr			= 1;
	condition	= DIA_Bartok_PERM_Condition;
	information	= DIA_Bartok_PERM_Info;
	permanent	= true;
	description = "Wszystko w porz�dku?";
};                       
FUNC INT DIA_Bartok_PERM_Condition()
{
	if (Bartok_Los == true)
	{
		return true;
	};
};
FUNC VOID DIA_Bartok_PERM_Info()
{	
	AI_Output (other ,self,"DIA_Bartok_PERM_15_00"); //Wszystko w porz�dku?
	
	if (Bartok_Ende == true)
	{		
		AI_Output (self ,other,"DIA_Bartok_PERM_04_01"); //Tak. Ale ju� nie wychodz� z miasta. Przynajmniej w najbli�szym czasie.
		if (Bartok_OrkGesagt == true)
		{
			AI_Output (self ,other,"DIA_Bartok_PERM_04_02"); //Ci�gle mi dr�� kolana, jak sobie przypomn� tego orka.
		};
	}
	else
	{
		AI_Output (self ,other,"DIA_Bartok_PERM_04_03"); //Jasne. Upolujmy kilka bestii!
	};
};
