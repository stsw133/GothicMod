///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Karras_KAP1_EXIT   (C_INFO)
{
	npc         = KDF_503_Karras;
	nr          = 999;
	condition   = DIA_Karras_KAP1_EXIT_Condition;
	information = DIA_Karras_KAP1_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Karras_KAP1_EXIT_Condition()
{
	if (Kapitel <= 7)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Karras_KAP1_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info Hello
///////////////////////////////////////////////////////////////////////
instance DIA_Karras_Hello 		(C_INFO)
{
	npc			= KDF_503_Karras;
	nr          = 1;
	condition	= DIA_Karras_Hello_Condition;
	information	= DIA_Karras_Hello_Info;
	permanent   = FALSE;
	important	= TRUE;
};
func int DIA_Karras_Hello_Condition ()
{
	if Npc_IsInState (self, ZS_Talk)
	&& (MIS_NOVIZENCHASE != LOG_RUNNING)
	{
		return TRUE;
	};
};
func void DIA_Karras_Hello_Info ()
{
	if (hero.guild == GIL_NOV)
	{
		AI_Output			(self, other, "DIA_Karras_Hello_10_00"); //Co mogê dla ciebie uczyniæ, nowicjuszu?
	}
	else if (hero.guild == GIL_KDF)
	{
		AI_Output			(self, other, "DIA_Karras_Hello_10_01"); //Co mogê dla ciebie uczyniæ, Bracie?
	}
	else if (hero.guild == GIL_PAL)
	{
		AI_Output			(self, other, "DIA_Karras_Hello_10_02"); //Czcigodni wojownicy Innosa rzadko zapuszczaj¹ siê do tych sal.
		AI_Output			(self, other, "DIA_Karras_Hello_10_03"); //Co mogê dla ciebie zrobiæ?
	}
	else
	{
		AI_Output			(self, other, "DIA_Karras_Hello_10_04"); //Co tutaj robisz?
	};
	
};
///////////////////////////////////////////////////////////////////////
//	Info Mission
///////////////////////////////////////////////////////////////////////
instance DIA_Karras_Mission		(C_INFO)
{
	npc			 = 	KDF_503_Karras;
	nr			 = 	2;
	condition	 = 	DIA_Karras_Mission_Condition;
	information	 = 	DIA_Karras_Mission_Info;
	permanent    =  FALSE;
	description	 = 	"Przyszed³em studiowaæ pisma.";
};
func int DIA_Karras_Mission_Condition ()
{	
	if (other.guild == GIL_NOV)
	{
		return TRUE;
	};
};
func void DIA_Karras_Mission_Info ()
{
	AI_Output (other, self, "DIA_Karras_Mission_15_00"); //Przyszed³em studiowaæ pisma.
	AI_Output (self, other, "DIA_Karras_Mission_10_01"); //Rozumiem. Jeœli znajdziesz trochê czasu, przyjdŸ do mnie.
	AI_Output (self, other, "DIA_Karras_Mission_10_02"); //Jest pewna sprawa, w której przyda³aby mi siê pomoc dyskretnego nowicjusza.
};
///////////////////////////////////////////////////////////////////////
//	Info Aufgabe
///////////////////////////////////////////////////////////////////////
instance DIA_Karras_Aufgabe		(C_INFO)
{
	npc			 = 	KDF_503_Karras;
	nr			 = 	2;
	condition	 = 	DIA_Karras_Aufgabe_Condition;
	information	 = 	DIA_Karras_Aufgabe_Info;
	permanent    =  FALSE;
	description	 = 	"Masz dla mnie jakieœ zadanie?";
};
func int DIA_Karras_Aufgabe_Condition ()
{	
	if Npc_KnowsInfo (other, DIA_Karras_Mission)
	{
		return TRUE;
	};
};
func void DIA_Karras_Aufgabe_Info ()
{
	AI_Output (other, self, "DIA_Karras_Aufgabe_15_00"); //Masz dla mnie jakieœ zadanie?
	AI_Output (self, other, "DIA_Karras_Aufgabe_10_01"); //Tak. Chodzi o tego zwariowanego Ignaza. Mieszka w Khorinis i prowadzi eksperymenty nad przeró¿nymi miksturami i napojami leczniczymi. No i nad zaklêciami.
	AI_Output (self, other, "DIA_Karras_Aufgabe_10_02"); //I to w³aœnie najbardziej mnie martwi. Widzisz, zastanawia mnie czasami, czy Innosowi podoba siê ta jego magia.
	AI_Output (self, other, "DIA_Karras_Aufgabe_10_03"); //Aby siê tego dowiedzieæ, potrzebujê kilku jego magicznych zwojów.
	AI_Output (self, other, "DIA_Karras_Aufgabe_10_04"); //Chcê, abyœ uda³ siê do miasta i zdoby³ trzy magiczne zwoje jego produkcji.
	AI_Output (self, other, "DIA_Karras_Aufgabe_10_05"); //Tylko nikomu ani s³owa - czy to jasne?
	AI_Output (other, self, "DIA_Karras_Aufgabe_15_06"); //Oczywiœcie.
	AI_Output (self, other, "DIA_Karras_Aufgabe_10_07"); //Oto 150 sztuk z³ota. Powinny pokryæ twoje wydatki.
	
	MIS_KarrasVergessen = LOG_RUNNING;
	
	Log_CreateTopic (Topic_KarrasCharm,LOG_MISSION);
	Log_SetTopicStatus  (Topic_KarrasCharm,LOG_RUNNING);
	B_LogEntry (Topic_KarrasCharm,"Mistrz Karras kaza³ mi udaæ siê do miasta i zdobyæ trzy magiczne zwoje produkowane oraz sprzedawane przez Ignaza.");

	B_GiveInvItems (self, other, ItMi_Gold,150);
};
///////////////////////////////////////////////////////////////////////
//	Info Success
///////////////////////////////////////////////////////////////////////
instance DIA_Karras_Success		(C_INFO)
{
	npc			 = 	KDF_503_Karras;
	nr			 = 	2;
	condition	 = 	DIA_Karras_Success_Condition;
	information	 = 	DIA_Karras_Success_Info;
	permanent    =  FALSE;
	description	 = 	"Oto zwoje, o które prosi³eœ.";
};
func int DIA_Karras_Success_Condition ()
{	
	if (MIS_KarrasVergessen == LOG_RUNNING)
	&& (Npc_HasItems (other, ItSc_Charm) >= 3)
	{
		return TRUE;
	};
};
func void DIA_Karras_Success_Info ()
{
	AI_Output (other, self, "DIA_Karras_Success_15_00"); //Oto zwoje, o które prosi³eœ.
	AI_Output (self, other, "DIA_Karras_Success_10_01"); //Dobra robota, mój m³ody przyjacielu.
	AI_Output (self, other, "DIA_Karras_Success_10_02"); //A teraz pora poœwiêciæ trochê czasu na studia.
	AI_Output (self, other, "DIA_Karras_Success_10_03"); //Aha, przyjmij ten zwój w nagrodê za dobrze wykonane zadanie.
	
	MIS_KarrasVergessen = LOG_SUCCESS;
	B_GivePlayerXP(200);
	B_GiveInvItems (other, self, ItSc_Charm,3);
	//B_GiveInvItems (self, other, ItSc_SumWolf,1);
	B_GiveInvItems (self, other, ItSc_NightToDay,1);
};
///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Karras_Trade		(C_INFO)
{
	npc			 = 	KDF_503_Karras;
	nr			 = 	2;
	condition	 = 	DIA_Karras_Trade_Condition;
	information	 = 	DIA_Karras_Trade_Info;
	permanent    =  TRUE;
	description	 = 	"Poka¿ mi swoje towary.";
	trade		 =  TRUE; 
};
func int DIA_Karras_Trade_Condition ()
{	
	if (hero.guild != GIL_NOV)
	{
		return TRUE;
	};
};
func void DIA_Karras_Trade_Info ()
{
	B_GiveTradeInv (self);
	AI_Output (other, self, "DIA_Karras_Trade_15_00"); //Poka¿ mi swoje towary.
};
///////////////////////////////////////////////////////////////////////
//	Info JOB
///////////////////////////////////////////////////////////////////////
instance DIA_Karras_JOB		(C_INFO)
{
	npc			 = 	KDF_503_Karras;
	nr			 = 	2;
	condition	 = 	DIA_Karras_JOB_Condition;
	information	 = 	DIA_Karras_JOB_Info;
	permanent    =  FALSE;
	description	 = 	"Na czym dok³adnie polega twoja praca?";
};
func int DIA_Karras_JOB_Condition ()
{	
		return TRUE;
};
func void DIA_Karras_JOB_Info ()
{
	AI_Output (other, self, "DIA_Karras_JOB_15_00"); //Na czym dok³adnie polega twoja praca?
	AI_Output (self, other, "DIA_Karras_JOB_10_01"); //Szkolê magów w dziedzinie manifestacji sferycznej.
	AI_Output (other, self, "DIA_Karras_JOB_15_02"); //Co to znaczy?
	AI_Output (self, other, "DIA_Karras_JOB_10_03"); //Mniej wiêcej tyle, ¿e uczê ich, jak przywo³ywaæ przeró¿ne istoty z innych wymiarów lub sfer.
	AI_Output (self, other, "DIA_Karras_JOB_10_04"); //Zwykle nazywa siê to przyzywaniem, choæ ta nazwa nie opisuje w zadowalaj¹cym stopniu sztuki wzywania pomocnika.
	AI_Output (self, other, "DIA_Karras_JOB_10_05"); //Co wiêcej, jestem w posiadaniu pewnych interesuj¹cych zwojów magicznych, których nie ma Gorax.
	
	self.aivar[AIV_CanTeach] = true;
	
	if (other.guild == GIL_NOV)
	{
		AI_Output (self, other, "DIA_Karras_JOB_10_06"); //Ale udostêpniam je tylko cz³onkom Zakonu.
	};
	Log_CreateTopic (Topic_KlosterTrader,LOG_NOTE);
	B_LogEntry (Topic_KlosterTrader,"Mistrz Karras mo¿e mnie zaopatrzyæ w magiczne zwoje. Najpierw jednak muszê zostaæ Magiem Ognia.");
};

//#####################################################################
//##
//##		Kapitel 2
//##
//#####################################################################

///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Karras_KAP2_EXIT   (C_INFO)
{
	npc         = KDF_503_Karras;
	nr          = 999;
	condition   = DIA_Karras_KAP2_EXIT_Condition;
	information = DIA_Karras_KAP2_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Karras_KAP2_EXIT_Condition()
{
	if (Kapitel == 8)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Karras_KAP2_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//#####################################################################
//##
//##		Kapitel 3
//##
//#####################################################################

///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Karras_KAP3_EXIT   (C_INFO)
{
	npc         = KDF_503_Karras;
	nr          = 999;
	condition   = DIA_Karras_KAP3_EXIT_Condition;
	information = DIA_Karras_KAP3_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Karras_KAP3_EXIT_Condition()
{
	if (Kapitel == 9)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Karras_KAP3_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info ChasePedro
///////////////////////////////////////////////////////////////////////
instance DIA_Karras_ChasePedro		(C_INFO)
{
	npc			 = 	KDF_503_Karras;
	nr			 =	31;
	condition	 = 	DIA_Karras_ChasePedro_Condition;
	information	 = 	DIA_Karras_ChasePedro_Info;
	permanent	 = 	FALSE;
	important 	 =  TRUE;
};

func int DIA_Karras_ChasePedro_Condition ()
{	
	if (Npc_IsInState (self,ZS_Talk))
	&& (Kapitel == 9)
	&& (MIS_NOVIZENCHASE == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void DIA_Karras_ChasePedro_Info ()
{
	if (hero.guild == GIL_KDF)
	{
		AI_Output (self ,other,"DIA_Karras_ChasePedro_10_00"); //Bracie, nie wolno ci traciæ czasu. Musisz odnaleŸæ Pedra i odzyskaæ Oko Innosa.
		AI_Output (self ,other,"DIA_Karras_ChasePedro_10_01"); //Jeœli Oko Innosa do nas nie wróci, bêdziemy zgubieni.
	}
	else
	{
		AI_Output	(self ,other, "DIA_Karras_ChasePedro_10_02"); //Co tutaj robisz? Czy nie powinieneœ szukaæ tego podstêpnego zdrajcy, Pedra?
	
		Info_ClearChoices (DIA_Karras_ChasePedro);
		Info_AddChoice (DIA_Karras_ChasePedro,"PóŸniej. Najpierw muszê siê zaj¹æ inn¹ spraw¹.",DIA_Karras_ChasePedro_Later);
		Info_AddChoice (DIA_Karras_ChasePedro,"Nie ucieknie zbyt daleko.",DIA_Karras_ChasePedro_WontEscape);
	};

};	

func void DIA_Karras_ChasePedro_Later ()
{
	AI_Output (other,self ,"DIA_Karras_ChasePedro_Later_15_00"); //PóŸniej. Najpierw muszê siê zaj¹æ inn¹ spraw¹.
	AI_Output (self ,other,"DIA_Karras_ChasePedro_Later_10_01"); //Czy wiesz, co ta strata oznacza dla naszego klasztoru? Oko Innosa to potê¿na broñ!
	AI_Output (self ,other,"DIA_Karras_ChasePedro_Later_10_02"); //Nie da siê przewidzieæ, co wróg zamierza zrobiæ z amuletem, ale na pewno ma wobec niego jakiœ plan. Musimy go powstrzymaæ.
	AI_Output (self ,other,"DIA_Karras_ChasePedro_Later_10_03"); //Wiêc nie traæ czasu i ruszaj za z³odziejem!

	AI_StopProcessInfos (self);
};

FUNC VOID DIA_Karras_ChasePedro_WontEscape ()
{
	AI_Output (other,self ,"DIA_Karras_ChasePedro_WontEscape_15_00"); //Nie ucieknie zbyt daleko.
	AI_Output (self ,other,"DIA_Karras_ChasePedro_WontEscape_10_01"); //Mam tak¹ nadziejê dla twojego w³asnego dobra. Jeœli oka¿e siê, ¿e uciek³ przez twoje zaniedbanie, osobiœcie postawiê ciê przed trybuna³em.
	AI_Output (other,self ,"DIA_Karras_ChasePedro_WontEscape_15_02"); //I o co mnie oskar¿ysz?
	AI_Output (self ,other,"DIA_Karras_ChasePedro_WontEscape_10_03"); //O wspó³pracê z wrogiem. Nietrudno jest sobie chyba wyobraziæ karê za taki wystêpek.
	AI_Output (self ,other,"DIA_Karras_ChasePedro_WontEscape_10_04"); //Dlatego te¿ nie traæ ju¿ wiêcej czasu, chyba ¿e chcesz siê ze mn¹ spotkaæ w znacznie mniej przyjemnych okolicznoœciach.

	AI_StopProcessInfos (self);
};
	
///////////////////////////////////////////////////////////////////////
//	Info ChasePedro
///////////////////////////////////////////////////////////////////////
instance DIA_Karras_NeedInfo		(C_INFO)
{
	npc			 = 	KDF_503_Karras;
	nr			 =	31;
	condition	 = 	DIA_Karras_NeedInfo_Condition;
	information	 = 	DIA_Karras_NeedInfo_Info;
	permanent	 = 	TRUE;
	important	 =	TRUE;
};

func int DIA_Karras_NeedInfo_Condition ()
{	
	if (Npc_KnowsInfo  (other ,DIA_Karras_ChasePedro))
	&& (Kapitel == 9)
	&& (hero.Guild != GIL_KDF)
	&& (MIS_NOVIZENCHASE == LOG_RUNNING)
	&& (Npc_IsInState (self,ZS_Talk))
	{
		return TRUE;
	};
};
func void DIA_Karras_NeedInfo_Info ()
{
	
	AI_Output (self ,other,"DIA_Karras_NeedInfo_10_00"); //Wiesz wszystko, czego ci trzeba. A teraz ruszaj w drogê!
	
	AI_StopProcessInfos (self);
};

//********************************************************************
//		Auge gefunden
//********************************************************************

///////////////////////////////////////////////////////////////////////
//	Info ChasePedro
///////////////////////////////////////////////////////////////////////
instance DIA_Karras_InnosEyeRetrieved		(C_INFO)
{
	npc			 = 	KDF_503_Karras;
	nr			 =	1;	//damit auch ganz sicher diese Info kommt (wg hello)!!!!
	condition	 = 	DIA_Karras_InnosEyeRetrieved_Condition;
	information	 = 	DIA_Karras_InnosEyeRetrieved_Info;
	permanent	 = 	FALSE;
	description	 =	"Odzyska³em Oko Innosa.";
};

func int DIA_Karras_InnosEyeRetrieved_Condition ()
{	
	if	(Kapitel == 9)
	&& 	(MIS_NOVIZENCHASE == LOG_SUCCESS)
	{
		return TRUE;
	};
};
func void DIA_Karras_InnosEyeRetrieved_Info ()
{
	
	AI_Output (other,self ,"DIA_Karras_InnosEyeRetrieved_15_00"); //Odzyska³em Oko Innosa.
	AI_Output (self ,other,"DIA_Karras_InnosEyeRetrieved_10_01"); //Co za ulga, ¿e uda³o ci siê je wyrwaæ ze szponów wroga!
	AI_Output (self ,other,"DIA_Karras_InnosEyeRetrieved_10_02"); //Jednak niebezpieczeñstwo nie zosta³o jeszcze za¿egnane. S³udzy z³a wci¹¿ knuj¹ swoje nikczemne plany, a tym razem s¹ wyj¹tkowo zdeterminowani.
	AI_Output (other,self ,"DIA_Karras_InnosEyeRetrieved_15_03"); //O tym zdo³a³em siê ju¿ sam przekonaæ.
	AI_Output (self ,other,"DIA_Karras_InnosEyeRetrieved_10_04"); //Nie drwij ze mnie. Sytuacja jest powa¿na, bardzo powa¿na, i nie bardzo wiemy, komu mo¿emy zaufaæ.
	AI_Output (self ,other,"DIA_Karras_InnosEyeRetrieved_10_05"); //Skoro wrogowi uda³o siê zwieœæ Pedra na drogê wystêpku, nale¿y siê spodziewaæ, ¿e inni równie¿ mu ulegn¹.

	B_GivePlayerXP(150);
};
	
///////////////////////////////////////////////////////////////////////
//	KAP3_Perm
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Karras_KAP3_Perm   (C_INFO)
{
	npc         = KDF_503_Karras;
	nr          = 5;
	condition   = DIA_Karras_KAP3_Perm_Condition;
	information = DIA_Karras_KAP3_Perm_Info;
	permanent   = TRUE;
	description = "Jak twoje studia?";
};
FUNC INT DIA_Karras_KAP3_Perm_Condition()
{
	if (Kapitel >= 9)
	&& (Npc_KnowsInfo(other, DIA_Karras_JOB))
		{
			return TRUE;
		};	
};
FUNC VOID DIA_Karras_KAP3_Perm_Info()
{
	AI_Output (other,self ,"DIA_Karras_KAP3_Perm_15_00"); //Jak twoje studia?

	if (MIS_KarrasResearchDMT == FALSE)
	&& (PyrokarToldKarrasToResearchDMT == TRUE)
	&& (hero.guild == GIL_KDF)
	{
		
		AI_Output (self ,other,"DIA_Karras_KAP3_Perm_10_01"); //Uda³o mi siê dotrzeæ do informacji na temat Poszukiwaczy.
		AI_Output (other,self ,"DIA_Karras_KAP3_Perm_15_02"); //I czego siê dowiedzia³eœ?
		AI_Output (self ,other,"DIA_Karras_KAP3_Perm_10_03"); //NajwyraŸniej ich dzia³aniami kieruj¹, lub kierowa³y, demony.
		AI_Output (self ,other,"DIA_Karras_KAP3_Perm_10_04"); //B¹dŸ ostro¿ny, jeœli siê na nich natkniesz.
		AI_Output (other,self ,"DIA_Karras_KAP3_Perm_15_05"); //To bardzo odkrywcze spostrze¿enie.
		AI_Output (self ,other,"DIA_Karras_KAP3_Perm_10_06"); //Przykro mi, ale nie posiadam informacji, dziêki którym móg³bym udzieliæ ci lepszej rady.
		AI_Output (self ,other,"DIA_Karras_KAP3_Perm_10_07"); //Gdybyœ jednak móg³ mi przynieœæ do zbadania jakiœ przedmiot nale¿¹cy do Poszukiwaczy...
		
		MIS_KarrasResearchDMT = LOG_RUNNING;
		B_LogEntry (TOPIC_DEMENTOREN,"Aby móc dalej prowadziæ swoje badania, Karras potrzebuje czegoœ, z czym Poszukiwacze mieli bezpoœredni kontakt."); 

		Info_ClearChoices (DIA_Karras_KAP3_Perm);
		Info_AddChoice (DIA_Karras_KAP3_Perm,DIALOG_BACK,DIA_Karras_KAP3_Perm_Back);
		Info_AddChoice (DIA_Karras_KAP3_Perm,"Zobaczê, co siê da zrobiæ.",DIA_Karras_KAP3_Perm_WillSee);
		Info_AddChoice (DIA_Karras_KAP3_Perm,"Czy œni¹cy mo¿e byæ w to zamieszany?",DIA_Karras_KAP3_Perm_Sleeper);
		Info_AddChoice (DIA_Karras_KAP3_Perm,"Jakiego rodzaju materia³ów potrzebujesz?",DIA_Karras_KAP3_Perm_Material);
	}
	else if MIS_KarrasResearchDMT == LOG_RUNNING 
	{
		AI_Output (self ,other,"DIA_Karras_KAP3_Perm_10_08"); //Wci¹¿ jeszcze pracujê nad interpretacj¹ wyników moich badañ nad Poszukiwaczami.
		AI_Output (self ,other,"DIA_Karras_KAP3_Perm_10_09"); //Kiedy tylko czegoœ siê dowiem, niezw³ocznie dam ci znaæ.
	}
	else 
	{
		AI_Output (self ,other,"DIA_Karras_KAP3_Perm_10_10"); //Wróg ma wiele twarzy. Trudno stwierdziæ, która z nich stanowi najwiêksze zagro¿enie dla klasztoru.
	};
};


FUNC VOID DIA_Karras_KAP3_Perm_Back()
{
	Info_ClearChoices (DIA_Karras_KAP3_Perm);
};

FUNC VOID DIA_Karras_KAP3_Perm_Sleeper()
{
	AI_Output (other,self ,"DIA_Karras_KAP3_Perm_Sleeper_15_00"); //Czy Œni¹cy mo¿e byæ w to zamieszany?
	AI_Output (self ,other,"DIA_Karras_KAP3_Perm_Sleeper_10_01"); //S³ysza³em historiê Œni¹cego. Jednak nie jestem w stanie wypowiedzieæ siê na ten temat.
	AI_Output (self ,other,"DIA_Karras_KAP3_Perm_Sleeper_10_02"); //Istnieje wiele demonów, i ka¿dy z nich móg³ w tym maczaæ palce.
};

FUNC VOID DIA_Karras_KAP3_Perm_Corpse()
{
	AI_Output (other,self ,"DIA_Karras_KAP3_Perm_Corpse_15_00"); //Chcesz, ¿ebym przyniós³ ci zw³oki?
	AI_Output (self ,other,"DIA_Karras_KAP3_Perm_Corpse_10_01"); //Postrada³eœ zmys³y? Gdyby w murach naszego klasztoru znalaz³a siê demoniczna istota, mog³oby to wywo³aæ katastrofalne skutki.
	AI_Output (self ,other,"DIA_Karras_KAP3_Perm_Corpse_10_02"); //Wystarczy, jeœli przyniesiesz jakieœ nale¿¹ce do nich przedmioty.
	AI_Output (self ,other,"DIA_Karras_KAP3_Perm_Corpse_10_03"); //Otaczaj¹ce je pozosta³oœci duchowej aury powinny dostarczyæ nam cennych wskazówek.
};

FUNC VOID DIA_Karras_KAP3_Perm_Material()
{
	AI_Output (other,self ,"DIA_Karras_KAP3_Perm_Material_15_00"); //Jakiego rodzaju materia³ów potrzebujesz?
	AI_Output (self ,other,"DIA_Karras_KAP3_Perm_Material_10_01"); //Sam nie wiem - czegokolwiek, co nale¿y do tych istot.
	
	Info_AddChoice (DIA_Karras_KAP3_Perm,"Chcesz, ¿ebym przyniós³ ci zw³oki?",DIA_Karras_KAP3_Perm_Corpse);
};

FUNC VOID DIA_Karras_KAP3_Perm_WillSee()
{
	AI_Output (other,self ,"DIA_Karras_KAP3_Perm_WillSee_15_00"); //Zobaczê, co siê da zrobiæ.
	AI_Output (self ,other,"DIA_Karras_KAP3_Perm_WillSee_10_01"); //Z pewnoœci¹ bardzo by to nam pomog³o. Ja tymczasem wracam do swoich badañ.
	Info_ClearChoices (DIA_Karras_KAP3_Perm);
};

//********************************************************************
//	Ich habe hier dieses Buch.
//********************************************************************

INSTANCE DIA_Karras_HaveBook   (C_INFO)
{
	npc         = KDF_503_Karras;
	nr          = 2;
	condition   = DIA_Karras_HaveBook_Condition;
	information = DIA_Karras_HaveBook_Info;
	permanent   = FALSE;
	description = "Mam Almanach Potêpionych.";
};
FUNC INT DIA_Karras_HaveBook_Condition()
{
	if (MIS_KarrasResearchDMT == LOG_RUNNING)
	&& (Npc_HasItems (hero, ITWR_DementorObsessionBook_MIS) >= 1)
	&& (hero.guild == GIL_KDF)
	{
		return TRUE;
	};	
};
var int KarrasGotResearchDMTBook_Day;
FUNC VOID DIA_Karras_HaveBook_Info()
{
	AI_Output (other,self ,"DIA_Karras_HaveBook_15_00"); //Mam tutaj almanach Opêtanych. Mo¿e ci siê przydaæ.
	AI_Output (self ,other,"DIA_Karras_HaveBook_10_01"); //Poka¿ go.
	
	Npc_RemoveInvItems	(other,	ITWR_DementorObsessionBook_MIS,	1);
    AI_PrintScreen (PRINT_ItemGegeben, -1, YPOS_ItemGiven, FONT_ScreenSmall, 2);	// "1 Gegenstand gegeben"	
		
	AI_Output (self ,other,"DIA_Karras_HaveBook_10_02"); //Tak, to mo¿e byæ to, czego szukamy. Zbadam tê ksiêgê.
	AI_Output (self ,other,"DIA_Karras_HaveBook_10_03"); //W tej chwili jestem pewien tylko jednej rzeczy.
	AI_Output (self ,other,"DIA_Karras_HaveBook_10_04"); //Poszukiwacze s¹ form¹ ¿ycia stworzon¹ przez Beliara.
	AI_Output (self ,other,"DIA_Karras_HaveBook_10_05"); //S¹ w po³owie ludŸmi, w po³owie demonami.
	AI_Output (self ,other,"DIA_Karras_HaveBook_10_06"); //Wci¹¿ jednak nie jestem w stanie okreœliæ, czy mamy tu do czynienia z opêtaniem duchowym, czy z czysto fizyczn¹ mutacj¹.
	AI_Output (self ,other,"DIA_Karras_HaveBook_10_07"); //Wróæ póŸniej, na pewno bêdê ci móg³ powiedzieæ wiêcej na ten temat.
	MIS_KarrasResearchDMT = LOG_SUCCESS;
	B_LogEntry (TOPIC_DEMENTOREN,"Karras u¿yje w swoich dalszych badaniach Almanachu Opêtanych. Mam do niego wróciæ póŸniej."); 
	KarrasGotResearchDMTBook_Day = Wld_GetDay(); 
	B_GivePlayerXP(500);
};

//********************************************************************
//	ResearchDMTEnd
//********************************************************************

INSTANCE DIA_Karras_ResearchDMTEnd   (C_INFO)
{
	npc         = KDF_503_Karras;
	nr          = 2;
	condition   = DIA_Karras_ResearchDMTEnd_Condition;
	information = DIA_Karras_ResearchDMTEnd_Info;
	permanent   = TRUE;

	description = "Dowiedzia³eœ siê czegoœ nowego o Poszukiwaczach?";
};
FUNC INT DIA_Karras_ResearchDMTEnd_Condition()
{
	if (MIS_KarrasResearchDMT == LOG_SUCCESS)
	&& (hero.guild == GIL_KDF)
	&& (SC_KnowsMadPsi == FALSE)
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Karras_ResearchDMTEnd_Info()
{
	AI_Output (other,self ,"DIA_Karras_ResearchDMTEnd_15_00"); //Dowiedzia³eœ siê czegoœ nowego o Poszukiwaczach?

	if (KarrasGotResearchDMTBook_Day <= (Wld_GetDay()-2))
	{
		AI_Output (self ,other,"DIA_Karras_ResearchDMTEnd_10_01"); //Tak. Uda³o mi siê ustaliæ, kim - lub czym - tak naprawdê s¹.
		AI_Output (other ,self,"DIA_Karras_ResearchDMTEnd_15_02"); //Mów prêdko!
		AI_Output (self ,other,"DIA_Karras_ResearchDMTEnd_10_03"); //Niegdyœ byli ludŸmi, takimi jak ty czy ja. Pope³nili jednak pewien b³¹d - pozwolili siê opêtaæ nieczystej magii pewnego bardzo potê¿nego demona.
		AI_Output (self ,other,"DIA_Karras_ResearchDMTEnd_10_04"); //Pod jego wp³ywem, spotêgowanym jeszcze przez dzia³anie silnych narkotyków, powoli stawali siê tym, czym s¹ teraz - ulotnymi cieniami samych siebie.
		AI_Output (self ,other,"DIA_Karras_ResearchDMTEnd_10_05"); //Dzisiaj s¹ jedynie narzêdziami z³a, nie posiadaj¹cymi w³asnej woli, maj¹cymi tylko jeden cel - przeœladowanie wyznawców Innosa.
		AI_Output (self ,other,"DIA_Karras_ResearchDMTEnd_10_06"); //Musimy byæ ostro¿ni. Co prawda na razie zdaj¹ siê unikaæ tych œwiêtych murów...
		AI_Output (self ,other,"DIA_Karras_ResearchDMTEnd_10_07"); //Jednak jeœli stan¹ siê jeszcze silniejsi, nawet tutaj mo¿e zrobiæ siê niebezpiecznie.
		AI_Output (other ,self,"DIA_Karras_ResearchDMTEnd_15_08"); //Dziêkujê za wszystkie informacje.
		AI_Output (self ,other,"DIA_Karras_ResearchDMTEnd_10_09"); //Niestety, to wszystko prowadzi do kolejnych pytañ. Na przyk³ad - kim byli w swoim prawdziwym ¿yciu, albo jaki demon zamieni³ ich w to, czym s¹ teraz?
		AI_Output (other ,self,"DIA_Karras_ResearchDMTEnd_15_10"); //Chyba siê domyœlam. To musi byæ sprawka Bractwa Œni¹cego. Znam tych ludzi.
		AI_Output (self ,other,"DIA_Karras_ResearchDMTEnd_10_11"); //Mam nadziejê, ¿e wiesz, na co siê porywasz. Uwa¿aj na siebie, Bracie.
		AI_Output (self ,other,"DIA_Karras_ResearchDMTEnd_10_12"); //A... twój almanach. Nie bêdê go ju¿ potrzebowa³.

		CreateInvItems	(other,	ITWR_DementorObsessionBook_MIS,	1);
		AI_PrintScreen	(PRINT_ItemErhalten, -1, YPOS_ItemTaken, FONT_ScreenSmall, 2);	// "1 Gegenstand erhalten"

		SC_KnowsMadPsi = TRUE;
		B_LogEntry (TOPIC_DEMENTOREN,"Badania Karrasa zosta³y uwieñczone sukcesem. Miêdzy Bractwem œni¹cego a Poszukiwaczami istnieje jakieœ powi¹zanie."); 
		B_GivePlayerXP(300);
	}
	else
	{
		AI_Output (self ,other,"DIA_Karras_ResearchDMTEnd_10_13"); //Pracujê nad tym. Wróæ póŸniej.
	};
};

//********************************************************************
//	Prot_BlackEye	(ItAm_Prot_BlackEye_Mis)
//********************************************************************

INSTANCE DIA_Karras_Prot_BlackEye   (C_INFO)
{
	npc         = KDF_503_Karras;
	nr          = 2;
	condition   = DIA_Karras_Prot_BlackEye_Condition;
	information = DIA_Karras_Prot_BlackEye_Info;
	permanent   = TRUE;

	description = "Czy istnieje jakiœ skuteczny sposób obrony przed atakami Poszukiwaczy?";
};
FUNC INT DIA_Karras_Prot_BlackEye_Condition()
{
	if (hero.guild == GIL_KDF)
	&& (Pyrokar_AskKarrasAboutDMTAmulett == TRUE)
	&& (MIS_Karras_FindBlessedStone == FALSE)
	&& (Npc_KnowsInfo(other, DIA_Karras_JOB))
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Karras_Prot_BlackEye_Info()
{
	AI_Output (other,self ,"DIA_Karras_Prot_BlackEye_15_00"); //Czy istnieje jakiœ skuteczny sposób obrony przed atakami Poszukiwaczy?

	if (SC_KnowsMadPsi == TRUE)
	{
		AI_Output (self ,other,"DIA_Karras_Prot_BlackEye_10_01"); //Tak. S¹dzê, ¿e amulet zrobiony z kamienia z b³ogos³awionej ziemi mo¿e zapewniæ tak¹ ochronê.
		AI_Output (self ,other,"DIA_Karras_Prot_BlackEye_10_02"); //Niestety, nie mam akurat ¿adnego pod rêk¹.
		AI_Output (self ,other,"DIA_Karras_Prot_BlackEye_10_03"); //Niektóre nasze kapliczki zosta³y wybudowane z takich w³aœnie kamieni.
		AI_Output (other,self ,"DIA_Karras_Prot_BlackEye_15_04"); //Dobrze, spróbujê zdobyæ jeden z nich.
		AI_Output (self ,other,"DIA_Karras_Prot_BlackEye_10_05"); //Tak, to dobry pomys³. Pamiêtaj tylko, ¿eby nie zniszczyæ przy tym kapliczki, rozumiemy siê?
		B_LogEntry (TOPIC_DEMENTOREN,"Karras mo¿e mi zapewniæ ochronê przeciwko mentalnym atakom Poszukiwaczy. Potrzebuje do tego celu kamienia ze œwiêtej ziemi - takiego, z którego zrobione s¹ niektóre kapliczki."); 
		MIS_Karras_FindBlessedStone = LOG_RUNNING;
	}
	else
	{
		AI_Output (self ,other,"DIA_Karras_Prot_BlackEye_10_06"); //Nie mam pojêcia. Wci¹¿ jeszcze brakuje mi wiedzy na ten temat. Wróæ póŸniej, mo¿e bêdê ju¿ coœ wiedzia³.
	};
};

//********************************************************************
//	KarrasBlessedStone	(ItAm_Prot_BlackEye_Mis)
//********************************************************************

INSTANCE DIA_Karras_KarrasBlessedStone   (C_INFO)
{
	npc         = KDF_503_Karras;
	nr          = 2;
	condition   = DIA_Karras_KarrasBlessedStone_Condition;
	information = DIA_Karras_KarrasBlessedStone_Info;

	description = "Mam tutaj kamieñ z b³ogos³awionej ziemi.";
};
FUNC INT DIA_Karras_KarrasBlessedStone_Condition()
{
	if (hero.guild == GIL_KDF)
	&& (Npc_HasItems (other,ItMi_KarrasBlessedStone_Mis))
	&& (MIS_Karras_FindBlessedStone == LOG_RUNNING)
	{
		return TRUE;
	};	
};
var int KarrasMakesBlessedStone_Day;
FUNC VOID DIA_Karras_KarrasBlessedStone_Info()
{
	AI_Output (other,self ,"DIA_Karras_KarrasBlessedStone_15_00"); //Mam tutaj kamieñ z b³ogos³awionej ziemi.
	B_GiveInvItems (other, self, ItMi_KarrasBlessedStone_Mis,1);
	AI_Output (self ,other,"DIA_Karras_KarrasBlessedStone_10_01"); //Dobrze. Mam nadziejê, ¿e ¿adna z kapliczek na tym nie ucierpia³a.
	AI_Output (self ,other,"DIA_Karras_KarrasBlessedStone_10_02"); //Dobrze. Sporz¹dzê z niego ochronny amulet, który bêdzie ciê strzeg³ przed mrocznym spojrzeniem Poszukiwaczy.
	AI_Output (self ,other,"DIA_Karras_KarrasBlessedStone_10_03"); //Daj mi trochê czasu. Niezw³ocznie przyst¹piê do pracy.
	KarrasMakesBlessedStone_Day = Wld_GetDay(); 
	MIS_Karras_FindBlessedStone	= LOG_SUCCESS;
	B_LogEntry (TOPIC_DEMENTOREN,"Karras da³ mi amulet, który ochroni mnie przed mentalnymi atakami Poszukiwaczy. To powinno mi trochê u³atwiæ ¿ycie."); 
	B_GivePlayerXP(500);
	AI_StopProcessInfos (self);
};

//********************************************************************
//	ItAm_Prot_BlackEye_Mis
//********************************************************************

INSTANCE DIA_Karras_ItAm_Prot_BlackEye_Mis   (C_INFO)
{
	npc         = KDF_503_Karras;
	nr          = 2;
	condition   = DIA_Karras_ItAm_Prot_BlackEye_Mis_Condition;
	information = DIA_Karras_ItAm_Prot_BlackEye_Mis_Info;
	permanent	 = 	TRUE;

	description = "Co z ochronnym amuletem, który mi obieca³eœ?";
};
var int DIA_Karras_ItAm_Prot_BlackEye_Mis_NoPerm;
FUNC INT DIA_Karras_ItAm_Prot_BlackEye_Mis_Condition()
{
	if (hero.guild == GIL_KDF)
	&& (MIS_Karras_FindBlessedStone == LOG_SUCCESS)
	&& (DIA_Karras_ItAm_Prot_BlackEye_Mis_NoPerm == FALSE)
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Karras_ItAm_Prot_BlackEye_Mis_Info()
{
	AI_Output (other,self ,"DIA_Karras_ItAm_Prot_BlackEye_Mis_15_00"); //Co z ochronnym amuletem, który mi obieca³eœ?
	
	if (KarrasMakesBlessedStone_Day<=(Wld_GetDay()-2))
	{
		AI_Output (self ,other,"DIA_Karras_ItAm_Prot_BlackEye_Mis_10_01"); //W³aœnie go skoñczy³em. Proszê, oto on. Czy¿ nie jest piêkny?
		CreateInvItems (self, ItAm_ProtDementor, 1);									
		B_GiveInvItems (self, other, ItAm_ProtDementor, 1);					
		AI_Output (self ,other,"DIA_Karras_ItAm_Prot_BlackEye_Mis_10_02"); //Miej go zawsze przy sobie, a Poszukiwacze nie bêd¹ mogli wnikn¹æ w twój umys³.
		AI_Output (other,self ,"DIA_Karras_ItAm_Prot_BlackEye_Mis_15_03"); //Dziêkujê.
		B_LogEntry (TOPIC_DEMENTOREN,"Karras da³ mi amulet, który ochroni mnie przez mrocznym spojrzeniem Poszukiwaczy."); 
		DIA_Karras_ItAm_Prot_BlackEye_Mis_NoPerm = TRUE;
		B_GivePlayerXP(150);
	}
	else
	{
		AI_Output (self ,other,"DIA_Karras_ItAm_Prot_BlackEye_Mis_10_04"); //Cierpliwoœci. Wci¹¿ jeszcze nad nim pracujê.
	};
};

//#####################################################################
//##
//##		Kapitel 4
//##
//#####################################################################

///////////////////////////////////////////////////////////////////////
//	Kap4 Exit	
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Karras_KAP4_EXIT   (C_INFO)
{
	npc         = KDF_503_Karras;
	nr          = 999;
	condition   = DIA_Karras_KAP4_EXIT_Condition;
	information = DIA_Karras_KAP4_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Karras_KAP4_EXIT_Condition()
{
	if (Kapitel == 10)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Karras_KAP4_EXIT_Info()
{
	AI_StopProcessInfos (self);
};


//#####################################################################
//##
//##		Kapitel 5
//##
//#####################################################################

///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Karras_KAP5_EXIT   (C_INFO)
{
	npc         = KDF_503_Karras;
	nr          = 999;
	condition   = DIA_Karras_KAP5_EXIT_Condition;
	information = DIA_Karras_KAP5_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Karras_KAP5_EXIT_Condition()
{
	if (Kapitel == 11)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Karras_KAP5_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
