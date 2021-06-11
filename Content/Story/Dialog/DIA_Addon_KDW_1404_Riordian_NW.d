///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Riordian_EXIT   (C_INFO)
{
	npc         = KDW_1404_Addon_Riordian_NW;
	nr          = 999;
	condition   = DIA_Addon_Riordian_EXIT_Condition;
	information = DIA_Addon_Riordian_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Addon_Riordian_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Addon_Riordian_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_Hallo		(C_INFO)
{
	npc			 = 	KDW_1404_Addon_Riordian_NW;
	nr			 = 	5;
	condition	 = 	DIA_Addon_Riordian_Hallo_Condition;
	information	 = 	DIA_Addon_Riordian_Hallo_Info;
	description	 = 	"Co robisz?";
};

func int DIA_Addon_Riordian_Hallo_Condition ()
{
	return TRUE;
};

func void DIA_Addon_Riordian_Hallo_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_Hallo_15_00"); //Co robisz?
	AI_Output	(self, other, "DIA_Addon_Riordian_Hallo_10_01"); //Badam kultur� tego staro�ytnego ludu.
	AI_Output	(self, other, "DIA_Addon_Riordian_Hallo_10_02"); //Z inskrypcji wiemy, �e �yli tu bardzo dawno temu.
	AI_Output	(self, other, "DIA_Addon_Riordian_Hallo_10_03"); //Nie wiem dok�adnie, KIEDY powsta�a ta budowla, ale ich cywilizacja by�a bardzo rozwini�ta.
	AI_Output	(self, other, "DIA_Addon_Riordian_Hallo_10_04"); //Zbudowali miasto po drugiej stronie g�r. Oraz �wi�tyni� Adanosa.
};
///////////////////////////////////////////////////////////////////////
//	Info Alter
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_Alter		(C_INFO)
{
	npc			 = 	KDW_1404_Addon_Riordian_NW;
	nr			 = 	6;
	condition	 = 	DIA_Addon_Riordian_Alter_Condition;
	information	 = 	DIA_Addon_Riordian_Alter_Info;
	description	 = 	"Na ile lat oceniasz wiek tego budynku?";
};
func int DIA_Addon_Riordian_Alter_Condition ()
{
	if Npc_KnowsInfo (other, DIA_Addon_Riordian_Hallo)
	{
		return TRUE;
	};
};
func void DIA_Addon_Riordian_Alter_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_Alter_15_00"); //Na ile lat oceniasz wiek tego budynku?
	AI_Output	(self, other, "DIA_Addon_Riordian_Alter_10_01"); //Nie potrafi� powiedzie� dok�adnie, ale na pewno ma ju� kilkaset lat.
};
///////////////////////////////////////////////////////////////////////
//	Info Atlantis
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_Atlantis		(C_INFO)
{
	npc			 = 	KDW_1404_Addon_Riordian_NW;
	nr			 = 	4;
	condition	 = 	DIA_Addon_Riordian_Atlantis_Condition;
	information	 = 	DIA_Addon_Riordian_Atlantis_Info;
	description	 = 	"Zaginione miasto na wyspie Khorinis?";
};

func int DIA_Addon_Riordian_Atlantis_Condition ()
{
	if Npc_KnowsInfo (other, DIA_Addon_Riordian_Hallo)
	{
		return TRUE;
	};
};

func void DIA_Addon_Riordian_Atlantis_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_Atlantis_15_00"); //Zaginione miasto na wyspie Khorinis?
	AI_Output	(self, other, "DIA_Addon_Riordian_Atlantis_10_01"); //Tak. Do tej pory my�leli�my, �e znamy ca�� wysp�.
	AI_Output	(self, other, "DIA_Addon_Riordian_Atlantis_10_02"); //S�dzili�my, �e ca�� jej p�nocno-wschodni� cz�� zajmuje ogromny masyw g�rski.
	AI_Output	(self, other, "DIA_Addon_Riordian_Atlantis_10_03"); //Ale mylili�my si�.
	AI_Output	(self, other, "DIA_Addon_Riordian_Atlantis_10_04"); //Za g�rami le�y dolina. Znajdowa�o si� tam miasto prastarej cywilizacji.
	AI_Output	(self, other, "DIA_Addon_Riordian_Atlantis_10_05"); //Ch�tnie bym zobaczy� budynki tego miasta, ale pewnie rozpad�y si� w py� wieki temu...
	
	B_LogEntry (TOPIC_Addon_KDW,"Magowie Wody podejrzewaj�, �e za portalem znajduje si� staro�ytne, zaginione miasto."); 
};
///////////////////////////////////////////////////////////////////////
//	Info SaturasWantYou
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_SaturasWantYou		(C_INFO)
{
	npc			 = 	KDW_1404_Addon_Riordian_NW;
	nr			 = 	5;
	condition	 = 	DIA_Addon_Riordian_SaturasWantYou_Condition;
	information	 = 	DIA_Addon_Riordian_SaturasWantYou_Info;
	description	 = 	"Saturas chce ci� widzie�.";
};

