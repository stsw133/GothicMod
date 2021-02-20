
///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Myxir_CITY_EXIT   (C_INFO)
{
	npc         = KDW_140300_Addon_Myxir_CITY;
	nr          = 999;
	condition   = DIA_Addon_Myxir_CITY_EXIT_Condition;
	information = DIA_Addon_Myxir_CITY_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_Myxir_CITY_EXIT_Condition()
{
	return true;
};
FUNC VOID DIA_Addon_Myxir_CITY_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info HelloCITY
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Myxir_CITY_HelloCITY		(C_INFO)
{
	npc		 = 	KDW_140300_Addon_Myxir_CITY;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Myxir_CITY_HelloCITY_Condition;
	information	 = 	DIA_Addon_Myxir_CITY_HelloCITY_Info;
	permanent	 = 	true;

	description	 = 	"Zostaniesz w mie�cie?";
};

func int DIA_Addon_Myxir_CITY_HelloCITY_Condition ()
{
	return true;
};
var int DIA_Addon_Myxir_CITY_HelloCITY_OneTime;
func void DIA_Addon_Myxir_CITY_HelloCITY_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Myxir_CITY_HelloCITY_15_00"); //Zostaniesz w mie�cie?
	AI_Output	(self, other, "DIA_Addon_Myxir_CITY_HelloCITY_12_01"); //Jeden z nas musi TU zosta�, je�li Vatras opu�ci miasto.
	
	VatrasAbloeseIstDa = true;
	
	if (RavenIsDead == true)
	&& (DIA_Addon_Myxir_CITY_HelloCITY_OneTime == false)
	{
		AI_Output	(self, other, "DIA_Addon_Myxir_CITY_HelloCITY_12_02"); //Chc� ci powiedzie� jeszcze jedno.
		AI_Output	(self, other, "DIA_Addon_Myxir_CITY_HelloCITY_12_03"); //To, czego dokona�e� w Jarkendarze, to by� naprawd� bohaterski wyczyn.
		AI_Output	(other, self, "DIA_Addon_Myxir_CITY_HelloCITY_15_04"); //Niestety, nie sko�czy�em jeszcze moich zada� w Khorinis.
		AI_Output	(self, other, "DIA_Addon_Myxir_CITY_HelloCITY_12_05"); //Jestem pewien, �e sobie poradzisz, Stra�niku.
		AI_Output	(other, self, "DIA_Addon_Myxir_CITY_HelloCITY_15_06"); //Zobaczymy.
		DIA_Addon_Myxir_CITY_HelloCITY_OneTime = true;
		B_GivePlayerXP(XP_Ambient);
	};	
};
