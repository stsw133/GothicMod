
///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Brutus_EXIT   (C_INFO)
{
	npc         = VLK_4100_Brutus;
	nr          = 999;
	condition   = DIA_Brutus_EXIT_Condition;
	information = DIA_Brutus_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE ;
};

FUNC INT DIA_Brutus_EXIT_Condition()
{	
	if (Kapitel < 9)
	{
			return true;
	};
};
FUNC VOID DIA_Brutus_EXIT_Info()
{
	B_NpcClearObsessionByDMT (self);
};
///////////////////////////////////////////////////////////////////////
//	Brutus ist ToughGuy 
///////////////////////////////////////////////////////////////////////
//	Info AFTER_FIGHT 
///////////////////////////////////////////////////////////////////////
instance DIA_Brutus_AFTER_FIGHT		(C_INFO)
{
	npc			 = 	VLK_4100_Brutus;
	nr			 = 	1;
	condition	 = 	DIA_Brutus_AFTER_FIGHT_Condition;
	information	 = 	DIA_Brutus_AFTER_FIGHT_Info;
	permanent	 = 	true;
	important	 =  true;
};

func int DIA_Brutus_AFTER_FIGHT_Condition ()
{	
	if (self.aivar[AIV_LastFightAgainstPlayer] != FIGHT_NONE)
	&& (self.aivar[AIV_LastFightComment] == false)
	&& Npc_IsInState (self, ZS_Talk)
	&& (NpcObsessedByDMT_Brutus == false)
	{
		return true;
	};
};
func void DIA_Brutus_AFTER_FIGHT_Info ()
{
	if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
	{
		AI_Output (other, self, "DIA_Brutus_AFTER_FIGHT_15_00"); //Co tam, dalej masz wszystkie z�by?
		AI_Output (self, other, "DIA_Brutus_AFTER_FIGHT_06_01"); //Ale z ciebie twardziel! Nie chcia�bym zmierzy� si� z tob� w bitwie.
	}
	else if  (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_WON)
	{
		AI_Output (other, self, "DIA_Brutus_AFTER_FIGHT_15_02"); //Chyba po�ama�e� mi wszystkie �ebra.
		AI_Output (self, other, "DIA_Brutus_AFTER_FIGHT_06_03"); //A przecie� nie uderzy�em ci� zbyt mocno. Zreszt� niewa�ne, lubi� kolesi, kt�rzy potrafi� przyj�� kilka cios�w.
		
		if (Brutus_einmalig == false)
		{
			AI_Output (self, other, "DIA_Brutus_AFTER_FIGHT_06_04"); //Ta mikstura pomo�e ci stan�� z powrotem na nogi. A poza tym �wietnie dzia�a na �o��dek!
		
			CreateInvItems (self, ItPo_Health_01,1);
			B_GiveInvItems (self, hero, ItPo_Health_01,1); 
			Brutus_einmalig = true;
		};
	}
	else //Cancel
	{
		AI_Output (self, other, "DIA_Brutus_AFTER_FIGHT_06_05"); //Nie mam nic przeciwko dobrej walce. Ale kiedy jak�� zaczynam, to tak�e j� ko�cz�.
	};
	// ------ AIVAR resetten ------
	self.aivar[AIV_LastFightComment] = true;
};
///////////////////////////////////////////////////////////////////////
//	Info PRISONER
///////////////////////////////////////////////////////////////////////
instance DIA_Brutus_PRISONER		(C_INFO)
{
	npc		     = 	VLK_4100_Brutus;
	nr		     = 	2;
	condition	 = 	DIA_Brutus_PRISONER_Condition;
	information	 = 	DIA_Brutus_PRISONER_Info;
	description	 = 	"Czym si� tu zajmujesz?";
};

