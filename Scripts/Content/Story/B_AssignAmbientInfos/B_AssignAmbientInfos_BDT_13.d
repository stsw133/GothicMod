///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_BDT_13_EXIT (C_Info)
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
instance DIA_BDT_13_STANDARD (C_Info)
{
	nr									=	2;
	condition							=	DIA_BDT_13_STANDARD_Condition;
	information							=	DIA_BDT_13_STANDARD_Info;
	permanent							=	true;
	important							=	true;
};
func int DIA_BDT_13_STANDARD_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return true;
	};
};
func void DIA_BDT_13_STANDARD_Info()
{
	var int randy; randy = Hlp_Random(3);
	
	if (randy == 0)
	{
		AI_Output (self, other, "DIA_BDT_13_STANDARD_13_00"); //Na co siê gapisz, kretynie!
	};
	if (randy == 1)
	{
		AI_Output (self, other, "DIA_BDT_13_STANDARD_13_01"); //Wynocha!
	};
	if (randy == 2)
	{
		AI_Output (self, other, "DIA_BDT_13_STANDARD_13_02"); //Zostaw mnie w spokoju, przyb³êdo.
	};
	
	AI_StopProcessInfos(self);
};

///******************************************************************************************
func void B_AssignAmbientInfos_BDT_13 (var C_Npc slf)
{
	DIA_BDT_13_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_BDT_13_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
