///******************************************************************************************
///	KommMit
///******************************************************************************************
instance DIA_AkilsSchaf_KommMit (C_Info)
{
	npc									=	Follow_Sheep_AKIL;
	nr									=	1;
	condition							=	DIA_AkilsSchaf_KommMit_Condition;
	information							=	DIA_AkilsSchaf_KommMit_Info;
	description							=	"Chodü ze mnπ."; 
};
func int DIA_AkilsSchaf_KommMit_Condition()
{
	if (!self.aivar[AIV_PartyMember])
	{
		return true;
	};
};
func void DIA_AkilsSchaf_KommMit_Info()
{
	B_Say (other, self, "$ComeWithMe");
	AI_Output (self, other, "DIA_Liesel_15_00"); //Meeee!
	
	if (!Npc_IsDead(BDT_1025_Bandit_H))	{	BDT_1025_Bandit_H.aivar[AIV_EnemyOverride] = false;	};
	if (!Npc_IsDead(BDT_1026_Bandit_H))	{	BDT_1026_Bandit_H.aivar[AIV_EnemyOverride] = false;	};
	
	self.aivar[AIV_PartyMember] = true;
	AI_StopProcessInfos(self);
};
