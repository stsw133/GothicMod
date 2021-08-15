
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

	description	 = 	"Spodziewa³eœ siê TEGO?";
};

func int DIA_Addon_Riordian_HelloADW_Condition ()
{
	return TRUE;
};

func void DIA_Addon_Riordian_HelloADW_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_HelloADW_15_00"); //Spodziewa³eœ siê TEGO?
	AI_Output	(self, other, "DIA_Addon_Riordian_HelloADW_10_01"); //W ¿adnym wypadku. Jestem zdumiony wielkoœci¹ tego miasta.
	AI_Output	(self, other, "DIA_Addon_Riordian_HelloADW_10_02"); //Wiêkszoœæ budynków jest przysypana zwa³ami ziemi i kamieni, ale w ca³ej krainie mo¿na znaleŸæ ruiny, które przetrwa³y do naszych czasów.
	AI_Output	(self, other, "DIA_Addon_Riordian_HelloADW_10_03"); //Mieszka³y tu tysi¹ce ludzi.
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

	description	 = 	"Co mogê tutaj znaleŸæ?";
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
	AI_Output	(other, self, "DIA_Addon_Riordian_WhatToFind_15_00"); //Co mogê tutaj znaleŸæ?
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_01"); //Na wschodzie, przy wielkim bagnie, znajduje siê ogromna forteca.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_02"); //Z tego, co wiemy, jest tam teraz siedziba bandytów.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_03"); //Nie szed³bym tam na twoim miejscu. Maj¹ wiele posterunków i stra¿ników.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_04"); //Lepiej unikaj bagna, a¿ zdobêdziesz wiêcej doœwiadczenia, albo znajdziesz sposób na unikniêcie bandytów.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_05"); //Na zachodzie znaleŸliœmy paru piratów.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_06"); //Nie jestem do koñca pewien, ale wydaje mi siê, ¿e nas zauwa¿yli.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhatToFind_10_07"); //Chyba nie przejmuj¹ siê nasz¹ obecnoœci¹.
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

	description	 = 	"Opowiedz mi wiêcej o tej okolicy.";
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
	AI_Output	(other, self, "DIA_Addon_Riordian_Gegend_15_00"); //Opowiedz mi wiêcej o tej okolicy.
	AI_Output	(self, other, "DIA_Addon_Riordian_Gegend_10_01"); //Co chcesz wiedzieæ?
	
	Info_ClearChoices	(DIA_Addon_Riordian_Gegend);
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, DIALOG_BACK, DIA_Addon_Riordian_Gegend_Back );
	
	if (DIA_Addon_Riordian_Gegend_Info_OneTime == FALSE)
	&& (Npc_HasItems (other,ItWr_Map_AddonWorld) == FALSE)
	{
		Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Czy istnieje mapa tego regionu?", DIA_Addon_Riordian_Gegend_map );
		DIA_Addon_Riordian_Gegend_Info_OneTime = TRUE;
	};
	
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Gdzie widzia³eœ piratów?", DIA_Addon_Riordian_Gegend_Piraten );
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Gdzie przebywaj¹ bandyci?", DIA_Addon_Riordian_Gegend_bandits );
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "By³eœ ju¿ na zachodzie?", DIA_Addon_Riordian_Gegend_west );
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Co znajduje siê na wschodzie?", DIA_Addon_Riordian_Gegend_ost );
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Gdzie dojdê, id¹c na po³udnie?", DIA_Addon_Riordian_Gegend_sued );
	Info_AddChoice	(DIA_Addon_Riordian_Gegend, "Co znajduje siê na pó³nocy?", DIA_Addon_Riordian_Gegend_nord );
};
func void DIA_Addon_Riordian_Gegend_Back ()
{
	Info_ClearChoices	(DIA_Addon_Riordian_Gegend);
};
func void DIA_Addon_Riordian_Gegend_map ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_map_15_00"); //Czy istnieje mapa tego regionu?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_map_10_01"); //Tak, narysowa³ j¹ Cronos. Z pewnoœci¹ ci j¹ przeka¿e.
};
func void DIA_Addon_Riordian_Gegend_bandits ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_bandits_15_00"); //Gdzie przebywaj¹ bandyci?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_bandits_10_01"); //Maj¹ na wschodzie tak¹ niby fortecê i mnóstwo posterunków.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_bandits_10_02"); //Aby siê tam dostaæ, musisz przejœæ przez wielkie grzêzawisko.
};
func void DIA_Addon_Riordian_Gegend_Piraten ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_Piraten_15_00"); //Gdzie widzia³eœ piratów?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_Piraten_10_01"); //Wa³êsaj¹ siê na zachodzie.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_Piraten_10_02"); //Wydaje mi siê, ¿e na coœ polowali.
};

