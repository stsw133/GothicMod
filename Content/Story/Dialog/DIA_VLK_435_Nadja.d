///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Nadja_EXIT   (C_INFO)
{
	npc         = VLK_435_Nadja;
	nr          = 999;
	condition   = DIA_Nadja_EXIT_Condition;
	information = DIA_Nadja_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Nadja_EXIT_Condition()
{	
		return true;
};
FUNC VOID DIA_Nadja_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info STANDARD
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_STANDARD		(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 =  3;
	condition	 = 	DIA_Nadja_STANDARD_Condition;
	information	 = 	DIA_Nadja_STANDARD_Info;
	important	 = 	true;
	permanent	 = 	true;
};

func int DIA_Nadja_STANDARD_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	&& (Bromor_Pay == false)
	{
		return true;
	};
};
var int Nadja_LuciaInfo;
func void DIA_Nadja_STANDARD_Info ()
{
	if (Nadja_LuciaInfo == true)
	{
		AI_Output (self, other, "DIA_ADDON_Nadja_STANDARD_16_00"); //Najpierw musisz pom�wi� z Bromorem.
	}
	else
	{
		AI_Output (self, other, "DIA_Nadja_STANDARD_16_00"); //Skarbie, nie mog� si� teraz tob� zaj��. Je�li chcesz si� zabawi�, porozmawiaj z Bromorem.
	};
	
	if (SC_HearedAboutMissingPeople == true)
	&& (SCKnowsMissingPeopleAreInAddonWorld == false)
	&& (Nadja_LuciaInfo == false) 
	{
		AI_Output (other, self, "DIA_ADDON_Nadja_STANDARD_15_01"); //Mam kilka pyta� w sprawie zaginionych.
		AI_Output (self, other, "DIA_ADDON_Nadja_STANDARD_16_02"); //Mog�abym ci co nieco powiedzie�, ale nie tutaj, kotku.
		AI_Output (other, self, "DIA_ADDON_Nadja_STANDARD_15_03"); //Chod�my wi�c na g�r�.
		AI_Output (self, other, "DIA_ADDON_Nadja_STANDARD_16_04"); //Dobra, ale musisz to najpierw za�atwi� z Bromorem - nie chc� �adnych k�opot�w.
		Nadja_LuciaInfo = true;
	};	
	
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info Danach
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_Danach		(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 =  2;
	condition	 = 	DIA_Nadja_Danach_Condition;
	information	 = 	DIA_Nadja_Danach_Info;
	important	 = 	true;
	permanent	 = 	true;
};

func int DIA_Nadja_Danach_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	&& (Bromor_Pay == false)
	&& (Nadja_Nacht == true)
	{
		return true;
	};
};
func void DIA_Nadja_Danach_Info ()
{
	AI_Output (self, other, "DIA_Nadja_Danach_16_00"); //Zapraszam ponownie.
	Nadja_Nacht = false;
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info STANDARD
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_hochgehen		(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 =  3;
	condition	 = 	DIA_Nadja_hochgehen_Condition;
	information	 = 	DIA_Nadja_hochgehen_Info;
	important	 = 	false;
	permanent	 = 	true;
	description	 =	"Chod�my na g�r�.";
};

func int DIA_Nadja_hochgehen_Condition ()
{	
	if (Bromor_Pay == 1)
	{
		return true;
	};
};
func void DIA_Nadja_hochgehen_Info ()
{
	AI_Output (other, self, "DIA_Nadja_hochgehen_15_00"); //Chod�my na g�r�.
	AI_Output (self, other, "DIA_Nadja_hochgehen_16_01"); //To tw�j szcz�liwy dzie� skarbie, chod�my.
	
	Bromor_Pay = 2;
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine (self,"DANCE");
};
///////////////////////////////////////////////////////////////////////
//	Info LuciaInfo
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Nadja_LuciaInfo		(C_INFO)
{
	npc		 = 	VLK_435_Nadja;
	nr		 = 	5;
	condition	 = 	DIA_Addon_Nadja_LuciaInfo_Condition;
	information	 = 	DIA_Addon_Nadja_LuciaInfo_Info;
	description	 = 	"Mo�emy ju� porozmawia�?";
};
func int DIA_Addon_Nadja_LuciaInfo_Condition ()
{
	if (Bromor_Pay == 2)
	&& (Npc_GetDistToWP (self,"NW_CITY_HABOUR_PUFF_NADJA") < 200) 
	&& (Nadja_LuciaInfo == true)
		{
			return true;
		};
};
var int Nadja_GaveLuciaInfo;
func void DIA_Addon_Nadja_LuciaInfo_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Nadja_LuciaInfo_15_00"); //Mo�emy ju� porozmawia�?
	AI_Output	(self, other, "DIA_Addon_Nadja_LuciaInfo_16_01"); //Tutaj nikt nam nie b�dzie przeszkadza�.
	AI_Output	(self, other, "DIA_Addon_Nadja_LuciaInfo_16_02"); //Bromor nie lubi, gdy gadamy z klientami w godzinach pracy, a on nic z tego nie ma.
	AI_Output	(self, other, "DIA_Addon_Nadja_LuciaInfo_16_03"); //Chcesz wiedzie� wi�cej o zaginionych mieszka�cach portu, co?
	AI_Output	(self, other, "DIA_Addon_Nadja_LuciaInfo_16_04"); //Nie wiem, czy b�d� w stanie ci pom�c... Ale wiem, gdzie znikn�a Lucia.

	Nadja_GaveLuciaInfo = true;
	
	Info_ClearChoices	(DIA_Addon_Nadja_LuciaInfo);
	Info_AddChoice	(DIA_Addon_Nadja_LuciaInfo, "To gdzie si� zmy�a?", DIA_Addon_Nadja_LuciaInfo_wo );
	Info_AddChoice	(DIA_Addon_Nadja_LuciaInfo, "Co z t� Luci�?", DIA_Addon_Nadja_LuciaInfo_lucia );
};
func void DIA_Addon_Nadja_LuciaInfo_lucia ()
{
	AI_Output	(other, self, "DIA_Addon_Nadja_LuciaInfo_lucia_15_00"); //Co z t� Luci�?
	AI_Output	(self, other, "DIA_Addon_Nadja_LuciaInfo_lucia_16_01"); //Nikogo nie smuci, �e jej ju� tu nie ma.
	AI_Output	(other, self, "DIA_Addon_Nadja_LuciaInfo_lucia_15_02"); //Czemu?
	AI_Output	(self, other, "DIA_Addon_Nadja_LuciaInfo_lucia_16_03"); //Wykorzystywa�a wszystko i wszystkich.
	AI_Output	(self, other, "DIA_Addon_Nadja_LuciaInfo_lucia_16_04"); //By�a dziwk� nie tylko z zawodu...
};
func void DIA_Addon_Nadja_LuciaInfo_wo ()
{
	AI_Output	(other, self, "DIA_Addon_Nadja_LuciaInfo_wo_15_00"); //To gdzie si� zmy�a?
	AI_Output	(self, other, "DIA_Addon_Nadja_LuciaInfo_wo_16_01"); //Cz�sto zadawa�a si� z Elvrichem, czeladnikiem Thorbena - stolarza z dolnego miasta.
	AI_Output	(self, other, "DIA_Addon_Nadja_LuciaInfo_wo_16_02"); //Za�o�� si�, �e to w�a�nie z nim uciek�a.

	Log_CreateTopic (TOPIC_Addon_Lucia, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_Lucia, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_Lucia,"Panienka lekkich obyczaj�w, Lucia, znikn�a w nocy z burdelu Bromora. Podobno uciek�a z czeladnikiem stolarza, Elvrichem."); 

	Info_AddChoice	(DIA_Addon_Nadja_LuciaInfo, "Gdzie mogli si� zaszy�?", DIA_Addon_Nadja_LuciaInfo_Elvrich );
};
func void DIA_Addon_Nadja_LuciaInfo_Elvrich ()
{
	AI_Output			(other, self, "DIA_Addon_Nadja_LuciaInfo_Elvrich_15_00"); //Gdzie mogli si� zaszy�?
	AI_Output			(self, other, "DIA_Addon_Nadja_LuciaInfo_Elvrich_16_01"); //Pewnie na jednej z okolicznych farm - o ile nie ze�ar�y ich wilki.
	AI_Output			(self, other, "DIA_Addon_Nadja_LuciaInfo_Elvrich_16_02"); //Gdzie jeszcze mogli uciec?

	Info_AddChoice	(DIA_Addon_Nadja_LuciaInfo, "Mo�esz mi powiedzie� co� jeszcze?", DIA_Addon_Nadja_LuciaInfo_sonst );
};
func void DIA_Addon_Nadja_LuciaInfo_sonst ()
{
	AI_Output			(other, self, "DIA_Addon_Nadja_LuciaInfo_sonst_15_00"); //Mo�esz mi powiedzie� co� jeszcze?
	AI_Output			(self, other, "DIA_Addon_Nadja_LuciaInfo_sonst_16_01"); //S�ysza�am wiele o ludziach gin�cych w porcie.
	AI_Output			(self, other, "DIA_Addon_Nadja_LuciaInfo_sonst_16_02"); //Problem polega na tym, �e nie wiem, na ile wiarygodne s� te historie.
	AI_Output			(self, other, "DIA_Addon_Nadja_LuciaInfo_sonst_16_03"); //Lepiej pom�w z tamtejszymi kupcami.
	AI_Output			(self, other, "DIA_Addon_Nadja_LuciaInfo_sonst_16_04"); //Przykro mi, nic wi�cej nie wiem.
	AI_Output			(self, other, "DIA_Addon_Nadja_LuciaInfo_sonst_16_05"); //Co z nami, kotku? Zap�aci�e� w ko�cu nie tylko za gadanie...
	AI_Output			(self, other, "DIA_Addon_Nadja_LuciaInfo_sonst_16_06"); //Na pewno nie chcesz si� troszeczk� zabawi�?

	Info_ClearChoices (DIA_Addon_Nadja_LuciaInfo);
	
	//Zusatz 
	if (MIS_Andre_REDLIGHT == LOG_RUNNING)
	&& (Knows_Borka_Dealer == false)
	{
		Info_AddChoice (DIA_Addon_Nadja_LuciaInfo,"Czekaj. Z powodu ziela...",DIA_Addon_Nadja_WAIT);
	};
	Info_AddChoice (DIA_Addon_Nadja_LuciaInfo,"Przykro mi - musz� ju� i��.",DIA_Addon_Nadja_LuciaInfo_weiter);
	Info_AddChoice (DIA_Addon_Nadja_LuciaInfo,"Czemu nie?...",DIA_Nadja_Poppen_Start);
};
func void DIA_Addon_Nadja_LuciaInfo_weiter ()
{
	AI_Output			(other, self, "DIA_Addon_Nadja_LuciaInfo_weiter_15_00"); //Przykro mi - musz� ju� i��.
	AI_Output			(self, other, "DIA_Addon_Nadja_LuciaInfo_weiter_16_01"); //Szkoda. Mo�e p�niej...
	
	Bromor_Pay = false;
	Nadja_Nacht += 1;
	
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine (self,"START");
};
FUNC VOID DIA_Addon_Nadja_WAIT()
{
	Info_ClearChoices (DIA_Addon_Nadja_LuciaInfo);
};


