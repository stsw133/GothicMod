
///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Riordian_ADW_EXIT   (C_INFO)
{
	npc         = KDW_14040_Addon_Riordian_ADW;
	nr          = 999;
	condition   = DIA_Addon_Riordian_ADW_EXIT_Condition;
	information = DIA_Addon_Riordian_ADW_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
FUNC INT DIA_Addon_Riordian_ADW_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Addon_Riordian_ADW_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info HelloADW
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_HelloADW		(C_INFO)
{
	npc		 = 	KDW_14040_Addon_Riordian_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Riordian_HelloADW_Condition;
	information	 = 	DIA_Addon_Riordian_HelloADW_Info;

	description	 = 	"Spodziewa�e� si� TEGO?";
};

func int DIA_Addon_Riordian_HelloADW_Condition ()
{
	return TRUE;
};

func void DIA_Addon_Riordian_HelloADW_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_HelloADW_15_00"); //Spodziewa�e� si� TEGO?
	AI_Output	(self, other, "DIA_Addon_Riordian_HelloADW_10_01"); //W �adnym wypadku. Jestem zdumiony wielko�ci� tego miasta.
	AI_Output	(self, other, "DIA_Addon_Riordian_HelloADW_10_02"); //Wi�kszo�� budynk�w jest przysypana zwa�ami ziemi i kamieni, ale w ca�ej krainie mo�na znale�� ruiny, kt�re przetrwa�y do naszych czas�w.
	AI_Output	(self, other, "DIA_Addon_Riordian_HelloADW_10_03"); //Mieszka�y tu tysi�ce ludzi.
};

///////////////////////////////////////////////////////////////////////
//	Info WhatToFind
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_WhatToFind		(C_INFO)
{
	npc		 = 	KDW_14040_Addon_Riordian_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Riordian_WhatToFind_Condition;
	information	 = 	DIA_Addon_Riordian_WhatToFind_Info;

	description	 = 	"Co mog� tutaj znale��?";
};

func int DIA_Addon_Riordian_WhatToFind_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Riordian_HelloADW))
		{
			return TRUE;
		};
};

func void DIA_Addon_Riordian_WhatToFind_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_WhatToFind_15_00"); //Co mog� tutaj znale��?
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_01"); //Na wschodzie, przy wielkim bagnie, znajduje si� ogromna forteca.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_02"); //Z tego, co wiemy, jest tam teraz siedziba bandyt�w.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_03"); //Nie szed�bym tam na twoim miejscu. Maj� wiele posterunk�w i stra�nik�w.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_04"); //Lepiej unikaj bagna, a� zdob�dziesz wi�cej do�wiadczenia, albo znajdziesz spos�b na unikni�cie bandyt�w.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_05"); //Na zachodzie znale�li�my paru pirat�w.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_06"); //Nie jestem do ko�ca pewien, ale wydaje mi si�, �e nas zauwa�yli.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_07"); //Chyba nie przejmuj� si� nasz� obecno�ci�.
};

///////////////////////////////////////////////////////////////////////
//	Info Gegend
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_Gegend		(C_INFO)
{
	npc		 = 	KDW_14040_Addon_Riordian_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Riordian_Gegend_Condition;
	information	 = 	DIA_Addon_Riordian_Gegend_Info;
	permanent	 = 	TRUE;

	description	 = 	"Opowiedz mi wi�cej o tej okolicy.";
};

