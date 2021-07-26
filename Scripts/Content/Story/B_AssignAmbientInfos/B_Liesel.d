///******************************************************************************************
///	EXIT
///******************************************************************************************
instance DIA_Liesel_EXIT (C_Info)
{
	npc									=	Follow_Sheep;
	nr									=	999;
	condition							=	aTrue;
	information							=	DIA_Liesel_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_END;
};
func void DIA_Liesel_EXIT_Info()
{
	AI_StopProcessInfos(self);
};
///******************************************************************************************
///	Hallo
///******************************************************************************************
instance DIA_Liesel_Hallo (C_Info)
{
	npc									=	Follow_Sheep;
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_Liesel_Hallo_Info;
	permanent							=	false;
	description							=	"Czeœæ...";
};
func void DIA_Liesel_Hallo_Info()
{
	AI_Output (other, self, "DIA_Liesel_Hallo_15_00"); //Czeœæ... khm... owco.
	AI_Output (self, other, "DIA_Liesel_15_00"); //Meeee!
};
///******************************************************************************************
///	KommMit
///******************************************************************************************
instance DIA_Liesel_KommMit (C_Info)
{
	npc									=	Follow_Sheep;
	nr									=	1;
	condition							=	DIA_Liesel_KommMit_Condition;
	information							=	DIA_Liesel_KommMit_Info;
	permanent							=	true;
	description							=	"ChodŸ ze mn¹.";
};
func int DIA_Liesel_KommMit_Condition()
{
	if (!self.aivar[AIV_PARTYMEMBER])
	&& (Npc_KnowsInfo(other, DIA_Liesel_Hallo))
	&& (!self.aivar[AIV_TAPOSITION])
	{
		return true;
	};
};
func void DIA_Liesel_KommMit_Info()
{
	B_Say (other, self, "$ComeWithMe");
	AI_Output (self, other, "DIA_Liesel_15_00"); //Meeee!
	
	self.aivar[AIV_PartyMember] = true;
	AI_StopProcessInfos(self);
};
///******************************************************************************************
///	KommMit
///******************************************************************************************
instance DIA_Liesel_WarteHier (C_Info)
{
	npc									=	Follow_Sheep;
	nr									=	1;
	condition							=	DIA_Liesel_WarteHier_Condition;
	information							=	DIA_Liesel_WarteHier_Info;
	permanent							=	true;
	description							=	"Zaczekaj tutaj!";
};
func int DIA_Liesel_WarteHier_Condition()
{
	if (self.aivar[AIV_PARTYMEMBER])
	&& (Npc_KnowsInfo(other, DIA_Liesel_Hallo))
	&& (!self.aivar[AIV_TAPOSITION])
	{
		return true;
	};
};
func void DIA_Liesel_WarteHier_Info()
{
	B_Say (other, self, "$WaitHere");
	AI_Output (self, other, "DIA_Liesel_15_00"); //Meeee!
	
	self.aivar[AIV_PartyMember] = false;
	AI_StopProcessInfos(self);
};
