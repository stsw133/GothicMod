///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_VLK_1_EXIT (C_Info)
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
instance DIA_VLK_1_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_VLK_1_JOIN_Condition;
	information							=	DIA_VLK_1_JOIN_Info;
	permanent							=	true;
	description							=	"W jaki sposób mogê zostaæ obywatelem tego miasta?";
};
func int DIA_VLK_1_JOIN_Condition()
{
	if (hero.guild == GIL_NONE)
	&& (Player_IsApprentice == APP_NONE)
	{
		return true;
	};
};
func void DIA_VLK_1_JOIN_Info()
{
	AI_Output (other, self, "DIA_VLK_1_JOIN_15_00"); //W jaki sposób mogê zostaæ obywatelem tego miasta?
	AI_Output (self, other, "DIA_VLK_1_JOIN_01_01"); //Poszukaj sobie jakiejœ przyzwoitej pracy! Wszyscy, którzy maj¹ pracê w Khorinis, s¹ zaliczani do obywateli miasta.
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_VLK_1_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_VLK_1_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto jest tu w okolicy najwa¿niejszy?";
};
func void DIA_VLK_1_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_VLK_1_PEOPLE_15_00"); //Kto jest tu w okolicy najwa¿niejszy?
	AI_Output (self, other, "DIA_VLK_1_PEOPLE_01_01"); //Do niedawna gubernator i sêdzia. Jednak niedawno przybyli do miasta paladyni i przejêli w³adzê.
	AI_Output (self, other, "DIA_VLK_1_PEOPLE_01_02"); //Mo¿na rzec, ¿e ich przywódca, Lord Hagen, jest teraz kimœ w rodzaju gubernatora.
	AI_Output (self, other, "DIA_VLK_1_PEOPLE_01_03"); //Jego praw¹ rêk¹ jest Lord Andre. To on dowodzi stra¿¹ miejsk¹, pe³ni te¿ funkcjê sêdziego.
	AI_Output (self, other, "DIA_VLK_1_PEOPLE_01_04"); //Wszyscy przestêpcy w mieœcie odpowiadaj¹ przed nim.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_VLK_1_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_VLK_1_LOCATION_Info;
	permanent							=	true;
	description							=	"Jakie ciekawe miejsca mo¿na odwiedziæ w tym mieœcie?";
};
func void DIA_VLK_1_LOCATION_Info()
{
	AI_Output (other, self, "DIA_VLK_1_LOCATION_15_00"); //Co ciekawego mo¿na znaleŸæ w mieœcie?
	AI_Output (self, other, "DIA_VLK_1_LOCATION_01_01"); //Mo¿na tu kupiæ praktycznie wszystko. Albo od kupców na targowisku, albo w dolnej czêœci miasta.
	AI_Output (self, other, "DIA_VLK_1_LOCATION_01_02"); //Zwa¿ jednak, ¿e za wiêkszoœæ towarów trzeba s³ono zap³aciæ.
	AI_Output (self, other, "DIA_VLK_1_LOCATION_01_03"); //Jeœli nie masz zbyt du¿o z³ota, udaj siê do Lehmara, lichwiarza, mo¿e bêdzie móg³ ci pomóc. Jego dom znajduje siê u wejœcia do dzielnicy portowej, w dolnej czêœci miasta.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_VLK_1_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_VLK_1_STANDARD_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_VLK_1_STANDARD_Info()
{
	AI_Output (other, self, "DIA_VLK_1_STANDARD_15_00"); //Co s³ychaæ?
	
	if (Kapitel == 7)
	{
		AI_Output (self, other, "DIA_VLK_1_STANDARD_01_01"); //Od upadku Bariery handel z najwa¿niejszym z wieœniaków nagle siê urwa³. Kto wie, co on knuje. Coœ mi tu œmierdzi...
	};
	if (Kapitel == 8)
	{
		AI_Output (self, other, "DIA_VLK_1_STANDARD_01_02"); //Onar posuwa siê za daleko. Wci¹¿ odmawia dostaw dla miasta. Jeœli stra¿ nie zareaguje odpowiednio szybko, pozostali ch³opi wkrótce te¿ zaczn¹ siê buntowaæ.
	};
	if (Kapitel == 9)
	{
		AI_Output (self, other, "DIA_VLK_1_STANDARD_01_03"); //Ponoæ bandyci po³¹czyli swe si³y z magami. Potê¿ni czarni magowie w czarnych szatach. Chyba nawet widzia³em jednego z nich ostatniej nocy.
	};
	if (Kapitel == 10)
	{
		AI_Output (self, other, "DIA_VLK_1_STANDARD_01_04"); //S³ysza³em, ¿e jeden z najemników Onara wyruszy³, aby pozabijaæ smoki. W koñcu zajêli siê czymœ po¿ytecznym.
	};
	if (Kapitel >= 11)
	{
		AI_Output (self, other, "DIA_VLK_1_STANDARD_01_05"); //Wieœæ niesie, ¿e smoki zosta³y pokonane! Lord Hagen zbiera swe oddzia³y, by poprowadziæ je przeciw reszcie bestii, pl¹druj¹cych Górnicz¹ Dolinê.
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_VLK_1 (var C_Npc slf)
{
	DIA_VLK_1_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_1_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_1_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_1_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_1_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