func int DIA_Addon_Riordian_Gegend_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Riordian_WhatToFind))
	&& (Saturas_RiesenPlan == FALSE)
		{
			return TRUE;
		};
};
var int DIA_Addon_Riordian_Gegend_Info_OneTime;
func void DIA_Addon_Riordian_Gegend_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_Gegend_15_00"); //Opowiedz mi wi�cej o tej okolicy.
	AI_Output	(self, other, "DIA_Addon_Riordian_Gegend_10_01"); //Co chcesz wiedzie�?
	
	Info_ClearChoices	(DIA_Addon_Riordian_Gegend);
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, DIALOG_BACK, DIA_Addon_Riordian_Gegend_Back );
	
	if (DIA_Addon_Riordian_Gegend_Info_OneTime == FALSE)
	&& (Npc_HasItems (other,ItWr_Map_AddonWorld) == FALSE)
	{
		Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Czy istnieje mapa tego regionu?", DIA_Addon_Riordian_Gegend_map );
		DIA_Addon_Riordian_Gegend_Info_OneTime = TRUE;
	};
	
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Gdzie widzia�e� pirat�w?", DIA_Addon_Riordian_Gegend_Piraten );
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Gdzie przebywaj� bandyci?", DIA_Addon_Riordian_Gegend_bandits );
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "By�e� ju� na zachodzie?", DIA_Addon_Riordian_Gegend_west );
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Co znajduje si� na wschodzie?", DIA_Addon_Riordian_Gegend_ost );
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Gdzie dojd�, id�c na po�udnie?", DIA_Addon_Riordian_Gegend_sued );
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Co znajduje si� na p�nocy?", DIA_Addon_Riordian_Gegend_nord );
};
func void DIA_Addon_Riordian_Gegend_Back ()
{
	Info_ClearChoices	(DIA_Addon_Riordian_Gegend);
};
func void DIA_Addon_Riordian_Gegend_map ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_map_15_00"); //Czy istnieje mapa tego regionu?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_map_10_01"); //Tak, narysowa� j� Cronos. Z pewno�ci� ci j� przeka�e.
};
func void DIA_Addon_Riordian_Gegend_bandits ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_bandits_15_00"); //Gdzie przebywaj� bandyci?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_bandits_10_01"); //Maj� na wschodzie tak� niby fortec� i mn�stwo posterunk�w.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_bandits_10_02"); //Aby si� tam dosta�, musisz przej�� przez wielkie grz�zawisko.
};
func void DIA_Addon_Riordian_Gegend_Piraten ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_Piraten_15_00"); //Gdzie widzia�e� pirat�w?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_Piraten_10_01"); //Wa��saj� si� na zachodzie.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_Piraten_10_02"); //Wydaje mi si�, �e na co� polowali.
};

func void DIA_Addon_Riordian_Gegend_nord ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_nord_15_00"); //Co znajduje si� na p�nocy?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_nord_10_01"); //Je�li mog� ufa� zapiskom budowniczych, znajdziesz tam wielk� dolin� otoczon� wysokimi ska�ami.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_nord_10_02"); //Jest to sucha i pustynna okolica.
};

func void DIA_Addon_Riordian_Gegend_sued ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_sued_15_00"); //Gdzie dojd�, id�c na po�udnie?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_sued_10_01"); //Tereny na po�udniu s� bardzo skaliste.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_sued_10_02"); //Znajdziesz tam wij�ce si� drogi, wodospady i kamienne ruiny.
};

func void DIA_Addon_Riordian_Gegend_ost ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_ost_15_00"); //Co znajduje si� na wschodzie?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_ost_10_01"); //Wielkie bagno. Ten obszar jest bardzo niebezpieczny.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_ost_10_02"); //Czaj� si� tam nie tylko bandyci, ale te� wyj�tkowo gro�ne zwierz�ta.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_ost_10_03"); //Zachowaj ostro�no��.
};
var int DIA_Addon_Riordian_Gegend_west_OneTime;
func void DIA_Addon_Riordian_Gegend_west ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_west_15_00"); //By�e� ju� na zachodzie?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_west_10_01"); //Nie, ale tam na pewno jest wybrze�e.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_west_10_02"); //Podejrzewam, �e piraci maj� tam sw�j ob�z.

	if (DIA_Addon_Riordian_Gegend_west_OneTime == FALSE)
	&& (Npc_HasItems (VLK_4304_Addon_William,ITWr_Addon_William_01))
	{
		AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_west_10_03"); //Na wschodzie, niedaleko st�d, znale�li�my zw�oki rybaka.
		AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_west_10_04"); //Powiniene� si� temu przyjrze�.
		B_LogEntry (TOPIC_Addon_MissingPeople,LogText_Addon_WilliamLeiche); 
		DIA_Addon_Riordian_Gegend_west_OneTime = TRUE;
	};
};

///////////////////////////////////////////////////////////////////////
//	Info HousesOfRulers
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_HousesOfRulers		(C_INFO)
{
	npc		 = 	KDW_14040_Addon_Riordian_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Riordian_HousesOfRulers_Condition;
	information	 = 	DIA_Addon_Riordian_HousesOfRulers_Info;

	description	 = 	"Przysy�a mnie Saturas.";
};

