//******************************************************************************************
//	Info EXIT
//******************************************************************************************
INSTANCE DIA_Addon_BanditGuard_EXIT (C_INFO)
{
	npc									=	BDT_1064_Bandit_L;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_BanditGuard_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_BanditGuard_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Guard_Passage - First Warn
//******************************************************************************************

//-----------------------------------------------------------
const string Bdt_1064_Checkpoint		=	"NW_CASTLEMINE_TOWER_05";
//-----------------------------------------------------------

instance DIA_Bdt_1064_BanditGuard_FirstWarn (C_INFO)
{
	npc									=	BDT_1064_Bandit_L;
	nr									=	1;
	condition							=	DIA_Bdt_1064_BanditGuard_FirstWarn_Condition;
	information							=	DIA_Bdt_1064_BanditGuard_FirstWarn_Info;
	permanent							=	true;
	important							=	true;
};

func int DIA_Bdt_1064_BanditGuard_FirstWarn_Condition()
{
	if (Npc_GetDistToWP(other,Bdt_1064_Checkpoint) <= 800)
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

func void DIA_Bdt_1064_BanditGuard_FirstWarn_Info()
{
	AI_Output	(self, other,"DIA_Addon_Dexwache_Add_04_00"); //Jest tylko JEDEN spos�b, �eby� dosta� si� do obozu �YWY - przez most.

	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other,Bdt_1064_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;

	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Guard_Passage - Second Warn
//******************************************************************************************
INSTANCE DIA_Bdt_1064_BanditGuard_SecondWarn (C_INFO)
{
	npc									=	BDT_1064_Bandit_L;
	nr									=	2;
	condition							=	DIA_Bdt_1064_BanditGuard_SecondWarn_Condition;
	information							=	DIA_Bdt_1064_BanditGuard_SecondWarn_Info;
	permanent							=	true;
	important							=	true;
};

FUNC INT DIA_Bdt_1064_BanditGuard_SecondWarn_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == true)
	&& (Npc_GetDistToWP(other,Bdt_1064_Checkpoint) < (other.aivar[AIV_LastDistToWP]-75)))
	{
		return true;
	};
};

func void DIA_Bdt_1064_BanditGuard_SecondWarn_Info()
{
	AI_Output	(self, other,"DIA_Addon_Dexwache_Add_04_01");  //Chcesz oberwa�, co? Zr�b jeszcze JEDEN krok, a zrzuc� ci� z urwiska.

	other.aivar[AIV_LastDistToWP] = Npc_GetDistToWP(other,Bdt_1064_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_SecondWarnGiven;

	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Guard_Passage - Attack
//******************************************************************************************
INSTANCE DIA_Bdt_1064_BanditGuard_Attack (C_INFO)
{
	npc									=	BDT_1064_Bandit_L;
	nr									=	3;
	condition							=	DIA_Bdt_1064_BanditGuard_Attack_Condition;
	information							=	DIA_Bdt_1064_BanditGuard_Attack_Info;
	permanent							=	true;
	important							=	true;
};                       

FUNC INT DIA_Bdt_1064_BanditGuard_Attack_Condition()
{
	if ((self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == true)
	&& (Npc_GetDistToWP(other,Bdt_1064_Checkpoint) < (other.aivar[AIV_LastDistToWP]-75)))
	{
		return true;
	};
};

func void DIA_Bdt_1064_BanditGuard_Attack_Info()
{
	other.aivar[AIV_LastDistToWP] = 0;
	self.aivar[AIV_Guardpassage_Status]	= GP_NONE;	//wird auch in ZS_Attack resettet

	AI_Output	(self, other, "DIA_Addon_Dexwache_Add_04_02"); //Dobra, sam si� o to prosi�e�...

	AI_StopProcessInfos(self);
	B_Attack (self, other, AR_GuardStopsIntruder, 1);
};

//******************************************************************************************
//	PERM
//******************************************************************************************
INSTANCE DIA_Addon_BanditGuard_PERM (C_INFO)
{
	npc									=	BDT_1064_Bandit_L;
	nr									=	99;
	condition							=	DIA_BanditGuard_PERM_Condition;
	information							=	DIA_BanditGuard_PERM_Info;
	permanent							=	true;
	important							=	true;
};

FUNC INT DIA_BanditGuard_PERM_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (self.aivar[AIV_TalkedToPlayer] == true)
	{
		return true;
	};
};

FUNC VOID DIA_BanditGuard_PERM_Info()
{
	AI_Output	(self, other, "DIA_Addon_Dexwache_Add_04_03"); //Nie dra�nij mnie!
	AI_StopProcessInfos(self);
};
