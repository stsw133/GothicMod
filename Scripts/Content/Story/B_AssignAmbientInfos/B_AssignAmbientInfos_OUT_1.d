///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_OUT_1_EXIT (C_Info)
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
instance DIA_OUT_1_STANDARD (C_Info)
{
	nr									=	2;
	condition							=	DIA_OUT_1_STANDARD_Condition;
	information							=	DIA_OUT_1_STANDARD_Info;
	permanent							=	true;
	important							=	true;
};
func int DIA_OUT_1_STANDARD_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return true;
	};	
};
func void DIA_OUT_1_STANDARD_Info()
{
	var int randy; randy = Hlp_Random(3);
	
	if (randy == 0)
	{
		AI_Output (self,other,"DIA_OUT_1_STANDARD_01_00"); //Od kiedy pad�a Bariera otaczaj�ca koloni� karn�, mamy wielki problem z bandytami.
	};
	if (randy == 1)
	{
		AI_Output (self,other,"DIA_OUT_1_STANDARD_01_01"); //Na stra�y nie mo�na polega�. Sami musimy si� broni�.
	};
	if (randy == 2)
	{
		AI_Output (self,other,"DIA_OUT_1_STANDARD_01_02"); //Nie pozwol� si� nikomu wykorzystywa� - ani Kr�lowi, ani temu t�ustemu Onarowi. Sam potrafi� o siebie zadba�.
	};
	
	AI_StopProcessInfos(self);
};

///******************************************************************************************
func void B_AssignAmbientInfos_OUT_1 (var C_Npc slf)
{
	DIA_OUT_1_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_OUT_1_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
