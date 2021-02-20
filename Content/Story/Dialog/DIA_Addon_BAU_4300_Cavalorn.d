//******************************************************************************************
//	Info EXIT
//******************************************************************************************
INSTANCE DIA_Addon_Cavalorn_EXIT (C_INFO)
{
	npc									=	Bau_4300_Addon_Cavalorn;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Addon_Cavalorn_EXIT_Info;
	permanent 							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Addon_Cavalorn_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

///////////////////////////////////////////////////////////////////////
//	C_BragoBanditsDead
///////////////////////////////////////////////////////////////////////
func int C_BragoBanditsDead()
{
	if (Npc_IsDead(Ambusher_1013) || (Bdt_1013_Away == true))
	&& (Npc_IsDead(Ambusher_1014))
	&& (Npc_IsDead(Ambusher_1015))
	{
		return true;
	};
};

//******************************************************************************************
//	Info MeetingIsRunning
//******************************************************************************************
instance DIA_Addon_Cavalorn_MeetingIsRunning (C_INFO)
{
	npc									=	Bau_4300_Addon_Cavalorn;
	nr									=	1;
	condition							=	DIA_Addon_Cavalorn_MeetingIsRunning_Condition;
	information							=	DIA_Addon_Cavalorn_MeetingIsRunning_Info;
	important							=	true;
};

func int DIA_Addon_Cavalorn_MeetingIsRunning_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (RangerMeetingRunning == LOG_RUNNING)
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_MeetingIsRunning_Info()
{
	AI_Output (self, other, "DIA_Addon_Cavalorn_MeetingIsRunning_08_00"); //Witaj w Kr�gu, przyjacielu.
};

//******************************************************************************************
//	Info Hallo
//******************************************************************************************
instance DIA_Addon_Cavalorn_HALLO (C_INFO)
{
	npc									=	Bau_4300_Addon_Cavalorn;
	nr									=	1;
	condition							=	DIA_Addon_Cavalorn_HALLO_Condition;
	information							=	DIA_Addon_Cavalorn_HALLO_Info;
	important							=	true;
};

func int DIA_Addon_Cavalorn_HALLO_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_HALLO_Info ()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_HALLO_15_00"); //Jakie� k�opoty?
	AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_08_01"); //Do diab�a. Nie wiem, gdzie si� ukrywaj�. Zabijesz jednego, ale zaraz wracaj�.
	AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_08_02"); //Chwila. Ja ciebie znam. To ty ci�gle �ebra�e� u mnie o strza�y, jeszcze w G�rniczej Dolinie.
	AI_Output (other, self, "DIA_Addon_Cavalorn_HALLO_Ja_15_00"); //Nazywasz si� Cavalorn, tak?
	AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_Ja_08_01"); //Ach, nie zapomnia�e� o mnie. Koniec ko�c�w obaj przeszli�my przez t� przekl�t� koloni�.
	AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_Ja_08_02"); //Dok�d idziesz?

	Info_ClearChoices(DIA_Addon_Cavalorn_HALLO);
	Info_AddChoice (DIA_Addon_Cavalorn_HALLO, "Nie mam okre�lonego celu.", DIA_Addon_Cavalorn_HALLO_keinZiel);
	Info_AddChoice (DIA_Addon_Cavalorn_HALLO, "Z powrotem do G�rniczej Doliny.", DIA_Addon_Cavalorn_HALLO_Bauern);
	Info_AddChoice (DIA_Addon_Cavalorn_HALLO, "Do miasta.", DIA_Addon_Cavalorn_HALLO_Stadt);
};
func void DIA_Addon_Cavalorn_HALLO_Stadt()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_HALLO_Stadt_15_00"); //Do miasta.
	AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_Stadt_08_01"); //Ach, te� do miasta.
	if (Mil_310_Stadtwache.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	{
		AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_Stadt_08_02"); //Mia�by� k�opoty ze stra��. Teraz, gdy a� roi si� tu od bandyt�w, nie ka�dy mo�e wej�� do miasta.
		AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_Stadt_08_03"); //Kilka dni temu przechodzi� t�dy jeden ze starych Psionik�w z G�rniczej Doliny. M�wi�, �e mo�e wchodzi� i wychodzi� z Khorinis, kiedy tylko chce.
		AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_Stadt_08_04"); //Poszed� do doliny pod t� du�� wie��. Gdzie� w okolicy wodospadu musi by� przej�cie.
		AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_Stadt_08_05"); //Mo�e powiniene� z nim porozmawia�.
	};
	Info_ClearChoices(DIA_Addon_Cavalorn_HALLO);
};

