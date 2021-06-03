///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Rick_EXIT   (C_INFO)
{
	npc         = Mil_336_Rick;
	nr          = 999;
	condition   = DIA_Rick_EXIT_Condition;
	information = DIA_Rick_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Rick_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Rick_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

 ///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Rick_HALLO		(C_INFO)
{
	npc		 	= Mil_336_Rick;
	nr		 	= 1;
	condition	= DIA_Rick_HALLO_Condition;
	information	= DIA_Rick_HALLO_Info;
	permanent	= TRUE;
	description	= "Co s³ychaæ?";
};

func int DIA_Rick_HALLO_Condition ()
{
	return TRUE;
};

func void DIA_Rick_HALLO_Info ()
{
	AI_Output (other, self, "DIA_Rick_HALLO_15_00"); //Co s³ychaæ?
	AI_Output (self, other, "DIA_Rick_HALLO_10_01"); //Jeœli chcesz gadaæ, pogadaj z Rumboldem. Ja tu tylko sprz¹tam.

	AI_StopProcessInfos (self);		
};