func int DIA_Addon_Riordian_SaturasWantYou_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Riordian_Hallo))
	&& (MIS_Addon_Saturas_BringRiordian2Me == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void DIA_Addon_Riordian_SaturasWantYou_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_SaturasWantYou_15_00"); //Saturas chce ci� widzie�.
	AI_Output	(self, other, "DIA_Addon_Riordian_SaturasWantYou_10_01"); //Czy�by posun�� si� naprz�d ze swym dochodzeniem? W takim razie natychmiast si� z nim zobacz�.
	
	if (Nefarius_NW.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Riordian_SaturasWantYou_10_02"); //Je�li chcesz si� dowiedzie� wi�cej o tym miejscu, porozmawiaj z Nefariusem.
		AI_Output	(self, other, "DIA_Addon_Riordian_SaturasWantYou_10_03"); //Znajdziesz go w g��bi krypt.
	};	
	
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine	(self,"Saturas");
	MIS_Addon_Saturas_BringRiordian2Me = LOG_SUCCESS;
	B_GivePlayerXP (XP_Ambient);
};

///////////////////////////////////////////////////////////////////////
//	Info Perm
///////////////////////////////////////////////////////////////////////
var int Riordian_PermNews;

instance DIA_Addon_Riordian_Perm		(C_INFO)
{
	npc			 = 	KDW_1404_Addon_Riordian_NW;
	nr			 = 	99;
	condition	 = 	DIA_Addon_Riordian_Perm_Condition;
	information	 = 	DIA_Addon_Riordian_Perm_Info;
	permanent	 = 	TRUE;

	description	 = 	"Dowiedzia�e� si� czego� nowego?";
};

func int DIA_Addon_Riordian_Perm_Condition ()
{
	if (MIS_Addon_Saturas_BringRiordian2Me == LOG_SUCCESS)
		{
			return TRUE;
		};
};

func void DIA_Addon_Riordian_Perm_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_Perm_15_00"); //Dowiedzia�e� si� czego� nowego?
	if (Riordian_PermNews == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Riordian_Perm_10_01"); //Wiem, �e ta prastara cywilizacja czci�a Adanosa!
		Riordian_PermNews = TRUE;
	}
	else
	{
		AI_Output	(self, other, "DIA_Addon_Riordian_Perm_10_02"); //Raczej nie. Wr�� p�niej.
	};
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info TeachPre
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_TeachPre		(C_INFO)
{
	npc			 = 	KDW_1404_Addon_Riordian_NW;
	nr			 = 	5;
	condition	 = 	DIA_Addon_Riordian_TeachPre_Condition;
	information	 = 	DIA_Addon_Riordian_TeachPre_Info;

	description	 = 	"Vatras da� mi Amulet Szukaj�cego Ognika...";
};
func int DIA_Addon_Riordian_TeachPre_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Riordian_Hallo))
	&& (Npc_HasItems (other,ItAm_Addon_WispDetector))
		{
			return TRUE;
		};
};
func void DIA_Addon_Riordian_TeachPre_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_TeachPre_15_00"); //Vatras da� mi Amulet Szukaj�cego Ognika...
	AI_Output	(self, other, "DIA_Addon_Riordian_TeachPre_10_01"); //Ach! To rzadki artefakt. Za jego pomoc� mo�esz wyszkoli� ognika.
	AI_Output	(other, self, "DIA_Addon_Riordian_TeachPre_15_02"); //Mo�esz mi w tym pom�c?
	AI_Output	(self, other, "DIA_Addon_Riordian_TeachPre_10_03"); //Oczywi�cie. Przez d�ugi czas zajmowa�em si� tym rodzajem magii.
	Riordian_Addon_TeachPlayer = TRUE;

	Log_CreateTopic	(TOPIC_Addon_KDWTeacher, LOG_NOTE);
	B_LogEntry		(TOPIC_Addon_KDWTeacher, LogText_Addon_RiordianTeach);
};
///////////////////////////////////////////////////////////////////////
//	Info Teach
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_Teach (C_INFO)
{
	npc			= 	KDW_1404_Addon_Riordian_NW;
	nr			= 	90;
	condition	= 	DIA_Addon_Riordian_Teach_Condition;
	information	= 	DIA_Addon_Riordian_Teach_Info;
	permanent	= 	true;
	description	= 	"Poka� mi, jak wyszkoli� mojego ognika.";
};