func void DIA_Addon_Cavalorn_HALLO_Bauern()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_HALLO_Bauern_15_00"); //Z powrotem do G�rniczej Doliny.
	AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_Bauern_08_01"); //Naprawd�? Hmm. Szkoda, �e nie mog� z tob� i��, ale musz� za�atwi� kilka spraw.
	AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_Bauern_08_02"); //Je�eli dostaniesz si� do G�rniczej Doliny, sprawd�, czy moja chata jeszcze stoi, dobrze? Pewnego dnia chcia�bym tam wr�ci�.

	QuestStep_CavalornHut = SetQuestStatus (Quest_CavalornHut, LOG_RUNNING, QuestStep_CavalornHut);
	SetNoteEntry (Quest_CavalornHut, LOG_MISSION, "Cavalorn chce, �ebym sprawdzi�, czy w G�rniczej Dolinie wci�� stoi jego stara chata. Z tego, co pami�tam, znajdowa�a si� ona na wzg�rzach na zach�d od Starego Obozu. Wydaje mi si�, �e co� tam mog�o zosta�.");

	Info_ClearChoices(DIA_Addon_Cavalorn_HALLO);
};

func void DIA_Addon_Cavalorn_HALLO_keinZiel()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_HALLO_keinZiel_15_00"); //Nie mam okre�lonego celu.
	AI_Output (self, other, "DIA_Addon_Cavalorn_HALLO_keinZiel_08_01"); //Nie chcesz powiedzie�, co? Nie ma sprawy.
	Info_ClearChoices(DIA_Addon_Cavalorn_HALLO);
};

//******************************************************************************************
//	Info Beutel
//******************************************************************************************
instance DIA_Addon_Cavalorn_Beutel (C_INFO)
{
	npc									=	Bau_4300_Addon_Cavalorn;
	nr									=	2;
	condition							=	DIA_Addon_Cavalorn_Beutel_Condition;
	information							=	DIA_Addon_Cavalorn_Beutel_Info;
	description							=	"By�em w twojej chacie w G�rniczej Dolinie.";
};

func int DIA_Addon_Cavalorn_Beutel_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_HALLO))
	&& (Npc_HasItems(other,ItSe_CavalornsBeutel))
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_Beutel_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_Beutel_15_00"); //By�em w twojej chacie w G�rniczej Dolinie.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Beutel_08_01"); //A zatem jeszcze stoi.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Beutel_08_03"); //Uda�o ci si� to znale��?
	AI_Output (other, self, "DIA_Addon_Cavalorn_Beutel_15_04"); //Je�eli m�wisz o torbie pe�nej rudy... Tak, mam j�.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Beutel_08_05"); //Ale z ciebie spryciula, wiesz o tym?
	AI_Output (self, other, "DIA_Addon_Cavalorn_Beutel_08_07"); //Masz j� ze sob�? Dam ci za ni� 100 sztuk z�ota.
	AI_Output (other, self, "DIA_Addon_Cavalorn_Beutel_ja_15_00"); //Pewnie.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Beutel_ja_08_01"); //�wietnie.

	B_GiveInvItems (self, other, ItMi_Gold, 100);
	B_GiveInvItems (other, self, ItSe_CavalornsBeutel, 1);
	B_GivePlayerXP(XP_BONUS_5);

	AI_Output (other, self, "DIA_Addon_Cavalorn_Beutel_why_15_00"); //A dlaczego j� zostawi�e�?
	AI_Output (self, other, "DIA_Addon_Cavalorn_Beutel_why_08_01"); //Kto m�g�by przypuszcza�, �e w Khorinis ruda jest tak cenna.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Beutel_why_08_02"); //W kolonii za g�upi kawa�ek rudy nie dosta�by� nawet miejsca do spania.

	QuestStep_CavalornHut = SetQuestStatus (Quest_CavalornHut, LOG_SUCCESS, QuestStep_CavalornHut);
};

//******************************************************************************************
//	Info WasMachstdu
//******************************************************************************************
instance DIA_Addon_Cavalorn_WASMACHSTDU (C_INFO)
{
	npc									=	Bau_4300_Addon_Cavalorn;
	nr									=	3;
	condition							=	DIA_Addon_Cavalorn_WASMACHSTDU_Condition;
	information							=	DIA_Addon_Cavalorn_WASMACHSTDU_Info;
	description							=	"Co tu robisz?";
};

