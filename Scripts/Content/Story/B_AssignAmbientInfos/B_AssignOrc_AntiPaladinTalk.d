///******************************************************************************************

var int AntiPaladinTalkcount;

///******************************************************************************************
/// B_AssignORC_AntiPaladinTalk
///******************************************************************************************
func void B_AssignORC_AntiPaladinTalk()
{
	if (AntiPaladinTalkcount == 0)
	{
		AI_Output (self, other, "DIA_ORC_AntiPaladin_18_01"); //KHROKGNAR! Pan mówiæ, ¿e ty tera paladyn! Pan mieæ racjê. Pan mieæ zawsze racjê.
		AI_Output (self, other, "DIA_ORC_AntiPaladin_18_02"); //My orki dowódce teraz same zabiæ wielki paladyn.
		AI_Output (self, other, "DIA_ORC_AntiPaladin_18_03"); //My zgnieœæ Hagen i jego ludzie. Nawet ty nic nie pomóc.
		B_GivePlayerExp(250);
	}
	else if (AntiPaladinTalkcount == 1)
	{
		AI_Output (self, other, "DIA_ORC_AntiPaladin_18_04"); //Pan powiedzieæ orki dowódce, ¿eby przynieœæ wielka g³owa paladyna. Ty po¿egnaæ siê z ¿yciem. KHROKGNAR!
	}
	else if (AntiPaladinTalkcount == 2)
	{
		AI_Output (self, other, "DIA_ORC_AntiPaladin_18_05"); //My, orki dowódce przyjœæ ciê zabiæ, paladyn.
	}
	else 
	{
		AI_Output (self, other, "DIA_ORC_AntiPaladin_18_06"); //KHROKGNAR! My ciê zabiæ, paladynie.
	};
	
	AntiPaladinTalkcount += 1;
	TalkedTo_AntiPaladin = true;
	
	AI_StopProcessInfos	(self);
	Npc_SetRefuseTalk	(self, 30);
	
	self.aivar[AIV_EnemyOverride] = false;
};

///******************************************************************************************
instance DIA_ORC_AntiPaladin1 (C_Info)
{
	npc									=	OrcElite_AntiPaladin1;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignORC_AntiPaladinTalk;
	important							=	true;
	permanent							=	true;
};

///******************************************************************************************
instance DIA_ORC_AntiPaladin2 (C_Info)
{
	npc									= 	OrcElite_AntiPaladin2;
	nr									= 	1;
	condition							= 	aTrueIfNotRefuse;
	information							= 	B_AssignORC_AntiPaladinTalk;
	important							= 	true;
	permanent							= 	true;
};

///******************************************************************************************
instance DIA_ORC_AntiPaladin3 (C_Info)
{
	npc									=	OrcElite_AntiPaladin3;
	nr									=	1;
	condition							=	aTrueIfNotRefuse;
	information							=	B_AssignORC_AntiPaladinTalk;
	important							=	true;
	permanent							=	true;
};
