///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Sergio_EXIT   (C_INFO)
{
	npc         = PAL_299_Sergio;
	nr          = 999;
	condition   = DIA_Sergio_EXIT_Condition;
	information = DIA_Sergio_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};

FUNC INT DIA_Sergio_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Sergio_EXIT_Info()
{
	if (Npc_GetDistToWP (self,"NW_MONASTERY_CHAPELL_02") <= 1500)  // Nur wenn Sergio in der Kapelle ist M.F.  
	{
		AI_Output (self, other,"DIA_Sergio_EXIT_04_00");//Niech Innos o�wietla �cie�k�, po kt�rej kroczysz.
	};
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info WELCOME
///////////////////////////////////////////////////////////////////////
instance DIA_Sergio_WELCOME		(C_INFO)
{
	npc			 = 	PAL_299_Sergio;
	nr 			 =  5;
	condition	 = 	DIA_Sergio_WELCOME_Condition;
	information	 = 	DIA_Sergio_WELCOME_Info;
	important	 = 	TRUE;
};

func int DIA_Sergio_WELCOME_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	&& (Npc_GetDistToWP (self,"NW_MONASTERY_CHAPELL_02") <= 1500)
	&& (other.guild == GIL_NOV)
	&& (Npc_KnowsInfo (other, DIA_Sergio_Isgaroth) == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Sergio_WELCOME_Info ()
{
	AI_Output (self, other, "DIA_Sergio_WELCOME_04_00"); //Innos z tob�, s�ucham, co mog� dla ciebie zrobi�?
};
///////////////////////////////////////////////////////////////////////
//	Info Isgaroth
///////////////////////////////////////////////////////////////////////
instance DIA_Sergio_Isgaroth		(C_INFO)
{
	npc			 = 	PAL_299_Sergio;
	nr			 =  2;
	condition	 = 	DIA_Sergio_Isgaroth_Condition;
	information	 = 	DIA_Sergio_Isgaroth_Info;
	permanent	 =  FALSE;
	important	 =  TRUE;
};
func int DIA_Sergio_Isgaroth_Condition ()
{	
	if Npc_KnowsInfo (hero,PC_PrayShrine_Paladine)
	&&  (Npc_GetDistToWP (self,"NW_MONASTERY_CHAPELL_02") <= 1500)
	&& (Kapitel == 7)
	{
		return TRUE;
	};
};
func void DIA_Sergio_Isgaroth_Info ()
{
	AI_Output (self, other, "DIA_Sergio_Isgaroth_04_00"); //Modli�e� si� za mych braci. Serdecznie ci za to dzi�kuj�. Co mog� dla ciebie zrobi�?
	
	Info_ClearChoices (DIA_Sergio_Isgaroth);
	Info_AddChoice 	  (DIA_Sergio_Isgaroth,"Mo�e ma�y datek?",DIA_Sergio_Isgaroth_Spende);
	Info_AddChoice 	  (DIA_Sergio_Isgaroth,"Podziel si� ze mn� swoim do�wiadczeniem i wiedz� na temat walki.",DIA_Sergio_Isgaroth_XP);
};	
FUNC VOID DIA_Sergio_Isgaroth_Spende()
{
	AI_Output (other, self, "DIA_Sergio_Isgaroth_Spende_15_00"); //Mo�e ma�y datek?
	AI_Output (self, other, "DIA_Sergio_Isgaroth_Spende_04_01"); //Niech to z�oto dobrze ci s�u�y.
	
	B_GiveInvItems (self,other, ItMi_Gold,100);
	Info_ClearChoices (DIA_Sergio_Isgaroth);
};
FUNC VOID DIA_Sergio_Isgaroth_XP()
{
	AI_Output (other, self, "DIA_Sergio_Isgaroth_XP_15_00"); //Podziel si� ze mn� swoim do�wiadczeniem i wiedz� na temat walki.
	AI_Output (self, other, "DIA_Sergio_Isgaroth_XP_04_01"); //Kiedy walczysz, zawsze pami�taj, by chroni� si� przed atakiem z ty�u.
	B_GivePlayerExp(200);
	Info_ClearChoices (DIA_Sergio_Isgaroth);
};

///////////////////////////////////////////////////////////////////////
//	Info Aufgabe
///////////////////////////////////////////////////////////////////////
instance DIA_Sergio_Aufgabe		(C_INFO)
{
	npc			 = 	PAL_299_Sergio;
	nr			 =  3;
	condition	 = 	DIA_Sergio_Aufgabe_Condition;
	information	 = 	DIA_Sergio_Aufgabe_Info;
	description	 = 	"Chc� skorzysta� z biblioteki.";
};
func int DIA_Sergio_Aufgabe_Condition ()
{	
	if  (Npc_GetDistToWP (self,"NW_MONASTERY_CHAPELL_02") <= 1500)
	&& (other.guild == GIL_NOV)
	&& (Npc_KnowsInfo (other,DIA_Sergio_Isgaroth))
	{	
		return TRUE;
	};
};
func void DIA_Sergio_Aufgabe_Info ()
{
	AI_Output (other, self, "DIA_Sergio_Aufgabe_15_00"); //Chc� skorzysta� z biblioteki.
	AI_Output (self, other, "DIA_Sergio_Aufgabe_04_01"); //Obawiam si�, �e to niemo�liwe. Najpierw musisz wykona� przydzielone ci zadania.
	AI_Output (self, other, "DIA_Sergio_Aufgabe_04_02"); //Mog� ci jednak pom�c. Udaj si� do Mistrza Isgarotha i porozmawiaj z nim. S�ysza�em, �e potrzebuje pomocy, sam mia�em si� tym zaj��, ale chyba mog� ci zaufa�.
	
	Sergio_Sends = TRUE;
	Wld_InsertNpc (BlackWolf,"NW_PATH_TO_MONASTER_AREA_01"); //ist richtig geschrieben! 
	
	Log_CreateTopic (Topic_IsgarothWolf,LOG_MISSION);
	Log_SetTopicStatus	 (Topic_IsgarothWolf,LOG_RUNNING);
	B_LogEntry (Topic_IsgarothWolf,"Mistrz Isgaroth potrzebuje pomocy w kaplicy. Powinienem si� z nim spotka�.");
};	

///////////////////////////////////////////////////////////////////////
//	Info WHAT
///////////////////////////////////////////////////////////////////////
instance DIA_Sergio_WHAT		(C_INFO)
{
	npc			 = 	PAL_299_Sergio;
	nr			 =  3;
	condition	 = 	DIA_Sergio_WHAT_Condition;
	information	 = 	DIA_Sergio_WHAT_Info;
	description	 = 	"Co tu porabiasz?";
};
func int DIA_Sergio_WHAT_Condition ()
{	
	if  (Npc_GetDistToWP (self,"NW_MONASTERY_CHAPELL_02") <= 1500)
	&& (other.guild == GIL_NOV)
	{	
		return TRUE;
	};
};
func void DIA_Sergio_WHAT_Info ()
{
	AI_Output (other, self, "DIA_Sergio_WHAT_15_00"); //Co tu porabiasz?
	AI_Output (self, other, "DIA_Sergio_WHAT_04_01"); //Modl� si� do Innosa, by wzmocni� me rami� i wol�.
	AI_Output (self, other, "DIA_Sergio_WHAT_04_02"); //Dzi�ki temu, niestraszni mi wrogowie, pokonuj� ich, oddaj�c cze�� Innosowi.
	AI_Output (other, self, "DIA_Sergio_WHAT_15_03"); //O jakich wrogach m�wisz?
	AI_Output (self, other, "DIA_Sergio_WHAT_04_04"); //O wszystkich tych, kt�rzy sprzeciwiaj� si� woli Innosa. Niewa�ne czy s� lud�mi, czy demonami z piek�a rodem.
};
///////////////////////////////////////////////////////////////////////
//	Info Babo
///////////////////////////////////////////////////////////////////////
instance DIA_Sergio_Babo		(C_INFO)
{
	npc			 = 	PAL_299_Sergio;
	nr			 =  3;
	condition	 = 	DIA_Sergio_Babo_Condition;
	information	 = 	DIA_Sergio_Babo_Info;
	description	 = 	"M�g�by� po�wiczy� troch� z Babo?";
};
func int DIA_Sergio_Babo_Condition ()
{	
	if  (Npc_GetDistToWP (self,"NW_MONASTERY_CHAPELL_02") <= 1500)
	&& (other.guild == GIL_NOV)
	&& Npc_KnowsInfo (other, DIA_Babo_Anliegen)
	{	
		return TRUE;
	};
};
func void DIA_Sergio_Babo_Info ()
{
	AI_Output (other, self, "DIA_Sergio_Babo_15_00"); //M�g�by� po�wiczy� troch� z Babo?
	AI_Output (self, other, "DIA_Sergio_Babo_04_01"); //Dlaczego sam nie przyjdzie i o to nie zapyta?
	AI_Output (other, self, "DIA_Sergio_Babo_15_02"); //Chyba jest nie�mia�y.
	AI_Output (self, other, "DIA_Sergio_Babo_04_03"); //Rozumiem. Dobrze, skoro to tyle dla niego znaczy, b�d� go trenowa�, codziennie rano po dwie godziny. Przeka� mu, �e zaczynamy o pi�tej.
	
	Npc_ExchangeRoutine (self, "TRAIN");
	B_StartOtherRoutine (Babo,"TRAIN");

	B_LogEntry (Topic_BaboTrain, "Sergio zgodzi� si� trenowa� z Babo ka�dego dnia przez dwie godziny."); 
};
///////////////////////////////////////////////////////////////////////
//	Info WHY
///////////////////////////////////////////////////////////////////////
instance DIA_Sergio_WHY		(C_INFO)
{
	npc			 = 	PAL_299_Sergio;
	nr			 =  4;
	condition	 = 	DIA_Sergio_WHY_Condition;
	information	 = 	DIA_Sergio_WHY_Info;
	description	 = 	"Dlaczego nie przebywasz z pozosta�ymi paladynami?";
};
func int DIA_Sergio_WHY_Condition ()
{	
	if Npc_KnowsInfo (hero,DIA_Sergio_WELCOME)
	&&  (Npc_GetDistToWP (self,"NW_MONASTERY_CHAPELL_02") <= 1500)
	{
		return TRUE;
	};
};
func void DIA_Sergio_WHY_Info ()
{
	AI_Output (other, self, "DIA_Sergio_WHY_15_00"); //Dlaczego nie przebywasz z pozosta�ymi paladynami?
	AI_Output (self, other, "DIA_Sergio_WHY_04_01"); //To, �e tu jestem, mo�e si� wydawa� dziwne, jednak my, paladyni, s�u�ymy tak�e magom, gdy� i oni, tak jak my, czcz� Innosa.
	AI_Output (self, other, "DIA_Sergio_WHY_04_02"); //My, paladyni, walczymy w imi� Innosa. Jego wola jest naszym prawem. W tej chwili oczekuj� na rozkazy od mag�w.

};
///////////////////////////////////////////////////////////////////////
//	Info ORDERS
///////////////////////////////////////////////////////////////////////
instance DIA_Sergio_ORDERS		(C_INFO)
{
	npc			 = 	PAL_299_Sergio;
	nr			 =  10;
	condition	 = 	DIA_Sergio_ORDERS_Condition;
	information	 = 	DIA_Sergio_ORDERS_Info;
	permanent	 =  TRUE;
	description	 = 	"Dosta�e� ju� nowe rozkazy?";
};
func int DIA_Sergio_ORDERS_Condition ()
{	
	if Npc_KnowsInfo (hero,DIA_Sergio_WHY)
	&& (self.aivar[AIV_PARTYMEMBER] == FALSE) 
	&&  (Npc_GetDistToWP (self,"NW_MONASTERY_CHAPELL_02") <= 1500)
	{
		return TRUE;
	};
};
func void DIA_Sergio_ORDERS_Info ()
{
	AI_Output (other, self, "DIA_Sergio_ORDERS_15_00"); //Dosta�e� ju� nowe rozkazy?
	AI_Output (self, other, "DIA_Sergio_ORDERS_04_01"); //W tej chwili musz� si� stara� odnale�� si�� w modlitwie.
};
///////////////////////////////////////////////////////////////////////
//	Info Guide Start
///////////////////////////////////////////////////////////////////////
instance DIA_Sergio_Start		(C_INFO)
{
	npc			 = 	PAL_299_Sergio;
	nr			 =  10;
	condition	 = 	DIA_Sergio_Start_Condition;
	information	 = 	DIA_Sergio_Start_Info;
	permanent	 =  FALSE;
	description	 = 	"Masz mnie eskortowa� do prze��czy.";
};
func int DIA_Sergio_Start_Condition ()
{	
	if  (Npc_GetDistToWP (self,"NW_MONASTERY_CHAPELL_02") <= 1500)
	&&	(Sergio_Follow == TRUE)
	&&  (other.guild == GIL_KDF)
	{
		return TRUE;
	};
};
func void DIA_Sergio_Start_Info ()
{
	AI_Output (other, self, "DIA_Sergio_Start_15_00"); //Masz mnie eskortowa� do prze��czy.
	AI_Output (self, other, "DIA_Sergio_Start_04_01"); //Dobrze, uczyni� to. Znam drog�, chod� za mn�.
	
	AI_StopProcessInfos (self);
	
	self.aivar[AIV_PARTYMEMBER] = TRUE;  
	self.npctype = NPCTYPE_FRIEND;
	Npc_ExchangeRoutine (self,"GUIDE"); 
};
///////////////////////////////////////////////////////////////////////
//	Info Guide Perm
///////////////////////////////////////////////////////////////////////
instance DIA_Sergio_Guide		(C_INFO)
{
	npc			 = 	PAL_299_Sergio;
	nr			 =  10;
	condition	 = 	DIA_Sergio_Guide_Condition;
	information	 = 	DIA_Sergio_Guide_Info;
	permanent	 =  TRUE;
	description	 = 	"Idziemy?";
};
func int DIA_Sergio_Guide_Condition ()
{	
	if (self.aivar[AIV_PARTYMEMBER] == TRUE) 
	&& (Npc_GetDistToWP (self,"NW_TO_PASS_01") > 1000)
	{
		return TRUE;
	};
};
func void DIA_Sergio_Guide_Info ()
{
	AI_Output (other, self, "DIA_Sergio_Guide_15_00"); //Jak leci?
	AI_Output (self, other, "DIA_Sergio_Guide_04_01"); //Zabior� ci� do prze��czy. Jednak niebezpieczna cz�� podr�y dopiero tam si� rozpocznie.
	AI_Output (self, other, "DIA_Sergio_Guide_04_02"); //Nie marnujmy jednak czasu.
	
	AI_StopProcessInfos (self);
	
};
///////////////////////////////////////////////////////////////////////
//	Info Guide Ende
///////////////////////////////////////////////////////////////////////
instance DIA_Sergio_Ende		(C_INFO)
{
	npc			 = 	PAL_299_Sergio;
	nr			 =  2;
	condition	 = 	DIA_Sergio_Ende_Condition;
	information	 = 	DIA_Sergio_Ende_Info;
	permanent	 =  FALSE;
	important 	 =  TRUE;
};
func int DIA_Sergio_Ende_Condition ()
{	
	if (self.aivar[AIV_PARTYMEMBER] == TRUE) 
	&& (Npc_GetDistToWP (self,"NW_TO_PASS_01") <= 1000)
	{
		return TRUE;
	};
};
func void DIA_Sergio_Ende_Info ()
{
	AI_Output (self, other, "DIA_Sergio_Ende_04_00"); //Jeste�my na miejscu. Bez wzgl�du na to, co czeka na ciebie w G�rniczej Dolinie, licz�, �e ca�o powr�cisz z tej wyprawy.
	AI_Output (other, self, "DIA_Sergio_Ende_15_01"); //Nie obawiaj si� - wr�c�.
	AI_Output (self, other, "DIA_Sergio_Ende_04_02"); //Niech Innos prowadzi ci� i ochrania.
	
	self.aivar[AIV_PARTYMEMBER] = FALSE; 
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine (self,"START"); 
};
///////////////////////////////////////////////////////////////////////
//	Info Perm
///////////////////////////////////////////////////////////////////////
instance DIA_Sergio_Perm		(C_INFO)
{
	npc			 = 	PAL_299_Sergio;
	nr			 =  2;
	condition	 = 	DIA_Sergio_Perm_Condition;
	information	 = 	DIA_Sergio_Perm_Info;
	permanent	 =  FALSE;
	important 	 =  TRUE;
};
func int DIA_Sergio_Perm_Condition ()
{	
	if (Kapitel >= 9)
	&& (other.guild != GIL_KDF)
	{
		return TRUE;
	};
};
func void DIA_Sergio_Perm_Info ()
{
	if (other.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Sergio_Perm_04_00"); //Na Innosa, Bracie. Je�li chcesz dowiedzie� si� czego� o Konsekracji Miecza, porozmawiaj z Mardukiem.
	}
	else
	{
		AI_Output (self, other, "DIA_Sergio_Perm_04_01"); //S�ysza�em o tobie. Jeste� cz�owiekiem z farm, kt�ry powr�ci� z G�rniczej Doliny. Przyjmij m�j szacunek.
	};
	AI_StopProcessInfos (self);
	
};
