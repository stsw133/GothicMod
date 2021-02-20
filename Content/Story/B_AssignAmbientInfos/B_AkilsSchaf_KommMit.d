//******************************************************************************************
//	Komm mit
//******************************************************************************************
INSTANCE DIA_AkilsSchaf_KommMit (C_INFO)
{
	npc			= Follow_Sheep_AKIL;
	nr			= 1;
	condition	= DIA_AkilsSchaf_KommMit_Condition;
	information	= DIA_AkilsSchaf_KommMit_Info;
	description = "Chodü ze mnπ";
};
FUNC INT DIA_AkilsSchaf_KommMit_Condition()
{
	if (self.aivar[AIV_PARTYMEMBER] == false)
	{	return true;	};
};
FUNC VOID DIA_AkilsSchaf_KommMit_Info()
{
	B_KommMit();
	AI_Output (self, other, "DIA_Liesel_15_00");	//Meeee!

	self.aivar[AIV_PARTYMEMBER] = true;

	if (Npc_IsDead(BDT_1025_Bandit_H) == false)
	{	BDT_1025_Bandit_H.aivar[AIV_EnemyOverride] = false;	};
	if (Npc_IsDead(BDT_1026_Bandit_H) == false)
	{	BDT_1026_Bandit_H.aivar[AIV_EnemyOverride] = false;	};

	AI_StopProcessInfos(self);
};