func int DIA_Addon_Cavalorn_WASMACHSTDU_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_HALLO))
	&& (MIS_Addon_Nefarius_BringMissingOrnaments == 0)
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_WASMACHSTDU_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_WASMACHSTDU_15_00"); //Co tu robisz?
	AI_Output (self, other, "DIA_Addon_Cavalorn_WASMACHSTDU_08_01"); //Utkn��em. Gdyby nie ci przekl�ci bandyci, w og�le by mnie tu nie by�o.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Banditen_08_04"); //Ciesz� si�, �e darowali mi �ycie. Nie uwa�a�em i dosta�em w czaszk�.
	if (C_BragoBanditsDead() == false)
	{
		AI_Output (self, other, "DIA_Addon_Cavalorn_Banditen_08_05"); //Nie wiem, jak mam teraz odzyska� swoje rzeczy.
	};
};

//******************************************************************************************
//	Info ARTEFAKT
//******************************************************************************************
instance DIA_Addon_Cavalorn_ARTEFAKT (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	3;
	condition							=	DIA_Addon_Cavalorn_ARTEFAKT_Condition;
	information							=	DIA_Addon_Cavalorn_ARTEFAKT_Info;
	description							=	"Zosta�e� obrabowany przez bandyt�w?";
};

func int DIA_Addon_Cavalorn_ARTEFAKT_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_WASMACHSTDU))
	&& (QuestStep_KillBrago != LOG_SUCCESS)
	&& (MIS_Addon_Nefarius_BringMissingOrnaments == 0)
	&& (QuestStep_CavalornLetter != LOG_SUCCESS)
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_ARTEFAKT_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_ARTEFAKT_15_00"); //Zosta�e� obrabowany przez bandyt�w?
	AI_Output (self, other, "DIA_Addon_Cavalorn_ARTEFAKT_08_01"); //Tak. Og�uszyli mnie i zostawili jako �arcie dla goblin�w.
	AI_Output (self, other, "DIA_Addon_Cavalorn_ARTEFAKT_08_02"); //To by�y piekielnie wa�ne rzeczy. List i ca�a moja got�wka. Musz� je odzyska�.
	AI_Output (self, other, "DIA_Addon_Cavalorn_ARTEFAKT_08_03"); //Nie p�jd� tam jednak bez wsparcia. Ta tch�rzliwa ha�astra bandyt�w...
};

//******************************************************************************************
//	Info HELFEN
//******************************************************************************************
instance DIA_Addon_Cavalorn_HELFEN (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	3;
	condition							=	DIA_Addon_Cavalorn_HELFEN_Condition;
	information							=	DIA_Addon_Cavalorn_HELFEN_Info;
	description							=	"Mog� ci pom�c z tymi bandytami?";
};

func int DIA_Addon_Cavalorn_HELFEN_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_ARTEFAKT))
	&& (MIS_Addon_Nefarius_BringMissingOrnaments == 0)
	&& (QuestStep_CavalornLetter != LOG_SUCCESS)
	&& (C_BragoBanditsDead() == false)
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_HELFEN_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_HELFEN_15_00"); //Mog� ci pom�c z tymi bandytami?
	AI_Output (self, other, "DIA_Addon_Cavalorn_HELFEN_08_02"); //No c�. Musz� chyba przyj�� twoj� ofert�. Nie mam zbyt wiele czasu.
	AI_Output (self, other, "DIA_Addon_Cavalorn_HELFEN_08_03"); //Dobra, s�uchaj. W dole tej �cie�ki jest jedna z tych brudnych dziur, w kt�rych ukrywaj� si� bandyci.
	AI_Output (self, other, "DIA_Addon_Cavalorn_HELFEN_08_04"); //To te �otry ukrad�y moje rzeczy.
	AI_Output (self, other, "DIA_Addon_Cavalorn_HELFEN_08_05"); //Daj zna�, gdy b�dziesz got�w. Ruszymy za tymi szczurami!

	QuestStep_KillBrago = SetQuestStatus (Quest_KillBrago, LOG_RUNNING, QuestStep_KillBrago);
	SetNoteEntry (Quest_KillBrago, LOG_MISSION, "Bandyci ukradli co� cennego Cavalornowi. Chce, �eby�my razem ich zabili.");
};

//******************************************************************************************
//	Info AUSRUESTUNG
//******************************************************************************************
instance DIA_Addon_Cavalorn_AUSRUESTUNG (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	8;
	condition							=	DIA_Addon_Cavalorn_AUSRUESTUNG_Condition;
	information							=	DIA_Addon_Cavalorn_AUSRUESTUNG_Info;
	description							=	"Potrzebuj� lepszego sprz�tu.";
};