func int DIA_Brutus_PRISONER_Condition ()
{	
	if (Kapitel < 9)
	&& (NpcObsessedByDMT_Brutus == false)
	{
		return true;
	};
};
func void DIA_Brutus_PRISONER_Info ()
{
	AI_Output (other, self, "DIA_Brutus_PRISONER_15_00"); //Czym si� tu zajmujesz?
	AI_Output (self, other, "DIA_Brutus_PRISONER_06_01"); //Szkol� ch�opak�w. Ucz� ich, jak wyrobi� sobie stalowe mi�nie.
	AI_Output (self, other, "DIA_Brutus_PRISONER_06_02"); //Zajmuj� si� tak�e wi�niami. Jestem dla tych bydlak�w jak cholerny ojciec.
	AI_Output (self, other, "DIA_Brutus_PRISONER_06_03"); //Ale przede wszystkim potrafi� zmusi� ich do m�wienia. Wierz mi - wiem, jak KA�DEGO sk�oni� do m�wienia.
	AI_Output (other, self, "DIA_Brutus_PRISONER_15_04"); //Brzmi strasznie przyjemnie...
	AI_Output (self, other, "DIA_Brutus_PRISONER_06_05"); //Ale te zawszone t�paki, kt�rych tu teraz mamy, nie maj� zbyt wiele do powiedzenia.
	
	if (MIS_RescueGorn != LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Brutus_PRISONER_06_06"); //I nie pozwalaj� mi zaj�� si� tym Gornem.
		
		KnowsAboutGorn = true; 
	};
};
///////////////////////////////////////////////////////////////////////
//	Info PERM
///////////////////////////////////////////////////////////////////////
instance DIA_Brutus_PERM		(C_INFO)
{
	npc			 = 	VLK_4100_Brutus;
	nr			 =  90;
	condition	 = 	DIA_Brutus_PERM_Condition;
	information	 = 	DIA_Brutus_PERM_Info;
	permanent	 = 	true;
	description	 = 	"Co� nowego?";
};

