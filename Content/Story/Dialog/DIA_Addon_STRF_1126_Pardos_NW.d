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
	description = "Dobrze siê czujesz?";
};
FUNC INT DIA_Addon_Pardos_NW_Hi_Condition()
{		
	return true;
};
FUNC VOID DIA_Addon_Pardos_NW_Hi_Info()
{
	AI_Output (other, self, "DIA_Addon_Pardos_NW_Hi_15_00");//Dobrze siê czujesz?
	AI_Output (self, other, "DIA_Addon_Pardos_NW_Hi_03_01");//Ej, wybawco... Jeszcze raz dziêkujê. Teraz mogê ca³y dzieñ odpoczywaæ.
	AI_Output (other, self, "DIA_Addon_Pardos_NW_Hi_15_02");//Widzê. No có¿, na mnie ju¿ czas.
};