func int DIA_Addon_Cavalorn_AUSRUESTUNG_Condition()
{
	if (QuestStep_KillBrago != 0)
	&& (MIS_Addon_Nefarius_BringMissingOrnaments == 0)
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_AUSRUESTUNG_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_AUSRUESTUNG_15_00"); //Potrzebuj� lepszego sprz�tu.
	if (C_BragoBanditsDead() == false)
	{
		AI_Output (self, other, "DIA_Addon_Cavalorn_AUSRUESTUNG_08_01"); //Te �winie nie zostawi�y mi zbyt wiele.
	};
	AI_Output (self, other, "DIA_Addon_Cavalorn_AUSRUESTUNG_08_02"); //Mog� ci da� n� na wilki. Wystarczy?
	AI_Output (other, self, "DIA_Addon_Cavalorn_AUSRUESTUNG_15_03"); //Tak, n� b�dzie dobry.

	CreateInvItems (self, ItMw_1H_Sword_L_03, 1);
	B_GiveInvItems (self, other, ItMw_1H_Sword_L_03, 1);

	AI_Output (other, self, "DIA_Addon_Cavalorn_AUSRUESTUNG_15_04"); //A co z leczeniem?
	AI_Output (self, other, "DIA_Addon_Cavalorn_AUSRUESTUNG_08_05"); //Zosta�y mi dwie mikstury uzdrawiaj�ce. Chcesz?
	AI_Output (other, self, "DIA_Addon_Cavalorn_AUSRUESTUNG_15_06"); //Pewnie. Wezm� je.

	CreateInvItems (self, ItPo_Health_01, 2);
	B_GiveInvItems (self, other, ItPo_Health_01, 2);
};

//******************************************************************************************
//	Info LETSKILLBANDITS
//******************************************************************************************
instance DIA_Addon_Cavalorn_LETSKILLBANDITS (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	9;
	condition							=	DIA_Addon_Cavalorn_LETSKILLBANDITS_Condition;
	information							=	DIA_Addon_Cavalorn_LETSKILLBANDITS_Info;
	description							=	"Chod�my zabi� tych gnojk�w.";
};

func int DIA_Addon_Cavalorn_LETSKILLBANDITS_Condition()
{
	if (QuestStep_KillBrago == LOG_RUNNING)
	&& (MIS_Addon_Nefarius_BringMissingOrnaments == 0)
	&& (QuestStep_CavalornLetter != LOG_SUCCESS)
	&& (C_BragoBanditsDead() == false)
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_LETSKILLBANDITS_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_LETSKILLBANDITS_15_00"); //Chod�my zabi� tych gnojk�w.
	AI_Output (self, other, "DIA_Addon_Cavalorn_LETSKILLBANDITS_08_01"); //Dobra. Tylko mnie os�aniaj, jasne?
	AI_Output (self, other, "DIA_Addon_Cavalorn_LETSKILLBANDITS_08_02"); //A teraz czeka ich paskudna niespodzianka.

	Npc_ExchangeRoutine	(self, "KillBandits");
	self.aivar[AIV_PARTYMEMBER] = true;

	if (Bdt_1013_Away == false)
	{
		Ambusher_1013.aivar[AIV_EnemyOverride] = false;
	};
	Ambusher_1014.aivar[AIV_EnemyOverride] = false;
	Ambusher_1015.aivar[AIV_EnemyOverride] = false;

	AI_StopProcessInfos(self);
};

