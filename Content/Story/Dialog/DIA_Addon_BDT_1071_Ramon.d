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
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_00"); //Hej, co tu siê sta³o?
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_01"); //Pobi³em Franka.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_02"); //No i co? To teraz TY musisz zadbaæ, by te lenie odwala³y swoj¹ robotê.
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_03"); //Hej, nie zamierzam marnowaæ tu czasu. Chcê wejœæ do obozu.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_04"); //Nie teraz. Pokona³eœ Franka. Czyli jesteœ nowym przywódc¹. No to rób swoje.
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_05"); //Skoro jestem przywódc¹, to mogê wybraæ nastêpn¹ osobê, która wejdzie do obozu.
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_06"); //No to mówiê, ¿e nastêpny mam byæ JA.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_07"); //To nie takie proste. Nie potrzebujemy nikogo nowego, wiêc nikt nie wejdzie do œrodka.
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_08"); //Thorus mo¿e wys³aæ nowego przywódcê myœliwych, zwalniaj¹c tym samym w obozie miejsce dla mnie.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_09"); //Nie poddajesz siê, co? Dobra, pakuj do obozu swoje cztery litery.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_10"); //Thorus siê tym zajmie i przyœle nowego przywódcê.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_11"); //No to na co czekasz? Nie zapomnij zabraæ kilofa.

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
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_12"); //Hej, kim jesteœ? Nie mogê sobie wyobraziæ, ¿eby ktoœ taki jak ty mia³ pozwolenie na wejœcie.
		if (Npc_KnowsInfo(other,DIA_Addon_Franco_HI))
		{
			AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_13"); //Franko mnie przysy³a³. Chce wiedzieæ, czy nie potrzeba nowych robotników.
		};
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_14"); //Tak, w zasadzie potrzeba. Wczoraj jeden goœæ strzeli³ w kalendarz.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_15"); //Ten idiota zdenerwowa³ Estebana.
		AI_Output	(other, self, "DIA_Addon_Ramon_FirstWarn_15_16"); //Kto to jest Esteban?
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_17"); //To szef obozowiska. On decyduje, komu pozwoliæ na wejœcie do kopalni.
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_18"); //Powiedz Frankowi, ¿e Thorus prosi o nowego robotnika. Jasne?

		QuestStep_BanditCampAccess = SetQuestStatus (Quest_BanditCampAccess, LOG_RUNNING, QuestStep_BanditCampAccess);
		SetNoteEntry (Quest_BanditCampAccess, LOG_MISSION, "Thorus potrzebuje nowego cz³owieka do obozu. To zainteresuje Franka.");

		Info_ClearChoices(DIA_Addon_Ramon_FirstWarn);
		Ramon_News = true;
	}
	else
	{
		AI_Output	(self, other, "DIA_Addon_Ramon_FirstWarn_07_19"); //Hej, stój! Nie wejdziesz tam, wiêc zje¿d¿aj.
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
	AI_Output	(self, other,"DIA_Addon_Ramon_SecondWarn_07_00"); //Zrób jeszcze jeden krok bli¿ej, a bêdzie to twój ostatni!

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

	AI_Output	(self, other,"DIA_Addon_Ramon_Attack_07_00"); //Niektórzy nigdy siê nie naucz¹...

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
	AI_Output	(self, other, "DIA_Addon_Ramon_News_07_01"); //Nie próbuj sobie ze mnie ¿artowaæ. Decyzja o tym, kto mo¿e wejœæ do obozu, wci¹¿ nale¿y do Franko.
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
	description							=	"To w³aœnie Franko mnie przys³a³...";
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
	AI_Output	(other, self, "DIA_Addon_Ramon_Lie_15_00"); //To w³aœnie Franko mnie przys³a³...
	AI_Output	(self, other, "DIA_Addon_Ramon_Lie_07_01"); //Nie zrobi³ tego. A teraz zje¿d¿aj, bo porachujê ci gnaty.

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
	description							=	"I jak? Wszystko w porz¹dku?";
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
	AI_Output	(other, self, "DIA_Addon_Ramon_Perm_15_00"); //I jak? Wszystko w porz¹dku?
	AI_Output	(self, other, "DIA_Addon_Ramon_Perm_07_01"); //Wszystko dobrze - przynajmniej dopóki ktoœ niepowo³any nie próbuje siê dostaæ do œrodka.

	AI_StopProcessInfos(self);
};