func int DIA_Brutus_PERM_Condition ()
{	
	if  Npc_KnowsInfo (hero,DIA_Brutus_PRISONER) 
	&& (Kapitel < 9)
	&& (NpcObsessedByDMT_Brutus == false)
	{
		return true;
	};
};
func void DIA_Brutus_PERM_Info ()
{
	AI_Output (other, self, "DIA_Brutus_PERM_15_00"); //Co� nowego?
	AI_Output (self, other, "DIA_Brutus_PERM_06_01"); //Wszystko jest takie ciche. Nie ma nowych wi�ni�w - nikogo, kto potrzebuje pomocy w znalezieniu w�a�ciwych s��w - szkoda.
	B_NpcClearObsessionByDMT (self);
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

INSTANCE DIA_Brutus_KAP3_EXIT(C_INFO)
{
	npc			= VLK_4100_Brutus;
	nr			= 999;
	condition	= DIA_Brutus_KAP3_EXIT_Condition;
	information	= DIA_Brutus_KAP3_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Brutus_KAP3_EXIT_Condition()
{
	if (Kapitel == 9)	
	{
		return true;
	};
};
FUNC VOID DIA_Brutus_KAP3_EXIT_Info()
{	
	B_NpcClearObsessionByDMT (self);
};

///////////////////////////////////////////////////////////////////////
//	Info DuSchonWieder
///////////////////////////////////////////////////////////////////////
instance DIA_Brutus_DUSCHONWIEDER		(C_INFO)
{
	npc			 = 	VLK_4100_Brutus;
	nr			 = 	30;
	condition	 = 	DIA_Brutus_DUSCHONWIEDER_Condition;
	information	 = 	DIA_Brutus_DUSCHONWIEDER_Info;
	permanent	 = 	true;
	description	 = 	"Torturowa�e� dzisiaj ju� kogo�?";
};

func int DIA_Brutus_DUSCHONWIEDER_Condition ()
{
	if (Kapitel == 9)	
		&& (NpcObsessedByDMT_Brutus == false)
	{
		return true;
	};
};

func void DIA_Brutus_DUSCHONWIEDER_Info ()
{
	AI_Output (other, self, "DIA_Brutus_DUSCHONWIEDER_15_00"); //Torturowa�e� dzisiaj ju� kogo�?
	AI_Output (self, other, "DIA_Brutus_DUSCHONWIEDER_06_01"); //Nie widzisz, �e jestem zaj�ty? Wr�� p�niej.

	B_NpcClearObsessionByDMT (self);
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

INSTANCE DIA_Brutus_KAP4_EXIT(C_INFO)
{
	npc			= VLK_4100_Brutus;
	nr			= 999;
	condition	= DIA_Brutus_KAP4_EXIT_Condition;
	information	= DIA_Brutus_KAP4_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Brutus_KAP4_EXIT_Condition()
{
	if (Kapitel == 10)	
	{
		return true;
	};
};
FUNC VOID DIA_Brutus_KAP4_EXIT_Info()
{	
	B_NpcClearObsessionByDMT (self);
};


///////////////////////////////////////////////////////////////////////
//	Info Warumnichtarbbeit
///////////////////////////////////////////////////////////////////////
instance DIA_Brutus_WARUMNICHTARBBEIT		(C_INFO)
{
	npc		 = 	VLK_4100_Brutus;
	nr		 = 	40;
	condition	 = 	DIA_Brutus_WARUMNICHTARBBEIT_Condition;
	information	 = 	DIA_Brutus_WARUMNICHTARBBEIT_Info;

	description	 = 	"Czemu nie pracujesz?";
};

func int DIA_Brutus_WARUMNICHTARBBEIT_Condition ()
{
	if (Kapitel >= 10)
		&& (NpcObsessedByDMT_Brutus == false)
		&& (MIS_OCGateOpen == false)
		{
				return true;
		};
};

func void DIA_Brutus_WARUMNICHTARBBEIT_Info ()
{
	AI_Output			(other, self, "DIA_Brutus_WARUMNICHTARBBEIT_15_00"); //Czemu nie pracujesz?
	AI_Output			(self, other, "DIA_Brutus_WARUMNICHTARBBEIT_06_01"); //Ale to odra�aj�ce!
	AI_Output			(self, other, "DIA_Brutus_WARUMNICHTARBBEIT_06_02"); //Zagl�da�e� do mojej komnaty? Te paskudne chrz�szcze s� wsz�dzie.
	AI_Output			(self, other, "DIA_Brutus_WARUMNICHTARBBEIT_06_03"); //Nie mam poj�cia, kto mieszka� tam przede mn�, ale ja z pewno�ci� nie wr�c� do tego chlewa.
	AI_Output			(self, other, "DIA_Brutus_WARUMNICHTARBBEIT_06_04"); //Nienawidz� tych bestii. Przesta� si� krety�sko u�miecha�.

	Log_CreateTopic (TOPIC_BrutusMeatbugs, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_BrutusMeatbugs, LOG_RUNNING);
	B_LogEntry (TOPIC_BrutusMeatbugs,"Brutus, oprawca z zamku, boi si� zupe�nie nieszkodliwych chrz�szczy. Prawdziwy z niego twardziel."); 
};


///////////////////////////////////////////////////////////////////////
//	Info Meatbugsweg
///////////////////////////////////////////////////////////////////////
instance DIA_Brutus_MEATBUGSWEG		(C_INFO)
{
	npc		 = 	VLK_4100_Brutus;
	nr		 = 	31;
	condition	 = 	DIA_Brutus_MEATBUGSWEG_Condition;
	information	 = 	DIA_Brutus_MEATBUGSWEG_Info;
	
	description	 = 	"Chrz�szczy ju� nie ma.";
};

func int DIA_Brutus_MEATBUGSWEG_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Brutus_WARUMNICHTARBBEIT))
		&& (Npc_IsDead(Meatbug_Brutus1))
		&& (Npc_IsDead(Meatbug_Brutus2))
		&& (Npc_IsDead(Meatbug_Brutus3))
		&& (Npc_IsDead(Meatbug_Brutus4))
		&& (Kapitel >= 10)
		&& (NpcObsessedByDMT_Brutus == false)
		&& (MIS_OCGateOpen == false)
		{
				return true;
		};
};

func void DIA_Brutus_MEATBUGSWEG_Info ()
{
	AI_Output			(other, self, "DIA_Brutus_MEATBUGSWEG_15_00"); //Chrz�szczy ju� nie ma. Mo�esz wr�ci� do polerowania swoich imade�, czy co tam robi�e�.
	AI_Output			(self, other, "DIA_Brutus_MEATBUGSWEG_06_01"); //Jeste� pewien, �e nie prze�y� �aden z tych potwor�w?
	AI_Output			(other, self, "DIA_Brutus_MEATBUGSWEG_15_02"); //Na pewno.
	AI_Output			(self, other, "DIA_Brutus_MEATBUGSWEG_06_03"); //Dobrze wi�c. Przyjmij to z�oto jako dow�d mojej wdzi�czno�ci.
	AI_Output			(other, self, "DIA_Brutus_MEATBUGSWEG_15_04"); //Au, zaraz si� rozp�acz�.

	TOPIC_END_BrutusMeatbugs = true;
	
	B_GivePlayerXP(XP_BONUS_3);
	B_NpcClearObsessionByDMT (self);

	CreateInvItems (self, ItMi_Gold, 150);									
	B_GiveInvItems (self, other, ItMi_Gold, 150);					

	Npc_ExchangeRoutine	(self,"Start");  
};

///////////////////////////////////////////////////////////////////////
//	Info perm4
///////////////////////////////////////////////////////////////////////
instance DIA_Brutus_PERM4		(C_INFO)
{
	npc		 = 	VLK_4100_Brutus;
	nr		 = 	32;
	condition	 = 	DIA_Brutus_PERM4_Condition;
	information	 = 	DIA_Brutus_PERM4_Info;
	permanent	 = 	true;

	description	 = 	"Wszystko w porz�dku?";
};

func int DIA_Brutus_PERM4_Condition ()
{
	if 	((Npc_KnowsInfo(other, DIA_Brutus_MEATBUGSWEG))
	 	||(MIS_OCGateOpen == true))
	 	&& (NpcObsessedByDMT_Brutus == false)
	 {
				return true;
	 };
};

func void DIA_Brutus_PERM4_Info ()
{

	if 	(
			(MIS_OCGateOpen == true) 
			|| ((hero.guild == GIL_KDF)&& (Kapitel >= 11))
		)
		{						
			B_NpcObsessedByDMT (self);
		}
		else 
 		{
			AI_Output			(other, self, "DIA_Brutus_PERM4_15_00"); //Wszystko w porz�dku?
			AI_Output			(self, other, "DIA_Brutus_PERM4_06_01"); //Jeste� pewien, �e nie ma ju� tych chrz�szczy?
			AI_Output			(other, self, "DIA_Brutus_PERM4_15_02"); //Ehem... Patrz, jeden jest za tob�.
			AI_Output			(self, other, "DIA_Brutus_PERM4_06_03"); //Co?
		
			B_NpcClearObsessionByDMT (self);
			
			
			Npc_SetTarget 		(self, other);
			
			self.aivar[AIV_INVINCIBLE] = false; //HACK, weil durch AI_StartState (b�se) Flag nicht zur�ckgesetzt wird 
			other.aivar[AIV_INVINCIBLE] = false;
			
			AI_StartState 		(self, ZS_Flee, 0, "");
		 };		
};	

///////////////////////////////////////////////////////////////////////
//	Info bessen
///////////////////////////////////////////////////////////////////////
instance DIA_Brutus_BESSEN		(C_INFO)
{
	npc		 = 	VLK_4100_Brutus;
	nr		 = 	55;
	condition	 = 	DIA_Brutus_BESSEN_Condition;
	information	 = 	DIA_Brutus_BESSEN_Info;
	permanent	 = 	true;

	description	 = 	"Jeste� op�tany!";
};

func int DIA_Brutus_BESSEN_Condition ()
{
 	if (NpcObsessedByDMT_Brutus == true)
 		&& (NpcObsessedByDMT == false)
	 {
				return true;
	 };
};

func void DIA_Brutus_BESSEN_Info ()
{
	AI_Output			(other, self, "DIA_Brutus_BESSEN_15_00"); //Jeste� op�tany!

	if (hero.guild == GIL_KDF)
		||(hero.guild == GIL_PAL)
	{
	AI_Output			(other, self, "DIA_Brutus_BESSEN_15_01"); //Id� do klasztoru, niech ci� ulecz�.
	AI_Output			(self, other, "DIA_Brutus_BESSEN_06_02"); //Nie mo�na mi pom�c. Odejd�!
	B_NpcClearObsessionByDMT (self);
	}
	else
	{
	AI_Output			(other, self, "DIA_Brutus_BESSEN_15_03"); //Kto� musi usun�� z twojej g�owy te demony.
	AI_Output			(self, other, "DIA_Brutus_BESSEN_06_04"); //NIE!
	B_NpcClearObsessionByDMT (self);
		
	Npc_SetTarget 		(self, other);
	
	self.aivar[AIV_INVINCIBLE] = false; //HACK, weil durch AI_StartState (b�se) Flag nicht zur�ckgesetzt wird 
	other.aivar[AIV_INVINCIBLE] = false;
			
	AI_StartState 		(self, ZS_Flee, 0, "");	
	};
};

//#####################################################################
//##
//##
//##							KAPITEL 5 und 6
//##
//##
//#####################################################################

// ************************************************************
// 	  				   EXIT KAP5
// ************************************************************

INSTANCE DIA_Brutus_KAP5_EXIT(C_INFO)
{
	npc			= VLK_4100_Brutus;
	nr			= 999;
	condition	= DIA_Brutus_KAP5_EXIT_Condition;
	information	= DIA_Brutus_KAP5_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Brutus_KAP5_EXIT_Condition()
{
	if (Kapitel >= 11)	
	{
		return true;
	};
};
FUNC VOID DIA_Brutus_KAP5_EXIT_Info()
{	
	B_NpcClearObsessionByDMT (self);
};
