///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_MIL_7_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// JOIN
///******************************************************************************************
instance DIA_MIL_7_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_MIL_7_JOIN_Condition;
	information							=	DIA_MIL_7_JOIN_Info;
	permanent							=	true;
	description							=	"Chc� wst�pi� do stra�y.";
};
func int DIA_MIL_7_JOIN_Condition()
{
	if (hero.guild == GIL_NONE)
	{
		return true;
	};
};
func void DIA_MIL_7_JOIN_Info()
{
	AI_Output (other, self, "DIA_MIL_7_JOIN_15_00"); //Chc� wst�pi� do stra�y.
	
	if (Player_IsApprentice == APP_NONE)
	{
		AI_Output (self, other, "DIA_MIL_7_JOIN_07_01"); //Nie jeste� nawet obywatelem Khorinis! Dlaczego my�lisz, �e Lord Andre zechce ci� przyj��?
		AI_Output (self, other, "DIA_MIL_7_JOIN_07_02"); //Gdyby tak by�o, ka�dy m�g�by sobie przyj��, wzi�� przydzia�ow� bro� i zbroj�, a p�niej znikn�� na dobre!
		
		if (C_NpcIsInQuarter(self) != Q_KASERNE)
		{
			AI_Output (other, self, "DIA_MIL_7_JOIN_15_03"); //Ja m�wi� powa�nie!
			AI_Output (self, other, "DIA_MIL_7_JOIN_07_04"); //Nie wyja�niaj tego mnie, tylko Lordowi Andre. Znajdziesz go w koszarach.
		};
	}
	else
	{
		B_Say (self, other, "$ABS_GOOD");
	};
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_MIL_7_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	DIA_MIL_7_PEOPLE_Condition;
	information							=	DIA_MIL_7_PEOPLE_Info;
	permanent							=	true;
	description							=	"Co wiesz o paladynach?";
};
func int DIA_MIL_7_PEOPLE_Condition()
{
	if (hero.guild != GIL_PAL)
	{
		return true;
	};
};
func void DIA_MIL_7_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_MIL_7_PEOPLE_15_00"); //Co wiesz o paladynach?
	AI_Output (self, other, "DIA_MIL_7_PEOPLE_07_01"); //Niewiele. Nikt w�a�ciwie nie wie, dlaczego tu przybyli. Nawet ci z nas, kt�rzy s�u�� w stra�y.
	AI_Output (self, other, "DIA_MIL_7_PEOPLE_07_02"); //Przej�li kontrol� nad miastem, przegonili gubernatora z jego komnat, zwolnili te� s�dziego z urz�du.
	AI_Output (self, other, "DIA_MIL_7_PEOPLE_07_03"); //Je�li chcesz zna� moje zdanie, to dobrze si� sta�o. Tym nad�tym os�om przyda si� lekcja pokory.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_MIL_7_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_MIL_7_LOCATION_Info;
	permanent							=	true;
	description							=	"Jakie perspektywy daje to miasto?";
};
func void DIA_MIL_7_LOCATION_Info()
{
	AI_Output (other, self, "DIA_MIL_7_LOCATION_15_00"); //Jakie perspektywy daje to miasto?
	AI_Output (self, other, "DIA_MIL_7_LOCATION_07_01"); //Je�li nie chcesz sko�czy� w rynsztoku dzielnicy portowej, znajd� sobie jak�� sta�� prac�. Popytaj w dolnej cz�ci miasta, mo�e tam uda ci si� co� znale��.
	AI_Output (self, other, "DIA_MIL_7_LOCATION_07_02"); //Je�li chcesz d�u�ej pozosta� w mie�cie, powiniene� przy��czy� si� do stra�y lub chocia� podszkoli� si� w walce.
	AI_Output (self, other, "DIA_MIL_7_LOCATION_07_03"); //Instruktorzy w koszarach szkol� tak�e cywili.
	AI_Output (self, other, "DIA_MIL_7_LOCATION_07_04"); //Wkr�tce pojawi� si� tu orkowie, a wtedy docenisz wojskowy trening i godziny na nim sp�dzone.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_MIL_7_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_MIL_7_STANDARD_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_MIL_7_STANDARD_Info()
{
	AI_Output (other, self, "DIA_MIL_7_STANDARD_15_00"); //Co s�ycha�?
	
	if (Kapitel == 7)
	{
		if (Hlp_Random(2))
		{
			AI_Output (self, other, "DIA_Addon_MIL_7_STANDARD_07_00"); //Ludzie znikaj� jeden po drugim. Nie uda�o nam si� jeszcze dowiedzie�, co si� z nimi dzieje.
			
			if (!SC_HearedAboutMissingPeople)
			{
				Log_CreateTopic (TOPIC_Addon_WhoStolePeople, LOG_MISSION);
				Log_SetTopicStatus (TOPIC_Addon_WhoStolePeople, LOG_RUNNING);
				B_LogEntry (TOPIC_Addon_WhoStolePeople, LogText_Addon_SCKnowsMisspeapl);
			};
			SC_HearedAboutMissingPeople = true;
		}
		else
		{
			AI_Output (self, other, "DIA_MIL_7_STANDARD_07_01"); //Pono� ch�opi si� buntuj�. Nie do��, �e jeste�my w �rodku wojny z orkami, to jeszcze musimy si� u�era� z tymi prostakami.
		};
	};
	if (Kapitel == 8)
	{
		AI_Output (self, other, "DIA_MIL_7_STANDARD_07_02"); //Czas ju�, by paladyni zaj�li si� rebeli� ch�op�w. Kto �amie prawo, powinien ponie�� tego surowe konsekwencje. Szczeg�lnie teraz, kiedy toczy si� wojna.
	};
	if (Kapitel == 9)
	{
		if (MIS_RescueBennet == LOG_SUCCESS)
		{
			AI_Output (self, other, "DIA_MIL_7_STANDARD_07_03"); //Najemnik, kt�rego oskar�ono o zab�jstwo Lothara, jest prawdopodobnie niewinny. Pono� kto� znalaz� dow�d na to, �e go wrobiono.
		}
		else
		{
			AI_Output (self, other, "DIA_MIL_7_STANDARD_07_04"); //Jeden z najemnik�w Onara zamordowa� Lothara, czcigodnego paladyna. Na szcz�cie dra� zosta� z�apany i wtr�cony do wi�zienia.
		};
	};
	if (Kapitel == 10)
	{
		AI_Output (self, other, "DIA_MIL_7_STANDARD_07_05"); //Niekt�rzy z najemnik�w opu�cili farm� Onara. Jak wida�, problem rozwi�zuje si� sam.
	};
	if (Kapitel >= 11)
	{
		AI_Output (self, other, "DIA_MIL_7_STANDARD_07_06"); //Pozbyli�my si� smok�w, ale to nie koniec. Nast�pni w kolejce s� orkowie. Nied�ugo wszystkim si� zajmiemy!
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_MIL_7 (var C_Npc slf)
{
	DIA_MIL_7_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_MIL_7_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_MIL_7_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_MIL_7_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_MIL_7_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
