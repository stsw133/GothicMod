//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Till_EXIT (C_INFO)
{
	npc									=	BAU_931_Till;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Till_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Till_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Hallo
//******************************************************************************************
instance DIA_Till_HALLO (C_INFO)
{
	npc									=	BAU_931_Till;
	nr									=	3;
	condition							=	DIA_Till_HALLO_Condition;
	information							=	DIA_Till_HALLO_Info;
	description							=	"Hej, m�ody, wszystko gra?";
};

func int DIA_Till_HALLO_Condition()
{
	if (Kapitel < 11)
	{
		return true;
	};
};

func void DIA_Till_HALLO_Info()
{
	AI_Output (other, self, "DIA_Till_HALLO_15_00"); //Hej, m�ody, wszystko gra?
	AI_Output (self, other, "DIA_Till_HALLO_03_01"); //Ile razy mam wam powtarza�, �e pomocnicy powinni si� do mnie zwraca� z szacunkiem?!
	
	B_StartOtherRoutine (Till, "Start"); 
	
	Info_ClearChoices(DIA_Till_HALLO);
	if (Kapitel < 11)
	{
		Info_AddChoice (DIA_Till_HALLO, "Nie jestem pomocnikiem.", DIA_Till_HALLO_keinervoneuch);
		if (Npc_IsDead(Sekob) == false)
		{
			Info_AddChoice (DIA_Till_HALLO, "Ty tu jeste� szefem?", DIA_Till_HALLO_selber);
		};
	};
};

func void DIA_Till_HALLO_selber()
{
	AI_Output (other, self, "DIA_Till_HALLO_selber_15_00"); //Ty tu jeste� szefem?
	AI_Output (self, other, "DIA_Till_HALLO_selber_03_01"); //Ech. Nie, jestem tylko synem Sekoba. Ale kiedy tylko staruszek wyci�gnie kopyta, to wszystko b�dzie nale�a�o do mnie.
	AI_Output (other, self, "DIA_Till_HALLO_selber_15_02"); //Zadziwiaj�ce!
	Info_ClearChoices(DIA_Till_HALLO);
};

func void DIA_Till_HALLO_keinervoneuch()
{
	AI_Output (other, self, "DIA_Till_HALLO_keinervoneuch_15_00"); //Nie jestem pomocnikiem.
	AI_Output (self, other, "DIA_Till_HALLO_keinervoneuch_03_01"); //To po co tu przyszed�e�? Nic nam ju� nie zosta�o, nie masz tu czego szuka�.
	Info_ClearChoices(DIA_Till_HALLO);
};

//******************************************************************************************
//	FeldArbeiter
//******************************************************************************************
instance DIA_Till_FELDARBEITER (C_INFO)
{
	npc									=	BAU_931_Till;
	nr									=	4;
	condition							=	DIA_Till_FELDARBEITER_Condition;
	information							=	DIA_Till_FELDARBEITER_Info;
	description							=	"Zawsze w ten spos�b traktujesz swoich pracownik�w?";
};

func int DIA_Till_FELDARBEITER_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Till_HALLO))
	&& (Kapitel < 11)
	{
		return true;
	};
};

func void DIA_Till_FELDARBEITER_Info()
{
	AI_Output (other, self, "DIA_Till_FELDARBEITER_15_00"); //Zawsze w ten spos�b traktujesz swoich pracownik�w?
	AI_Output (self, other, "DIA_Till_FELDARBEITER_03_01"); //Oczywi�cie - i dobrze im to robi. Musz� zna� swoje miejsce.
};

//******************************************************************************************
//	Sekob
//******************************************************************************************
instance DIA_Till_SEKOB (C_INFO)
{
	npc									=	BAU_931_Till;
	nr									=	9;
	condition							=	DIA_Till_SEKOB_Condition;
	information							=	DIA_Till_SEKOB_Info;
	description							=	"Musz� porozmawia� z twoim ojcem.";
};

func int DIA_Till_SEKOB_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Till_FELDARBEITER))
	&& (!Npc_KnowsInfo(other,DIA_Sekob_HALLO))
	&& (Kapitel < 9)
	&& (!Npc_IsDead(Sekob))
	{
		return true;
	};
};

