//---------------------------------------------------------------------
//	Info EXIT 
//---------------------------------------------------------------------
INSTANCE DIA_Addon_Patrick_NW_EXIT   (C_INFO)
{
	npc         = STRF_1123_Addon_Patrick_NW;
	nr          = 999;
	condition   = DIA_Addon_Patrick_NW_EXIT_Condition;
	information = DIA_Addon_Patrick_NW_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_Patrick_NW_EXIT_Condition()
{
	return true;
};
FUNC VOID DIA_Addon_Patrick_NW_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//---------------------------------------------------------------------
//	Info Hi
//---------------------------------------------------------------------
INSTANCE DIA_Addon_Patrick_NW_Hi   (C_INFO)
{
	npc         = STRF_1123_Addon_Patrick_NW;
	nr          = 2;
	condition   = DIA_Addon_Patrick_NW_Hi_Condition;
	information = DIA_Addon_Patrick_NW_Hi_Info;
	permanent   = false;
	description = "I jak? Wszystko w porz�dku?";
};
FUNC INT DIA_Addon_Patrick_NW_Hi_Condition()
{		
	return true;
};
FUNC VOID DIA_Addon_Patrick_NW_Hi_Info()
{
	AI_Output (other, self, "DIA_Addon_Patrick_NW_Hi_15_00");//I jak? Wszystko w porz�dku?
	AI_Output (self, other, "DIA_Addon_Patrick_NW_Hi_07_01");//Doskonale. Magowie Wody pomogli nam wydosta� si� z tej przekl�tej doliny.
	AI_Output (other, self, "DIA_Addon_Patrick_NW_Hi_15_02");//Jakie macie plany?
	AI_Output (self, other, "DIA_Addon_Patrick_NW_Hi_07_03");//B�d� dalej walczy� u boku Lee. Pewnego dnia opu�cimy t� wysp�.
	AI_Output (other, self, "DIA_Addon_Patrick_NW_Hi_15_04");//A p�niej?
	AI_Output (self, other, "DIA_Addon_Patrick_NW_Hi_07_05");//Zobaczy si�. Je�li wojna wci�� trwa, p�jd� walczy� z orkami. Ale kto wie, co si� jeszcze wydarzy...
};
