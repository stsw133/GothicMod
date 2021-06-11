
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
	AI_Output	(self, other, "DIA_Addon_Nefarius_ADWHello_05_00"); //Cieszy mnie, ¿e dotar³eœ tu bezpiecznie.
	AI_Output	(other, self, "DIA_Addon_Nefarius_ADWHello_15_01"); //Jak to siê sta³o, ¿e przyby³eœ tu przede mn¹?
	AI_Output	(self, other, "DIA_Addon_Nefarius_ADWHello_05_02"); //Podró¿owaliœmy przez dziwny wymiar. Kto wie, w jak¹ odnogê zboczy³eœ.
	AI_Output	(other, self, "DIA_Addon_Nefarius_ADWHello_15_03"); //No i? Czy bêdê móg³ jeszcze skorzystaæ z portalu?
	AI_Output	(self, other, "DIA_Addon_Nefarius_ADWHello_05_04"); //Dotarliœmy dok³adnie na miejsce. NajwyraŸniej dzia³a bardzo dobrze.
	AI_Output	(self, other, "DIA_Addon_Nefarius_ADWHello_05_05"); //Poinformujê ciê, jeœli bêdê podejrzewaæ, ¿e mo¿e byæ inaczej.
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

	description	 = 	"Co robi³eœ do tej pory?";
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
	AI_Output	(other, self, "DIA_Addon_Nefarius_Neues_15_00"); //Co robi³eœ do tej pory?
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_01"); //Badam historiê budowniczych i próbujê zrozumieæ, dlaczego zamknêli portal.
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_02"); //Wygl¹da na to, ¿e usi³owali ukryæ miasto przed reszt¹ œwiata.
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_03"); //Wiele lat temu dzia³y siê tu straszne rzeczy. Zostali opêtani przez jak¹œ potworn¹ moc.
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_04"); //Jeœli wierzyæ ich zapiskom, przed zag³ad¹ miasta mia³a tu miejsce straszna wojna domowa.
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_05"); //Drogi stanê³y w p³omieniach, a w koñcu niszcz¹ca powódŸ przypieczêtowa³a los budowniczych.
	AI_Output	(self, other, "DIA_Addon_Nefarius_Neues_05_06"); //Ci, którym uda³o siê prze¿yæ to piek³o, odciêli tê czêœæ wyspy w nadziei, ¿e uda im siê powstrzymaæ chaos.
	
	Info_ClearChoices	(DIA_Addon_Nefarius_Neues);
	Info_AddChoice	(DIA_Addon_Nefarius_Neues, "Jak myœlisz, co tu znajdziemy?", DIA_Addon_Nefarius_Neues_find );
	Info_AddChoice	(DIA_Addon_Nefarius_Neues, "A my, g³upcy, ponownie otworzyliœmy portal.", DIA_Addon_Nefarius_Neues_auf );
	Info_AddChoice	(DIA_Addon_Nefarius_Neues, "Czemu budowniczowie oszaleli?", DIA_Addon_Nefarius_Neues_was );
	Info_AddChoice	(DIA_Addon_Nefarius_Neues, "Powiedzia³eœ, ¿e nadesz³a powódŸ?", DIA_Addon_Nefarius_Neues_flut );
};
func void DIA_Addon_Nefarius_Neues_find ()
{
	AI_Output			(other, self, "DIA_Addon_Nefarius_Neues_find_15_00"); //Jak myœlisz, co tu znajdziemy?
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_find_05_01"); //Mogê siê tylko domyœlaæ. Lepiej porozmawiaj z Saturasem.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_find_05_02"); //On ma jakiœ pomys³.
	
	Log_CreateTopic (TOPIC_Addon_Flut, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_Flut, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_Flut,"Nefarius uwa¿a, ¿e powinienem porozmawiaæ z Saturasem o zaginionym mieœcie."); 

	
	NefariusADW_Talk2Saturas = TRUE;
};
func void DIA_Addon_Nefarius_Neues_flut ()
{
	AI_Output			(other, self, "DIA_Addon_Nefarius_Neues_flut_15_00"); //Powiedzia³eœ, ¿e nadesz³a powódŸ?
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_flut_05_01"); //Pojawi³ siê przed nimi sam Adanos, chc¹c po³o¿yæ kres ich szaleñstwu.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_flut_05_02"); //Zrówna³ miasto z ziemi¹.
};
func void DIA_Addon_Nefarius_Neues_was ()
{
	AI_Output			(other, self, "DIA_Addon_Nefarius_Neues_was_15_00"); //Czemu budowniczowie oszaleli?
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_was_05_01"); //Jeden spoœród nich odda³ siê z³u. By³ to wielki dowódca o imieniu Quarhodron.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_was_05_02"); //Powróciwszy do domu po zwyciêskiej bitwie za murami miasta, przywiód³ ze sob¹ samo z³o.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_was_05_03"); //Wszyscy jego towarzysze w krótkim czasie popadli w szaleñstwo i zaczêli walczyæ ze zwyk³ymi ludŸmi.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_was_05_04"); //Rozpoczê³a siê wojna domowa i wszystko zosta³o zniszczone.
};
func void DIA_Addon_Nefarius_Neues_auf ()
{
	AI_Output			(other, self, "DIA_Addon_Nefarius_Neues_auf_15_00"); //A my, g³upcy, ponownie otworzyliœmy portal.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_auf_05_01"); //Mnie siê to te¿ nie podoba.
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_auf_05_02"); //Ale jaki mieliœmy wybór?
	AI_Output			(self, other, "DIA_Addon_Nefarius_Neues_auf_05_03"); //Jeœli nie powstrzymamy tego, co tu siê dzieje, Khorinis mo¿e spotkaæ ten sam los, który dotkn¹³ mieszkañców tego pradawnego miasta.
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

	description	 = 	"Podró¿ przez portal jest bezpieczna?";
};
func int DIA_Addon_Nefarius_PermADW_Condition ()
{
	return TRUE;
};
func void DIA_Addon_Nefarius_PermADW_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Nefarius_PermADW_15_00"); //Podró¿ przez portal jest bezpieczna?
	AI_Output	(self, other, "DIA_Addon_Nefarius_PermADW_05_01"); //Jak na razie nie mam co do tego w¹tpliwoœci.
};