///////////////////////////////////////////////////////////////////////
//	Info STANDARD
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_Poppen	(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 =  3;
	condition	 = 	DIA_Nadja_Poppen_Condition;
	information	 = 	DIA_Nadja_Poppen_Info;
	permanent	 = 	true;
	description  = "(Zabaw si�)";
};

func int DIA_Nadja_Poppen_Condition ()
{	
	if (Bromor_Pay == 2)
	&& (Npc_GetDistToWP (self,"NW_CITY_HABOUR_PUFF_NADJA") < 300) 
	{
		return true;
	};
};
func void DIA_Nadja_Poppen_Info ()
{
	AI_Output (self, other, "DIA_Nadja_Poppen_16_00"); //Nast�pne kilka godzin nale�y do nas.
	AI_Output (self, other, "DIA_Nadja_Poppen_16_01"); //Czas si� troch� odpr�y� i zrelaksowa�.

	Info_ClearChoices (DIA_Nadja_Poppen);
	Info_AddChoice (DIA_Nadja_Poppen,"Dobra...",DIA_Nadja_Poppen_Start);
};
FUNC VOID DIA_Nadja_Poppen_Start()
{
	Bromor_Pay = false;
	Nadja_Nacht += 1;
	
	PlayVideo ("LOVESCENE.BIK");
	
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine (self,"START");
};

