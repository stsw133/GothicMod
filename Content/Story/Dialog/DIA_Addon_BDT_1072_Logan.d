//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Addon_Logan_EXIT (C_INFO)
{
	npc									=	BDT_1072_Addon_Logan;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Addon_Logan_EXIT_Info;
	permanent							=	true;
	description							=	"Przyjd� p�niej...";
};

FUNC VOID DIA_Addon_Logan_EXIT_Info()
{
	AI_Output (other, self, "DIA_Addon_Logan_EXIT_15_00");//Przyjd� p�niej...

	if ((!QuestStep_LoganSwampsharks == LOG_RUNNING)
	|| (!QuestStep_LoganSwampsharks == LOG_SUCCESS))
	&& (Logan_Inside == false)
	{
		AI_Output (self, other, "DIA_Addon_Logan_EXIT_10_01");//Tak, uciekaj. B�d� tu sta� i zatrzymam ka�dego, kto spr�buje si� zbli�y�.
	};
	AI_StopProcessInfos(self);
};	

//******************************************************************************************
//	Info Mine
//******************************************************************************************
INSTANCE DIA_Addon_BDT_1072_Logan_Mine (C_INFO)
{
	npc									=	BDT_1072_Addon_Logan;
	nr									=	1;
	condition							=	DIA_Addon_Logan_Mine_Condition;
	information							=	DIA_Addon_Logan_Mine_Info;
	description							=	DIALOG_ADDON_MINE_DESCRIPTION;
};

FUNC INT DIA_Addon_Logan_Mine_Condition()
{
	if (QuestStep_BringMiners == LOG_RUNNING)
	&& (Player_SentBuddler < 3)
	&& (Npc_HasItems(other,ItmI_Addon_Stone_01) >= 1)
	&& (Npc_GetDistToWP(self,"BL_INN_CORNER_02") <= 1000)
	{
		return true;
	};
};

FUNC VOID DIA_Addon_Logan_Mine_Info()
{
	B_Say		(other, self, "$MINE_ADDON_DESCRIPTION");
	B_GiveInvItems (other, self, ItmI_Addon_Stone_01, 1);
	AI_Output	(self, other, "DIA_Addon_BDT_1072_Logan_Mine_10_00");//Uda�o ci si�, co? W porz�dku, dobrze, �e mi pomagasz.

	Player_SentBuddler += 1;
	B_GivePlayerXP(XP_BONUS_1);
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "MINE");
};

//******************************************************************************************
//	Info INSIDE
//******************************************************************************************
INSTANCE DIA_Addon_Logan_How2 (C_INFO)
{
	npc									=	BDT_1072_Addon_Logan;
	nr									=	2;
	condition							=	DIA_Addon_Logan_How2_Condition;
	information							=	DIA_Addon_Logan_How2_Info;
	description							=	"Co u ciebie s�ycha�?";
};

FUNC INT DIA_Addon_Logan_How2_Condition()
{
	if (Logan_Inside == true)
	&& (Npc_GetDistToWP(self,"BL_INN_CORNER_02") <= 1000)
	{
		return true;
	};
};

FUNC VOID DIA_Addon_Logan_How2_Info()
{
	AI_Output	(other, self, "DIA_Addon_Logan_How2_15_00"); //Co u ciebie s�ycha�?
	AI_Output	(self, other, "DIA_Addon_Logan_How2_10_01"); //No c�, przynajmniej jestem w �rodku. Lucia p�dzi naprawd� mocny bimber.
	AI_Output	(self, other, "DIA_Addon_Logan_How2_10_02"); //Esteban nie pozwala mi jednak wej�� do kopalni. Przynajmniej na razie. Ale dosta�em kilka innych zada�.
	AI_Output	(other, self, "DIA_Addon_Logan_How2_15_03"); //No i? Co ci kaza� robi�?
	AI_Output	(self, other, "DIA_Addon_Logan_How2_10_04"); //Kto� pr�bowa� zabi� Estebana. Chce wiedzie�, kto za tym stoi.
	AI_Output	(self, other, "DIA_Addon_Logan_How2_10_05"); //Esteban s�dzi, �e w spraw� zamieszany jest Snaf. Mam mie� na niego oko...
};