func void DIA_Addon_Riordian_Gegend_nord ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_nord_15_00"); //Co znajduje siê na pó³nocy?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_nord_10_01"); //Jeœli mogê ufaæ zapiskom budowniczych, znajdziesz tam wielk¹ dolinê otoczon¹ wysokimi ska³ami.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_nord_10_02"); //Jest to sucha i pustynna okolica.
};

func void DIA_Addon_Riordian_Gegend_sued ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_sued_15_00"); //Gdzie dojdê, id¹c na po³udnie?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_sued_10_01"); //Tereny na po³udniu s¹ bardzo skaliste.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_sued_10_02"); //Znajdziesz tam wij¹ce siê drogi, wodospady i kamienne ruiny.
};

func void DIA_Addon_Riordian_Gegend_ost ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_ost_15_00"); //Co znajduje siê na wschodzie?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_ost_10_01"); //Wielkie bagno. Ten obszar jest bardzo niebezpieczny.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_ost_10_02"); //Czaj¹ siê tam nie tylko bandyci, ale te¿ wyj¹tkowo groŸne zwierzêta.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_ost_10_03"); //Zachowaj ostro¿noœæ.
};
var int DIA_Addon_Riordian_Gegend_west_OneTime;
func void DIA_Addon_Riordian_Gegend_west ()
{
	AI_Output			(other, self, "DIA_Addon_Riordian_Gegend_west_15_00"); //By³eœ ju¿ na zachodzie?
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_west_10_01"); //Nie, ale tam na pewno jest wybrze¿e.
	AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_west_10_02"); //Podejrzewam, ¿e piraci maj¹ tam swój obóz.

	if (DIA_Addon_Riordian_Gegend_west_OneTime == FALSE)
	&& (Npc_HasItems (VLK_4304_Addon_William,ITWr_Addon_William_01))
	{
		AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_west_10_03"); //Na wschodzie, niedaleko st¹d, znaleŸliœmy zw³oki rybaka.
		AI_Output			(self, other, "DIA_Addon_Riordian_Gegend_west_10_04"); //Powinieneœ siê temu przyjrzeæ.
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

	description	 = 	"Przysy³a mnie Saturas.";
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
	AI_Output	(other, self, "DIA_Addon_Riordian_HousesOfRulers_15_00"); //Przysy³a mnie Saturas. Mam poszukaæ piêciu posiad³oœci w Jarkendarze.
	AI_Output	(self, other, "DIA_Addon_Riordian_HousesOfRulers_10_01"); //Potrzebowa³em du¿o czasu, aby ustaliæ po³o¿enie posiad³oœci na podstawie zapisków budowniczych.
	AI_Output	(self, other, "DIA_Addon_Riordian_HousesOfRulers_10_02"); //Ale teraz mogê ci je dok³adnie opisaæ.
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

	description	 = 	"Gdzie mogê znaleŸæ te piêæ budowli?";
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
	AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_00"); //Das Haus der Gelehrten ist eine große Bibliothek. Sie muss irgendwo weit im Norden sein.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_01"); //Das Haus der Krieger war damals eine von Felsen umringte Festung im Osten.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_02"); //Die Priester und die Totenwächter hatten ihre Behausungen nahe beieinander. Du solltest sie im Südwesten finden.
	AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_03"); //Und die Heiler hatten ihr Haus der Genesung im Südosten.

	if (B_WhreAreHousesOfRulersOneTime == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_04"); //Wenn diese Häuser noch stehen, dann wirst du sie an ihrer Bauweise erkennen.
		B_WhreAreHousesOfRulersOneTime = TRUE;
	};

	AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_05"); //Sie sind erhöht. Eine steile Treppe führt in den von hohen Säulen verdeckten Eingang.

	if (B_WhreAreHousesOfRulersOneTime == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Riordian_WhereAreHouses_10_06"); //Ich hoffe, das hilft dir weiter.
	};

	Log_CreateTopic (TOPIC_Addon_HousesOfRulers, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_HousesOfRulers, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_HousesOfRulers,"Das Haus der Gelehrten ist eine grosse Bibliothek. Sie muss irgendwo weit im Norden sein."); 
	Log_AddEntry (TOPIC_Addon_HousesOfRulers,"Das Haus der Krieger war damals eine von Felsen umringte Festung im Osten. "); 
	Log_AddEntry (TOPIC_Addon_HousesOfRulers,"Die Priester und die Tötenwächter hatten ihre Behausungen nahe bei einander. Ich sollte sie im Südwesten finden. "); 
	Log_AddEntry (TOPIC_Addon_HousesOfRulers,"Die Heiler hatten ihr Haus der Genesung im Südosten."); 
};

