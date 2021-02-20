//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Addon_Ramon_EXIT (C_INFO)
{
	npc									=	BDT_1071_Addon_Ramon;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Addon_Ramon_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Addon_Ramon_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Guard_Passage - First Warn
//******************************************************************************************

// -----------------------------------------------------------
const string BDT_1071_Checkpoint	= "BL_UP_CHECK";	
// -----------------------------------------------------------

instance DIA_Addon_Ramon_FirstWarn (C_INFO)
{
	npc									=	BDT_1071_Addon_Ramon;
	nr									=	1;
	condition							=	DIA_Addon_Ramon_FirstWarn_Condition;
	information							=	DIA_Addon_Ramon_FirstWarn_Info;
	permanent							=	true;
	important							=	true;
};

func int DIA_Addon_Ramon_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(other,BDT_1071_Checkpoint) <= 700)
	{
		Npc_SetRefuseTalk (self, 5);
		return false;
	};

	if ((self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == true)
	&& (Npc_RefuseTalk(self) == false))
	{
		return true;
	};
};

func void DIA_Addon_Ramon_FirstWarn_Info()
{
	if (Npc_IsDead(Franco))
	{
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_00"); //Hej, co tu si� sta�o?
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_01"); //Pobi�em Franka.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_02"); //No i co? To teraz TY musisz zadba�, by te lenie odwala�y swoj� robot�.
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_03"); //Hej, nie zamierzam marnowa� tu czasu. Chc� wej�� do obozu.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_04"); //Nie teraz. Pokona�e� Franka. Czyli jeste� nowym przyw�dc�. No to r�b swoje.
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_05"); //Skoro jestem przyw�dc�, to mog� wybra� nast�pn� osob�, kt�ra wejdzie do obozu.
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_06"); //No to m�wi�, �e nast�pny mam by� JA.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_07"); //To nie takie proste. Nie potrzebujemy nikogo nowego, wi�c nikt nie wejdzie do �rodka.
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_08"); //Thorus mo�e wys�a� nowego przyw�dc� my�liwych, zwalniaj�c tym samym w obozie miejsce dla mnie.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_09"); //Nie poddajesz si�, co? Dobra, pakuj do obozu swoje cztery litery.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_10"); //Thorus si� tym zajmie i przy�le nowego przyw�dc�.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_11"); //No to na co czekasz? Nie zapomnij zabra� kilofa.

		self.aivar[AIV_Guardpassage_Status] = GP_PassGate;
		Player_HasTalkedToBanditCamp = true;
		B_GivePlayerXP(XP_BONUS_5);
		AI_StopProcessInfos(self);

		AI_Teleport (Carlos, "BL_WAIT_FINN");

		B_StartOtherRoutine (Carlos, "START");
		B_StartOtherRoutine (Finn, "START");
	}
	else if (Ramon_News == false)
	{
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_12"); //Hej, kim jeste�? Nie mog� sobie wyobrazi�, �eby kto� taki jak ty mia� pozwolenie na wej�cie.
		if (Npc_KnowsInfo(other,DIA_Addon_Franco_HI))
		{
			AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_13"); //Franko mnie przysy�a�. Chce wiedzie�, czy nie potrzeba nowych robotnik�w.
		};
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_14"); //Tak, w zasadzie potrzeba. Wczoraj jeden go�� strzeli� w kalendarz.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_15"); //Ten idiota zdenerwowa� Estebana.
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_16"); //Kto to jest Esteban?
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_17"); //To szef obozowiska. On decyduje, komu pozwoli� na wej�cie do kopalni.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_18"); //Powiedz Frankowi, �e Thorus prosi o nowego robotnika. Jasne?

		QuestStep_BanditCampAccess = SetQuestStatus (Quest_BanditCampAccess, LOG_RUNNING, QuestStep_BanditCampAccess);
		SetNoteEntry (Quest_BanditCampAccess, LOG_MISSION, "Thorus potrzebuje nowego cz�owieka do obozu. To zainteresuje Franka.");

		Info_ClearChoices(DIA_Addon_Ramon_FirstWarn);
		Ramon_News = true;
	}
	else
	{
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_19"); //Hej, st�j! Nie wejdziesz tam, wi�c zje�d�aj.
		AI_StopProcessInfos(self);
	};

	other.aivar[AIV_LastDistToWP] 		=	Npc_GetDistToWP (other, BDT_1071_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	=	GP_FirstWarnGiven;
};

//******************************************************************************************
//	Guard_Passage - Second Warn
//******************************************************************************************
INSTANCE DIA_Addon_Ramon_SecondWarn (C_INFO)
{
	npc									=	BDT_1071_Addon_Ramon;
	nr									=	2;
	condition							=	DIA_Addon_Ramon_SecondWarn_Condition;
	information							=	DIA_Addon_Ramon_SecondWarn_Info;
	permanent							=	true;
	important							=	true;
};