func int DIA_Addon_Riordian_HousesOfRulers_Condition ()
{
	if (MIS_Saturas_LookingForHousesOfRulers == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void DIA_Addon_Riordian_HousesOfRulers_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_HousesOfRulers_15_00"); //Przysy�a mnie Saturas. Mam poszuka� pi�ciu posiad�o�ci w Jarkendarze.
	AI_Output	(self, other, "DIA_Addon_Riordian_HousesOfRulers_10_01"); //Potrzebowa�em du�o czasu, aby ustali� po�o�enie posiad�o�ci na podstawie zapisk�w budowniczych.
	AI_Output	(self, other, "DIA_Addon_Riordian_HousesOfRulers_10_02"); //Ale teraz mog� ci je dok�adnie opisa�.
	MIS_Riordian_HousesOfRulers = LOG_RUNNING;
};

///////////////////////////////////////////////////////////////////////
//	Info WhereAreHouses
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_WhereAreHouses		(C_INFO)
{
	npc		 = 	KDW_14040_Addon_Riordian_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Riordian_WhereAreHouses_Condition;
	information	 = 	DIA_Addon_Riordian_WhereAreHouses_Info;

	description	 = 	"Gdzie mog� znale�� te pi�� budowli?";
};

func int DIA_Addon_Riordian_WhereAreHouses_Condition ()
{
	if (MIS_Riordian_HousesOfRulers == LOG_RUNNING)
	&& (Saturas_SCBroughtAllToken == FALSE)
		{
			return TRUE;
		};
};
var int B_WhreAreHousesOfRulersOneTime;
func void B_WhreAreHousesOfRulers ()
{
	AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_00"); //Das Haus der Gelehrten ist eine gro�e Bibliothek. Sie muss irgendwo weit im Norden sein.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_01"); //Das Haus der Krieger war damals eine von Felsen umringte Festung im Osten.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_02"); //Die Priester und die Totenw�chter hatten ihre Behausungen nahe beieinander. Du solltest sie im S�dwesten finden.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_03"); //Und die Heiler hatten ihr Haus der Genesung im S�dosten.

	if (B_WhreAreHousesOfRulersOneTime == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_04"); //Wenn diese H�user noch stehen, dann wirst du sie an ihrer Bauweise erkennen.
		B_WhreAreHousesOfRulersOneTime = TRUE;
	};

	AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_05"); //Sie sind erh�ht. Eine steile Treppe f�hrt in den von hohen S�ulen verdeckten Eingang.

	if (B_WhreAreHousesOfRulersOneTime == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_06"); //Ich hoffe, das hilft dir weiter.
	};

	Log_CreateTopic (TOPIC_Addon_HousesOfRulers, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_HousesOfRulers, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_HousesOfRulers,"Das Haus der Gelehrten ist eine grosse Bibliothek. Sie muss irgendwo weit im Norden sein."); 
	Log_AddEntry (TOPIC_Addon_HousesOfRulers,"Das Haus der Krieger war damals eine von Felsen umringte Festung im Osten. "); 
	Log_AddEntry (TOPIC_Addon_HousesOfRulers,"Die Priester und die T�tenw�chter hatten ihre Behausungen nahe bei einander. Ich sollte sie im S�dwesten finden. "); 
	Log_AddEntry (TOPIC_Addon_HousesOfRulers,"Die Heiler hatten ihr Haus der Genesung im S�dosten."); 
};

func void DIA_Addon_Riordian_WhereAreHouses_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_WhereAreHouses_15_00"); //Wo finde ich die 5 Herrenh�user?
	B_WhreAreHousesOfRulers ();
};

///////////////////////////////////////////////////////////////////////
//	Info FoundHouse
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_FoundHouse		(C_INFO)
{
	npc		 = 	KDW_14040_Addon_Riordian_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Riordian_FoundHouse_Condition;
	information	 = 	DIA_Addon_Riordian_FoundHouse_Info;
	permanent	 = 	TRUE;

	description	 = 	"Wegen der Herrenh�user...";
};

