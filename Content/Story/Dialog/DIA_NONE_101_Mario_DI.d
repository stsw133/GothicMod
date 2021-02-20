//******************************************************************************************
//	Info EXIT
//******************************************************************************************
INSTANCE DIA_NONE_101_MARIO_DI_EXIT (C_INFO)
{
	npc									=	NONE_101_MARIO_DI;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_NONE_101_MARIO_DI_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_NONE_101_MARIO_DI_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	perm
//******************************************************************************************
INSTANCE DIA_NONE_101_MARIO_DI_Job (C_INFO)
{
	npc									=	NONE_101_MARIO_DI;
	nr									=	4;
	condition							=	DIA_NONE_101_MARIO_DI_Job_Condition;
	information							=	DIA_NONE_101_MARIO_DI_Job_Info;
	permanent							=	true;
	description							=	"Dam ci szansê wykazania siê w walce, no, dalej!";
};

FUNC INT DIA_NONE_101_MARIO_DI_Job_Condition()
{
	if (Npc_IsDead(UndeadDragon) == false)
	&& (ORkSturmDI == false)
	{
		return true;
	};
};

FUNC VOID DIA_NONE_101_MARIO_DI_Job_Info()
{
	AI_Output (other, self, "DIA_NONE_101_MARIO_DI_Job_15_00"); //Dam ci szansê wykazania siê w walce, no, dalej!
	AI_Output (self, other, "DIA_NONE_101_MARIO_DI_Job_07_01"); //Powoli, wszystko w swoim czasie.
	AI_Output (other, self, "DIA_NONE_101_MARIO_DI_Job_15_02"); //Mmm. Tego siê w³aœnie spodziewa³em.
	AI_Output (self, other, "DIA_NONE_101_MARIO_DI_Job_07_03"); //Zaczekaj.
};

//******************************************************************************************
//	ambush
//******************************************************************************************
INSTANCE DIA_NONE_101_MARIO_DI_ambush (C_INFO)
{
	npc									=	NONE_101_MARIO_DI;
	nr									=	4;
	condition							=	DIA_NONE_101_MARIO_DI_ambush_Condition;
	information							=	DIA_NONE_101_MARIO_DI_ambush_Info;
	important							=	true;
};

FUNC INT DIA_NONE_101_MARIO_DI_ambush_Condition()
{
	if (ORkSturmDI == true)
	{
		return true;
	};
};

FUNC VOID DIA_NONE_101_MARIO_DI_ambush_Info()
{
	AI_Output (self, other, "DIA_NONE_101_MARIO_DI_ambush_07_00"); //PodejdŸ bli¿ej przyjacielu, poka¿ na co ciê staæ.
	AI_Output (other, self, "DIA_NONE_101_MARIO_DI_ambush_15_01"); //O co ci chodzi?
	AI_Output (self, other, "DIA_NONE_101_MARIO_DI_ambush_07_02"); //To proste. Mistrz ju¿ dawno chcia³ siê ciebie pozbyæ.
	AI_Output (self, other, "DIA_NONE_101_MARIO_DI_ambush_07_03"); //Powinienem by³ ciê zabiæ wczeœniej. Teraz jednak moi przyjaciele naprawi¹ ten b³¹d.
	
	Info_ClearChoices(DIA_NONE_101_MARIO_DI_ambush);
	Info_AddChoice (DIA_NONE_101_MARIO_DI_ambush, DIALOG_ENDE, DIA_NONE_101_MARIO_DI_ambush_ambush);
	B_GivePlayerXP(XP_BONUS(5000));
};

func void DIA_NONE_101_MARIO_DI_ambush_ambush()
{
	AI_StopProcessInfos(self);
	B_Attack (self, other, AR_SuddenEnemyInferno, 1);
	Skeleton_Mario1.aivar[AIV_EnemyOverride] = false;
	Skeleton_Mario2.aivar[AIV_EnemyOverride] = false;
	Skeleton_Mario3.aivar[AIV_EnemyOverride] = false;
	Skeleton_Mario4.aivar[AIV_EnemyOverride] = false;
};