func void DIA_Addon_Nadja_LuciaInfo_Pop ()
{
	DIA_Nadja_Poppen_Start ();
};

///////////////////////////////////////////////////////////////////////
//	Info BUYHERB
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_BUYHERB		(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 = 	2;
	condition	 = 	DIA_Nadja_BUYHERB_Condition;
	information	 = 	DIA_Nadja_BUYHERB_Info;
	permanent	 =	true;
	description	 = 	"Nie wiesz, gdzie m�g�bym kupi� troch� ziela?";
};
func int DIA_Nadja_BUYHERB_Condition ()
{	
	if 	(MIS_Andre_REDLIGHT == LOG_RUNNING) 
	&& (Npc_KnowsInfo (other,DIA_Nadja_WANT_HERB) == false)
	&& (Nadja_Money == false)
	&& (Undercover_Failed == false)
	{
		return true;
	};
};
func void DIA_Nadja_BUYHERB_Info ()
{
	var C_ITEM heroArmor; heroArmor = Npc_GetEquippedArmor(other);
	
	AI_Output (other, self, "DIA_Nadja_BUYHERB_15_00"); //Nie wiesz, gdzie m�g�bym kupi� troch� ziela?
	
	if  (Npc_GetDistToWP (self,"NW_CITY_HABOUR_PUFF_NADJA") < 500) 
	{	
		if (Hlp_IsItem (heroArmor, ItAR_MIl_L) == true)
		|| (Hlp_IsItem (heroArmor, ItAR_MIl_M) == true)
		|| (Hlp_IsItem (heroArmor, ItAR_MIl_H) == true)
		|| (Hlp_IsItem (heroArmor, ItAR_MIl_N) == true)
		{
			AI_Output (self, other, "DIA_Nadja_BUYHERB_16_01"); //A sk�d ja mam to wiedzie�? Zreszt�, nawet gdybym wiedzia�a, to i tak nie powiedzia�abym stra�nikowi miejskiemu.
			Undercover_Failed = true;
		}
		else
		{
			AI_Output (self, other, "DIA_Nadja_BUYHERB_16_02"); //Je�li mam ci co� powiedzie�, to lepiej wytrz��nij kilka sztuk z�ota z sakiewki.
			AI_Output (other, self, "DIA_Nadja_BUYHERB_15_03"); //Ile chcesz?
			AI_Output (self, other, "DIA_Nadja_BUYHERB_16_04"); //50 sztuk z�ota powinno wystarczy�.
			Nadja_Money = true;
		};
	}
	else 
	{
		B_Say	(self, other,"$NOTNOW");
	};
};
///////////////////////////////////////////////////////////////////////
//	Info WANT_HERB
///////////////////////////////////////////////////////////////////////
instance DIA_Nadja_WANT_HERB		(C_INFO)
{
	npc			 = 	VLK_435_Nadja;
	nr			 = 	2;
	condition	 = 	DIA_Nadja_WANT_HERB_Condition;
	information	 = 	DIA_Nadja_WANT_HERB_Info;
	permanent	 =  false;
	description	 = 	"Powiedz mi, gdzie tu kupi� ziele (zap�a� 50 sztuk z�ota).";
};
func int DIA_Nadja_WANT_HERB_Condition ()
{	
	if 	(Npc_HasItems (other, ITmi_Gold) >= 50)
	&&  (Nadja_Money == true)		
	&&  (MIS_Andre_REDLIGHT == LOG_RUNNING) 
	{
		return true;
	};
};
func void DIA_Nadja_WANT_HERB_Info ()
{
	var C_ITEM heroArmor; heroArmor = Npc_GetEquippedArmor(other);
	AI_Output (other, self, "DIA_Nadja_WANT_HERB_15_00"); //Teraz m�w, gdzie mog� zdoby� ziele.
	
	if (Hlp_IsItem (heroArmor, ItAR_MIl_L) == true)
	|| (Hlp_IsItem (heroArmor, ItAR_MIl_M) == true)
	|| (Hlp_IsItem (heroArmor, ItAR_MIl_H) == true)
	|| (Hlp_IsItem (heroArmor, ItAR_MIl_N) == true)
	{
		AI_Output (self, other, "DIA_Nadja_WANT_HERB_16_01"); //Wybacz, jako� nie mog� sobie przypomnie�.
	}
	else
	{
		B_GiveInvItems	(other, self, ItMi_Gold, 50); 
		AI_Output (self, other, "DIA_Nadja_WANT_HERB_16_02"); //Porozmawiaj z Bork�, skarbie. Powinien mie� jakie� ziele.
		Knows_Borka_Dealer = true;
	};
};
