//---------------------------------------------------------------------
//	Info EXIT 
//---------------------------------------------------------------------
INSTANCE DIA_Addon_Monty_NW_EXIT   (C_INFO)
{
	npc         = STRF_1124_Addon_Monty_NW;
	nr          = 999;
	condition   = DIA_Addon_Monty_NW_EXIT_Condition;
	information = DIA_Addon_Monty_NW_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_Monty_NW_EXIT_Condition()
{
	return true;
};
FUNC VOID DIA_Addon_Monty_NW_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
//---------------------------------------------------------------------
//	Info Hi
//---------------------------------------------------------------------
INSTANCE DIA_Addon_Monty_NW_Hi   (C_INFO)
{
	npc         = STRF_1124_Addon_Monty_NW;
	nr          = 2;
	condition   = DIA_Addon_Monty_NW_Hi_Condition;
	information = DIA_Addon_Monty_NW_Hi_Info;
	permanent   = false;
	description = "Z powrotem do pracy?";
};
FUNC INT DIA_Addon_Monty_NW_Hi_Condition()
{		
	return true;
};
FUNC VOID DIA_Addon_Monty_NW_Hi_Info()
{
	AI_Output (other, self, "DIA_Addon_Monty_NW_Hi_15_00");//Z powrotem do pracy?
	AI_Output (self, other, "DIA_Addon_Monty_NW_Hi_08_01");//A jak my�lisz? S�uchaj, ch�opie, kiedy mnie nie by�o, te �achudry nie po�o�y�y jednej deski prawid�owo! Musz� pomy�le�, jak to wszystko z�o�y� do kupy.
	AI_Output (other, self, "DIA_Addon_Monty_NW_Hi_15_02");//Dobrze. Nie b�d� ci przeszkadza�.
	AI_Output (self, other, "DIA_Addon_Monty_NW_Hi_08_03");//Jasne. Bezpiecznej podr�y.
};
