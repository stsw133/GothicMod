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
	AI_Output (self, other, "DIA_Carl_Hallo_05_00"); //Wygl�da na to, �e mamy w mie�cie kilku z�odziei, kt�rzy okradaj� bogaczy.
	AI_Output (self, other, "DIA_Carl_Hallo_05_01"); //Stra� miejska przetrz�sn�a ostatnio dzielnic� portow�, ale nie uda�o im si� niczego znale��.
	
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
	AI_Output (self, other, "DIA_Carl_Hallo_05_02"); //Co ci� sprowadza do tej biednej dzielnicy? Czego tu szukasz?
	
	Info_ClearChoices (DIA_Carl_Hallo);
	Info_AddChoice (DIA_Carl_Hallo,"Zab��dzi�em.",DIA_Carl_Hallo_verlaufen);
	Info_AddChoice (DIA_Carl_Hallo,"Tylko si� rozgl�dam.",DIA_Carl_Hallo_umsehen);
};
FUNC VOID DIA_Carl_Hallo_verlaufen()
{
	AI_Output (other, self, "DIA_Carl_Hallo_verlaufen_15_00");//Zab��dzi�em.
	AI_Output (self, other, "DIA_Carl_Hallo_verlaufen_05_01");//Wi�c lepiej uwa�aj, �eby ci� kto� nie obrabowa�.
	B_CarlSayHallo();
	Info_ClearChoices (DIA_Carl_Hallo);
};
FUNC VOID DIA_Carl_Hallo_umsehen()
{
	AI_Output (other, self, "DIA_Carl_Hallo_umsehen_15_00");//Tylko si� rozgl�dam.
	AI_Output (self, other, "DIA_Carl_Hallo_umsehen_05_01");//Ha. Wi�c lepiej, �eby nikt ci� nie z�apa� na tym ca�ym rozgl�daniu.
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
	description	= "Co chcesz wiedzie� o tych z�odziejach?";
};

FUNC INT DIA_Carl_Diebe_Condition()
{	
	return true;
};
FUNC VOID DIA_Carl_Diebe_Info()
{
	AI_Output (other, self, "DIA_Carl_Diebe_15_00");//Co chcesz wiedzie� o tych z�odziejach?
	AI_Output (self, other, "DIA_Carl_Diebe_05_01");//Nic. Ale wszyscy obywatele s� wystraszeni i stali si� nieufni - szczeg�lnie wzgl�dem obcych.
	AI_Output (self, other, "DIA_Carl_Diebe_05_02");//Nie daj si� z�apa� w cudzym domu - nikt nie zareaguje na to uprzejmo�ci�.
	AI_Output (self, other, "DIA_Carl_Diebe_05_03");//Tak, trzeba si� broni� przed z�odziejami. Najlepiej nadaje si� do tego solidna pa�ka.
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
	description	= "Mo�esz mnie czego� nauczy�?";
};

FUNC INT DIA_Carl_Lernen_Condition()
{	
	return true;
};
FUNC VOID DIA_Carl_Lernen_Info()
{
	AI_Output (other, self, "DIA_Carl_Lernen_15_00");//Mo�esz mnie czego� nauczy�?
	AI_Output (self, other, "DIA_Carl_Lernen_05_01");//Och, robi� okucia i gwo�dzie. Naprawiam te� metalowe cz�ci.
	AI_Output (self, other, "DIA_Carl_Lernen_05_02");//Nie znam si� jednak na wyrobie broni dostatecznie dobrze, �eby ci� uczy�.
	AI_Output (self, other, "DIA_Carl_Lernen_05_03");//Je�eli chcesz si� tego nauczy�, to id� do Harada. On na pewno wie, jak si� wykuwa bro�!
};
