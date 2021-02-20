//----------------------------------------------------------------------
//	Info EXIT 
//----------------------------------------------------------------------
INSTANCE DIA_Addon_PIR_1389_Tom_EXIT   (C_INFO)
{
	npc         = PIR_1389_Addon_Tom;
	nr          = 999;
	condition   = DIA_Addon_PIR_Tom_EXIT_Condition;
	information = DIA_Addon_PIR_Tom_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_PIR_Tom_EXIT_Condition()
{
	return true;
};
FUNC VOID DIA_Addon_PIR_Tom_EXIT_Info()
{	
	AI_StopProcessInfos (self);
};