//******************************************************************************************
func void B_Addon_Cavalorn_VatrasBrief()
{
	B_GivePlayerXP(XP_BONUS_1);
	QuestStep_KillBrago = SetQuestStatus (Quest_KillBrago, LOG_SUCCESS, QuestStep_KillBrago);

	if (QuestStep_CavalornLetter != LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_00"); //Przynajmniej mog� wykona� zadanie. I tak zmarnowa�em ju� zbyt wiele czasu.
		AI_Output (other, self, "DIA_Addon_Cavalorn_VatrasBrief_15_01"); //Jakie zadanie...?
		AI_Output (self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_02"); //Ech. Musz� si� dosta� do miasta, a p�niej...
		AI_Output (self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_03"); //Nie wiem tylko, jak mam zd��y�.
		AI_Output (other, self, "DIA_Addon_Cavalorn_VatrasBrief_15_04"); //A co ze mn�?
		AI_Output (self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_05"); //Hmm. Czemu nie. M�g�by� zanie�� list do miasta.
	};
	AI_Output (self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_06"); //Dzi�ki temu b�d� mia� czas, �eby pozbiera� sprz�t.
	if (QuestStep_CavalornLetter != LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_07"); //Jeden z tych bandyt�w powinien mie� list w kieszeni.
		AI_Output (self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_08"); //Zanie� go do miasta i oddaj magowi Kr�gu Wody, Vatrasowi. Znajdziesz go w �wi�tyni Adanosa. Naucza tam ca�ymi dniami.
		AI_Output (self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_09"); //Powiedz mu, �e nie zd��y�em na czas.
		AI_Output (self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_10"); //A gdyby ci� zapyta�, gdzie jestem, powiedz, �e w drodze na miejsce spotkania, dobrze?
		SetNoteEntry (Quest_WaterMages, LOG_MISSION, "Maga Wody, Vatrasa, mo�na znale�� w portowym mie�cie Khorinis. G�osi tam kazania w �wi�tyni Adanosa.");
	};

	if (Npc_HasEquippedArmor(other) == false)
	{
		AI_Output (self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_11"); //Aha, jeszcze jedno: kup sobie od jakiego� wie�niaka porz�dne ubranie.
		AI_Output (self, other, "DIA_Addon_Cavalorn_VatrasBrief_08_12"); //Inaczej wezm� ci� za bandyt�. Masz, tu jest par� monet.
		CreateInvItems (self, ItMi_Gold, 50);
		B_GiveInvItems (self, other, ItMi_Gold, 50);
	};

	QuestStep_CavalornLetter = SetQuestStatus (Quest_CavalornLetter, LOG_RUNNING, QuestStep_CavalornLetter);
	SetNoteEntry (Quest_CavalornLetter, LOG_MISSION, "Cavalorn chce, �ebym zani�s� list magowi wody Vatrasowi");

	QuestStep_WaterMages = SetQuestStatus (Quest_WaterMages, LOG_RUNNING, QuestStep_WaterMages);

	Npc_ExchangeRoutine (self, "Start");
	self.aivar[AIV_PARTYMEMBER] = false;
};

//******************************************************************************************
//	Info BragoKilled
//******************************************************************************************
instance DIA_Addon_Cavalorn_BragoKilled (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	9;
	condition							=	DIA_Addon_Cavalorn_BragoKilled_Condition;
	information							=	DIA_Addon_Cavalorn_BragoKilled_Info;
	important							=	true;
};

func int DIA_Addon_Cavalorn_BragoKilled_Condition()
{
	if (Npc_GetDistToWP(self,"NW_XARDAS_BANDITS_LEFT") < 500)
	&& (QuestStep_KillBrago == LOG_RUNNING)
	&& (self.aivar[AIV_PartyMember] == true)
	&& (C_BragoBanditsDead() == true)
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_BragoKilled_Info()
{
	AI_Output (self, other, "DIA_Addon_Cavalorn_BragoKilled_08_00"); //No to za�atwione. Ech. Mogli ze mn� nie zaczyna�.
	B_Addon_Cavalorn_VatrasBrief();
};

//******************************************************************************************
//	Info PCKilledBrago
//******************************************************************************************
instance DIA_Addon_Cavalorn_PCKilledBrago (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	9;
	condition							=	DIA_Addon_Cavalorn_PCKilledBrago_Condition;
	information							=	DIA_Addon_Cavalorn_PCKilledBrago_Info;
	description							=	"Bandyci s� ju� martwi.";
};

func int DIA_Addon_Cavalorn_PCKilledBrago_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_WASMACHSTDU))
	&& (!Npc_KnowsInfo(other,DIA_Addon_Cavalorn_BragoKilled))
	&& (self.aivar[AIV_PartyMember] == false)
	&& (C_BragoBanditsDead() == true)
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_PCKilledBrago_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_PCKilledBrago_15_00"); //Bandyci s� ju� martwi.
	B_Addon_Cavalorn_VatrasBrief();
};

//******************************************************************************************
//	Info JUNGS
//******************************************************************************************
instance DIA_Addon_Cavalorn_JUNGS (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	5;
	condition							=	DIA_Addon_Cavalorn_JUNGS_Condition;
	information							=	DIA_Addon_Cavalorn_JUNGS_Info;
	description							=	"Masz na sobie interesuj�cy pancerz.";
};

func int DIA_Addon_Cavalorn_JUNGS_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_HALLO))
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_JUNGS_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_JUNGS_15_00"); //Masz na sobie interesuj�cy pancerz. Nie nale�ysz ju� do Cieni?
	AI_Output (self, other, "DIA_Addon_Cavalorn_JUNGS_08_01"); //Cieni? Od upadku bariery ju� nie istniej�.
	AI_Output (self, other, "DIA_Addon_Cavalorn_JUNGS_08_02"); //Gdy tylko mogli�my opu�ci� G�rnicz� Dolin�, nie by�o powodu, �eby tam d�u�ej zostawa�.
	AI_Output (self, other, "DIA_Addon_Cavalorn_JUNGS_08_03"); //Teraz pracuj� dla mag�w wody. Jestem cz�onkiem Wodnego Kr�gu.

	SC_KnowsRanger = true;

	QuestStep_WaterRing = SetQuestStatus (Quest_WaterRing, LOG_RUNNING, QuestStep_WaterRing);
	SetNoteEntry (Quest_WaterRing, LOG_MISSION, "Cavalorn powiedzia� mi, �e nale�y do grupy zw�cej si� Wodny Kr�g.");

	Cavalorn_RangerHint = true;
};

//******************************************************************************************
//	Ring
//******************************************************************************************
instance DIA_Addon_Cavalorn_Ring (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	5;
	condition							=	DIA_Addon_Cavalorn_Ring_Condition;
	information							=	DIA_Addon_Cavalorn_Ring_Info;
	description							=	"Powiedz mi co� wi�cej o Wodnym Kr�gu!";
};

func int DIA_Addon_Cavalorn_Ring_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_JUNGS))
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_Ring_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_Ring_15_00"); //Powiedz mi co� wi�cej o Wodnym Kr�gu!
	AI_Output (self, other, "DIA_Addon_Cavalorn_Ring_08_01"); //Nie wolno mi o tym m�wi�.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Ring_08_02"); //Mog� ci� jedynie wys�a� do Vartasa. On reprezentuje Mag�w Wody w Khorinis.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Ring_08_03"); //Najlepiej b�dzie, jak z nim porozmawiasz. Powiedz, �e ja ci� przys�a�em.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Ring_08_04"); //Mo�e pozwoli ci wst�pi� do Kr�gu. Bardzo potrzeba nam dobrych ludzi...

	SetNoteEntry (Quest_WaterRing, LOG_MISSION, "Vatras, Mag Wody, mo�e powiedzie� mi wi�cej o Wodnym Kr�gu.");
};

