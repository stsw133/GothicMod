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
	description = "I jak? Wszystko w porz¹dku?";
};
FUNC INT DIA_Addon_Patrick_NW_Hi_Condition()
{		
	return true;
};
FUNC VOID DIA_Addon_Patrick_NW_Hi_Info()
{
	AI_Output (other, self, "DIA_Addon_Patrick_NW_Hi_15_00");//I jak? Wszystko w porz¹dku?
	AI_Output (self, other, "DIA_Addon_Patrick_NW_Hi_07_01");//Doskonale. Magowie Wody pomogli nam wydostaæ siê z tej przeklêtej doliny.
	AI_Output (other, self, "DIA_Addon_Patrick_NW_Hi_15_02");//Jakie macie plany?
	AI_Output (self, other, "DIA_Addon_Patrick_NW_Hi_07_03");//Bêdê dalej walczy³ u boku Lee. Pewnego dnia opuœcimy tê wyspê.
	AI_Output (other, self, "DIA_Addon_Patrick_NW_Hi_15_04");//A póŸniej?
	AI_Output (self, other, "DIA_Addon_Patrick_NW_Hi_07_05");//Zobaczy siê. Jeœli wojna wci¹¿ trwa, pójdê walczyæ z orkami. Ale kto wie, co siê jeszcze wydarzy...
};