//******************************************************************************************
//	Info Attentat
//******************************************************************************************
INSTANCE DIA_Addon_Logan_Attentat (C_INFO)
{
	npc									=	BDT_1072_Addon_Logan;
	nr									=	9;
	condition							=	DIA_Addon_Logan_Attentat_Condition;
	information							=	DIA_Addon_Logan_Attentat_Info;
	description							=	DIALOG_ADDON_ATTENTAT_DESCRIPTION;
};

FUNC INT DIA_Addon_Logan_Attentat_Condition()
{
	if (MIS_Judas == LOG_RUNNING)
	&& (Logan_Inside == true)
	{
		return true;
	};
};

FUNC VOID DIA_Addon_Logan_Attentat_Info()
{
	B_Say		(other, self, "$ATTENTAT_ADDON_DESCRIPTION");
	AI_Output	(self, other, "DIA_Addon_Logan_Attentat_10_00");//A wi�c szukasz ludzi, kt�rzy s� za to odpowiedzialni?
	AI_Output	(self, other, "DIA_Addon_Logan_Attentat_10_01");//Nic o tym nie wiem. Sk�d niby mia�em si� dowiedzie�? Siedzia�em jeszcze w bagnie, gdy ca�a ta historia mia�a miejsce.
};

//******************************************************************************************
//	Info HI
//******************************************************************************************
INSTANCE DIA_Addon_Logan_HI (C_INFO)
{
	npc									=	BDT_1072_Addon_Logan;
	nr									=	3;
	condition							=	DIA_Addon_Logan_HI_Condition;
	information							=	DIA_Addon_Logan_HI_Info;
	important							=	true;
};

FUNC INT DIA_Addon_Logan_HI_Condition()
{
	if (Logan_Inside == false)
	&& (Npc_IsInState(self,ZS_Talk))
	{
		return true;
	};
};

FUNC VOID DIA_Addon_Logan_HI_Info()
{
	AI_Output	(self, other, "DIA_Addon_Logan_HI_10_00");//Patrzcie, pa�stwo, nowa twarz.
	AI_Output	(self, other, "DIA_Addon_Logan_HI_10_01");//Zamierzasz tak sta� czy przyszed�e� mi pom�c?

	if (Npc_KnowsInfo(other,DIA_Addon_Franco_HI))
	{
		AI_Output	(other, self, "DIA_Addon_Logan_HI_15_02");//Franko mnie przys�a�. M�wi�, �e przyda ci si� pomoc. To o co chodzi?
	}
	else
	{
		AI_Output	(other, self, "DIA_Addon_Logan_HI_15_03");//To zale�y - jakiej pomocy ci trzeba?
	};
	AI_Output	(self, other, "DIA_Addon_Logan_HI_10_04");//B�otne w�e ostatnimi czasy troch� za bardzo si� do nas zbli�aj�. Pora zabi� cz�� z nich.

	QuestStep_LoganSwampSharks = SetQuestStatus (Quest_LoganSwampSharks, LOG_RUNNING, QuestStep_LoganSwampSharks);
	SetNoteEntry (Quest_LoganSwampSharks, LOG_MISSION, "Logan chce, �ebym zapolowa� z nim na w�e b�otne.");
};

//******************************************************************************************
//	Info Why
//******************************************************************************************
INSTANCE DIA_Addon_Logan_Why (C_INFO)
{
	npc									=	BDT_1072_Addon_Logan;
	nr									=	4;
	condition							=	DIA_Addon_Logan_Why_Condition;
	information							=	DIA_Addon_Logan_Why_Info;
	description							=	"A co za to dostan�?";
};

FUNC INT DIA_Addon_Logan_Why_Condition()	
{
	if (Npc_KnowsInfo(other,DIA_Addon_Logan_HI))
	&& (Logan_Inside == false)
	{
		return true;
	};
};