//******************************************************************************************
//	Gegner
//******************************************************************************************
instance DIA_Addon_Cavalorn_Feinde (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	6;
	condition							=	DIA_Addon_Cavalorn_Feinde_Condition;
	information							=	DIA_Addon_Cavalorn_Feinde_Info;
	description							=	"Czy ty i twoi ludzie nie byli�cie czasem przeciwnikami Mag�w Wody?";
};

func int DIA_Addon_Cavalorn_Feinde_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_JUNGS))
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_Feinde_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_Feinde_15_00"); //Czy ty i twoi ludzie nie byli�cie czasem przeciwnikami Mag�w Wody?
	AI_Output (self, other, "DIA_Addon_Cavalorn_Feinde_08_01"); //Szalona przesz�o�� jest ju� za nami. Nie ma ju� Nowego ani Starego Obozu.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Feinde_08_02"); //A teraz, gdy nie ma ju� kolonii karnej, ka�dy odpowiada za siebie.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Feinde_08_03"); //Wi�kszo�� z nas - by�ych wi�ni�w - nie zosta�a uniewinniona.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Feinde_08_04"); //Magowie Wody zdo�ali uzyska� dla mnie u�askawienie i mog� teraz porusza� si� swobodnie.
};

//******************************************************************************************
//	Wo KdW
//******************************************************************************************
instance DIA_Addon_Cavalorn_KdWTask (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	7;
	condition							=	DIA_Addon_Cavalorn_KdWTask_Condition;
	information							=	DIA_Addon_Cavalorn_KdWTask_Info;
	description							=	"Co porabiaj� teraz Magowie Wody?";
};

func int DIA_Addon_Cavalorn_KdWTask_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_JUNGS))
	&& (MIS_Addon_Nefarius_BringMissingOrnaments == 0)
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_KdWTask_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_KdWTask_15_00"); //Co porabiaj� teraz Magowie Wody?
	AI_Output (self, other, "DIA_Addon_Cavalorn_KdWTask_08_01"); //Maj� wielki plan. Chodzi o niezbadan� cz�� wyspy.
	AI_Output (other, self, "DIA_Addon_Cavalorn_KdWTask_15_02"); //Niezbadan� cz��? Gdzie ona jest?
	AI_Output (self, other, "DIA_Addon_Cavalorn_KdWTask_08_03"); //Nie mog� ci powiedzie� nic wi�cej. Porozmawiaj z Vatrasem w Khorinis.
};	

