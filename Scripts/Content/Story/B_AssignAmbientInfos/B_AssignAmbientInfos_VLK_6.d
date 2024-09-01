///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_VLK_6_EXIT (C_Info)
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
instance DIA_VLK_6_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_VLK_6_JOIN_Condition;
	information							=	DIA_VLK_6_JOIN_Info;
	permanent							=	true;
	description							=	"W jaki sposób mogê zostaæ obywatelem tego miasta?";
};
func int DIA_VLK_6_JOIN_Condition()
{
	if (hero.guild == GIL_NONE)
	&& (Player_IsApprentice == APP_NONE)
	{
		return true;
	};
};
func void DIA_VLK_6_JOIN_Info()
{
	AI_Output (other, self, "DIA_VLK_6_JOIN_15_00"); //W jaki sposób mogê zostaæ obywatelem tego miasta?
	AI_Output (self, other, "DIA_VLK_6_JOIN_06_01"); //Chcesz siê tu osiedliæ? Teraz, kiedy wszystkie znaki na niebie i ziemi zdaj¹ siê zwiastowaæ koniec œwiata?
	AI_Output (other, self, "DIA_VLK_6_JOIN_15_02"); //Nie chcia³em zostaæ tu na sta³e.
	AI_Output (self, other, "DIA_VLK_6_JOIN_06_03"); //Jeœli chcesz znaæ moje zdanie, powinieneœ zwiewaæ st¹d, póki mo¿esz. Jednak, jeœli musisz zostaæ, porozmawiaj z którymœ z wp³ywowych obywateli.
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_VLK_6_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_VLK_6_PEOPLE_Info;
	permanent							=	true;
	description							=	"Znasz jakichœ wp³ywowych ludzi w Khorinis?";
};
func void DIA_VLK_6_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_VLK_6_PEOPLE_15_00"); //Znasz jakichœ wp³ywowych ludzi w Khorinis?
	AI_Output (self, other, "DIA_VLK_6_PEOPLE_06_01"); //Spróbuj u kowala lub cieœli, w dolnej czêœci miasta. Znajdziesz tam tak¿e kilku szanowanych mistrzów.
	AI_Output (self, other, "DIA_VLK_6_PEOPLE_06_02"); //Jeœli w tym mieœcie ktokolwiek oprócz stra¿y i paladynów ma coœ do powiedzenia, to w³aœnie oni.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_VLK_6_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_VLK_6_LOCATION_Info;
	permanent							=	true;
	description							=	"Jak mam siê poruszaæ po mieœcie, by nie straciæ orientacji?";
};
func void DIA_VLK_6_LOCATION_Info()
{
	AI_Output (other, self, "DIA_VLK_6_LOCATION_15_00"); //Jak mam siê poruszaæ po mieœcie, by nie straciæ orientacji?
	AI_Output (self, other, "DIA_VLK_6_LOCATION_06_01"); //Nietrudno siê tu zgubiæ, co? Nawet drogowskazy niewiele pomagaj¹.
	AI_Output (self, other, "DIA_VLK_6_LOCATION_06_02"); //Jeœli masz kiepsk¹ orientacjê, udaj siê do dzielnicy portowej. Kiedy ju¿ tam trafisz, idŸ do domu kartografa.
	AI_Output (self, other, "DIA_VLK_6_LOCATION_06_03"); //Jego dom znajduje siê przy pomoœcie, niedaleko knajpy. Jestem pewien, ¿e Brahim znajdzie dla ciebie jak¹œ mapê.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_VLK_6_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_VLK_6_STANDARD_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_VLK_6_STANDARD_Info()
{
	AI_Output (other, self, "DIA_VLK_6_STANDARD_15_00"); //Co s³ychaæ?
	
	if (Kapitel == 7)
	{
		AI_Output (self, other, "DIA_VLK_6_STANDARD_06_01"); //Od kiedy upad³a Bariera, w mieœcie roi siê od bandytów. Paladyni w ogóle siê tym nie przejmuj¹. Po cholerê wiêc siedz¹ w mieœcie?
	};
	if (Kapitel == 8)
	{
		AI_Output (self, other, "DIA_VLK_6_STANDARD_06_02"); //Ostatnio bandyci nie daj¹ siê a¿ tak bardzo we znaki. Wygl¹da na to, ¿e ktoœ w koñcu siê nimi zaj¹³.
	};
	if (Kapitel == 9)
	{
		if (MIS_RescueBennet == LOG_SUCCESS)
		{
			AI_Output (self, other, "DIA_VLK_6_STANDARD_06_03"); //Tego œmierdz¹cego najemnika, mordercê paladyna, wypuszczono na wolnoœæ. Myœlê, ¿e nale¿a³ mu siê stryczek.
		}
		else
		{
			AI_Output (self, other, "DIA_VLK_6_STANDARD_06_04"); //Podobno jeden z ludzi Onara zamordowa³ paladyna. Z³apali go ponoæ i wtr¹cili do paki. Nied³ugo bêdzie wisia³.
		};
	};
	if (Kapitel == 10)
	{
		AI_Output (self, other, "DIA_VLK_6_STANDARD_06_05"); //Zastanawiam siê, czy w opowieœciach o smokach jest choæ trochê prawdy...
	};
	if (Kapitel >= 11)
	{
		AI_Output (self, other, "DIA_VLK_6_STANDARD_06_06"); //Powiadaj¹, ¿e Lord Hagen zbiera wojska, by wyzwoliæ Górnicz¹ Dolinê. Nareszcie coœ siê dzieje!
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_VLK_6 (var C_Npc slf)
{
	DIA_VLK_6_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_6_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_6_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_6_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_6_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
