//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Babera_EXIT (C_INFO)
{
	npc									=	BAU_934_Babera;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Babera_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Babera_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Hallo
//******************************************************************************************
instance DIA_Babera_HALLO (C_INFO)
{
	npc									=	BAU_934_Babera;
	nr									=	1;
	condition							=	atrue;
	information							=	DIA_Babera_HALLO_Info;
	description							=	"Witaj, �licznotko.";
};

func void DIA_Babera_HALLO_Info()
{
	AI_Output (other, self, "DIA_Babera_HALLO_15_00"); //Witaj, �licznotko.
	AI_Output (self, other, "DIA_Babera_HALLO_16_01"); //Nie zagaduj mnie, ch�opcze. M�w, czego chcesz. Jestem zaj�ta.
};

//******************************************************************************************
//	WieSiehtsaus
//******************************************************************************************
instance DIA_Babera_WIESIEHTSAUS (C_INFO)
{
	npc									=	BAU_934_Babera;
	nr									=	2;
	condition							=	DIA_Babera_WIESIEHTSAUS_Condition;
	information							=	DIA_Babera_WIESIEHTSAUS_Info;
	description							=	"Jak idzie praca?";
};

func int DIA_Babera_WIESIEHTSAUS_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Babera_HALLO))
	{
		return true;
	};
};

func void DIA_Babera_WIESIEHTSAUS_Info()
{
	AI_Output (other, self, "DIA_Babera_WIESIEHTSAUS_15_00"); //Jak idzie praca?
	AI_Output (self, other, "DIA_Babera_WIESIEHTSAUS_16_01"); //Popatrz na te wielkie pola, kt�re musimy jeszcze obrobi�, to zrozumiesz, jak idzie.
	AI_Output (self, other, "DIA_Babera_WIESIEHTSAUS_16_02"); //Chcesz si� naj�� do pracy w polu?
	
	Info_ClearChoices(DIA_Babera_WIESIEHTSAUS);
	if (hero.guild == GIL_NONE)
	{
		Info_AddChoice (DIA_Babera_WIESIEHTSAUS, "Nie. Tak naprawd� to chc� zosta� najemnikiem.", DIA_Babera_WIESIEHTSAUS_Nein);
		Info_AddChoice (DIA_Babera_WIESIEHTSAUS, "Mo�e.", DIA_Babera_WIESIEHTSAUS_Vielleicht);
	};
};

func void DIA_Babera_WIESIEHTSAUS_Vielleicht()
{
	AI_Output (other, self, "DIA_Babera_WIESIEHTSAUS_Vielleicht_15_00"); //Mo�e.
	AI_Output (self, other, "DIA_Babera_WIESIEHTSAUS_Vielleicht_16_01"); //W takim razie powiniene� poszuka� naszego farmera, Sekoba. By� kiedy� poganiaczem niewolnik�w. Mo�e on co� ci znajdzie.
	AI_Output (self, other, "DIA_Babera_WIESIEHTSAUS_Vielleicht_16_02"); //Rzecz jasna, mo�esz te� spr�bowa� w gospodarstwie Onara, na ko�cu tamtej d�ugiej drogi.
	AI_Output (self, other, "DIA_Babera_WIESIEHTSAUS_Vielleicht_16_03"); //Ale uwa�aj na najemnik�w. Nie przepadaj� za obcymi.
	Info_ClearChoices(DIA_Babera_WIESIEHTSAUS);
};

func void DIA_Babera_WIESIEHTSAUS_Nein()
{
	AI_Output (other, self, "DIA_Babera_WIESIEHTSAUS_Nein_15_00"); //Nie. Tak naprawd� to chc� zosta� najemnikiem.
	AI_Output (self, other, "DIA_Babera_WIESIEHTSAUS_Nein_16_01"); //A wi�c jeste� w niew�a�ciwym miejscu. Najemnik�w mo�na zazwyczaj znale�� w gospodarstwie Onara.
	Info_ClearChoices(DIA_Babera_WIESIEHTSAUS);
};

