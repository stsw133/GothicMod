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
	description = "Co s³ychaæ?";
};                       
FUNC INT DIA_Bartok_Hallo_Condition()
{
	return true;
};
FUNC VOID DIA_Bartok_Hallo_Info()
{	
	AI_Output (other ,self,"DIA_Bartok_Hello_15_00"); //Co s³ychaæ?
	AI_Output (self ,other,"DIA_Bartok_Hello_04_01"); //Nie jesteœ st¹d, co? Niewa¿ne, ja te¿ nie.
	AI_Output (other ,self,"DIA_Bartok_Hello_15_02"); //Gdzie siê wczeœniej krêci³eœ?
	AI_Output (self ,other,"DIA_Bartok_Hello_04_03"); //W lasach, polowa³em na wilki i œcierwojady razem z innymi myœliwymi.
	AI_Output (self ,other,"DIA_Bartok_Hello_04_04"); //Ale rzuci³em to. Czasy zrobi³y siê niebezpieczne. Krêci siê tam sporo podejrzanych typów...
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
	description	= "Gdzie mogê znaleŸæ innych myœliwych?";
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
	AI_Output (other ,self,"DIA_Bartok_Jager_15_00"); //Gdzie mogê znaleŸæ innych myœliwych?
	AI_Output (self ,other,"DIA_Bartok_Jager_04_01"); //Mieliœmy obóz niedaleko tawerny, w po³owie drogi do gospodarstwa Onara.
	AI_Output (self ,other,"DIA_Bartok_Jager_04_02"); //Ale nie wiem, czy ktoœ jeszcze tam zosta³.
	
	AI_Output (self ,other,"DIA_Addon_Bartok_Jager_04_00"); //Do niedawna obaj przebywaliœmy w mieœcie.
	AI_Output (self ,other,"DIA_Addon_Bartok_Jager_04_01"); //Mój przyjaciel Trokar jest bardzo dobrym myœliwym.
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
	AI_Output	(self, other, "DIA_Addon_Bartok_MissingPeople_04_02"); //Kilka dni temu siedzieliœmy w knajpie Coragona i gadaliœmy o ³owach.
	AI_Output	(self, other, "DIA_Addon_Bartok_MissingPeople_04_03"); //Nie pytaj mnie, co siê dok³adnie sta³o - by³em nieŸle wstawiony.
	AI_Output	(self, other, "DIA_Addon_Bartok_MissingPeople_04_04"); //Pamiêtam tylko, ¿e Trokar wspomnia³ coœ o zakupie bagiennego ziela... Nigdy nie wróci³.

	MIS_Bartok_MissingTrokar = LOG_RUNNING;
	
	Info_ClearChoices	(DIA_Addon_Bartok_MissingPeople);
	Info_AddChoice	(DIA_Addon_Bartok_MissingPeople, "Nie próbowa³eœ go szukaæ?", DIA_Addon_Bartok_MissingPeople_such );
	Info_AddChoice	(DIA_Addon_Bartok_MissingPeople, "Gdzie mia³ kupiæ to ziele?", DIA_Addon_Bartok_MissingPeople_wo );
};
func void DIA_Addon_Bartok_MissingPeople_wo ()
{
	AI_Output			(other, self, "DIA_Addon_Bartok_MissingPeople_wo_15_00"); //Gdzie mia³ kupiæ to ziele?
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_wo_04_01"); //Chyba gdzieœ w porcie.
};
func void DIA_Addon_Bartok_MissingPeople_such ()
{
	AI_Output			(other, self, "DIA_Addon_Bartok_MissingPeople_such_15_00"); //Nie próbowa³eœ go szukaæ?
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_such_04_01"); //Nie. Powiadomi³em tylko stra¿.
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_such_04_02"); //Jej funkcjonariusze nie zdo³ali go odnaleŸæ...
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_such_04_03"); //Mam nadziejê, ¿e nie zaatakowa³ go wilk lub nie sta³o siê coœ jeszcze gorszego.
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_such_04_04"); //Myœl, ¿e podczas polowania móg³bym natkn¹æ siê na jego zimne truch³o... przepe³nia mnie strachem.
	AI_Output			(self, other, "DIA_Addon_Bartok_MissingPeople_such_04_05"); //Ten obraz nigdy chyba nie zniknie z mej pamiêci...
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
	description	= "Bosper mówi³, ¿e kiedyœ dla niego pracowa³eœ...";
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
	AI_Output (other ,self,"DIA_Bartok_Bosper_15_00"); //Bosper mówi³, ¿e kiedyœ dla niego pracowa³eœ...
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_01"); //To prawda. Ale jego interesuj¹ tylko te cholerne skóry.
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_02"); //Mówi³em mu, jak siê tam zrobi³o niebezpiecznie. Nie zwróci³ na to uwagi.
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_03"); //No có¿, przynajmniej dobrze zap³aci³ - nie mogê narzekaæ.
	AI_Output (other ,self,"DIA_Bartok_Bosper_15_04"); //Mo¿esz mi coœ o nim powiedzieæ?
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_05"); //Ostatnio ktoœ ukrad³ Bosperowi jeden z jego ³uków. W bia³y dzieñ.
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_06"); //Jakiœ facet po prostu wszed³ do jego sklepu, wzi¹³ ³uk i wyszed³.
	AI_Output (self ,other,"DIA_Bartok_Bosper_04_07"); //Z³odzieje s¹ coraz bardziej bezczelni!
	
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
	description	= "Mo¿esz nauczyæ mnie czegoœ o polowaniu?";
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
	AI_Output (other ,self,"DIA_Bartok_WannaLearn_15_00"); //Mo¿esz nauczyæ mnie czegoœ o polowaniu?
	AI_Output (self ,other,"DIA_Bartok_WannaLearn_04_01"); //Mogê ci pokazaæ, jak siê cicho skradaæ i pos³ugiwaæ siê ³ukiem.
	if (Npc_GetTalentSkill(other,NPC_TALENT_HUNTING) == 0)
	{
		AI_Output (self ,other,"DIA_Bartok_WannaLearn_04_02"); //Jeœli chcesz siê nauczyæ, jak zdejmowaæ skóry ze zwierz¹t, idŸ do Bospera. To on mnie tego nauczy³.
	};

	self.aivar[AIV_CanTeach] = true;
	Log_CreateTopic (Topic_CityTeacher, LOG_NOTE);
	B_LogEntry (Topic_CityTeacher, "Bartok mo¿e mnie nauczyæ strzelania z ³uku oraz skradania siê.");
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
	description	= "Czemu nie pójdziemy na polowanie razem?";
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
		AI_Output (other ,self,"DIA_Bartok_Zusammen_15_00"); //Czemu nie pójdziemy na polowanie razem?
		AI_Output (self ,other,"DIA_Bartok_Zusammen_04_01"); //Hmmm. We dwóch jest bezpieczniej, to prawda...
		AI_Output (self ,other,"DIA_Bartok_Zusammen_04_02"); //A wiêc znasz siê trochê na polowaniu?
		AI_Output (self ,other,"DIA_Bartok_Zusammen_04_03"); //To znaczy, umiesz zdejmowaæ skórê ze zwierzêcia?
	};
	
	if (Npc_GetTalentSkill(other,NPC_TALENT_HUNTING) > 0)
	{
		if (Bartok_Later == true)
		{
			AI_Output (self ,other,"DIA_Bartok_HuntNOW_04_01"); //Masz 50 sztuk z³ota?
		}
		else
		{
			AI_Output (other ,self,"DIA_Bartok_Zusammen_15_04"); //Tak.
			AI_Output (self ,other,"DIA_Bartok_Zusammen_04_05"); //Dobra, ale chcê zobaczyæ 50 sztuk z³ota. Za to bêdziesz móg³ zatrzymaæ skóry i sprzedaæ je Bosperowi.
			AI_Output (self ,other,"DIA_Bartok_Zusammen_04_06"); //Uczciwy uk³ad, no nie?
		};
		
		Info_ClearChoices (DIA_Bartok_Zusammen);
		Info_AddChoice	  (DIA_Bartok_Zusammen, "Na razie...", DIA_Bartok_Zusammen_Later);
		Info_AddChoice	  (DIA_Bartok_Zusammen, "Tak.", DIA_Bartok_Zusammen_Pay);
	}
	else
	{
		AI_Output (other ,self,"DIA_Bartok_Zusammen_15_07"); //Nie.
		AI_Output (self ,other,"DIA_Bartok_Zusammen_04_08"); //W takim razie to nie ma sensu.
		AI_Output (self ,other,"DIA_Bartok_Zusammen_04_09"); //Wróæ, jak siê czegoœ nauczysz.
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
		AI_Output (other ,self,"DIA_Bartok_HuntNOW_GO_15_00"); //Proszê bardzo...
		Bartok_Bereit = true;
	}
	else
	{
		AI_Output (self ,other,"DIA_Bartok_HuntNOW_GO_04_03"); //Nie masz z³ota.
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
	description	= "ChodŸmy na polowanie!";
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
	AI_Output (other ,self,"DIA_Bartok_HuntNOW_15_00"); //ChodŸmy na polowanie!
	AI_Output (self ,other,"DIA_Bartok_HuntNOW_GO_04_01"); //W porz¹dku, idŸ za mn¹. Za po³udniow¹ bram¹ zaczyna siê las. Tam znajdziemy du¿o zwierz¹t.
	AI_Output (self ,other,"DIA_Bartok_HuntNOW_GO_04_02"); //Pewnie wiêcej, ni¿ byœmy chcieli...
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
	AI_Output (self ,other,"DIA_Bartok_ImWald_04_00"); //No i jak myœlisz, powinniœmy iœæ dalej w las, czy nie?
	
	Info_ClearChoices (DIA_Bartok_ImWald);
	Info_AddChoice	  (DIA_Bartok_ImWald, "Wracajmy!", DIA_Bartok_ImWald_NachHause);
	Info_AddChoice	  (DIA_Bartok_ImWald, "ChodŸmy dalej.", DIA_Bartok_ImWald_Weiter);
};

