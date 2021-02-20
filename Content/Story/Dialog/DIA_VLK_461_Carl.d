///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Carl_EXIT   (C_INFO)
{
	npc         = VLK_461_Carl;
	nr          = 999;
	condition   = DIA_Carl_EXIT_Condition;
	information = DIA_Carl_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Carl_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Carl_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
FUNC VOID B_CarlSayHallo ()
{
	AI_Output (self, other, "DIA_Carl_Hallo_05_00"); //Wygl¹da na to, ¿e mamy w mieœcie kilku z³odziei, którzy okradaj¹ bogaczy.
	AI_Output (self, other, "DIA_Carl_Hallo_05_01"); //Stra¿ miejska przetrz¹snê³a ostatnio dzielnicê portow¹, ale nie uda³o im siê niczego znaleŸæ.
	
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Carl_Hallo   (C_INFO)
{
	npc         = VLK_461_Carl;
	nr          = 2;
	condition   = DIA_Carl_Hallo_Condition;
	information = DIA_Carl_Hallo_Info;
	permanent   = false;
	Important	= true;
};

FUNC INT DIA_Carl_Hallo_Condition()
{	
	if Npc_IsInState (self, ZS_Talk)
	{
		return true;
	};
};
FUNC VOID DIA_Carl_Hallo_Info()
{
	AI_Output (self, other, "DIA_Carl_Hallo_05_02"); //Co ciê sprowadza do tej biednej dzielnicy? Czego tu szukasz?
	
	Info_ClearChoices (DIA_Carl_Hallo);
	Info_AddChoice (DIA_Carl_Hallo,"Zab³¹dzi³em.",DIA_Carl_Hallo_verlaufen);
	Info_AddChoice (DIA_Carl_Hallo,"Tylko siê rozgl¹dam.",DIA_Carl_Hallo_umsehen);
};
FUNC VOID DIA_Carl_Hallo_verlaufen()
{
	AI_Output (other, self, "DIA_Carl_Hallo_verlaufen_15_00");//Zab³¹dzi³em.
	AI_Output (self, other, "DIA_Carl_Hallo_verlaufen_05_01");//Wiêc lepiej uwa¿aj, ¿eby ciê ktoœ nie obrabowa³.
	B_CarlSayHallo();
	Info_ClearChoices (DIA_Carl_Hallo);
};
FUNC VOID DIA_Carl_Hallo_umsehen()
{
	AI_Output (other, self, "DIA_Carl_Hallo_umsehen_15_00");//Tylko siê rozgl¹dam.
	AI_Output (self, other, "DIA_Carl_Hallo_umsehen_05_01");//Ha. Wiêc lepiej, ¿eby nikt ciê nie z³apa³ na tym ca³ym rozgl¹daniu.
	B_CarlSayHallo();
	Info_ClearChoices (DIA_Carl_Hallo);
};
///////////////////////////////////////////////////////////////////////
//	Info Diebe
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Carl_Diebe   (C_INFO)
{
	npc         = VLK_461_Carl;
	nr          = 3;
	condition   = DIA_Carl_Diebe_Condition;
	information = DIA_Carl_Diebe_Info;
	permanent   = false;
	description	= "Co chcesz wiedzieæ o tych z³odziejach?";
};

FUNC INT DIA_Carl_Diebe_Condition()
{	
	return true;
};
FUNC VOID DIA_Carl_Diebe_Info()
{
	AI_Output (other, self, "DIA_Carl_Diebe_15_00");//Co chcesz wiedzieæ o tych z³odziejach?
	AI_Output (self, other, "DIA_Carl_Diebe_05_01");//Nic. Ale wszyscy obywatele s¹ wystraszeni i stali siê nieufni - szczególnie wzglêdem obcych.
	AI_Output (self, other, "DIA_Carl_Diebe_05_02");//Nie daj siê z³apaæ w cudzym domu - nikt nie zareaguje na to uprzejmoœci¹.
	AI_Output (self, other, "DIA_Carl_Diebe_05_03");//Tak, trzeba siê broniæ przed z³odziejami. Najlepiej nadaje siê do tego solidna pa³ka.
};
///////////////////////////////////////////////////////////////////////
//	Info Lernen
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Carl_Lernen   (C_INFO)
{
	npc         = VLK_461_Carl;
	nr          = 3;
	condition   = DIA_Carl_Lernen_Condition;
	information = DIA_Carl_Lernen_Info;
	permanent   = false;
	description	= "Mo¿esz mnie czegoœ nauczyæ?";
};

FUNC INT DIA_Carl_Lernen_Condition()
{	
	return true;
};
FUNC VOID DIA_Carl_Lernen_Info()
{
	AI_Output (other, self, "DIA_Carl_Lernen_15_00");//Mo¿esz mnie czegoœ nauczyæ?
	AI_Output (self, other, "DIA_Carl_Lernen_05_01");//Och, robiê okucia i gwoŸdzie. Naprawiam te¿ metalowe czêœci.
	AI_Output (self, other, "DIA_Carl_Lernen_05_02");//Nie znam siê jednak na wyrobie broni dostatecznie dobrze, ¿eby ciê uczyæ.
	AI_Output (self, other, "DIA_Carl_Lernen_05_03");//Je¿eli chcesz siê tego nauczyæ, to idŸ do Harada. On na pewno wie, jak siê wykuwa broñ!
};
