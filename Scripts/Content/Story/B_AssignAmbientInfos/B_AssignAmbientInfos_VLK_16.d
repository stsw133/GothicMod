///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_VLK_16_EXIT (C_Info)
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
instance DIA_VLK_16_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_VLK_16_JOIN_Condition;
	information							=	DIA_VLK_16_JOIN_Info;
	permanent							=	true;
	description							=	"Chcia³bym zostaæ obywatelem tego miasta!";
};
func int DIA_VLK_16_JOIN_Condition()
{
	if (hero.guild == GIL_NONE)
	&& (Player_IsApprentice == APP_NONE)
	{
		return true;
	};
};
func void DIA_VLK_16_JOIN_Info()
{
	AI_Output (other, self, "DIA_VLK_16_JOIN_15_00"); //Chcia³bym zostaæ obywatelem tego miasta!
	AI_Output (self, other, "DIA_VLK_16_JOIN_16_01"); //Czy pomo¿esz nam w obronie miasta przed atakami orków?
	AI_Output (self, other, "DIA_VLK_16_JOIN_16_02"); //Jeœli jesteœ obywatelem Khorinis, mo¿esz przy³¹czyæ siê do oddzia³ów stra¿y - w tej sprawie porozmawiaj z którymœ ze stra¿ników.
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_VLK_16_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_VLK_16_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto jest najwa¿niejszy w mieœcie?";
};
func void DIA_VLK_16_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_VLK_16_PEOPLE_15_00"); //Kto jest najwa¿niejszy w mieœcie?
	AI_Output (self, other, "DIA_VLK_16_PEOPLE_16_01"); //Paladyni, ich siedziba znajduje siê w górnym mieœcie.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_VLK_16_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_VLK_16_LOCATION_Info;
	permanent							=	true;
	description							=	"Czy s¹ tutaj jakieœ interesuj¹ce rzeczy?";
};
func void DIA_VLK_16_LOCATION_Info()
{
	AI_Output (other, self, "DIA_VLK_16_LOCATION_15_00"); //Które miejsca warto tutaj odwiedziæ?
	AI_Output (self, other, "DIA_VLK_16_LOCATION_16_01"); //Na targowisku odnajdziesz wszelkie mo¿liwe towary.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_VLK_16_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_VLK_16_STANDARD_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_VLK_16_STANDARD_Info()
{
	AI_Output (other, self, "DIA_VLK_16_STANDARD_15_00"); //Co nowego?
	
	if (Kapitel == 7)
	{
		AI_Output (self, other, "DIA_Addon_VLK_16_STANDARD_16_00"); //Mam nadziejê, ¿e stra¿ w koñcu dowie siê, dlaczego Khorinis ma coraz mniej mieszkañców.
		AI_Output (self, other, "DIA_Addon_VLK_16_STANDARD_16_01"); //Wiedz¹c, ile osób ju¿ zaginê³o, cz³owiek zaczyna siê baæ o swoje ¿ycie.
		
		if (!SC_HearedAboutMissingPeople)
		{
			Log_CreateTopic (TOPIC_Addon_WhoStolePeople, LOG_MISSION);
			Log_SetTopicStatus (TOPIC_Addon_WhoStolePeople, LOG_RUNNING);
			B_LogEntry (TOPIC_Addon_WhoStolePeople, LogText_Addon_SCKnowsMisspeapl);
		};
		SC_HearedAboutMissingPeople = true;
	};
	
	if (Kapitel == 8)
	{
		AI_Output (self, other, "DIA_VLK_16_STANDARD_16_01"); //Nie s³ysza³eœ, ¿e ponoæ na obrze¿ach miasta dostrze¿ono orków? Miejmy nadziejê, ¿e paladyni sobie z nimi poradz¹.
		AI_Output (self, other, "DIA_VLK_16_STANDARD_16_02"); //Zastanawiam siê, czy w³aœnie to jest powodem, dla którego farmerzy nie zjawiaj¹ siê na targu.
	};
	
	if (Kapitel == 9)
	{
		if (MIS_RescueBennet == LOG_SUCCESS)
		{
			AI_Output (self, other, "DIA_VLK_16_STANDARD_16_03"); //Najemnik, którego oskar¿ono o zabójstwo Lothara, jest niewinny. Znaleziono dowód na to, ¿e biedaka wrobiono! S³ysza³am o tym na targowisku...
		}
		else
		{
			AI_Output (self, other, "DIA_VLK_16_STANDARD_16_04"); //To oburzaj¹ce. Najemnicy zarz¹dcy bez ¿adnych skrupu³ów zamordowali czcigodnego paladyna Lothara!
			AI_Output (self, other, "DIA_VLK_16_STANDARD_16_05"); //Jednak sprawiedliwa rêka Innosa dosiêgnie tych grzeszników. Nikt nie ma prawa podnosiæ miecza na wojowników naszego Pana.
		};
	};
	
	if (Kapitel == 4)
	{
		AI_Output (self, other, "DIA_VLK_16_STANDARD_16_06"); //Ponoæ przestêpcy opuszczaj¹ farmê Onara. Mówi¹, ¿e boj¹ siê ludzi Lorda Hagena, i dlatego wracaj¹ do Górniczej Doliny.
	};
	
	if (Kapitel == 5)
	{
		AI_Output (self, other, "DIA_VLK_16_STANDARD_16_07"); //Dosz³y mnie s³uchy, ¿e straszliwe smoki w Górniczej Dolinie zosta³y pokonane przez oddzia³y paladynów.
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_VLK_16 (var C_Npc slf)
{
	DIA_VLK_16_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_16_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_16_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_16_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_16_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
