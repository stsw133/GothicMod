///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_OWPAL_4_EXIT (C_Info)
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
instance DIA_OWPAL_4_STANDARD (C_Info)
{
	nr									=	2;
	condition							=	DIA_OWPAL_4_STANDARD_Condition;
	information							=	DIA_OWPAL_4_STANDARD_Info;
	permanent							=	true;
	important							=	true;
};
func int DIA_OWPAL_4_STANDARD_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return true;
	};
};
func void DIA_OWPAL_4_STANDARD_Info()
{
	var int randy; randy = Hlp_Random(3);
	
	if (randy == 0)
	{
		AI_Output (self,other,"DIA_OWPAL_4_STANDARD_04_00"); //Innos to honor, a honor jest mym �yciem!
	};
	if (randy == 1)
	{
		AI_Output (self,other,"DIA_OWPAL_4_STANDARD_04_01"); //B�dziemy si� broni�, p�ki chroni nas ja�niej�ca �aska Innosa!
	};
	if (randy == 2)
	{
		AI_Output (self,other,"DIA_OWPAL_4_STANDARD_04_02"); //Z pomoc� Innosa uda si� nam odp�dzi� pomiot z�a!
	};
	
	AI_StopProcessInfos(self);
};

///******************************************************************************************
func void B_AssignAmbientInfos_OWPAL_4 (var C_Npc slf)
{
	DIA_OWPAL_4_EXIT.npc				=	Hlp_GetinstanceID(slf);
	DIA_OWPAL_4_STANDARD.npc			=	Hlp_GetinstanceID(slf);
};
