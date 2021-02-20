//---------------------------------------------------------------------
//	Info EXIT 
//---------------------------------------------------------------------
INSTANCE DIA_Addon_Tonak_EXIT   (C_INFO)
{
	npc         = STRF_1120_Addon_Tonak;
	nr          = 999;
	condition   = DIA_Addon_Tonak_EXIT_Condition;
	information = DIA_Addon_Tonak_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_Tonak_EXIT_Condition()
{
	return true;
};
FUNC VOID DIA_Addon_Tonak_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
//---------------------------------------------------------------------
//	Info Hi
//---------------------------------------------------------------------
INSTANCE DIA_Addon_Tonak_Hi   (C_INFO)
{
	npc         = STRF_1120_Addon_Tonak;
	nr          = 2;
	condition   = DIA_Addon_Tonak_Hi_Condition;
	information = DIA_Addon_Tonak_Hi_Info;
	permanent   = true;
	important 	= true;
};
FUNC INT DIA_Addon_Tonak_Hi_Condition()
{	
	if Npc_IsInState (self, ZS_Talk)
	&& (Sklaven_Flucht == false)
	{	
		return true;
	};
};
FUNC VOID DIA_Addon_Tonak_Hi_Info()
{
	AI_Output (self, other, "DIA_Addon_Tonak_Hi_03_00"); //Czego chcesz? Jestem tu wi�niem, cho� nie zrobi�em nic z�ego.
	AI_StopProcessInfos (self);
};