func void DIA_Till_SEKOB_Info()
{
	AI_Output (other, self, "DIA_Till_SEKOB_15_00"); //Musz� porozmawia� z twoim ojcem.
	AI_Output (self, other, "DIA_Till_SEKOB_03_01"); //Ojciec nie ma czasu. Ja mog� ci� wys�ucha� w jego imieniu. Jak mog� ci pom�c?
	AI_Output (other, self, "DIA_Till_SEKOB_15_02"); //Przedstaw mnie swojemu ojcu.
	AI_Output (self, other, "DIA_Till_SEKOB_03_03"); //Twardziel z ciebie, i pewnie niez�y wojownik, co?
	AI_Output (other, self, "DIA_Till_SEKOB_15_04"); //Najlepszy.
	AI_Output (self, other, "DIA_Till_SEKOB_03_05"); //Mo�e w takim razie zawo�am ojca.
	AI_Output (other, self, "DIA_Till_SEKOB_15_06"); //Nie k�opocz si� ch�opcze. Sam go znajd�.
	AI_Output (self, other, "DIA_Till_SEKOB_03_07"); //Jak chcesz.
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	WasMachstDu
//******************************************************************************************
instance DIA_Till_WASMACHSTDU (C_INFO)
{
	npc									=	BAU_931_Till;
	nr									=	10;
	condition							=	DIA_Till_WASMACHSTDU_Condition;
	information							=	DIA_Till_WASMACHSTDU_Info;
	description							=	"Co porabiasz?";
};

func int DIA_Till_WASMACHSTDU_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Till_HALLO))
	&& (Kapitel < 11)
	{
		return true;
	};
};

func void DIA_Till_WASMACHSTDU_Info()
{
	AI_Output (other, self, "DIA_Till_WASMACHSTDU_15_00"); //Co porabiasz, kiedy znudzi ci si� odgrywanie pana i w�adcy na farmie?
	AI_Output (self, other, "DIA_Till_WASMACHSTDU_03_01"); //Stoj� na stra�y.
	if (hero.guild != GIL_MIL)
	{
		AI_Output (self, other, "DIA_Till_WASMACHSTDU_03_02"); //Ci zafajdani stra�nicy z miasta coraz cz�ciej pojawiaj� si� na farmie i kradn�, co tylko wpadnie im w �apska.
		AI_Output (self, other, "DIA_Till_WASMACHSTDU_03_03"); //Tylko w ci�gu ostatniego tygodnia te dranie zabra�y nam kilka owiec.
		AI_Output (self, other, "DIA_Till_WASMACHSTDU_03_04"); //Gdybym dorwa� kt�rego� z nich, dopiero bym mu pokaza�!
		AI_Output (other, self, "DIA_Till_WASMACHSTDU_15_05"); //Z pewno�ci�!
	};
};

//******************************************************************************************
//	WarumNichtSLD
//******************************************************************************************
instance DIA_Till_WARUMNICHTSLD (C_INFO)
{
	npc									=	BAU_931_Till;
	nr									=	11;
	condition							=	DIA_Till_WARUMNICHTSLD_Condition;
	information							=	DIA_Till_WARUMNICHTSLD_Info;
	description							=	"Dlaczego najemnicy nie pomagaj� w walce ze stra�nikami?";
};

func int DIA_Till_WARUMNICHTSLD_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Till_WASMACHSTDU))
	&& (hero.guild != GIL_MIL)
	&& (Kapitel < 11)
	{
		return true;
	};
};

func void DIA_Till_WARUMNICHTSLD_Info()
{
	AI_Output (other, self, "DIA_Till_WARUMNICHTSLD_15_00"); //Dlaczego najemnicy nie pomagaj� w walce ze stra�nikami?
	AI_Output (self, other, "DIA_Till_WARUMNICHTSLD_03_01"); //Zanim si� rozgrzej�, ja ju� wszystkich przep�dzam.
};

//******************************************************************************************
//	Bronko
//******************************************************************************************
instance DIA_Till_BRONKO (C_INFO)
{
	npc									=	BAU_931_Till;
	nr									=	5;
	condition							=	DIA_Till_BRONKO_Condition;
	information							=	DIA_Till_BRONKO_Info;
	description							=	"(Zapytaj o Bronka)";
};