func void DIA_Addon_Riordian_WhereAreHouses_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_WhereAreHouses_15_00"); //Wo finde ich die 5 Herrenhäuser?
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

	description	 = 	"Wegen der Herrenhäuser...";
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
	
	AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_00"); //Äh, wegen der Herrenhäuser ...
	AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_01"); //Ja?
	
	if (SC_COMESINTO_CANYONLIBRARY_FUNC_OneTime == TRUE)
	&& (FOUNDHOUSEINFO [Library] == FALSE)
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_02"); //Die Orks scheinen sich für die Bibliothek der Gelehrten zu interessieren.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_03"); //Denkst du, dass sie die alte Sprache lesen können?
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_04"); //Ich denke nicht, aber wer weiß das schon.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_05"); //Vielleicht solltest du trotzdem besser dafür sorgen, dass sie verschwinden.
		FOUNDHOUSEINFO[Library] = TRUE;
		RiordianHouseNeuigkeit = (RiordianHouseNeuigkeit + 1);
		
		Log_CreateTopic (TOPIC_Addon_CanyonOrcs, LOG_MISSION);
		Log_SetTopicStatus(TOPIC_Addon_CanyonOrcs, LOG_RUNNING);
		B_LogEntry (TOPIC_Addon_CanyonOrcs,"Dem Wassermagier Riordian wäre es lieber, wenn die Orks aus dem Canyon verschwinden."); 
	};
	
	if ((Npc_IsDead(StoneGuardian_Heiler)) || (Npc_HasItems (other,ItMi_Addon_Stone_04)) || (Saturas_SCFound_ItMi_Addon_Stone_04 == TRUE) )
	&& (FOUNDHOUSEINFO [Heiler] == FALSE)
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_06"); //Das Haus der Heiler steht mitten in der Sumpfregion und wurde von einer Menge Steinwächtern verteidigt.
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
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_14"); //Ist so eine Gegend nicht sehr ungewöhnlich für diese Tiere?
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_15"); //Allerdings.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_16"); //Bei Adanos. Seltsame Dinge geschehen in dieser Region.
		
		FOUNDHOUSEINFO[Priest] = TRUE;
		RiordianHouseNeuigkeit = (RiordianHouseNeuigkeit + 1);
	};	

	if ((Npc_IsDead(MayaZombie_Totenw)) || (Npc_HasItems (other,ItMi_Addon_Stone_02)) || (Saturas_SCFound_ItMi_Addon_Stone_02 == TRUE))
	&& (FOUNDHOUSEINFO [Totenw] == FALSE)//Zombies
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_17"); //Das Haus der Totenwächter wird beherrscht von der Macht des Bösen.
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_18"); //Ich glaub, ich habe selten so viele Zombies auf einem Haufen gesehen.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_19"); //Das ist bedauerlich. Die Totenwächter wurden offenbar Opfer ihrer speziellen Fähigkeiten.
		AI_Output	(self, other, "DIA_Addon_Riordian_FoundHouse_10_20"); //Ihre Verbundenheit zur Totenwelt hat ihnen schwer geschadet. Ich hoffe, du hast sie von ihrem Leid erlösen können.
		FOUNDHOUSEINFO[Totenw] = TRUE;
		RiordianHouseNeuigkeit = (RiordianHouseNeuigkeit + 1);
	};	
	
	if (RiordianHouseNeuigkeit > 0)
	{
		var int RiordianHouseXPs;
		RiordianHouseXPs = (100 * RiordianHouseNeuigkeit);
		B_GivePlayerXP (RiordianHouseXPs);
		
		RiordianHousesFoundCount = (RiordianHousesFoundCount + RiordianHouseNeuigkeit);
	}
	else
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_FoundHouse_15_21"); //Erzähl mir nochmal, wo sich jedes einzelne befindet.
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
		AI_Output	(other, self, "DIA_Addon_Riordian_OrksWeg_15_02"); //Ich habe ihren Anführer getötet.
	}
	else
	{
		AI_Output	(other, self, "DIA_Addon_Riordian_OrksWeg_15_03"); //Ihr Anführer ist tot.
	};
	
	AI_Output	(self, other, "DIA_Addon_Riordian_OrksWeg_10_04"); //Wollen wir hoffen, dass du Recht hast.
	AI_Output	(self, other, "DIA_Addon_Riordian_OrksWeg_10_05"); //Störungen dieser Art können wir jetzt nun wirklich nicht gebrauchen.
	
	TOPIC_END_CanyonOrcs = TRUE;
	B_GivePlayerXP(300);
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

	description	 = 	"Ich habe alle Herrenhäuser gefunden.";
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
	AI_Output	(other, self, "DIA_Addon_Riordian_FoundAllHouses_15_00"); //Ich habe alle Herrenhäuser gefunden.
	AI_Output	(self, other, "DIA_Addon_Riordian_FoundAllHouses_10_01"); //Waren sie alle dort, wo ich es gesagt habe?
	AI_Output	(other, self, "DIA_Addon_Riordian_FoundAllHouses_15_02"); //Mehr oder weniger schon.
	AI_Output	(self, other, "DIA_Addon_Riordian_FoundAllHouses_10_03"); //Sehr gut. Dann hat sich meine Arbeit ja DOCH gelohnt.
	AI_Output	(self, other, "DIA_Addon_Riordian_FoundAllHouses_10_04"); //Ich danke dir.
	MIS_Riordian_HousesOfRulers = LOG_SUCCESS;
	B_GivePlayerXP(300);
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
	description	 = 	"Kannst du mir deine Fähigkeiten beibringen?";
};

func int DIA_Addon_Riordian_ADW_PreTeach_Condition ()
{
	return TRUE;
};

func void DIA_Addon_Riordian_ADW_PreTeach_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_ADW_PreTeach_15_00"); //Kannst du mir deine Fähigkeiten beibringen?
	AI_Output	(self, other, "DIA_Addon_Riordian_ADW_PreTeach_10_01"); //Ich kann dich in der Kunst der Alchemie unterrichten.

	Log_CreateTopic	(TOPIC_Addon_KDWTeacher, LOG_NOTE);
	B_LogEntry	(TOPIC_Addon_KDWTeacher, LogText_Addon_RiordianTeachAlchemy);

	Riordian_ADW_ADDON_TeachAlchemy = TRUE;
	self.aivar[AIV_CanTeach] = true;
};
