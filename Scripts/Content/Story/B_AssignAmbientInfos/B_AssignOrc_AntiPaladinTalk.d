///******************************************************************************************
///	B_AssignORC_AntiPaladinTalk
///******************************************************************************************

var int AntiPaladinTalkcount;

///******************************************************************************************
func void B_AssignORC_AntiPaladinTalk (var C_Npc Antipaladin)
{
	if (AntiPaladinTalkcount == 0)
	{
		AI_Output (self ,other, "DIA_ORC_AntiPaladin_18_01"); //KHROKGNAR! Pan m�wi�, �e ty tera paladyn! Pan mie� racj�. Pan mie� zawsze racj�.
		AI_Output (self ,other, "DIA_ORC_AntiPaladin_18_02"); //My orki dow�dce teraz same zabi� wielki paladyn.
		AI_Output (self ,other, "DIA_ORC_AntiPaladin_18_03"); //My zgnie�� Hagen i jego ludzie. Nawet ty nic nie pom�c.
		B_GivePlayerXP(250);
	}
	else if (AntiPaladinTalkcount == 1)
	{
		AI_Output (self ,other, "DIA_ORC_AntiPaladin_18_04"); //Pan powiedzie� orki dow�dce, �eby przynie�� wielka g�owa paladyna. Ty po�egna� si� z �yciem. KHROKGNAR!
	}
	else if (AntiPaladinTalkcount == 2)
	{
		AI_Output (self ,other, "DIA_ORC_AntiPaladin_18_05"); //My, orki dow�dce przyj�� ci� zabi�, paladyn.
	}
	else 
	{
		AI_Output (self ,other, "DIA_ORC_AntiPaladin_18_06"); //KHROKGNAR! My ci� zabi�, paladynie.
	};
	
	AntiPaladinTalkcount += 1;
	TalkedTo_AntiPaladin = true;
	
	AI_StopProcessInfos(Antipaladin);
	Antipaladin.aivar[AIV_EnemyOverride] = false;
	Npc_SetRefuseTalk (Antipaladin, 20);
};

///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_ORC_AntiPaladin1_EXIT (C_Info)
{
	npc									=	OrcElite_AntiPaladin1;
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_ORC_AntiPaladin1_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_ORC_AntiPaladin1_EXIT_Info()
{
	 AI_StopProcessInfos(self);
};
///******************************************************************************************
///	AntiPaladin1
///******************************************************************************************
instance DIA_ORC_AntiPaladin1 (C_Info)
{
	npc									=	OrcElite_AntiPaladin1;
	nr									=	1;
	condition							=	DIA_ORC_AntiPaladin1_Condition;
	information							=	DIA_ORC_AntiPaladin1_Info;
	important							=	true;
	permanent							=	true;
};
func int DIA_ORC_AntiPaladin1_Condition()
{
	if (!Npc_RefuseTalk(self))
	{
		return true;
	};
};
func void DIA_ORC_AntiPaladin1_Info()
{
	B_AssignORC_AntiPaladinTalk(self);
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_ORC_AntiPaladin2_EXIT (C_Info)
{
	npc									=	OrcElite_AntiPaladin2;
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_ORC_AntiPaladin2_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_ORC_AntiPaladin2_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
///******************************************************************************************
///	AntiPaladin2
///******************************************************************************************
instance DIA_ORC_AntiPaladin2 (C_Info)
{
	npc									= 	OrcElite_AntiPaladin2;
	nr									= 	1;
	condition							= 	DIA_ORC_AntiPaladin2_Condition;
	information							= 	DIA_ORC_AntiPaladin2_Info;
	important							= 	true;
	permanent							= 	true;
};
func int DIA_ORC_AntiPaladin2_Condition()
{
	if (!Npc_RefuseTalk(self))
	{
		return true;
	};
};
func void DIA_ORC_AntiPaladin2_Info()
{
	B_AssignORC_AntiPaladinTalk(self);
};
///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_ORC_AntiPaladin3_EXIT (C_Info)
{
	npc									=	OrcElite_AntiPaladin3;
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_ORC_AntiPaladin3_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_ORC_AntiPaladin3_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
///******************************************************************************************
///	AntiPaladin3
///******************************************************************************************
instance DIA_ORC_AntiPaladin3 (C_Info)
{
	npc									=	OrcElite_AntiPaladin3;
	nr									=	1;
	condition							=	DIA_ORC_AntiPaladin3_Condition;
	information							=	DIA_ORC_AntiPaladin3_Info;
	important							=	true;
	permanent							=	true;
};
func int DIA_ORC_AntiPaladin3_Condition()
{
	if (!Npc_RefuseTalk(self))
	{
		return true;
	};
};
func void DIA_ORC_AntiPaladin3_Info()
{
	B_AssignORC_AntiPaladinTalk(self);
};