func int DIA_Till_BRONKO_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Till_FELDARBEITER))
	&& (Npc_KnowsInfo(other,DIA_Bronko_HALLO))
	&& (Kapitel < 11)
	{
		return true;
	};
};

func void DIA_Till_BRONKO_Info()
{
	AI_Output (other, self, "DIA_Till_BRONKO_15_00"); //Jest tu pewien cz�owiek, kt�ry pobiera myto od podr�nych, twierdzi, �e to ON jest farmerem.
	AI_Output (self, other, "DIA_Till_BRONKO_03_01"); //Ech. Tak, wiem. To Bronko. Robi, co chce.
	AI_Output (self, other, "DIA_Till_BRONKO_03_02"); //Tyle razy mu powtarza�em, �e powinien wzi�� si� do roboty.
	AI_Output (other, self, "DIA_Till_BRONKO_15_03"); //Ale?
	AI_Output (self, other, "DIA_Till_BRONKO_03_04"); //Po prostu mnie nie s�ucha.
	if (!Npc_IsDead(Sekob))
	{
		AI_Output (self, other, "DIA_Till_BRONKO_03_05"); //Ojciec denerwuje si� na mnie, �e nie zdo�a�em zmusi� tego obiboka do roboty.
	};
};

//******************************************************************************************
//	BronkoZurArbeit
//******************************************************************************************

var int DIA_Till_BRONKOZURARBEIT_noPerm;
var int Till_Angebot;
var int Till_HatSeinGeldBehalten;
var int Till_IchMachsNurEinmal;

//******************************************************************************************
instance DIA_Till_BRONKOZURARBEIT (C_INFO)
{
	npc									=	BAU_931_Till;
	nr									=	6;
	condition							=	DIA_Till_BRONKOZURARBEIT_Condition;
	information							=	DIA_Till_BRONKOZURARBEIT_Info;
	permanent							=	true;
	description							=	"Chyba b�d� m�g� ci pom�c.";
};

func int DIA_Till_BRONKOZURARBEIT_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Till_BRONKO))
	&& (DIA_Till_BRONKOZURARBEIT_noPerm == false)
	&& (Kapitel < 11)
	{
		return true;
	};
};

func void DIA_Till_BRONKOZURARBEIT_Info()
{
	AI_Output (other, self, "DIA_Till_BRONKOZURARBEIT_15_00"); //Mo�e ja m�g�bym pom�c?
	AI_Output (self, other, "DIA_Till_BRONKOZURARBEIT_03_01"); //M�wisz powa�nie? W porz�dku, pos�uchaj, zago� Bronka do pracy, a zap�ac� ci 10 sztuk z�ota. Co ty na to?
	
	Till_Angebot = 10;
	
	Info_ClearChoices(DIA_Till_BRONKOZURARBEIT);
	Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "Nie ma sprawy. Ale b�dziesz musia� zap�aci� wi�cej.", DIA_Till_BRONKOZURARBEIT_mehr);
	Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "W porz�dku, zobacz�, co da si� zrobi�.", DIA_Till_BRONKOZURARBEIT_ok);
	Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "Musz� si� zastanowi�.", DIA_Till_BRONKOZURARBEIT_nochnicht);
};

func void DIA_Till_BRONKOZURARBEIT_nochnicht()
{
	AI_Output (other, self, "DIA_Till_BRONKOZURARBEIT_nochnicht_15_00"); //Pomy�l� o tym.
	AI_Output (self, other, "DIA_Till_BRONKOZURARBEIT_nochnicht_03_01"); //Jak chcesz.
	Info_ClearChoices(DIA_Till_BRONKOZURARBEIT);
	AI_StopProcessInfos(self);
};

func void DIA_Till_BRONKOZURARBEIT_ok()
{
	AI_Output (other, self, "DIA_Till_BRONKOZURARBEIT_ok_15_00"); //W porz�dku, zobacz�, co da si� zrobi�.
	AI_Output (self, other, "DIA_Till_BRONKOZURARBEIT_ok_03_01"); //Po�piesz si�.
	DIA_Till_BRONKOZURARBEIT_noPerm = true;
	
	QuestStep_LazyBronko = SetQuestStatus (Quest_LazyBronko, LOG_RUNNING, QuestStep_LazyBronko);
	SetNoteEntry (Quest_LazyBronko, LOG_MISSION, "Till nie mo�e zagoni� Bronka do roboty, wi�c prosi mnie o pomoc w tej sprawie.");
	
	AI_StopProcessInfos(self);
};