//******************************************************************************************
//	WieSiehtsaus
//******************************************************************************************
instance DIA_Babera_BRONKO (C_INFO)
{
	npc									=	BAU_934_Babera;
	nr									=	3;
	condition							=	DIA_Babera_BRONKO_Condition;
	information							=	DIA_Babera_BRONKO_Info;
	description							=	"(Zapytaj o Bronka)";
};

func int DIA_Babera_BRONKO_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Bronko_Hallo))
	&& (Npc_KnowsInfo(other,DIA_Babera_WIESIEHTSAUS))
	{
		return true;
	};
};

func void DIA_Babera_BRONKO_Info()
{
	AI_Output (other, self, "DIA_Babera_BRONKO_15_00"); //S�uchaj, ten paskudny kole�, kt�ry tam stoi...
	AI_Output (self, other, "DIA_Babera_BRONKO_16_01"); //To Bronko. A co?
	AI_Output (other, self, "DIA_Babera_BRONKO_15_02"); //To ten tw�j farmer?
	AI_Output (self, other, "DIA_Babera_BRONKO_16_03"); //Tak ci powiedzia�? Sekob jest naszym farmerem. Bronko to obibok i le�. Ale jest silny jak w�.
	AI_Output (self, other, "DIA_Babera_BRONKO_16_04"); //Dlatego nikt nie protestuje, kiedy si� obija.
	if ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
	{
		AI_Output (self, other, "DIA_Babera_BRONKO_16_05"); //Nie boi si� nikogo opr�cz was, najemnik�w.
	}
	else
	{
		AI_Output (self, other, "DIA_Babera_BRONKO_16_06"); //Tylko najemnicy potrafi� zmusi� go do pracy. Boi si� ich.
	};
	Babera_BronkoKeinBauer = true;
};

//******************************************************************************************
//	Rosi
//******************************************************************************************
instance DIA_Babera_Rosi (C_INFO)
{
	npc									=	BAU_934_Babera;
	nr									=	3;
	condition							=	DIA_Babera_Rosi_Condition;
	information							=	DIA_Babera_Rosi_Info;
	description							=	"Gdzie jest Rosi?";
};

func int DIA_Babera_Rosi_Condition()
{
	if (QuestStep_SekobRosi == LOG_RUNNING)
	&& (Kapitel >= 11)
	&& (RosiFoundKap5 == false)
	{
		return true;
	};
};

func void DIA_Babera_Rosi_Info()
{
	AI_Output (other, self, "DIA_Babera_Rosi_15_00"); //Gdzie jest Rosi?
	AI_Output (self, other, "DIA_Babera_Rosi_16_01"); //Nie mog�a ju� tu wytrzyma� i posz�a na p�noc, do lasu.
	
	SetNoteEntry (Quest_RosiRun, LOG_MISSION, "Rosi uciek�a z farmy Sekoba. Babera twierdzi, �e pobieg�a na p�noc, w stron� las�w.");
	SetNoteEntry (Quest_SekobRosi, LOG_MISSION, "Rosi uciek�a z farmy Sekoba. Babera twierdzi, �e pobieg�a na p�noc, w stron� las�w.");
};

//******************************************************************************************
//	DUSTOERST
//******************************************************************************************
instance DIA_Babera_DUSTOERST (C_INFO)
{
	npc									=	BAU_934_Babera;
	nr									=	10;
	condition							=	DIA_Babera_DUSTOERST_Condition;
	information							=	DIA_Babera_DUSTOERST_Info;
	permanent							=	true;
	description							=	"Co� jeszcze?";
};

func int DIA_Babera_DUSTOERST_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Babera_BRONKO))
	{
		return true;
	};
};

func void DIA_Babera_DUSTOERST_Info()
{
	AI_Output (other, self, "DIA_Babera_DUSTOERST_15_00"); //A poza tym?
	AI_Output (self, other, "DIA_Babera_DUSTOERST_16_01"); //Jestem zaj�ta.
	AI_StopProcessInfos(self);
};