func int DIA_Addon_Riordian_FoundHouse_Condition ()
{
	if (MIS_Riordian_HousesOfRulers == LOG_RUNNING)
	&& (Npc_KnowsInfo (other, DIA_Addon_Riordian_WhereAreHouses))
	&& (RiordianHousesFoundCount < 5)
		{
			return TRUE;
		};
};
var int FOUNDHOUSEINFO[6];
const int Library = 1;
const int Heiler  = 2;
const int Warrior = 3;
const int Priest  = 4;
const int Totenw  = 5;
var int RiordianHouseNeuigkeit;
var int RiordianHousesFoundCount;
func void DIA_Addon_Riordian_FoundHouse_Info ()
{
	RiordianHouseNeuigkeit = 0;
	
	AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_00"); //�h, wegen der Herrenh�user ...
	AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_01"); //Ja?
	
	if (SC_COMESINTO_CANYONLIBRARY_FUNC_OneTime == TRUE)
	&& (FOUNDHOUSEINFO [Library] == FALSE)
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_02"); //Die Orks scheinen sich f�r die Bibliothek der Gelehrten zu interessieren.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_03"); //Denkst du, dass sie die alte Sprache lesen k�nnen?
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_04"); //Ich denke nicht, aber wer wei� das schon.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_05"); //Vielleicht solltest du trotzdem besser daf�r sorgen, dass sie verschwinden.
		FOUNDHOUSEINFO[Library] = TRUE;
		RiordianHouseNeuigkeit = (RiordianHouseNeuigkeit + 1);
		
		Log_CreateTopic (TOPIC_Addon_CanyonOrcs, LOG_MISSION);
		Log_SetTopicStatus(TOPIC_Addon_CanyonOrcs, LOG_RUNNING);
		B_LogEntry (TOPIC_Addon_CanyonOrcs,"Dem Wassermagier Riordian w�re es lieber, wenn die Orks aus dem Canyon verschwinden."); 
	};
	
	if ((Npc_IsDead(StoneGuardian_Heiler)) || (Npc_HasItems (other,ItMi_Addon_Stone_04)) || (Saturas_SCFound_ItMi_Addon_Stone_04 == TRUE) )
	&& (FOUNDHOUSEINFO [Heiler] == FALSE)
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_06"); //Das Haus der Heiler steht mitten in der Sumpfregion und wurde von einer Menge Steinw�chtern verteidigt.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_07"); //Es steht also immer noch?
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_08"); //Ja, fragt sich nur, wie lange noch ...
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_09"); //Mich schmerzt es in der Seele, wenn ich die Zeugen der Vergangeheit in diesem zerfallenen Zustand sehe.
		FOUNDHOUSEINFO[Heiler] = TRUE;
		RiordianHouseNeuigkeit = (RiordianHouseNeuigkeit + 1);
	};	

	if (RavenIsInTempel == TRUE)
	&& (FOUNDHOUSEINFO [Warrior] == FALSE)
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_10"); //Das Herrenhaus der Krieger wurde von Raven als Unterschlupf verwendet.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_11"); //(zynisch) Da hat er eine gute Wahl getroffen.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_12"); //Vermutlich ist es die sicherste Festung, die in dieser Region noch zu finden ist.
		FOUNDHOUSEINFO[Warrior] = TRUE;
		RiordianHouseNeuigkeit = (RiordianHouseNeuigkeit + 1);
	};	

	if ((Npc_IsDead(Minecrawler_Priest)) || (Npc_HasItems (other,ItMi_Addon_Stone_03)) || (Saturas_SCFound_ItMi_Addon_Stone_03 == TRUE))
	&& (FOUNDHOUSEINFO [Priest] == FALSE)//crawler
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_13"); //Im Haus der Priester waren jede Menge Minecrawler ...
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_14"); //Ist so eine Gegend nicht sehr ungew�hnlich f�r diese Tiere?
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_15"); //Allerdings.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_16"); //Bei Adanos. Seltsame Dinge geschehen in dieser Region.
		
		FOUNDHOUSEINFO[Priest] = TRUE;
		RiordianHouseNeuigkeit = (RiordianHouseNeuigkeit + 1);
	};	

	if ((Npc_IsDead(MayaZombie_Totenw)) || (Npc_HasItems (other,ItMi_Addon_Stone_02)) || (Saturas_SCFound_ItMi_Addon_Stone_02 == TRUE))
	&& (FOUNDHOUSEINFO [Totenw] == FALSE)//Zombies
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_17"); //Das Haus der Totenw�chter wird beherrscht von der Macht des B�sen.
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_18"); //Ich glaub, ich habe selten so viele Zombies auf einem Haufen gesehen.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_19"); //Das ist bedauerlich. Die Totenw�chter wurden offenbar Opfer ihrer speziellen F�higkeiten.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_20"); //Ihre Verbundenheit zur Totenwelt hat ihnen schwer geschadet. Ich hoffe, du hast sie von ihrem Leid erl�sen k�nnen.
		FOUNDHOUSEINFO[Totenw] = TRUE;
		RiordianHouseNeuigkeit = (RiordianHouseNeuigkeit + 1);
	};	
	
	if (RiordianHouseNeuigkeit > 0)
	{
		var int RiordianHouseXPs;
		RiordianHouseXPs = (100 * RiordianHouseNeuigkeit);
		B_GivePlayerExp (RiordianHouseXPs);
		
		RiordianHousesFoundCount = (RiordianHousesFoundCount + RiordianHouseNeuigkeit);
	}
	else
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_21"); //Erz�hl mir nochmal, wo sich jedes einzelne befindet.
		B_WhreAreHousesOfRulers ();
	};
};

