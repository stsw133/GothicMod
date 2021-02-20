//---------------------------------------------------------------------
//	Info EXIT 
//---------------------------------------------------------------------
INSTANCE DIA_Addon_Pardos_NW_EXIT   (C_INFO)
{
	npc         = STRF_1127_Addon_Pardos_NW;
	nr          = 999;
	condition   = DIA_Addon_Pardos_NW_EXIT_Condition;
	information = DIA_Addon_Pardos_NW_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_Pardos_NW_EXIT_Condition()
{
	return true;
};
FUNC VOID DIA_Addon_Pardos_NW_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
//---------------------------------------------------------------------
//	Info Hi
//---------------------------------------------------------------------
INSTANCE DIA_Addon_Pardos_NW_Hi   (C_INFO)
{
	npc         = STRF_1127_Addon_Pardos_NW;
	nr          = 2;
	condition   = DIA_Addon_Pardos_NW_Hi_Condition;
	information = DIA_Addon_Pardos_NW_Hi_Info;
	permanent   = true;
	description = "Dobrze si� czujesz?";
};
FUNC INT DIA_Addon_Pardos_NW_Hi_Condition()
{		
	return true;
};
FUNC VOID DIA_Addon_Pardos_NW_Hi_Info()
{
	AI_Output (other, self, "DIA_Addon_Pardos_NW_Hi_15_00");//Dobrze si� czujesz?
	AI_Output (self, other, "DIA_Addon_Pardos_NW_Hi_03_01");//Ej, wybawco... Jeszcze raz dzi�kuj�. Teraz mog� ca�y dzie� odpoczywa�.
	AI_Output (other, self, "DIA_Addon_Pardos_NW_Hi_15_02");//Widz�. No c�, na mnie ju� czas.
};
