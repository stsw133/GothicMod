///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Wirt_EXIT   (C_INFO)
{
	npc         = VLK_4201_Wirt;
	nr          = 999;
	condition   = DIA_Wirt_EXIT_Condition;
	information = DIA_Wirt_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Wirt_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Wirt_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Wirt_Hallo   (C_INFO)
{
	npc         = VLK_4201_Wirt;
	nr          = 2;
	condition   = DIA_Wirt_Hallo_Condition;
	information = DIA_Wirt_Hallo_Info;
	permanent   = true;
	important 	= true;
};
FUNC INT DIA_Wirt_Hallo_Condition()
{	
	if Npc_IsInState (self, ZS_Talk)
	{
		return true;
	};
};
FUNC VOID DIA_Wirt_Hallo_Info()
{
	var int randy;
	randy = Hlp_Random(3);
	
	AI_Output (self, other,"DIA_Wirt_Hallo_14_00");//Hej, podejd� bli�ej. Zr�b sobie przerw� i napij si� ch�odnego piwka.
	
	if (self.aivar [AIV_TalkedToPlayer] == false) 
	{
		AI_Output (self, other,"DIA_Wirt_Hallo_14_01");//Lord Andre stawia kilka bary�ek przedniego piwa.
		AI_StopProcessInfos (self);
	}
	else if (randy == 0)
	{
		AI_Output (self, other,"DIA_Wirt_Hallo_14_02");//Nic tak nie orze�wia po pracy jak kufelek zimnego, z�ocistego piwa.
		AI_StopProcessInfos (self);
	}
	else if (randy == 1)
	{
		AI_Output (self, other,"DIA_Wirt_Hallo_14_03");//Paladyni wszystkim si� zajm�. Nalej sobie jeszcze jednego i baw si� dobrze.
		
		B_GiveInvItems (self, other, ItFo_Beer,1);
		AI_StopProcessInfos (self);
	}
	else if (randy == 2)
	{
		AI_Output (self, other,"DIA_Wirt_Hallo_14_04");//Gadaj, co chcesz, o Khorinis, ale lepszego 'Mrocznego Paladyna' pr�no by szuka� w ca�ej Myrtanie.
		AI_StopProcessInfos (self);
	};
};
