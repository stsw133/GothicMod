
///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Cronos_ADW_EXIT   (C_INFO)
{
	npc         = KDW_14010_Addon_Cronos_ADW;
	nr          = 999;
	condition   = DIA_Addon_Cronos_ADW_EXIT_Condition;
	information = DIA_Addon_Cronos_ADW_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_Cronos_ADW_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Addon_Cronos_ADW_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info ADWHello
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cronos_ADWHello		(C_INFO)
{
	npc		 = 	KDW_14010_Addon_Cronos_ADW;
	nr		 = 	1;
	condition	 = 	DIA_Addon_Cronos_ADWHello_Condition;
	information	 = 	DIA_Addon_Cronos_ADWHello_Info;
	important	 = 	TRUE;
};

func int DIA_Addon_Cronos_ADWHello_Condition ()
{
	if (Npc_IsInState (self,ZS_Talk))
		{
			return TRUE;
		};	
};

func void DIA_Addon_Cronos_ADWHello_Info ()
{
	AI_Output	(self, other, "DIA_Addon_Cronos_ADWHello_04_00"); //Ciesz� si�, �e ci� widz�. Obawiali�my si� najgorszego.
	AI_Output	(other, self, "DIA_Addon_Cronos_ADWHello_15_01"); //Co si� dzieje?
	AI_Output	(self, other, "DIA_Addon_Cronos_ADWHello_04_02"); //Te tereny s� bardzo niebezpieczne.
	AI_Output	(self, other, "DIA_Addon_Cronos_ADWHello_04_03"); //S� tu zwierz�ta, kt�rych nikt z nas nigdy przedtem nie widzia�.
	AI_Output	(self, other, "DIA_Addon_Cronos_ADWHello_04_04"); //W pobli�u jest ogromne bagno, kt�re mo�e istnie� ju� od setek lat.
	AI_Output	(self, other, "DIA_Addon_Cronos_ADWHello_04_05"); //Nie ma dnia, �eby�my nie zostali zaatakowani przez bestie z bagna.
	AI_Output	(self, other, "DIA_Addon_Cronos_ADWHello_04_06"); //Radz� ci zachowa� ostro�no��, je�li zamierzasz rozejrze� si� po okolicy.
};

///////////////////////////////////////////////////////////////////////
//	Info WaechterADW
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cronos_WaechterADW		(C_INFO)
{
	npc		 = 	KDW_14010_Addon_Cronos_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Cronos_WaechterADW_Condition;
	information	 = 	DIA_Addon_Cronos_WaechterADW_Info;

	description	 = 	"Jakie� wie�ci na temat kamiennych stra�nik�w?";
};

func int DIA_Addon_Cronos_WaechterADW_Condition ()
{
	return TRUE;
};

func void DIA_Addon_Cronos_WaechterADW_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Cronos_WaechterADW_15_00"); //Jakie� wie�ci na temat kamiennych stra�nik�w?
	AI_Output	(self, other, "DIA_Addon_Cronos_WaechterADW_04_01"); //Uda�o nam si� kilku zniszczy�.
	AI_Output	(self, other, "DIA_Addon_Cronos_WaechterADW_04_02"); //Stoj�, jakby byli s�upami soli.
	AI_Output	(self, other, "DIA_Addon_Cronos_WaechterADW_04_03"); //Ale pozory myl�! Gdy tylko si� zbli�ysz, rusz� do ataku!
	AI_Output	(self, other, "DIA_Addon_Cronos_WaechterADW_04_04"); //Nie ma w�tpliwo�ci, �e �r�d�o ich mocy musi znajdowa� si� gdzie� w okolicy.
};


///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Cronos_ADW_Trade		(C_INFO)
{
	npc		 = 	KDW_14010_Addon_Cronos_ADW;
	nr		 = 	99;
	condition	 = 	DIA_Addon_Cronos_ADW_Trade_Condition;
	information	 = 	DIA_Addon_Cronos_ADW_Trade_Info;
	Trade 		 = 	TRUE;
	permanent	 = 	TRUE;
	description	 = 	"Pohandlujmy.";
};

func int DIA_Addon_Cronos_ADW_Trade_Condition ()
{
		return TRUE;
};

var int DIA_Addon_Cronos_ADW_Trade_OneTime;

func void DIA_Addon_Cronos_ADW_Trade_Info ()
{
	B_GiveTradeInv (self);
	B_Say (other,self,"$TRADE_1");
};

