
///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Nefarius_ADW_EXIT   (C_INFO)
{
	npc         = KDW_14020_Addon_Nefarius_ADW;
	nr          = 999;
	condition   = DIA_Addon_Nefarius_ADW_EXIT_Condition;
	information = DIA_Addon_Nefarius_ADW_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_Nefarius_ADW_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Addon_Nefarius_ADW_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info ADWHello
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Nefarius_ADWHello		(C_INFO)
{
	npc		 = 	KDW_14020_Addon_Nefarius_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Nefarius_ADWHello_Condition;
	information	 = 	DIA_Addon_Nefarius_ADWHello_Info;
	important	 = 	TRUE;
};
func int DIA_Addon_Nefarius_ADWHello_Condition ()
{
	if (Npc_IsInState (self,ZS_Talk))
		{
			return TRUE;
		};
};
func void DIA_Addon_Nefarius_ADWHello_Info ()
{
	AI_Output	(self, other, "DIA_Addon_Nefarius_ADWHello_05_00"); //Cieszy mnie, �e dotar�e� tu bezpiecznie.
	AI_Output	(other, self, "DIA_Addon_Nefarius_ADWHello_15_01"); //Jak to si� sta�o, �e przyby�e� tu przede mn�?
	AI_Output	(self, other, "DIA_Addon_Nefarius_ADWHello_05_02"); //Podr�owali�my przez dziwny wymiar. Kto wie, w jak� odnog� zboczy�e�.
	AI_Output	(other, self, "DIA_Addon_Nefarius_ADWHello_15_03"); //No i? Czy b�d� m�g� jeszcze skorzysta� z portalu?
	AI_Output	(self, other, "DIA_Addon_Nefarius_ADWHello_05_04"); //Dotarli�my dok�adnie na miejsce. Najwyra�niej dzia�a bardzo dobrze.
	AI_Output	(self, other, "DIA_Addon_Nefarius_ADWHello_05_05"); //Poinformuj� ci�, je�li b�d� podejrzewa�, �e mo�e by� inaczej.
};

///////////////////////////////////////////////////////////////////////
//	Info Neues
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Nefarius_Neues		(C_INFO)
{
	npc		 = 	KDW_14020_Addon_Nefarius_ADW;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Nefarius_Neues_Condition;
	information	 = 	DIA_Addon_Nefarius_Neues_Info;

	description	 = 	"Co robi�e� do tej pory?";
};

func int DIA_Addon_Nefarius_Neues_Condition ()
{
	if (Ghost_SCKnowsHow2GetInAdanosTempel == FALSE)
		{
			return TRUE;
		};
};

func void DIA_Addon_Nefarius_Neues_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Nefarius_Neues_15_00"); //Co robi�e� do tej pory?
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_01"); //Badam histori� budowniczych i pr�buj� zrozumie�, dlaczego zamkn�li portal.
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_02"); //Wygl�da na to, �e usi�owali ukry� miasto przed reszt� �wiata.
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_03"); //Wiele lat temu dzia�y si� tu straszne rzeczy. Zostali op�tani przez jak�� potworn� moc.
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_04"); //Je�li wierzy� ich zapiskom, przed zag�ad� miasta mia�a tu miejsce straszna wojna domowa.
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_05"); //Drogi stan�y w p�omieniach, a w ko�cu niszcz�ca pow�d� przypiecz�towa�a los budowniczych.
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_06"); //Ci, kt�rym uda�o si� prze�y� to piek�o, odci�li t� cz�� wyspy w nadziei, �e uda im si� powstrzyma� chaos.
	
	Info_ClearChoices	(DIA_Addon_Nefarius_Neues);
	Info_AddChoice	(DIA_Addon_Nefarius_Neues, "Jak my�lisz, co tu znajdziemy?", DIA_Addon_Nefarius_Neues_find );
	Info_AddChoice	(DIA_Addon_Nefarius_Neues, "A my, g�upcy, ponownie otworzyli�my portal.", DIA_Addon_Nefarius_Neues_auf );
	Info_AddChoice	(DIA_Addon_Nefarius_Neues, "Czemu budowniczowie oszaleli?", DIA_Addon_Nefarius_Neues_was );
	Info_AddChoice	(DIA_Addon_Nefarius_Neues, "Powiedzia�e�, �e nadesz�a pow�d�?", DIA_Addon_Nefarius_Neues_flut );
};
func void DIA_Addon_Nefarius_Neues_find ()
{
	AI_Output			(other, self, "DIA_Addon_Nefarius_Neues_find_15_00"); //Jak my�lisz, co tu znajdziemy?
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_find_05_01"); //Mog� si� tylko domy�la�. Lepiej porozmawiaj z Saturasem.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_find_05_02"); //On ma jaki� pomys�.
	
	Log_CreateTopic (TOPIC_Addon_Flut, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_Flut, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_Flut,"Nefarius uwa�a, �e powinienem porozmawia� z Saturasem o zaginionym mie�cie."); 

	
	NefariusADW_Talk2Saturas = TRUE;
};
func void DIA_Addon_Nefarius_Neues_flut ()
{
	AI_Output			(other, self, "DIA_Addon_Nefarius_Neues_flut_15_00"); //Powiedzia�e�, �e nadesz�a pow�d�?
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_flut_05_01"); //Pojawi� si� przed nimi sam Adanos, chc�c po�o�y� kres ich szale�stwu.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_flut_05_02"); //Zr�wna� miasto z ziemi�.
};
func void DIA_Addon_Nefarius_Neues_was ()
{
	AI_Output			(other, self, "DIA_Addon_Nefarius_Neues_was_15_00"); //Czemu budowniczowie oszaleli?
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_was_05_01"); //Jeden spo�r�d nich odda� si� z�u. By� to wielki dow�dca o imieniu Quarhodron.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_was_05_02"); //Powr�ciwszy do domu po zwyci�skiej bitwie za murami miasta, przywi�d� ze sob� samo z�o.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_was_05_03"); //Wszyscy jego towarzysze w kr�tkim czasie popadli w szale�stwo i zacz�li walczy� ze zwyk�ymi lud�mi.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_was_05_04"); //Rozpocz�a si� wojna domowa i wszystko zosta�o zniszczone.
};
func void DIA_Addon_Nefarius_Neues_auf ()
{
	AI_Output			(other, self, "DIA_Addon_Nefarius_Neues_auf_15_00"); //A my, g�upcy, ponownie otworzyli�my portal.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_auf_05_01"); //Mnie si� to te� nie podoba.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_auf_05_02"); //Ale jaki mieli�my wyb�r?
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_auf_05_03"); //Je�li nie powstrzymamy tego, co tu si� dzieje, Khorinis mo�e spotka� ten sam los, kt�ry dotkn�� mieszka�c�w tego pradawnego miasta.
};

///////////////////////////////////////////////////////////////////////
//	Info PermADW
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Nefarius_PermADW		(C_INFO)
{
	npc		 = 	KDW_14020_Addon_Nefarius_ADW;
	nr		 = 	10;
	condition	 = 	DIA_Addon_Nefarius_PermADW_Condition;
	information	 = 	DIA_Addon_Nefarius_PermADW_Info;
	permanent	 = 	TRUE;

	description	 = 	"Podr� przez portal jest bezpieczna?";
};
func int DIA_Addon_Nefarius_PermADW_Condition ()
{
	return TRUE;
};
func void DIA_Addon_Nefarius_PermADW_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Nefarius_PermADW_15_00"); //Podr� przez portal jest bezpieczna?
	AI_Output	(self, other, "DIA_Addon_Nefarius_PermADW_05_01"); //Jak na razie nie mam co do tego w�tpliwo�ci.
};