func void DIA_Bartok_ImWald_NachHause()
{
	AI_Output (other ,self,"DIA_Bartok_ImWald_NachHause_15_00"); //Wracajmy!
	AI_Output (self ,other,"DIA_Bartok_ImWald_NachHause_04_01"); //To mi siê podoba. Pewnie wleŸlibyœmy prosto w uœcisk jakiegoœ orka.
	
	Info_ClearChoices (DIA_Bartok_ImWald);
	AI_StopProcessInfos (self);
	self.aivar[AIV_PARTYMEMBER] = false;
	Npc_ExchangeRoutine (self, "START");

	AI_EquipArmor	(self, ITAR_VLK_L_03);
};

func void DIA_Bartok_ImWald_Weiter()
{
	AI_Output (other ,self,"DIA_Bartok_ImWald_Weiter_15_00"); //ChodŸmy dalej.
	AI_Output (self ,other,"DIA_Bartok_ImWald_Weiter_04_01"); //W porz¹dku. Miejmy nadziejê, ¿e jakoœ to bêdzie...
	
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
	AI_Output (self ,other,"DIA_Bartok_Angekommen_04_00"); //Doœæ tego! Wracam do miasta.
	AI_Output (self ,other,"DIA_Bartok_Angekommen_04_01"); //Tutaj jest zbyt niebezpiecznie jak dla mnie - nawet we dwóch.
	
	if (Bartok_OrkStillThere == true)
	//&& (Npc_IsDead (CityOrc))
	{
		B_Bartok_ShitAnOrc();
		
		Bartok_OrkGesagt = true;
	};
	
	AI_Output (self ,other,"DIA_Bartok_Angekommen_04_03"); //No to na razie!
	AI_Output (self ,other,"DIA_Bartok_Angekommen_04_04"); //Mo¿esz sprzedaæ te skóry Bosperowi.
	
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
	description = "Wszystko w porz¹dku?";
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
	AI_Output (other ,self,"DIA_Bartok_PERM_15_00"); //Wszystko w porz¹dku?
	
	if (Bartok_Ende == true)
	{		
		AI_Output (self ,other,"DIA_Bartok_PERM_04_01"); //Tak. Ale ju¿ nie wychodzê z miasta. Przynajmniej w najbli¿szym czasie.
		if (Bartok_OrkGesagt == true)
		{
			AI_Output (self ,other,"DIA_Bartok_PERM_04_02"); //Ci¹gle mi dr¿¹ kolana, jak sobie przypomnê tego orka.
		};
	}
	else
	{
		AI_Output (self ,other,"DIA_Bartok_PERM_04_03"); //Jasne. Upolujmy kilka bestii!
	};
};