FUNC INT DIA_Addon_Ramon_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == true)
	&& (Npc_GetDistToWP(other,BDT_1071_Checkpoint) < (other.aivar[AIV_LastDistToWP]-50)))
	{
		return true;
	};
};

func void DIA_Addon_Ramon_SecondWarn_Info()
{
	AI_Output	(self, other,"DIA_Addon_Ramon_SecondWarn_07_00"); //Zr�b jeszcze jeden krok bli�ej, a b�dzie to tw�j ostatni!

	other.aivar[AIV_LastDistToWP] 		=	Npc_GetDistToWP (other,BDT_1071_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	=	GP_SecondWarnGiven;	

	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Guard_Passage - Attack
//******************************************************************************************
INSTANCE DIA_Addon_Ramon_Attack (C_INFO)
{
	npc									=	BDT_1071_Addon_Ramon;
	nr									=	3;
	condition							=	DIA_Addon_Ramon_Attack_Condition;
	information							=	DIA_Addon_Ramon_Attack_Info;
	permanent							=	true;
	important							=	true;
};

FUNC INT DIA_Addon_Ramon_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == true)
	&& (Npc_GetDistToWP(other,BDT_1071_Checkpoint) < (other.aivar[AIV_LastDistToWP]-50)))
	{
		return true;
	};
};

func void DIA_Addon_Ramon_Attack_Info()
{
	other.aivar[AIV_LastDistToWP] 			=	0;
	self.aivar[AIV_Guardpassage_Status]		=	GP_NONE;

	AI_Output	(self, other,"DIA_Addon_Ramon_Attack_07_00"); //Niekt�rzy nigdy si� nie naucz�...

	QuestStep_BanditCampAccess = SetQuestStatus (Quest_BanditCampAccess, LOG_FAILED, QuestStep_BanditCampAccess);

	AI_StopProcessInfos(self);
	B_Attack (self, other, AR_GuardStopsIntruder, 0);
};

//******************************************************************************************
//	News
//******************************************************************************************
INSTANCE DIA_Addon_Ramon_News (C_INFO)
{
	npc									=	BDT_1071_Addon_Ramon;
	nr									=	10;
	condition							=	DIA_Addon_Ramon_News_Condition;
	information							=	DIA_Addon_Ramon_News_Info;
	description							=	"Jestem tym nowym.";
};

FUNC INT DIA_Addon_Ramon_News_Condition()
{
	if (!Npc_IsDead(Franco))
	{
		return true;
	};
};

func void DIA_Addon_Ramon_News_Info()
{
	AI_Output	(other, self, "DIA_Addon_Ramon_News_15_00"); //Jestem tym nowym.
	AI_Output	(self, other, "DIA_Addon_Ramon_News_07_01"); //Nie pr�buj sobie ze mnie �artowa�. Decyzja o tym, kto mo�e wej�� do obozu, wci�� nale�y do Franko.
};

//******************************************************************************************
//	Lie
//******************************************************************************************
INSTANCE DIA_Addon_Ramon_Lie (C_INFO)
{
	npc									=	BDT_1071_Addon_Ramon;
	nr									=	10;
	condition							=	DIA_Addon_Ramon_Lie_Condition;
	information							=	DIA_Addon_Ramon_Lie_Info;
	description							=	"To w�a�nie Franko mnie przys�a�...";
};

FUNC INT DIA_Addon_Ramon_Lie_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Ramon_News))
	&& (!Npc_IsDead(Franco))
	{
		return true;
	};
};

func void DIA_Addon_Ramon_Lie_Info()
{
	AI_Output	(other, self, "DIA_Addon_Ramon_Lie_15_00"); //To w�a�nie Franko mnie przys�a�...
	AI_Output	(self, other, "DIA_Addon_Ramon_Lie_07_01"); //Nie zrobi� tego. A teraz zje�d�aj, bo porachuj� ci gnaty.

	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Perm
//******************************************************************************************
INSTANCE DIA_Addon_Ramon_Perm (C_INFO)
{
	npc									=	BDT_1071_Addon_Ramon;
	nr									=	99;
	condition							=	DIA_Addon_Ramon_Perm_Condition;
	information							=	DIA_Addon_Ramon_Perm_Info;
	permanent							=	true;
	description							=	"I jak? Wszystko w porz�dku?";
};                       

FUNC INT DIA_Addon_Ramon_Perm_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Ramon_News))
	&& (!Npc_IsDead(Franco))
	{
		return true;
	};
};

func void DIA_Addon_Ramon_Perm_Info()
{
	AI_Output	(other, self, "DIA_Addon_Ramon_Perm_15_00"); //I jak? Wszystko w porz�dku?
	AI_Output	(self, other, "DIA_Addon_Ramon_Perm_07_01"); //Wszystko dobrze - przynajmniej dop�ki kto� niepowo�any nie pr�buje si� dosta� do �rodka.

	AI_StopProcessInfos(self);
};
