///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Ignaz_EXIT   (C_INFO)
{
	npc         = VLK_498_Ignaz;
	nr          = 999;
	condition   = DIA_Ignaz_EXIT_Condition;
	information = DIA_Ignaz_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Ignaz_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Ignaz_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Ignaz_Hallo   (C_INFO)
{
	npc         = VLK_498_Ignaz;
	nr          = 2;
	condition   = DIA_Ignaz_Hallo_Condition;
	information = DIA_Ignaz_Hallo_Info;
	permanent   = FALSE;
	important 	= TRUE;
};
FUNC INT DIA_Ignaz_Hallo_Condition()
{
	if Npc_IsInState (self, ZS_Talk)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Ignaz_Hallo_Info()
{
	AI_Output (self, other, "DIA_Ignaz_Hallo_14_00");//O, przychodzisz w sam� por�. W�a�nie poszukuj� asystenta do mojego magicznego eksperymentu.
	AI_Output (self, other, "DIA_Ignaz_Hallo_14_01");//Jestem pewien, �e zgodzisz si� pom�c w imi� nauki.
	AI_Output (other, self, "DIA_Ignaz_Hallo_15_02");//Powoli, przyjacielu. Najpierw powiedz mi dok�adnie, o co chodzi.
	AI_Output (self, other, "DIA_Ignaz_Hallo_14_03");//Stworzy�em nowe zakl�cie. Zakl�cie Zapomnienia.
	AI_Output (self, other, "DIA_Ignaz_Hallo_14_04");//Przeprowadzi�em ju� par� udanych test�w, ale wci�� brakuje mi czasu na jedn�, ostateczn� pr�b�.
};
///////////////////////////////////////////////////////////////////////
//	Info Lerninhalte Traenke
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Ignaz_Traenke   (C_INFO)
{
	npc         = VLK_498_Ignaz;
	nr          = 3;
	condition   = DIA_Ignaz_Traenke_Condition;
	information = DIA_Ignaz_Traenke_Info;
	permanent   = FALSE;
	description = "Co b�d� z tego mia�?";
};

FUNC INT DIA_Ignaz_Traenke_Condition()
{	
	if (MIS_Ignaz_Charm != LOG_SUCCESS)
	{	
		return TRUE;
	};
};
FUNC VOID DIA_Ignaz_Traenke_Info()
{
	AI_Output (other, self, "DIA_Ignaz_Traenke_15_00");//Co b�d� z tego mia�?
	AI_Output (self, other, "DIA_Ignaz_Traenke_14_01");//M�g�bym ci� nauczy� przygotowywa� r�ne mikstury.
	AI_Output (self, other, "DIA_Ignaz_Traenke_14_02");//Znam przepisy na esencje lecznicze, regeneruj�ce man� i zwi�kszaj�ce szybko��.
	//AI_Output (self, other, "DIA_Ignaz_Traenke_14_03");//Au�erdem kann ich dir beibringen, wie du ein Elixier der Geschicklichkeit herstellst.
	
};
///////////////////////////////////////////////////////////////////////
//	Info Experiment
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Ignaz_Experiment   (C_INFO)
{
	npc         = VLK_498_Ignaz;
	nr          = 4;
	condition   = DIA_Ignaz_Experiment_Condition;
	information = DIA_Ignaz_Experiment_Info;
	permanent   = FALSE;
	description = "Powiedz mi wi�cej o tym eksperymencie i o samym zakl�ciu.";
};

FUNC INT DIA_Ignaz_Experiment_Condition()
{	
	return TRUE;
};
FUNC VOID DIA_Ignaz_Experiment_Info()
{
	AI_Output (other, self, "DIA_Ignaz_Experiment_15_00");//Powiedz mi wi�cej o tym eksperymencie i o samym zakl�ciu.
	AI_Output (self, other, "DIA_Ignaz_Experiment_14_01");//Zakl�cie s�u�y do wymazywania z pami�ci r�nych wspomnie�.
	AI_Output (self, other, "DIA_Ignaz_Experiment_14_02");//Jak na razie uda�o mi si� ustali�, �e dzia�a ono tylko i wy��cznie wtedy, gdy ofiara jest w�ciek�a - na przyk�ad zosta�a ostatnio pobita lub okradziona.
	AI_Output (self, other, "DIA_Ignaz_Experiment_14_03");//Nawet je�li kto� by� jedynie �wiadkiem takiego wydarzenia, zostanie ono usuni�te z jego pami�ci.
	AI_Output (other, self, "DIA_Ignaz_Experiment_15_04");//Wi�c mam kogo� pobi�, a potem wypr�bowa� na nim zakl�cie?
	AI_Output (other, self, "DIA_Ignaz_Add_15_00"); //Ma to sens tylko i wy��cznie wtedy, kiedy ofiara jest NAPRAWD� w�ciek�a.
	AI_Output (other, self, "DIA_Ignaz_Add_15_01"); //Tutaj, w dzielnicy portowej, ludzie s� przyzwyczajeni do b�jek. Lepiej spr�buj� gdzie indziej.
	AI_Output (self, other, "DIA_Ignaz_Experiment_14_05");//Tak, masz s�uszno��. Ale �eby kogo� rozw�cieczy�, wystarczy go zaatakowa� - nie musisz od razu �ama� mu wszystkich ko�ci.
	AI_Output (self, other, "DIA_Ignaz_Experiment_14_06");//Lepiej wybierz sobie jak�� samotn� ofiar� - je�li kto� zobaczy b�jk�, mo�esz mie� problemy z Lordem Andre.
	AI_Output (self, other, "DIA_Ignaz_Experiment_14_07");//Nie ma r�wnie� sensu rzuca� zakl�cia na osob�, kt�ra w�a�nie ci� atakuje. Musisz poczeka� na w�a�ciwy moment.
};	
///////////////////////////////////////////////////////////////////////
//	Info teilnhemen
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Ignaz_teilnehmen   (C_INFO)
{
	npc         = VLK_498_Ignaz;
	nr          = 5;
	condition   = DIA_Ignaz_teilnehmen_Condition;
	information = DIA_Ignaz_teilnehmen_Info;
	permanent   = FALSE;
	description = "Dobrze, wypr�buj� to zakl�cie.";
};

FUNC INT DIA_Ignaz_teilnehmen_Condition()
{	
	if Npc_KnowsInfo (other, DIA_Ignaz_Experiment)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Ignaz_teilnehmen_Info()
{
	AI_Output (other, self, "DIA_Ignaz_teilnehmen_15_00");//Dobrze, wypr�buj� to zakl�cie.
	AI_Output (self, other, "DIA_Ignaz_teilnehmen_14_01");//A zatem we� ten zw�j i poszukaj sobie dobrej �winki do�wiadczalnej.
	AI_Output (self, other, "DIA_Ignaz_teilnehmen_14_02");//Kiedy ju� sko�czysz, wr�� do mnie i powiedz, jak ci posz�o.
	
	B_GiveInvItems (self, other, ITSC_Charm,1);
	MIS_Ignaz_Charm = LOG_RUNNING;
	
	Log_CreateTopic (TOPIC_Ignaz,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_Ignaz,LOG_RUNNING);
	B_LogEntry (TOPIC_Ignaz,"Mam wypr�bowa� nowe zakl�cie Ignaza. Jest to czar zapomnienia. Osoby, kt�re s� na mnie obra�one z jakiego� powodu, nie b�d� chcia�y ze mn� rozmawia�. W takim przypadku zakl�cie Ignaza mo�e okaza� si� naprawd� przydatne.");
	B_LogEntry (TOPIC_Ignaz,"Pobity nie b�dzie nawet pami�ta�, �e zg�osi� swoje pobicie stra�y. Teraz mog� zaatakowa� ka�dego w dzielnicy portowej bez obaw, �e si� na mnie obrazi.");
	
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info teilnhemen
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Ignaz_Running   (C_INFO)
{
	npc         = VLK_498_Ignaz;
	nr          = 2;
	condition   = DIA_Ignaz_Running_Condition;
	information = DIA_Ignaz_Running_Info;
	permanent   = FALSE;
	description = "Co do eksperymentu...";
};

FUNC INT DIA_Ignaz_Running_Condition()
{	
	if (MIS_Ignaz_Charm == LOG_RUNNING)
	&& (Charm_Test == FALSE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Ignaz_Running_Info()
{
	AI_Output (other, self, "DIA_Ignaz_Running_15_00");//Co do eksperymentu...
	AI_Output (self, other, "DIA_Ignaz_Running_14_01");//Czy pr�ba si� powiod�a? Czy tylko zmarnowa�e� zw�j? Co? M�w szybko.
	AI_Output (self, other, "DIA_Ignaz_Running_14_02");//Je�li potrzebujesz wi�cej zwoj�w z czarami, mo�esz je kupi� ode mnie.
	
};
///////////////////////////////////////////////////////////////////////
//	Info Danach
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Ignaz_Danach   (C_INFO)
{
	npc         = VLK_498_Ignaz;
	nr          = 6;
	condition   = DIA_Ignaz_Danach_Condition;
	information = DIA_Ignaz_Danach_Info;
	permanent   = FALSE;
	description = "U�y�em zwoju z twoim zakl�ciem.";
};
FUNC INT DIA_Ignaz_Danach_Condition()
{	
	if (Charm_Test == TRUE)
	&& (MIS_Ignaz_Charm == LOG_RUNNING)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Ignaz_Danach_Info()
{
	AI_Output (other, self, "DIA_Ignaz_Danach_15_00");//U�y�em zwoju z twoim zakl�ciem.
	AI_Output (self, other, "DIA_Ignaz_Danach_14_01");//Dobrze, dobrze. I co, zadzia�a�o?
	AI_Output (other, self, "DIA_Ignaz_Danach_15_02");//Tak, zadzia�a�o.
	AI_Output (self, other, "DIA_Ignaz_Danach_14_03");//Doskonale! Jeden ma�y krok dla nauki, jeden ogromny krok dla mojej kariery.
	AI_Output (self, other, "DIA_Ignaz_Danach_14_04");//Teraz mog� ci� nauczy� paru rzeczy o sztuce alchemii.
	AI_Output (self, other, "DIA_Ignaz_Danach_14_05");//Mog� ci r�wnie� da� kilka przydatnych przedmiot�w, je�li chcesz.
	
	self.aivar[AIV_CanTeach] = true;
	Log_CreateTopic (Topic_CityTeacher,LOG_NOTE);
	B_LogEntry (Topic_CityTeacher,"Ignaz mo�e mi pokaza� receptury na r�ne mikstury. Mieszka w dzielnicy portowej.");
	MIS_Ignaz_Charm = LOG_SUCCESS;
	B_GivePlayerXP (XP_MIS_Ignaz_Charm);
	
	CreateInvItems (self,ITSC_Charm, 3);
};
///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Ignaz_Trade   (C_INFO)
{
	npc         = VLK_498_Ignaz;
	nr          = 6;
	condition   = DIA_Ignaz_Trade_Condition;
	information = DIA_Ignaz_Trade_Info;
	permanent   = TRUE;
	trade 		= TRUE;
	description = "Poka� mi swoje towary.";
};
FUNC INT DIA_Ignaz_Trade_Condition()
{	
	if (MIS_Ignaz_Charm == LOG_SUCCESS)
	|| (Npc_KnowsInfo (other,DIA_Ignaz_Running))
	{
		return TRUE;
	};
};
FUNC VOID DIA_Ignaz_Trade_Info()
{
	B_GiveTradeInv (self);
	AI_Output (other, self, "DIA_Ignaz_Trade_15_00");//Poka� mi swoje towary.
};