//******************************************************************************************
//	Info BroughtLetter
//******************************************************************************************
instance DIA_Addon_Cavalorn_BroughtLetter (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	4;
	condition							=	DIA_Addon_Cavalorn_BroughtLetter_Condition;
	information							=	DIA_Addon_Cavalorn_BroughtLetter_Info;
	description							=	"Da�em Vatrasowi tw�j list.";
};

func int DIA_Addon_Cavalorn_BroughtLetter_Condition()
{
	if (QuestStep_CavalornLetter == LOG_SUCCESS)
	&& (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_JUNGS))
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_BroughtLetter_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_BroughtLetter_15_00"); //Da�em Vatrasowi tw�j list.
	AI_Output (self, other, "DIA_Addon_Cavalorn_BroughtLetter_08_01"); //Nie oczekiwa�em od ciebie niczego innego. Dzi�kuj�.
	B_GivePlayerXP(XP_BONUS_1);
};

//******************************************************************************************
//	Info Ornament
//******************************************************************************************
instance DIA_Addon_Cavalorn_Ornament (C_INFO)
{
	npc									=	Bau_4300_Addon_Cavalorn;
	nr									=	5;
	condition							=	DIA_Addon_Cavalorn_Ornament_Condition;
	information							=	DIA_Addon_Cavalorn_Ornament_Info;
	description							=	"Szukasz czego�?";
};

func int DIA_Addon_Cavalorn_Ornament_Condition()
{
	if (MIS_Addon_Nefarius_BringMissingOrnaments == LOG_RUNNING)
	&& (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_HALLO))
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_Ornament_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_Ornament_15_00"); //Szukasz czego�?
	AI_Output (self, other, "DIA_Addon_Cavalorn_Ornament_08_01"); //To takie oczywiste? Tak, Magowie Wody kazali mi szuka� zgubionych ornament�w.
	AI_Output (other, self, "DIA_Addon_Cavalorn_Ornament_15_02"); //Interesuj�cy zbieg okoliczno�ci. Otrzyma�em taki sam rozkaz od Nefariusa.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Ornament_08_06"); //To dobrze. W takim razie nie musz� tego robi� sam.
	AI_Output (other, self, "DIA_Addon_Cavalorn_Ornament_15_07"); //Znalaz�e� ju� jaki� ornament?
	AI_Output (self, other, "DIA_Addon_Cavalorn_Ornament_08_08"); //Znam miejsce, w kt�rym powinni�my co� znale��.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Ornament_08_09"); //Ten kamienny kr�g mo�e by� jedn� z tych budowli, kt�re opisa� Nefarius.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Ornament_08_10"); //Teraz musimy tylko znale�� mechanizm.
};

//******************************************************************************************
//	Info Triggered
//******************************************************************************************
instance DIA_Addon_Cavalorn_Triggered (C_INFO)
{
	npc									=	Bau_4300_Addon_Cavalorn;
	nr									=	5;
	condition							=	DIA_Addon_Cavalorn_Triggered_Condition;
	information							=	DIA_Addon_Cavalorn_Triggered_Info;
	description							=	"Uruchomi�em mechanizm. Nic si� nie sta�o.";
};

func int DIA_Addon_Cavalorn_Triggered_Condition()
{
	if (MIS_Addon_Nefarius_BringMissingOrnaments == LOG_RUNNING)
	&& (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_Ornament))
	&& (ORNAMENT_SWITCHED_FARM == true)
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_Triggered_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_Triggered_15_00"); //Uruchomi�em mechanizm. Nic si� nie sta�o.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Triggered_08_01"); //W takim razie wie�niacy Lobarta mieli racj�.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Triggered_08_02"); //Powiedzieli, �e kto� ju� kr�ci� si� przy tych kamieniach.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Triggered_08_03"); //Nagle znik�d pojawi� si� kamienny stra�nik i ich zaatakowa�.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Triggered_08_04"); //Farmerzy wezwali stra�, �o�nierze paladyn�w, a ci przyszli i zniszczyli potwora.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Triggered_08_05"); //Przeszuka�em ju� ca�y teren. Je�eli by� tu jaki� ornament, maj� go teraz paladyni.

	Info_ClearChoices(DIA_Addon_Cavalorn_Triggered);
	Info_AddChoice (DIA_Addon_Cavalorn_Triggered, "Jeden z nas musi p�j�� do g�rnego miasta.", DIA_Addon_Cavalorn_Triggered_Pal);
	Info_AddChoice (DIA_Addon_Cavalorn_Triggered, "W takim razie p�jd� do nich i odzyskam ornament.", DIA_Addon_Cavalorn_Triggered_OBack);
};

