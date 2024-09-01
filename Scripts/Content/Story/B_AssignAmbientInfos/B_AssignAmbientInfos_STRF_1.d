///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_STRF_1_EXIT (C_Info)
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
instance DIA_STRF_1_STANDARD (C_Info)
{
	nr									=	2;
	condition							=	DIA_STRF_1_STANDARD_Condition;
	information							=	DIA_STRF_1_STANDARD_Info;
	permanent							=	true;
	important							=	true;
};
func int DIA_STRF_1_STANDARD_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	{
		return true;
	};
};
func void DIA_STRF_1_STANDARD_Info()
{
	var int randy; randy = Hlp_Random(3);
	
	if (randy == 0)
	{
		AI_Output (self,other,"DIA_STRF_1_STANDARD_01_00"); //Gdybym odszed�, kiedy mia�em na to szans�, dzi� nie musia�bym harowa� dla tych �wi�!
	};
	if (randy == 1)
	{
		AI_Output (self,other,"DIA_STRF_1_STANDARD_01_01"); //Wszystko przez rud�! Ci�gle to samo. Wszystkim zale�y tylko na tej cholernej rudzie.
	};
	if (randy == 2)
	{
		AI_Output (self,other,"DIA_STRF_1_STANDARD_01_02"); //Gdyby� cho� raz spr�bowa� �arcia, kt�re nam daj�, sam zacz��by� my�le� o buncie.
	};
	
	AI_StopProcessInfos(self);
};

///******************************************************************************************
func void B_AssignAmbientInfos_STRF_1 (var C_Npc slf)
{
	DIA_STRF_1_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_STRF_1_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