FUNC VOID DIA_Addon_Logan_Why_Info()
{
	AI_Output	(other, self, "DIA_Addon_Logan_Why_15_00"); //A co za to dostan�?
	AI_Output	(self, other, "DIA_Addon_Logan_Why_10_01"); //Franko pozwoli ci tu gni�, je�li nie b�dzie dla ciebie lepszego zastosowania.
	AI_Output	(self, other, "DIA_Addon_Logan_Why_10_02"); //Chcesz wej�� do obozu? No to musisz pomaga�. Same s�owa nie przybli�� ci� do celu.
	AI_Output	(self, other, "DIA_Addon_Logan_Why_10_03"); //Poza tym mog� ci pokaza�, jak patroszy� te bestie.
	AI_Output	(self, other, "DIA_Addon_Logan_Why_10_04"); //Nie s�dz� jednak, �eby Franko wpu�ci� ci� do �rodka tylko dlatego, �e zabijesz par� w�y.
	AI_Output	(self, other, "DIA_Addon_Logan_Why_10_05"); //Jest tu sporo ludzi, kt�rzy ju� troch� czekaj�.
	AI_Output	(self, other, "DIA_Addon_Logan_Why_10_06"); //I lepiej b�dzie, je�li nast�pn� osob�, kt�ra wejdzie do obozu, b�d� ja...

	SetNoteEntry (Note_Teachers, LOG_NOTE, "Logan mo�e nauczy� mnie zdejmowania futra, wyrywania pazur�w i z�b�w.");
};

//******************************************************************************************
//	Info Lager
//******************************************************************************************
INSTANCE DIA_Addon_Logan_Lager (C_INFO)
{
	npc									=	BDT_1072_Addon_Logan;
	nr									=	5;
	condition							=	DIA_Addon_Logan_Lager_Condition;
	information							=	DIA_Addon_Logan_Lager_Info;
	description							=	"Czym jest ob�z?";
};

FUNC INT DIA_Addon_Logan_Lager_Condition()	
{
	if (Npc_KnowsInfo(other,DIA_Addon_Logan_Why))
	&& (Logan_Inside == false)
	{
		return true;
	};
};

FUNC VOID DIA_Addon_Logan_Lager_Info()
{
	AI_Output	(other, self, "DIA_Addon_Logan_Lager_15_00");//Czym jest ob�z?
	AI_Output	(self, other, "DIA_Addon_Logan_Lager_10_01");//Pytanie powinno brzmie�: czym NIE jest ob�z. Bez w�y, bez mokrych dziur... No wiesz, bez BAGNA.
	AI_Output	(self, other, "DIA_Addon_Logan_Lager_10_02");//Zamiast tego maj� gorza�� i z�oto. Z tego, co wiem, jest tam nawet jaka� kobieta. Teraz rozumiesz?
};

//******************************************************************************************
//	Info von Franco geschickt (MISsion)
//******************************************************************************************
INSTANCE DIA_Addon_Logan_MIS (C_INFO)
{
	npc									=	BDT_1072_Addon_Logan;
	nr									=	99;
	condition							=	DIA_Addon_Logan_MIS_Condition;
	information							=	DIA_Addon_Logan_MIS_Info;
	description							=	"Chod�my zabi� par� b�otnych w�y.";
};

FUNC INT DIA_Addon_Logan_MIS_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Logan_HI))
	{
		return true;
	};
};