func void DIA_Till_BRONKOZURARBEIT_mehr()
{
	if (Till_IchMachsNurEinmal == true)
	{
		AI_Output (other, self, "DIA_Till_BRONKOZURARBEIT_mehr_15_00"); //Chc� wi�cej.
	}
	else
	{
		AI_Output (other, self, "DIA_Till_BRONKOZURARBEIT_mehr_15_01"); //Nie ma sprawy. Ale b�dziesz musia� zap�aci� wi�cej.
		Till_IchMachsNurEinmal = true;
	};
	
	if (Till_Angebot == 10)
	{
		AI_Output (self, other, "DIA_Till_BRONKOZURARBEIT_mehr_03_02"); //W porz�dku. 20 sztuk z�ota.
		Info_ClearChoices(DIA_Till_BRONKOZURARBEIT);
		Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "Chc� wi�cej.", DIA_Till_BRONKOZURARBEIT_mehr);
		Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "W porz�dku, zobacz�, co da si� zrobi�.", DIA_Till_BRONKOZURARBEIT_ok);
		Till_Angebot = 20;
	}
	else if (Till_Angebot == 20)
	{
		AI_Output (self, other, "DIA_Till_BRONKOZURARBEIT_mehr_03_03"); //30?
		Info_ClearChoices(DIA_Till_BRONKOZURARBEIT);
		Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "Chc� wi�cej.", DIA_Till_BRONKOZURARBEIT_mehr);
		Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "W porz�dku, zobacz�, co da si� zrobi�.", DIA_Till_BRONKOZURARBEIT_ok);
		Till_Angebot = 30;
	}
	else if (Till_Angebot == 30)
	{	
		AI_Output (self, other, "DIA_Till_BRONKOZURARBEIT_mehr_03_04"); //Mo�e... 50?
		Info_ClearChoices(DIA_Till_BRONKOZURARBEIT);
		Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "Chc� wi�cej.", DIA_Till_BRONKOZURARBEIT_mehr);
		Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "W porz�dku, zobacz�, co da si� zrobi�.", DIA_Till_BRONKOZURARBEIT_ok);
		Till_Angebot = 50;
	}
	else if (Till_Angebot == 50)
	{	
		AI_Output (self, other, "DIA_Till_BRONKOZURARBEIT_mehr_03_05"); //Dobrze. 70?
		Info_ClearChoices(DIA_Till_BRONKOZURARBEIT);
		Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "Chc� wi�cej.", DIA_Till_BRONKOZURARBEIT_mehr);
		Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "W porz�dku, zobacz�, co da si� zrobi�.", DIA_Till_BRONKOZURARBEIT_ok);
		Till_Angebot = 70;
	}
	else if (Till_Angebot == 70)
	{	
		AI_Output (self, other, "DIA_Till_BRONKOZURARBEIT_mehr_03_06"); //Dobra ju�, dobra. Niech b�dzie 100 sztuk z�ota. To wszystko, co mam.
		Info_ClearChoices(DIA_Till_BRONKOZURARBEIT);
		Info_AddChoice (DIA_Till_BRONKOZURARBEIT, "W porz�dku, zobacz�, co da si� zrobi�.", DIA_Till_BRONKOZURARBEIT_ok);
		Till_Angebot = 100;
	};
};

//******************************************************************************************
//	BronkoWiederAnArbeit
//******************************************************************************************
instance DIA_Till_BRONKOWIEDERANARBEIT (C_INFO)
{
	npc									=	BAU_931_Till;
	nr									=	7;
	condition							=	DIA_Till_BRONKOWIEDERANARBEIT_Condition;
	information							=	DIA_Till_BRONKOWIEDERANARBEIT_Info;
	description							=	"Bronko wr�ci� do pracy.";
};