func void B_Cavalorn_Triggered_Wohin()
{
	AI_UnequipArmor(self);
	CreateInvItem (self, ITAR_LEATHER_L);
	Npc_RemoveInvItems (self, ITAR_WaterRanger, Npc_HasItems(self,ITAR_WaterRanger));
	AI_EquipBestArmor(self);
	
	AI_Output (self, other, "DIA_Addon_Cavalorn_Triggered_Wohin_08_00"); //P�jd� do miasta. Spotkamy si� u Vatrasa.
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine	(self, "Stadt");

	SetNoteEntry (Quest_Ornament, LOG_MISSION, "Jeden z brakuj�cych fragment�w ornamentu jest w posiadaniu paladyn�w w g�rnym mie�cie.");

	MIS_Addon_Cavalorn_GetOrnamentFromPAL = LOG_RUNNING;
	self.flags = 0;
};

func void DIA_Addon_Cavalorn_Triggered_OBack()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_Triggered_OBack_15_00"); //W takim razie p�jd� do nich i odzyskam ornament.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Triggered_OBack_08_01"); //Dobrze.
	B_Cavalorn_Triggered_Wohin();
};

func void DIA_Addon_Cavalorn_Triggered_Pal()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_Triggered_Pal_15_00"); //Jeden z nas musi p�j�� do g�rnego miasta.
	AI_Output (self, other, "DIA_Addon_Cavalorn_Triggered_Pal_08_01"); //Nie mam na to czasu. Ty musisz to zrobi�.
	B_Cavalorn_Triggered_Wohin();
};

//******************************************************************************************
//	Info GotOrnaFromHagen
//******************************************************************************************
instance DIA_Addon_Cavalorn_GotOrnaFromHagen (C_INFO)
{
	npc									=	Bau_4300_Addon_Cavalorn;
	nr									=	5;
	condition							=	DIA_Addon_Cavalorn_GotOrnaFromHagen_Condition;
	information							=	DIA_Addon_Cavalorn_GotOrnaFromHagen_Info;
	description							=	"Dosta�em brakuj�cy ornament od Lorda Hagena.";
};

func int DIA_Addon_Cavalorn_GotOrnaFromHagen_Condition()
{
	if (Lord_Hagen_GotOrnament == true)
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_GotOrnaFromHagen_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_GotOrnaFromHagen_15_00"); //Dosta�em brakuj�cy ornament od Lorda Hagena.
	AI_Output (self, other, "DIA_Addon_Cavalorn_GotOrnaFromHagen_08_01"); //Widzisz? Wiedzia�em, �e mieli go paladyni.
	B_GivePlayerXP(XP_BONUS_1);
	MIS_Addon_Cavalorn_GetOrnamentFromPAL = LOG_SUCCESS;
};

//******************************************************************************************
//	WannaLearn
//******************************************************************************************
instance DIA_Addon_Cavalorn_WannaLearn (C_INFO)
{
	npc									=	BAU_4300_Addon_Cavalorn;
	nr									=	800;
	condition							=	DIA_Addon_Cavalorn_WannaLearn_Condition;
	information							=	DIA_Addon_Cavalorn_WannaLearn_Info;
	description							=	"Mo�esz mnie czego� nauczy�?";
};

func int DIA_Addon_Cavalorn_WannaLearn_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_Hallo))
	&& ((Npc_KnowsInfo(other,DIA_Addon_Cavalorn_PCKilledBrago)) || (Npc_KnowsInfo(other,DIA_Addon_Cavalorn_HELFEN)))
	{
		return true;
	};
};

func void DIA_Addon_Cavalorn_WannaLearn_Info()
{
	AI_Output (other, self, "DIA_Addon_Cavalorn_WannaLearn_15_00"); //Mo�esz mnie czego� nauczy�?
	AI_Output (self, other, "DIA_Addon_Cavalorn_WannaLearn_08_01"); //Pewnie. Przecie� wiesz. Oj, ch�opie, nie�le ci� przegonili.
	AI_Output (self, other, "DIA_Addon_Cavalorn_WannaLearn_08_02"); //Niczego nie pami�tasz, prawda?

	self.aivar[AIV_CanTeach] = true;
	SetNoteEntry (Note_Teachers, LOG_NOTE, "Cavalorn mo�e mi pokaza�, jak korzysta� z �uku oraz jak si� skrada�.");
};
