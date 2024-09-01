///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_Skalven_3_EXIT (C_Info)
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
instance DIA_Skalven_3_STANDARD (C_Info)
{
	nr									=	2;
	condition							=	DIA_Skalven_3_STANDARD_Condition;
	information							=	DIA_Skalven_3_STANDARD_Info;
	permanent							=	true;
	important							=	true;
};
func int DIA_Skalven_3_STANDARD_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return true;
	};
};
func void DIA_Skalven_3_STANDARD_Info()
{
	var int randy; randy = Hlp_Random(3);
	
	if (randy == 0)
	{
		AI_Output (self, other, "DIA_Addon_Sklaven_3_STANDARD_03_00"); //Czego ode mnie chcesz? Odejd�!
	};
	if (randy == 1)
	{
		AI_Output (self, other, "DIA_Addon_Sklaven_3_STANDARD_03_01"); //Nic nie zrobi�em! Zostaw mnie w spokoju.
	};
	if (randy == 2)
	{
		AI_Output (self, other, "DIA_Addon_Sklaven_3_STANDARD_03_02"); //Prosz�, nie bij mnie!
	};
	
	AI_StopProcessInfos(self);
};

///******************************************************************************************
func void B_AssignAmbientInfos_Addon_Sklaven_3 (var C_Npc slf)
{
	DIA_Skalven_3_EXIT.npc				=	Hlp_GetinstanceID(slf);
	DIA_Skalven_3_STANDARD.npc			=	Hlp_GetinstanceID(slf);
};