var int DIA_Addon_Riordian_Teach_NoPerm;

func int DIA_Addon_Riordian_Teach_Condition()
{
	if (Riordian_Addon_TeachPlayer)
	&& (!DIA_Addon_Riordian_Teach_NoPerm)
	&& (Npc_HasItems(other, ItAm_Addon_WispDetector))
	{
		return true;
	};
};
func void DIA_Addon_Riordian_Teach_Info()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_Teach_15_00"); //Poka� mi, jak wyszkoli� mojego ognika.
	
	if (!WispSkills[WISPSKILL_NF])
	|| (!WispSkills[WISPSKILL_FF])
	|| (!WispSkills[WISPSKILL_NONE])
	|| (!WispSkills[WISPSKILL_RUNE])
	|| (!WispSkills[WISPSKILL_MAGIC])
	|| (!WispSkills[WISPSKILL_FOOD])
	|| (!WispSkills[WISPSKILL_POTIONS])
	{
		Info_ClearChoices	(DIA_Addon_Riordian_Teach);
		Info_AddChoice		(DIA_Addon_Riordian_Teach, DIALOG_BACK, DIA_Addon_Riordian_Teach_BACK);
		AI_Output	(self, other, "DIA_Addon_Riordian_Teach2_10_00"); //Czego ma szuka� tw�j ognik?
		
		if (!WispSkills[WISPSKILL_FF])
		{
			Info_AddChoice (DIA_Addon_Riordian_Teach, "Bro� dystansowa i amunicja (wymagany poziom 15)", DIA_Addon_Riordian_Teach_WISPSKILL_FF);
		};
		if (!WispSkills[WISPSKILL_NONE])
		{
			Info_AddChoice (DIA_Addon_Riordian_Teach, "Z�oto, klucze i narz�dzia (wymagany poziom 20)", DIA_Addon_Riordian_Teach_WISPSKILL_NONE);
		};
		if (!WispSkills[WISPSKILL_RUNE])
		&& (WISPSKILL_LEVEL >= 2)
		{
			Info_AddChoice (DIA_Addon_Riordian_Teach, "Runy i zwoje (wymagany poziom 25)", DIA_Addon_Riordian_Teach_WISPSKILL_RUNE);
		};
		if (!WispSkills[WISPSKILL_MAGIC])
		&& (WISPSKILL_LEVEL >= 2)
		{
			Info_AddChoice (DIA_Addon_Riordian_Teach, "Pier�cienie i amulety (wymagany poziom 30)", DIA_Addon_Riordian_Teach_WISPSKILL_MAGIC);
		};
		if (!WispSkills[WISPSKILL_FOOD])
		&& (WISPSKILL_LEVEL >= 3)
		{
			Info_AddChoice (DIA_Addon_Riordian_Teach, "�ywno�� i ro�liny (wymagany poziom 35)", DIA_Addon_Riordian_Teach_WISPSKILL_FOOD);
		};
		if (!WispSkills[WISPSKILL_POTIONS])
		&& (WISPSKILL_LEVEL >= 3)
		{
			Info_AddChoice (DIA_Addon_Riordian_Teach, "Magia i mikstury (wymagany poziom 40)", DIA_Addon_Riordian_Teach_WISPSKILL_POTIONS);
		};
	}
	else
	{
		AI_Output	(self, other, "DIA_Addon_Riordian_Teach1_10_00"); //Tw�j ognik b�dzie szuka� wszystkich po�ytecznych obiekt�w. Nie mog� ci� nauczy� niczego wi�cej.
		DIA_Addon_Riordian_Teach_NoPerm = true;
	};
};
func void DIA_Addon_Riordian_Teach_WISPSKILL_X()
{
	AI_Output	(self, other, "DIA_Addon_Riordian_Teach_WISPSKILL_X_10_00"); //Teraz tw�j ognik b�dzie w stanie znale�� wi�cej rzeczy, kt�re mog� ci si� przyda�.
};
func void DIA_Addon_Riordian_Teach_BACK ()
{
	Info_ClearChoices (DIA_Addon_Riordian_Teach);
};
func void DIA_Addon_Riordian_Teach_WISPSKILL_FF()
{
	if (other.level > 15)
	{
		if (WISPSKILL_LEVEL < 2)
		{
			WISPSKILL_LEVEL = 2;
		};
		WispSkills[WISPSKILL_FF] = true;
		AI_Output	(self, other, "DIA_Addon_Riordian_Teach_WISPSKILL_X_10_00"); //Teraz tw�j ognik b�dzie w stanie znale�� wi�cej rzeczy, kt�re mog� ci si� przyda�.
	}
	else
	{
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};
	Info_ClearChoices (DIA_Addon_Riordian_Teach);
};
func void DIA_Addon_Riordian_Teach_WISPSKILL_NONE()
{
	if (other.level > 20)
	{
		if (WISPSKILL_LEVEL < 2)
		{
			WISPSKILL_LEVEL = 2;
		};
		WispSkills[WISPSKILL_NONE] = true;
		AI_Output	(self, other, "DIA_Addon_Riordian_Teach_WISPSKILL_X_10_00"); //Teraz tw�j ognik b�dzie w stanie znale�� wi�cej rzeczy, kt�re mog� ci si� przyda�.
	}
	else
	{
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};
	Info_ClearChoices (DIA_Addon_Riordian_Teach);
};
func void DIA_Addon_Riordian_Teach_WISPSKILL_RUNE()
{
	if (other.level > 25)
	{
		if (WISPSKILL_LEVEL < 3)
		{
			WISPSKILL_LEVEL = 3;
		};
		WispSkills[WISPSKILL_RUNE] = true;
		AI_Output	(self, other, "DIA_Addon_Riordian_Teach_WISPSKILL_X_10_00"); //Teraz tw�j ognik b�dzie w stanie znale�� wi�cej rzeczy, kt�re mog� ci si� przyda�.
	}
	else
	{
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};
	Info_ClearChoices (DIA_Addon_Riordian_Teach);
};
func void DIA_Addon_Riordian_Teach_WISPSKILL_MAGIC()
{
	if (other.level > 30)
	{
		if (WISPSKILL_LEVEL < 3)
		{
			WISPSKILL_LEVEL = 3;
		};
		WispSkills[WISPSKILL_MAGIC] = true;
		AI_Output	(self, other, "DIA_Addon_Riordian_Teach_WISPSKILL_X_10_00"); //Teraz tw�j ognik b�dzie w stanie znale�� wi�cej rzeczy, kt�re mog� ci si� przyda�.
	}
	else
	{
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};
	Info_ClearChoices (DIA_Addon_Riordian_Teach);
};
func void DIA_Addon_Riordian_Teach_WISPSKILL_FOOD()
{
	if (other.level > 35)
	{
		WispSkills[WISPSKILL_FOOD] = true;
		AI_Output	(self, other, "DIA_Addon_Riordian_Teach_WISPSKILL_X_10_00"); //Teraz tw�j ognik b�dzie w stanie znale�� wi�cej rzeczy, kt�re mog� ci si� przyda�.
	}
	else
	{
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};
	Info_ClearChoices (DIA_Addon_Riordian_Teach);
};
func void DIA_Addon_Riordian_Teach_WISPSKILL_POTIONS()
{
	if (other.level > 40)
	{
		WispSkills[WISPSKILL_POTIONS] = true;
		AI_Output	(self, other, "DIA_Addon_Riordian_Teach_WISPSKILL_X_10_00"); //Teraz tw�j ognik b�dzie w stanie znale�� wi�cej rzeczy, kt�re mog� ci si� przyda�.
	}
	else
	{
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};
	Info_ClearChoices (DIA_Addon_Riordian_Teach);
};
