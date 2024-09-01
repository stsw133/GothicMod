///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_STRF_13_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// STANDARD
///******************************************************************************************
instance DIA_STRF_13_STANDARD (C_Info)
{
	nr									=	2;
	condition							=	DIA_STRF_13_STANDARD_Condition;
	information							=	DIA_STRF_13_STANDARD_Info;
	permanent							=	true;
	important							=	true;
};
func int DIA_STRF_13_STANDARD_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return true;
	};
};
func void DIA_STRF_13_STANDARD_Info()
{
	var int randy; randy = Hlp_Random(3);
	
	if (randy == 0)
	{
		AI_Output (self, other, "DIA_STRF_13_STANDARD_13_00"); //Zostaw mnie w spokoju, cz³owieku!
	};
	if (randy == 1)
	{
		AI_Output (self, other, "DIA_STRF_13_STANDARD_13_01"); //Czego chcesz? Nie czepiaj siê mnie!
	};
	if (randy == 2)
	{
		AI_Output (self, other, "DIA_STRF_13_STANDARD_13_02"); //Wszyscy tutaj umrzemy!
	};
	
	AI_StopProcessInfos(self);
};

///******************************************************************************************
func void B_AssignAmbientInfos_STRF_13 (var C_Npc slf)
{
	DIA_STRF_13_EXIT.npc				=	Hlp_GetinstanceID(slf);
	DIA_STRF_13_STANDARD.npc			=	Hlp_GetinstanceID(slf);
};