FUNC VOID DIA_Addon_Logan_MIS_Info()
{
	AI_Output	(other, self, "DIA_Addon_Logan_MIS_15_00");//Chod�my zabi� par� b�otnych w�y.
	AI_Output	(self, other, "DIA_Addon_Logan_MIS_10_01");//Wygl�da na to, �e zrozumia�e�, jak si� robi post�py. Tak jak i... Cii. S�ysza�e�? S�ysz� je.
	AI_Output	(other, self, "DIA_Addon_Logan_MIS_15_02");//Rozumiem. Co teraz zrobimy?
	AI_Output	(self, other, "DIA_Addon_Logan_MIS_10_03");//Id�. Na pewno maj� ochot� na przek�sk�. Zobaczymy, kto kogo b�dzie jad�. Dalej!

	Snd_Play("SWA_Warn");
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "JAGD");

	self.aivar[AIV_PARTYMEMBER] = true;

	Wld_InsertNpc (MIS_Addon_Swampshark_01, "ADW_SWAMPSHARK_01");
	Wld_InsertNpc (MIS_Addon_Swampshark_02, "ADW_SWAMPSHARK_02");
	Wld_InsertNpc (MIS_Addon_Swampshark_03, "ADW_BANDIT_VP3_06");
};

//******************************************************************************************
//	Info Sumpfhaie TOT
//******************************************************************************************
INSTANCE DIA_Addon_Logan_tot (C_INFO)
{
	npc									=	BDT_1072_Addon_Logan;
	nr									=	6;
	condition							=	DIA_Addon_Logan_tot_Condition;
	information							=	DIA_Addon_Logan_tot_Info;
	important							=	true;
};

FUNC INT DIA_Addon_Logan_tot_Condition()
{
	if (Npc_IsDead(MIS_Addon_Swampshark_01))
	&& (Npc_IsDead(MIS_Addon_Swampshark_02))
	&& (Npc_IsDead(MIS_Addon_Swampshark_03))
	&& (Npc_KnowsInfo(other,DIA_Addon_Logan_MIS))
	{
		return true;
	};
};

FUNC VOID DIA_Addon_Logan_tot_Info()
{
	AI_Output	(self, other, "DIA_Addon_Logan_tot_10_00");//Dobry b�otny w�� to martwy b�otny w��. To powinno by� przestrog� dla pozosta�ych.
	AI_Output	(other, self, "DIA_Addon_Logan_tot_15_01");//W porz�dku, masz co� jeszcze do zrobienia? Bo musz� rusza� dalej...
	AI_Output	(self, other, "DIA_Addon_Logan_tot_10_02");//W tej chwili nic. Wiesz, kogo musisz poszuka�, je�li b�dziesz chcia� si� czego� nauczy�.

	self.aivar[AIV_CanTeach] = true;

	self.aivar[AIV_PARTYMEMBER] = false;
	B_LogEntry (Quest_BanditCampAccess, "Pomog�em Loganowi. Czas zobaczy�, co s�dzi o tym Franko.");

	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "START");
};

//******************************************************************************************
//	Info Hacker
//******************************************************************************************
INSTANCE DIA_Addon_Logan_Hacker (C_INFO)
{
	npc									=	BDT_1072_Addon_Logan;
	nr									=	1;
	condition							=	DIA_Addon_Logan_Hacker_Condition;
	information							=	DIA_Addon_Logan_Hacker_Info;
	description							=	"Co nowego?";
};

FUNC INT DIA_Addon_Logan_Hacker_Condition()
{
	if (Npc_GetDistToWP(self,"ADW_MINE_PICK_08") <= 500)
	{
		return true;
	};
};

FUNC VOID DIA_Addon_Logan_Hacker_Info()
{
	AI_Output	(other, self, "DIA_Addon_BDT_10004_Logan_Hacker_15_00"); //Co nowego?
	AI_Output	(self, other, "DIA_Addon_BDT_10004_Logan_Hacker_10_01"); //Hej, uda�o mi si� dzi�ki twojej pomocy! Dosta�em pozwolenie na wej�cie do kopalni!
	AI_Output	(self, other, "DIA_Addon_BDT_10004_Logan_Hacker_10_02"); //Nie znam si� na wydobyciu z�ota, ale jako� sobie poradz�.
	AI_Output	(self, other, "DIA_Addon_BDT_10004_Logan_Hacker_10_03"); //Opanowa�em ju� podstawy. Dobrze si� ustaw i wal tak mocno, jak mo�esz!
};