func int DIA_Till_BRONKOWIEDERANARBEIT_Condition()
{
	if (QuestStep_LazyBronko == LOG_SUCCESS)
	&& (DIA_Till_BRONKOZURARBEIT_noPerm == true)
	&& (Kapitel < 11)
	{
		return true;
	};
};

func void DIA_Till_BRONKOWIEDERANARBEIT_Info()
{
	AI_Output (other, self, "DIA_Till_BRONKOWIEDERANARBEIT_15_00"); //Bronko wr�ci� do pracy.
	AI_Output (self, other, "DIA_Till_BRONKOWIEDERANARBEIT_03_01"); //Naprawd�? To wspaniale.
	AI_Output (other, self, "DIA_Till_BRONKOWIEDERANARBEIT_15_02"); //Tak. A teraz mi zap�a�.
	IntToFloat(Till_Angebot);
	
	if ((Npc_GetTalentSkill(other,NPC_TALENT_PERSUASION) == true) && (Till_Angebot <= 70))
	|| (Till_Angebot <= 50)
	{
		AI_Output (self, other, "DIA_Till_BRONKOWIEDERANARBEIT_03_03"); //Mmh. C�, umowa to umowa, nie mam racji?
		
		CreateInvItems (self, ItMi_Gold, Till_Angebot);
		B_GiveInvItems (self, other, ItMi_Gold, Till_Angebot);
	}
	else
	{
		AI_Output (self, other, "DIA_Till_BRONKOWIEDERANARBEIT_03_04"); //Niestety, nie mam tyle pieni�dzy. Jestem ci jednak bardzo wdzi�czny.
		Till_HatSeinGeldBehalten = true;
	};
	
	B_GivePlayerXP(XP_BONUS_0);
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	BronkoWiederAnArbeit
//******************************************************************************************
instance DIA_Till_PERMKAP1 (C_INFO)
{
	npc									=	BAU_931_Till;
	nr									=	99;
	condition							=	DIA_Till_PERMKAP1_Condition;
	information							=	DIA_Till_PERMKAP1_Info;
	permanent							=	true;
	description							=	"(Zdenerwuj Tilla)";
};

func int DIA_Till_PERMKAP1_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Till_HALLO))
	|| (Kapitel >= 11)
	{
		return true;
	};
};

func void DIA_Till_PERMKAP1_Info()
{
	if (Kapitel == 11)
	{
		if (QuestStep_SekobRosi != LOG_SUCCESS)
		&& (Rosi_FleeFromSekob_Kap5 == true)
		{
			AI_Output (other, self, "DIA_Till_PERMKAP1_15_00"); //Daleko od domu, co? Tutaj tatu� ci nie pomo�e.
			AI_Output (self, other, "DIA_Till_PERMKAP1_03_01"); //Kt�rego� dnia ci� dorw� i porozmawiamy inaczej.
		};
		AI_Output (other, self, "DIA_Till_PERMKAP1_15_02"); //Ciesz si�, �e wyszed�e� ca�o z tego spotkania.
		AI_Output (self, other, "DIA_Till_PERMKAP1_03_03"); //W takim razie, zostaw mnie w spokoju.
		AI_StopProcessInfos(self);	
	}
	else
	{
		if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
		{
			AI_Output (other, self, "DIA_Till_PERMKAP1_15_04"); //Mo�e powiniene� wi�cej je��, wtedy wyro�niesz na du�ego, silnego m�czyzn�.
			AI_Output (self, other, "DIA_Till_PERMKAP1_03_05"); //Kt�rego� dnia ci poka��.
			AI_StopProcessInfos(self);
		}
		else
		{
			if (Till_HatSeinGeldBehalten == true)
			{
				AI_Output (other, self, "DIA_Till_PERMKAP1_15_06"); //Ty parszywy, ma�y...
				AI_Output (self, other, "DIA_Till_PERMKAP1_03_07"); //Wyno� si�.
				AI_StopProcessInfos(self);
			}			
			else
			{
				AI_Output (other, self, "DIA_Till_PERMKAP1_15_08"); //Wyciera� ci ju� kto� dzisiaj nosek?
				AI_Output (self, other, "DIA_Till_PERMKAP1_03_09"); //Zostaw mnie w spokoju, idioto.
			};
		};
	};
};