///////////////////////////////////////////////////////////////////////
//	Info OrksWeg
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_OrksWeg		(C_INFO)
{
	npc		 = 	KDW_14040_Addon_Riordian_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Riordian_OrksWeg_Condition;
	information	 = 	DIA_Addon_Riordian_OrksWeg_Info;

	description	 = 	"Die Orks werden das Interesse an dieser Region bald verlieren.";
};

func int DIA_Addon_Riordian_OrksWeg_Condition ()
{
	if (Npc_IsDead(OrcShaman_Sit_CanyonLibraryKey))
	&& (FOUNDHOUSEINFO [Library] == TRUE)
		{
			return TRUE;
		};
};

func void DIA_Addon_Riordian_OrksWeg_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_OrksWeg_15_00"); //Die Orks werden das Interesse an dieser Region bald verlieren.
	AI_Output	(self, other, "DIA_Addon_Riordian_OrksWeg_10_01"); //Wie kommst du darauf?

	if (OrcShaman_Sit_CanyonLibraryKey.aivar[AIV_DefeatedByPlayer] == DBP_Killed)
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_OrksWeg_15_02"); //Ich habe ihren Anf�hrer get�tet.
	}
	else
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_OrksWeg_15_03"); //Ihr Anf�hrer ist tot.
	};
	
	AI_Output	(self, other, "DIA_Addon_Riordian_OrksWeg_10_04"); //Wollen wir hoffen, dass du Recht hast.
	AI_Output	(self, other, "DIA_Addon_Riordian_OrksWeg_10_05"); //St�rungen dieser Art k�nnen wir jetzt nun wirklich nicht gebrauchen.
	
	TOPIC_END_CanyonOrcs = TRUE;
	B_GivePlayerExp(300);
};

///////////////////////////////////////////////////////////////////////
//	Info FoundAllHouses
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_FoundAllHouses		(C_INFO)
{
	npc		 = 	KDW_14040_Addon_Riordian_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Riordian_FoundAllHouses_Condition;
	information	 = 	DIA_Addon_Riordian_FoundAllHouses_Info;

	description	 = 	"Ich habe alle Herrenh�user gefunden.";
};

func int DIA_Addon_Riordian_FoundAllHouses_Condition ()
{
	if (RiordianHousesFoundCount >= 5)
	&& (MIS_Riordian_HousesOfRulers == LOG_RUNNING)
		{
			return TRUE;
		};
};

func void DIA_Addon_Riordian_FoundAllHouses_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_FoundAllHouses_15_00"); //Ich habe alle Herrenh�user gefunden.
	AI_Output	(self, other, "DIA_Addon_Riordian_FoundAllHouses_10_01"); //Waren sie alle dort, wo ich es gesagt habe?
	AI_Output	(other, self, "DIA_Addon_Riordian_FoundAllHouses_15_02"); //Mehr oder weniger schon.
	AI_Output	(self, other, "DIA_Addon_Riordian_FoundAllHouses_10_03"); //Sehr gut. Dann hat sich meine Arbeit ja DOCH gelohnt.
	AI_Output	(self, other, "DIA_Addon_Riordian_FoundAllHouses_10_04"); //Ich danke dir.
	MIS_Riordian_HousesOfRulers = LOG_SUCCESS;
	B_GivePlayerExp(300);
};

///////////////////////////////////////////////////////////////////////
//	Info PreTeach
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_ADW_PreTeach		(C_INFO)
{
	npc		 = 	KDW_14040_Addon_Riordian_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Riordian_ADW_PreTeach_Condition;
	information	 = 	DIA_Addon_Riordian_ADW_PreTeach_Info;
	description	 = 	"Kannst du mir deine F�higkeiten beibringen?";
};

func int DIA_Addon_Riordian_ADW_PreTeach_Condition ()
{
	return TRUE;
};

func void DIA_Addon_Riordian_ADW_PreTeach_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_ADW_PreTeach_15_00"); //Kannst du mir deine F�higkeiten beibringen?
	AI_Output	(self, other, "DIA_Addon_Riordian_ADW_PreTeach_10_01"); //Ich kann dich in der Kunst der Alchemie unterrichten.

	Log_CreateTopic	(TOPIC_Addon_KDWTeacher, LOG_NOTE);
	B_LogEntry	(TOPIC_Addon_KDWTeacher, LogText_Addon_RiordianTeachAlchemy);

	Riordian_ADW_ADDON_TeachAlchemy = TRUE;
	self.aivar[AIV_CanOffer] = self.aivar[AIV_CanOffer] | OFFER_Teaching;
};
