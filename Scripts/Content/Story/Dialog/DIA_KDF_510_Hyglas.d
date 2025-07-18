///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Hyglas_Kap1_EXIT   (C_INFO)
{
	npc         = KDF_510_Hyglas;
	nr          = 999;
	condition   = DIA_Hyglas_Kap1_EXIT_Condition;
	information = DIA_Hyglas_Kap1_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Hyglas_Kap1_EXIT_Condition()
{
	if (Kapitel <= 7)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Hyglas_Kap1_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info Feuer
///////////////////////////////////////////////////////////////////////
instance DIA_Hyglas_Feuer		(C_INFO)
{
	npc			 = 	KDF_510_Hyglas;
	nr			 = 	2;
	condition	 = 	DIA_Hyglas_Feuer_Condition;
	information	 = 	DIA_Hyglas_Feuer_Info;
	permanent	 = 	FALSE;
	description	 =  "Prosz� o Pr�b� Ognia.";
};
func int DIA_Hyglas_Feuer_Condition ()
{	
	if (other.guild == GIL_NOV)
	&& (KNOWS_FIRE_CONTEST == TRUE)
	&& (Npc_KnowsInfo (other,DIA_Pyrokar_FIRE) == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Hyglas_Feuer_Info ()
{
	AI_Output (other, self, "DIA_Hyglas_Feuer_15_00"); //Prosz� o Pr�b� Ognia.
	AI_Output (self, other, "DIA_Hyglas_Feuer_14_01"); //Pr�ba Ognia nie by�a stosowana od zamierzch�ych czas�w.
	AI_Output (self, other, "DIA_Hyglas_Feuer_14_02"); //To zbyt niebezpieczne. Nawet o tym nie my�l.
};    
///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Hyglas_Hallo		(C_INFO)
{
	npc			 = 	KDF_510_Hyglas;
	nr			 = 	2;
	condition	 = 	DIA_Hyglas_Hallo_Condition;
	information	 = 	DIA_Hyglas_Hallo_Info;
	permanent	 = 	FALSE;
	important	 =  TRUE;
};
func int DIA_Hyglas_Hallo_Condition ()
{	
	if Npc_IsInState (self,ZS_Talk)
	{
		return TRUE;
	};
};
func void DIA_Hyglas_Hallo_Info ()
{
	AI_Output (self, other, "DIA_Hyglas_Hallo_14_00"); //Jestem Mistrz Hyglas, Stra�nik Ognia i Wiedzy.
	
	if (other.guild == GIL_NOV)
	{
		AI_Output (self, other, "DIA_Hyglas_Hallo_14_01"); //A wi�c Mistrz Parlan wyda� ci pozwolenie na dost�p do pism.
		AI_Output (self, other, "DIA_Hyglas_Hallo_14_02"); //Zatem prosz�, masz woln� r�k�. Czytaj, a znajdziesz w pismach o�wiecenie, kt�rego szukasz.
	};
};    
///////////////////////////////////////////////////////////////////////
//	Info JOB
///////////////////////////////////////////////////////////////////////
instance DIA_Hyglas_JOB		(C_INFO)
{
	npc			 = 	KDF_510_Hyglas;
	nr			 = 	2;
	condition	 = 	DIA_Hyglas_JOB_Condition;
	information	 = 	DIA_Hyglas_JOB_Info;
	permanent	 = 	FALSE;
	description	 = 	"Co studiujesz, Mistrzu?";
};
func int DIA_Hyglas_JOB_Condition ()
{	
	return TRUE;
};
func void DIA_Hyglas_JOB_Info ()
{
	AI_Output (other, self, "DIA_Hyglas_JOB_15_00"); //Co studiujesz, Mistrzu?
	AI_Output (self, other, "DIA_Hyglas_JOB_14_01"); //Moje badania koncentruj� si� na ogniu - �ywiole Innosa.
	AI_Output (self, other, "DIA_Hyglas_JOB_14_02"); //To wielki dar, a zarazem pot�na bro�. Zajmuj� si� tworzeniem run zawieraj�cych moc ognia Innosa.
	
	if (other.guild == GIL_NOV)
	{
		AI_Output (other, self, "DIA_Hyglas_JOB_15_03"); //To bardzo m�dre. Nauczysz mnie?
		AI_Output (self, other, "DIA_Hyglas_JOB_14_04"); //Tylko Innos mo�e zes�a� dar magii. I jedynie jego s�udzy, Magowie Ognia, mog� z niego korzysta�.
	};
};    
///////////////////////////////////////////////////////////////////////
//	Info CONTEST
///////////////////////////////////////////////////////////////////////
instance DIA_Hyglas_CONTEST		(C_INFO)
{
	npc			 = 	KDF_510_Hyglas;
	nr           =  9;
	condition	 = 	DIA_Hyglas_CONTEST_Condition;
	information	 = 	DIA_Hyglas_CONTEST_Info;
	permanent	 =  FALSE;
	description	 = 	"Za��da�em Pr�by Ognia.";
};
func int DIA_Hyglas_CONTEST_Condition ()
{
	if (MIS_RUNE == LOG_RUNNING)
	{
		return TRUE;
	};
};
func void DIA_Hyglas_CONTEST_Info ()
{
	AI_Output (other, self, "DIA_Hyglas_CONTEST_15_00"); //Za��da�em pr�by ognia. Ulthar kaza� mi stworzy� run� ognistej strza�y.
	AI_Output (self, other, "DIA_Hyglas_CONTEST_14_01"); //A teraz pewnie chcesz, abym nauczy� ci� odpowiedniej formu�y?
	AI_Output (other, self, "DIA_Hyglas_CONTEST_15_02"); //Nie za bardzo wiem, co jeszcze m�g�bym zrobi�.
	AI_Output (self, other, "DIA_Hyglas_CONTEST_14_03"); //Hmmm...
	AI_Output (self, other, "DIA_Hyglas_CONTEST_14_04"); //Dobrze, naucz� ci� tej formu�y. Ale najpierw musisz znale�� niezb�dne sk�adniki.
	
	B_LogEntry (TOPIC_Rune,"Hyglas ma mnie nauczy� formu�y runy ognistej strza�y, kiedy tylko zdob�d� wszystkie sk�adniki.");
};	
///////////////////////////////////////////////////////////////////////
//	Info FIREBOLT
///////////////////////////////////////////////////////////////////////
instance DIA_Hyglas_FIREBOLT		(C_INFO)
{
	npc		 	 = 	KDF_510_Hyglas;
	nr           =  9;
	condition	 = 	DIA_Hyglas_FIREBOLT_Condition;
	information	 = 	DIA_Hyglas_FIREBOLT_Info;
	permanent	 =  FALSE;
	description	 = 	"Jakie sk�adniki potrzebne s� do stworzenia runy ognistej strza�y?";
};
func int DIA_Hyglas_FIREBOLT_Condition ()
{	
	if Npc_KnowsInfo (hero, DIA_Hyglas_CONTEST)
	&& (MIS_RUNE == LOG_RUNNING)
	&& (!MakeRune_FireBolt)
	{
		return TRUE;
	};
};
func void DIA_Hyglas_FIREBOLT_Info ()
{
	AI_Output (other, self, "DIA_Hyglas_FIREBOLT_15_00"); //Jakie sk�adniki potrzebne s� do stworzenia runy ognistej strza�y?
	AI_Output (self, other, "DIA_Hyglas_FIREBOLT_14_01"); //Wszystkie odpowiedzi znajdziesz w ksi�gach.
};
///////////////////////////////////////////////////////////////////////
//	Info TALENT_FIREBOLT
///////////////////////////////////////////////////////////////////////
instance DIA_Hyglas_TALENT_FIREBOLT		(C_INFO)
{
	npc			 = 	KDF_510_Hyglas;
	nr			 =	990;
	condition	 = 	DIA_Hyglas_TALENT_FIREBOLT_Condition;
	information	 = 	DIA_Hyglas_TALENT_FIREBOLT_Info;
	permanent 	 =  TRUE; 
	description	 = 	"Naucz mnie, jak stworzy� run� OGNISTEJ STRZA�Y.";

};
func int DIA_Hyglas_TALENT_FIREBOLT_Condition ()
{	
	if (Npc_KnowsInfo(hero, DIA_Hyglas_CONTEST))
	&& (!MakeRune_FireBolt)
	&& (Npc_HasItems(other, ItMi_RuneBlank) >= 1)
	&& (Npc_HasItems(other, ItSc_Firebolt) >= 1)
	&& (Npc_HasItems(other, ItMi_Sulfur) >= 1)
	{
		return true;
	};
};
func void DIA_Hyglas_TALENT_FIREBOLT_Info ()
{
	AI_Output (other, self, "DIA_Hyglas_TALENT_FIREBOLT_15_00"); //Naucz mnie, jak stworzy� run� OGNISTEJ STRZA�Y.
	AI_Output (self, other, "DIA_Hyglas_TALENT_FIREBOLT_14_01"); //Aby stworzy� run� ognistej strza�y, musisz po��czy� na stole runicznym siark� z kamieniem runicznym.
	AI_Output (self, other, "DIA_Hyglas_TALENT_FIREBOLT_14_02"); //Moc zakl�cia ognistej strza�y wniknie w run�, a ty dostaniesz narz�dzie Innosa.
	AI_Output (self, other, "DIA_Hyglas_TALENT_FIREBOLT_14_03"); //Skoro ju� masz wszystkie materia�y, mo�esz przyst�pi� do tworzenia runy.
	MakeRune_FireBolt = true;
	PLAYER_TALENT_ENCHANTING[SPL_FireBolt] = true;
};
///////////////////////////////////////////////////////////////////////
//	Info BLANK_RUNE
///////////////////////////////////////////////////////////////////////
instance DIA_Hyglas_BLANK_RUNE		(C_INFO)
{
	npc			 = 	KDF_510_Hyglas;
	nr			 =	9;	
	condition	 = 	DIA_Hyglas_BLANK_RUNE_Condition;
	information	 = 	DIA_Hyglas_BLANK_RUNE_Info;
	permanent	 =  FALSE;
	description	 = 	"Gdzie znajd� kamie� runiczny?";
};
func int DIA_Hyglas_BLANK_RUNE_Condition ()
{	
	if Npc_KnowsInfo (hero, DIA_Hyglas_FIREBOLT)
	&& (MIS_RUNE == LOG_RUNNING)
	&& (npc_hasItems (other, ItMI_RuneBlank) < 1) 
	&& (!MakeRune_FireBolt)
	{
		return TRUE;
	};
};
func void DIA_Hyglas_BLANK_RUNE_Info ()
{
	AI_Output (other, self, "DIA_Hyglas_BLANK_RUNE_15_00"); //Gdzie znajd� kamie� runiczny?
	AI_Output (self, other, "DIA_Hyglas_BLANK_RUNE_14_01"); //Hej hej, to twoja pr�ba, nie moja. Znalezienie kamienia jest cz�ci� zadania.
};
///////////////////////////////////////////////////////////////////////
//	Info GOTRUNE
///////////////////////////////////////////////////////////////////////
instance DIA_Hyglas_GOTRUNE		(C_INFO)
{
	npc			 = 	KDF_510_Hyglas;
	nr			 =  2;
	condition	 = 	DIA_Hyglas_GOTRUNE_Condition;
	information	 = 	DIA_Hyglas_GOTRUNE_Info;
	permanent	 =  FALSE;
	description	 = 	"Stworzy�em run�.";
};
func int DIA_Hyglas_GOTRUNE_Condition ()
{
	if (Npc_KnowsInfo (hero,DIA_Ulthar_SUCCESS)== FALSE ) 
	&& (Npc_HasItems (hero, ItRu_Firebolt) >= 1)
	&& (other.guild == GIL_KDF)
	{
		return TRUE;
	};
};
func void DIA_Hyglas_GOTRUNE_Info ()
{
	AI_Output (other, self, "DIA_Hyglas_GOTRUNE_15_00"); //Stworzy�em run�.
	AI_Output (self, other, "DIA_Hyglas_GOTRUNE_14_01"); //No prosz�. Zdaje si�, �e przeszed�e� pr�b�. Nie by�o to chyba a� takie trudne.
	AI_Output (self, other, "DIA_Hyglas_GOTRUNE_14_02"); //Id� do Ulthara i poka� mu swoje dzie�o.
	
	B_LogEntry (TOPIC_Rune,"Stworzy�em run� Ognistej Strza�y."); 
};

//#######################################
//##
//##	Kapitel 2
//##
//#######################################

///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Hyglas_Kap2_EXIT   (C_INFO)
{
	npc         = KDF_510_Hyglas;
	nr          = 999;
	condition   = DIA_Hyglas_Kap2_EXIT_Condition;
	information = DIA_Hyglas_Kap2_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Hyglas_Kap2_EXIT_Condition()
{
	if (Kapitel == 8)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Hyglas_Kap2_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//#######################################
//##
//##	Kapitel 3
//##
//#######################################

///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Hyglas_Kap3_EXIT   (C_INFO)
{
	npc         = KDF_510_Hyglas;
	nr          = 999;
	condition   = DIA_Hyglas_Kap3_EXIT_Condition;
	information = DIA_Hyglas_Kap3_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Hyglas_Kap3_EXIT_Condition()
{
	if (Kapitel == 9)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Hyglas_Kap3_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info BringBook
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Hyglas_BringBook   (C_INFO)
{
	npc         = KDF_510_Hyglas;
	nr          = 38;
	condition   = DIA_Hyglas_BringBook_Condition;
	information = DIA_Hyglas_BringBook_Info;
	permanent   = FALSE;
	description = "Jakie� wie�ci?";
};
FUNC INT DIA_Hyglas_BringBook_Condition()
{
	if (Kapitel >= 9)
	&& (hero.guild != GIL_SLD)
	&& (hero.guild != GIL_DJG)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Hyglas_BringBook_Info()
{
	AI_Output (other,self ,"DIA_Hyglas_BringBook_15_00"); //Jakie� wie�ci?
	AI_Output (self ,other,"DIA_Hyglas_BringBook_14_01"); //Hm, tak. No c�, prawdopodobnie zauwa�y�e� te odziane na czarno postacie.
	AI_Output (other,self ,"DIA_Hyglas_BringBook_15_02"); //Spotka�em je.
	AI_Output (self ,other,"DIA_Hyglas_BringBook_14_03"); //I tu dochodzimy do sedna problemu. Aktualny uk�ad gwiazd jest bardzo nietypowy.
	AI_Output (self ,other,"DIA_Hyglas_BringBook_14_04"); //M�wi�c konkretniej, konstelacja Wo�a wesz�a w koniunkcj� z konstelacj� Wojownika. Nie musz� chyba t�umaczy�, co to oznacza.
	AI_Output (other,self ,"DIA_Hyglas_BringBook_15_05"); //Hmmm. No c�, szczerze m�wi�c...
	AI_Output (self ,other,"DIA_Hyglas_BringBook_14_06"); //Jasne, rozumiem. Nie b�d� si� teraz wdawa� w szczeg�owe rozwa�ania na temat takiej konfiguracji. Powiem tylko tyle, �e oznacza ona wielkie zmiany. A ja nie lubi� zmian.
	AI_Output (self ,other,"DIA_Hyglas_BringBook_14_07"); //Dlatego chc�, aby� przyni�s� mi z miasta pewn� ksi�g�, zatytu�owan� 'Boska moc gwiazd'. Zdobycie jej mo�e wymaga� nieco wysi�ku, ale jestem pewien, �e sobie poradzisz.
	
	Info_ClearChoices (DIA_Hyglas_BringBook);
	Info_AddChoice (DIA_Hyglas_BringBook,"Sam sobie znajd� t� ksi�g�.",DIA_Hyglas_BringBook_GetItYourself);
	Info_AddChoice (DIA_Hyglas_BringBook,"A co JA b�d� z tego mia�?",DIA_Hyglas_BringBook_GetForIt);
	Info_AddChoice (DIA_Hyglas_BringBook,"Zobacz�, czy uda mi si� j� znale��.",DIA_Hyglas_BringBook_Yes);
};

FUNC VOID DIA_Hyglas_BringBook_GetItYourself()
{
	AI_Output (other,self ,"DIA_Hyglas_BringBook_GetItYourself_15_00"); //Sam sobie znajd� t� ksi�g�.
	AI_Output (self ,other,"DIA_Hyglas_BringBook_GetItYourself_14_01"); //Jak �miesz odzywa� si� do mnie w ten spos�b? Takim zachowaniem okazujesz brak nale�nego mi szacunku.
	AI_Output (self ,other,"DIA_Hyglas_BringBook_GetItYourself_14_02"); //Zejd� mi z oczu i zastan�w si� dobrze nad swoim post�powaniem.
	
	MIS_HyglasBringBook = LOG_OBSOLETE;
	
	Info_ClearChoices (DIA_Hyglas_BringBook); 
};

FUNC VOID DIA_Hyglas_BringBook_GetForIt()
{
	AI_Output (other,self ,"DIA_Hyglas_BringBook_GetForIt_15_00"); //A co z tego b�d� mia�?
	AI_Output (self ,other,"DIA_Hyglas_BringBook_GetForIt_14_01"); //Nie ca�kiem rozumiem...
	AI_Output (other,self ,"DIA_Hyglas_BringBook_GetForIt_15_02"); //Chcia�bym wiedzie�, co zyskam, je�li przynios� ci ksi�g�.
	AI_Output (self ,other,"DIA_Hyglas_BringBook_GetForIt_14_03"); //Nic. A czego oczekiwa�e�? Je�li masz czas na wycieczk� do miasta, twoim obowi�zkiem jest mi pom�c.
	
	Info_ClearChoices (DIA_Hyglas_BringBook); 
};

FUNC VOID DIA_Hyglas_BringBook_Yes()
{
	AI_Output (other,self ,"DIA_Hyglas_BringBook_Yes_15_00"); //Zobacz�, czy uda mi si� j� znale��.
	AI_Output (self ,other,"DIA_Hyglas_BringBook_Yes_14_01"); //Dobrze - dzi�ki temu b�d� mia� wi�cej czasu na inne sprawy.
	AI_Output (self ,other,"DIA_Hyglas_BringBook_Yes_14_02"); //Spr�buj za�atwi� to jak najszybciej. Obawiam si�, �e czas jest w tej chwili do�� cennym towarem.
	
	MIS_HyglasBringBook = LOG_RUNNING;
	
	Info_ClearChoices (DIA_Hyglas_BringBook);
	
	Log_CreateTopic (TOPIC_HyglasBringBook,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_HyglasBringBook,LOG_RUNNING);
	B_LogEntry (TOPIC_HyglasBringBook,"Hyglas chce, abym przyni�s� mu ksi�g� zatytu�owan� 'Boska moc gwiazd'. Mo�e ma j� kt�ry� z handlarzy w mie�cie.");
};

//*********************************************************************
//	Ich hab dein Buch
//*********************************************************************

INSTANCE DIA_Hyglas_HaveBook   (C_INFO)
{
	npc         = KDF_510_Hyglas;
	nr          = 38;
	condition   = DIA_Hyglas_HaveBook_Condition;
	information = DIA_Hyglas_HaveBook_Info;
	permanent   = FALSE;
	description = "Przynios�em ci ksi�g�.";
};
FUNC INT DIA_Hyglas_HaveBook_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Hyglas_BringBook))
	&& (Npc_HasItems (other,ItWr_BookLp_StarPower) >= 1)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Hyglas_HaveBook_Info()
{
	AI_Output (other,self ,"DIA_Hyglas_HaveBook_15_00"); //Przynios�em ci ksi�g�.
	
	IF Mis_HyglasBringBook == LOG_RUNNING
	{
		AI_Output (self ,other,"DIA_Hyglas_HaveBook_14_01"); //Bardzo dobrze, daj mi j�.
	}
	else
	{
		AI_Output (self ,other,"DIA_Hyglas_HaveBook_14_02"); //A wi�c jednak zmieni�e� zdanie. Bardzo dobrze. Gdzie jest ksi�ga?
	};		
		
	B_GiveInvItems (other,self,ItWr_BookLp_StarPower,1);
	
	Mis_HyglasBringBook = LOG_SUCCESS;
	B_GivePlayerExp(300);
	
	
	AI_Output (self ,other,"DIA_Hyglas_HaveBook_14_03"); //Mo�esz odej��. A ja zajm� si� badaniami.
	
};

//#######################################
//##
//##	Kapitel 4
//##
//#######################################

///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Hyglas_Kap4_EXIT   (C_INFO)
{
	npc         = KDF_510_Hyglas;
	nr          = 999;
	condition   = DIA_Hyglas_Kap4_EXIT_Condition;
	information = DIA_Hyglas_Kap4_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Hyglas_Kap4_EXIT_Condition()
{
	if (Kapitel == 10)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Hyglas_Kap4_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Perm4
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Hyglas_Kap4_PERM   (C_INFO)
{
	npc         = KDF_510_Hyglas;
	nr          = 49;
	condition   = DIA_Hyglas_Kap4_PERM_Condition;
	information = DIA_Hyglas_Kap4_PERM_Info;
	permanent   = TRUE;
	description = "Dowiedzia�e� si� czego� nowego?";
};
FUNC INT DIA_Hyglas_Kap4_PERM_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Hyglas_BringBook))
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Hyglas_Kap4_PERM_Info()
{
	AI_Output (other,self ,"DIA_Hyglas_Kap4_PERM_15_00"); //Dowiedzia�e� si� czego� nowego?
	
	if (Mis_HyglasBringBook == LOG_SUCCESS)
	{
		AI_Output (self ,other,"DIA_Hyglas_Kap4_PERM_14_01"); //Nie jestem do ko�ca pewien, ale wygl�da na to, �e aktualny uk�ad gwiazd zwiastuje k�opoty.
		AI_Output (other,self ,"DIA_Hyglas_Kap4_PERM_15_02"); //Jakie problemy?
		AI_Output (self ,other,"DIA_Hyglas_Kap4_PERM_14_03"); //Materia rozdzielaj�ca dwa �wiaty sta�a si� bardzo cienka. Gdyby kto� chcia� otworzy� przej�cie, m�g�by to zrobi�, u�ywaj�c zaledwie cz�stki mocy potrzebnej do tego w innych okoliczno�ciach.
		AI_Output (self ,other,"DIA_Hyglas_Kap4_PERM_14_04"); //Demony mog� u�ywa� takich przej��, aby przenika� do naszego �wiata.
		
		Hyglas_SendsToKarras = TRUE;
	}
	else if (Mis_HyglasBringBook == LOG_RUNNING)
	{
		AI_Output (self ,other,"DIA_Hyglas_Kap4_PERM_14_05"); //Nie, wci�� czekam na t� ksi�g�.
	}
	else
	{
		AI_Output (self ,other,"DIA_Hyglas_Kap4_PERM_14_06"); //Oczywi�cie wci�� prowadz� swoje badania, jednak potrwaj� one znacznie d�u�ej, je�li nie b�d� mia� niezb�dnych materia��w.
	};
	
};

//#######################################
//##
//##	Kapitel 5
//##
//#######################################

///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Hyglas_Kap5_EXIT   (C_INFO)
{
	npc         = KDF_510_Hyglas;
	nr          = 999;
	condition   = DIA_Hyglas_Kap5_EXIT_Condition;
	information = DIA_Hyglas_Kap5_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Hyglas_Kap5_EXIT_Condition()
{
	if (Kapitel == 11)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Hyglas_Kap5_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
