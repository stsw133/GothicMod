//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Lobart_EXIT (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Lobart_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Lobart_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Hallo
//******************************************************************************************

var int Lobart_AgainstKing;

//******************************************************************************************
instance DIA_Lobart_Hallo (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	2;
	condition							=	DIA_Lobart_Hallo_Condition;
	information							=	DIA_Lobart_Hallo_Info;
	important							=	true;
};

func int DIA_Lobart_Hallo_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (self.aivar[AIV_TalkedToPlayer] == false)
	{
		return true;
	};
};

func void DIA_Lobart_Hallo_Info()
{
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_Hallo_05_00"); //Czemu wkroczy³eœ na mój teren?
		AI_Output (self, other, "DIA_Lobart_Hallo_05_01"); //Po czyjej ty jesteœ stronie? Popierasz zbuntowanych farmerów czy Króla?
		
		Info_ClearChoices(DIA_Lobart_Hallo);
		Info_AddChoice (DIA_Lobart_Hallo, "Nie rozumiem...", DIA_Lobart_Hallo_What);
		Info_AddChoice (DIA_Lobart_Hallo, "Jestem za Królem!", DIA_Lobart_Hallo_ForTheKing);
		Info_AddChoice (DIA_Lobart_Hallo, "Jestem za farmerami!", DIA_Lobart_Hallo_ForThePeasants);
	}
	else
	{
		AI_Output (self, other, "DIA_Lobart_Hallo_05_02"); //Co mogê dla ciebie zrobiæ?
	};
};

func void DIA_Lobart_Hallo_ForThePeasants()
{
	AI_Output (other, self, "DIA_Lobart_Hallo_ForThePeasants_15_00"); //Jestem za farmerami!
	AI_Output (self, other, "DIA_Lobart_Hallo_ForThePeasants_05_01"); //Ha! Ten przeklêty pod¿egacz, Onar, œci¹gnie na nas wszystkich nieszczêœcie!
	AI_Output (self, other, "DIA_Lobart_Hallo_ForThePeasants_05_02"); //Jak s¹dzisz, czy paladyni bêd¹ siê temu wszystkiemu przygl¹daæ w nieskoñczonoœæ?
	AI_Output (self, other, "DIA_Lobart_Hallo_ForThePeasants_05_03"); //Po tym co zrobi³ Onar, w ca³ym mieœcie a¿ zawrza³o.
	
	Lobart_AgainstKing = true;
	Info_ClearChoices(DIA_Lobart_Hallo);
};

func void DIA_Lobart_Hallo_ForTheKing()
{
	AI_Output (other, self, "DIA_Lobart_Hallo_ForTheKing_15_00"); //Jestem za Królem!
	AI_Output (self, other, "DIA_Lobart_Hallo_ForTheKing_05_01"); //'Za Królem!' W³aœnie to powiedzia³ stra¿nik miejski, zabieraj¹c mi moj¹ ostatni¹ owcê.
	AI_Output (self, other, "DIA_Lobart_Hallo_ForTheKing_05_02"); //Gdzie s¹ te œwinie, kiedy naprawdê ich potrzebujemy? Gdzie byli, kiedy atakowali nas bandyci i orkowie?
	AI_Output (self, other, "DIA_Lobart_Hallo_ForTheKing_05_03"); //Powiem ci gdzie: w mieœcie, ukryci bezpiecznie za grubym murem obronnym.
	AI_Output (self, other, "DIA_Lobart_Hallo_ForTheKing_05_04"); //Wiêc daj mi spokój z Królem.
	
	Lobart_AgainstKing = false;
	Info_ClearChoices(DIA_Lobart_Hallo);
};

func void DIA_Lobart_Hallo_What()
{
	AI_Output (other, self, "DIA_Lobart_Hallo_What_15_00"); //Nie rozumiem...
	AI_Output (self, other, "DIA_Lobart_Hallo_What_05_01"); //Co?! Lepiej ze mn¹ nie zadzieraj, ch³opcze! Chcê, ¿ebyœmy wiedzieli na czym stoimy! No wiêc? Po czyjej jesteœ stronie?!
};

//******************************************************************************************
//	Kleidung
//******************************************************************************************
instance DIA_Lobart_KLEIDUNG (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	2;
	condition							=	DIA_Lobart_KLEIDUNG_Condition;
	information							=	DIA_Lobart_KLEIDUNG_Info;
	description							=	"Potrzebne mi jakieœ ubranie!";
};

func int DIA_Lobart_KLEIDUNG_Condition()
{
	if (hero.guild == GIL_NONE)
	{
		return true;
	};
};

func void DIA_Lobart_KLEIDUNG_Info()
{
	AI_Output (other, self, "DIA_Lobart_KLEIDUNG_15_00"); //Potrzebne mi jakieœ ubranie!
	AI_Output (self, other, "DIA_Lobart_KLEIDUNG_05_01"); //Mogê ci daæ czyste ubranie robocze.
	AI_Output (self, other, "DIA_Lobart_KLEIDUNG_05_02"); //Jeœli mi za nie zap³acisz.
	
	QuestStep_FarmerArmor = SetQuestStatus (Quest_FarmerArmor, LOG_RUNNING, QuestStep_FarmerArmor);
	SetNoteEntry (Quest_FarmerArmor, LOG_MISSION, "Farmer Lobart chce mi sprzedaæ ubranie robocze.");
	
	if (!Npc_KnowsInfo(other,DIA_Lobart_WorkNOW))
	{
		AI_Output (self, other, "DIA_Lobart_KLEIDUNG_05_03"); //A jeœli nie masz czym zap³aciæ... na farmie zawsze przyda siê dodatkowa para r¹k. To znaczy, jeœli potrzebujesz pracy.
		SetNoteEntry (Quest_FarmerArmor, LOG_MISSION, "Mogê na nie czêœciowo zarobiæ, pracuj¹c na jego farmie. Im wiêcej pracy wykonam, tym ni¿sza bêdzie cena ubrañ.");
	};
};

//******************************************************************************************
//	BuyClothes
//******************************************************************************************

var int Wert_LobartsRuestung;

//******************************************************************************************
instance DIA_Lobart_BuyClothes (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	2;
	condition							=	DIA_Lobart_BuyClothes_Condition;
	information							=	DIA_Lobart_BuyClothes_Info;
	permanent							=	true;
	description							=	"Ile chcesz za to ubranie?";
};

func int DIA_Lobart_BuyClothes_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Lobart_KLEIDUNG))
	&& (QuestStep_FarmerArmor == LOG_RUNNING)
	&& (hero.guild == GIL_NONE)
	{
		return true;
	};
};

func void DIA_Lobart_BuyClothes_Info()
{
	Wert_LobartsRuestung = 80; //initialisieren
	
	AI_Output (other, self, "DIA_Lobart_BuyClothes_15_00"); //Ile chcesz za to ubranie?
	AI_Output (self, other, "DIA_Lobart_BuyClothes_05_01"); //Zastanówmy siê...
	
	if (Lobart_AgainstKing == true)
	{
		//stillschweigender Abzug
		Wert_LobartsRuestung = Wert_LobartsRuestung - 10;
	};
	if (QuestStep_TurnipsForLobart == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Lobart_BuyClothes_05_02"); //Pracowa³eœ dla mnie w polu.
		Wert_LobartsRuestung = Wert_LobartsRuestung - 10;
	};
	if (QuestStep_HildaPan == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Lobart_BuyClothes_05_03"); //Pomog³eœ mojej ¿onie.
		Wert_LobartsRuestung = Wert_LobartsRuestung - 10;
	};
	if (QuestStep_VinoWine == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Lobart_BuyClothes_05_04"); //Vino mówi, ¿e jesteœ dla niego nieocenion¹ pomoc¹. A to ju¿ o czymœ œwiadczy - nieczêsto zdarza mu siê chwaliæ pracowników.
		Wert_LobartsRuestung = Wert_LobartsRuestung - 10;
	};
	if (QuestStep_MalethBandits == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Lobart_BuyClothes_05_05"); //Maleth mówi, ¿e przepêdzi³eœ bandytów. Mieliœmy przez nich ca³¹ masê problemów. Dziêkujê ci!
		Wert_LobartsRuestung = Wert_LobartsRuestung - 10;
	};
	
	// ------------------------------
	// ------ Wert der Rüstung ------
	// ------------------------------
	B_Say_Gold (self, other, Wert_LobartsRuestung);
	
	if (Wert_LobartsRuestung == 30) 
	{
		AI_Output (self, other, "DIA_Lobart_GOLD_05_06"); //Cena nie zmaleje.
		SetNoteEntry (Quest_FarmerArmor, LOG_MISSION, "Jednak nie sprzeda mi go taniej ni¿ za 30 sztuk z³ota.");
	};
	
	Info_ClearChoices(DIA_Lobart_BuyClothes);
	Info_AddChoice (DIA_Lobart_BuyClothes, "To wci¹¿ za du¿o.", DIA_Lobart_BuyClothes_NotYet);
	Info_AddChoice (DIA_Lobart_BuyClothes, "Daj mi wiêc to ubranie robocze", DIA_Lobart_BuyClothes_BUY);
};

func void DIA_Lobart_BuyClothes_BUY()
{
	AI_Output (other, self, "DIA_Lobart_BuyClothes_BUY_15_00"); //Daj mi to ubranie.
	
	if (B_GiveInvItems(other,self,ItMi_gold,Wert_LobartsRuestung))
	{
		B_GiveInvItems (self, other, ItAr_BAU_00, 1);
		QuestStep_FarmerArmor = SetQuestStatus (Quest_FarmerArmor, LOG_SUCCESS, QuestStep_FarmerArmor);
	}
	else //nicht genug Gold
	{
		AI_Output (self, other, "DIA_Lobart_BuyClothes_BUY_05_04"); //Nie masz wystarczaj¹co du¿o z³ota!
	};
	
	Info_ClearChoices(DIA_Lobart_BuyClothes);
};

func void DIA_Lobart_BuyClothes_NotYet()
{
	AI_Output (other, self, "DIA_Lobart_BuyClothes_NotYet_15_00"); //To wci¹¿ za du¿o.
	AI_Output (self, other, "DIA_Lobart_BuyClothes_NotYet_05_01"); //Proszê bardzo.
	Info_ClearChoices(DIA_Lobart_BuyClothes);
};

//******************************************************************************************
//	AufstandInfo
//******************************************************************************************
instance DIA_Lobart_AufstandInfo (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	1;
	condition							=	DIA_Lobart_AufstandInfo_Condition;
	information							=	DIA_Lobart_AufstandInfo_Info;
	description							=	"Co tu siê dzieje?";
};

func int DIA_Lobart_AufstandInfo_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Lobart_Hallo))
	&& (Kapitel < 9)
	{
		return true;
	};
};

func void DIA_Lobart_AufstandInfo_Info()
{
	AI_Output (other, self, "DIA_Lobart_AufstandInfo_15_00"); //Co tu siê dzieje?
	AI_Output (self, other, "DIA_Lobart_AufstandInfo_05_01"); //Pytasz, co siê dzieje? Ch³opie, sk¹d ty siê urwa³eœ? Jesteœmy w przededniu wojny domowej!
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_AufstandInfo_05_02"); //Do tej pory farmerzy traktowali czynsz jako sprawiedliwie naliczany podatek.
		AI_Output (self, other, "DIA_Lobart_AufstandInfo_05_03"); //Jednak odk¹d w mieœcie pojawili siê paladyni, coraz czêœciej odwiedzaj¹ nas stra¿nicy, kawa³ek po kawa³ku rozkradaj¹c nasz dobytek.
		AI_Output (self, other, "DIA_Lobart_AufstandInfo_05_04"); //Jeœli tak dalej pójdzie, to wkrótce nic nam ju¿ nie pozostanie.
	};
	AI_Output (self, other, "DIA_Lobart_AufstandInfo_05_05"); //Niektórzy farmerzy zaczynaj¹ siê buntowaæ. Pierwszy by³ Onar!
};

//******************************************************************************************
//	OnarStory
//******************************************************************************************
instance DIA_Lobart_OnarStory (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	1;
	condition							=	DIA_Lobart_OnarStory_Condition;
	information							=	DIA_Lobart_OnarStory_Info;
	description							=	"Powiedz mi coœ wiêcej o tym Onarze.";
};

func int DIA_Lobart_OnarStory_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Lobart_AufstandInfo))
	&& (Kapitel < 9)
	{
		return true;
	};
};

func void DIA_Lobart_OnarStory_Info ()
{
	AI_Output (other, self, "DIA_Lobart_OnarStory_15_00"); //Powiedz mi coœ wiêcej o tym Onarze.

		if ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
		{
			AI_Output (self, other, "DIA_Lobart_OnarStory_05_01"); //Jesteœ najemnikiem, prawda? Wiêc chyba najlepiej znasz swojego szefa?
		}
		else
		{
			AI_Output (self, other, "DIA_Lobart_OnarStory_05_02"); //Onar jest w³aœcicielem najwiêkszej farmy w okolicy. Ca³kowicie zerwa³ kontakty z miastem.
			AI_Output (self, other, "DIA_Lobart_OnarStory_05_03"); //Podobno zatrudni³ najemników, aby nie dopuszczali stra¿y do jego posiad³oœci!
			AI_Output (self, other, "DIA_Lobart_OnarStory_05_04"); //Trudno siê zreszt¹ temu dziwiæ.
			AI_Output (self, other, "DIA_Lobart_OnarStory_05_05"); //W ka¿dym razie to zadzia³a³o - ¿aden stra¿nik miejski nie œmie postawiæ stopy na jego terenach.
		};
};

//******************************************************************************************
//	SldInfo
//******************************************************************************************
instance DIA_Lobart_SldInfo (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	1;
	condition							=	DIA_Lobart_SldInfo_Condition;
	information							=	DIA_Lobart_SldInfo_Info;
	description							=	"Kim s¹ ci najemnicy zatrudnieni przez Onara?";
};

func int DIA_Lobart_SldInfo_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Lobart_OnarStory))
	&& ((hero.guild != GIL_SLD) && (hero.guild != GIL_DJG))
	&& (Kapitel < 9)
	{
		return true;
	};
};

func void DIA_Lobart_SldInfo_Info()
{
	AI_Output (other, self, "DIA_Lobart_SldInfo_15_00"); //Kim s¹ ci najemnicy zatrudnieni przez Onara?
	AI_Output (self, other, "DIA_Lobart_SldInfo_05_01"); //Nie wiem o nich zbyt wiele. Prawdopodobnie wiêkszoœæ z nich to byli wiêŸniowie z Kolonii.
	AI_Output (self, other, "DIA_Lobart_SldInfo_05_02"); //Wszyscy wiemy, czego siê po nich mo¿na spodziewaæ...
};

//******************************************************************************************
//	WhichSide
//******************************************************************************************
instance DIA_Lobart_WhichSide (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	1;
	condition							=	DIA_Lobart_WhichSide_Condition;
	information							=	DIA_Lobart_WhichSide_Info;
	description							=	"Po czyjej jesteœ stronie? Ch³opów czy Króla?";
};

func int DIA_Lobart_WhichSide_Condition ()
{
	if (Npc_KnowsInfo(other,DIA_Lobart_AufstandInfo))
	&& (Kapitel < 9)
	{
		return true;
	};
};

func void DIA_Lobart_WhichSide_Info()
{
	AI_Output (other, self, "DIA_Lobart_WhichSide_15_00"); //A co z tob¹? Po której jesteœ stronie? Ch³opów czy Króla?
	AI_Output (self, other, "DIA_Lobart_WhichSide_05_01"); //Mieszkam zbyt blisko miasta, ¿eby mieæ jakikolwiek wybór.
	AI_Output (self, other, "DIA_Lobart_WhichSide_05_02"); //Ale cieszê siê z tego. To by³aby bardzo trudna decyzja.
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_WhichSide_05_03"); //Król zabiera nam wszystko, co mamy. Z kolei Onar szczuje swoimi najemnikami ka¿dego, kto nie chce siê do niego przy³¹czyæ.
		AI_Output (self, other, "DIA_Lobart_WhichSide_05_04"); //Dlatego wiêkszoœæ farmerów wci¹¿ nie mo¿e siê jeszcze zdecydowaæ. Jednak wczeœniej czy póŸniej bêd¹ musieli opowiedzieæ siê po którejœ ze stron.
	};
};

//******************************************************************************************
//	WorkNOW
//******************************************************************************************
instance DIA_Lobart_WorkNOW (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	1;
	condition							=	DIA_Lobart_WorkNOW_Condition;
	information							=	DIA_Lobart_WorkNOW_Info;
	description							=	"Szukam pracy.";
};

func int DIA_Lobart_WorkNOW_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Lobart_AufstandInfo))
	|| (Npc_KnowsInfo(other,DIA_Lobart_Kleidung))
	{
		if (Kapitel < 9)
		{
			return true;
		};
	};
};

func void DIA_Lobart_WorkNOW_Info()
{
	AI_Output (other, self, "DIA_Lobart_WorkNOW_15_00"); //Szukam pracy.
	AI_Output (self, other, "DIA_Lobart_WorkNOW_05_01"); //Jeœli chcesz, mo¿esz u mnie pracowaæ.
	AI_Output (self, other, "DIA_Lobart_WorkNOW_05_02"); //Mo¿esz pracowaæ w polu albo znaleŸæ sobie jakieœ inne zajêcie. Roboty na farmie nigdy nie brakuje.
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_WorkNOW_05_03"); //Mogê ci zap³aciæ, albo - jeœli wolisz - dostaniesz ode mnie porz¹dne ubranie.
		AI_Output (self, other, "DIA_Lobart_WorkNOW_05_04"); //Te rzeczy s¹ trochê warte. Nie mogê ci ich tak po prostu oddaæ. Jednak jeœli zgodzisz siê dla mnie pracowaæ, sprzedam ci je po ni¿szej cenie.
		
		QuestStep_FarmerArmor = SetQuestStatus (Quest_FarmerArmor, LOG_RUNNING, QuestStep_FarmerArmor);
		SetNoteEntry (Quest_FarmerArmor, LOG_MISSION, "Farmer Lobart chce mi sprzedaæ ubranie robocze, którego czêœæ ceny mogê odpracowaæ w polu. Im wiêcej pracy wykonam, tym ni¿sza bêdzie cena ubrañ.");
		
		if (Npc_HasEquippedArmor(other) == false)
		|| (QuestStep_FarmerArmor == LOG_RUNNING)
		{
			AI_Output (self, other, "DIA_Lobart_WorkNOW_05_05"); //Na twoim miejscu wzi¹³bym ubranie...
		}
		else
		{
			AI_Output (self, other, "DIA_Lobart_WorkNOW_05_06"); //Ale poniewa¿ masz ju¿ ca³kiem przyzwoite ubranie, pewnie wola³byœ z³oto.
		};
	};
	AI_Output (self, other, "DIA_Lobart_WorkNOW_05_07"); //Trzeba zebraæ rzepê z tego ma³ego poletka przy stodole.
	
	Info_ClearChoices(DIA_Lobart_WorkNOW);
	Info_AddChoice (DIA_Lobart_WorkNOW, "Mam wyrywaæ rzepê? Chyba sobie ze mnie ¿artujesz!", DIA_Lobart_WorkNOW_WannaFoolMe);
	Info_AddChoice (DIA_Lobart_WorkNOW, "W porz¹dku...", DIA_Lobart_WorkNOW_Ok);
};

func void DIA_Lobart_WorkNOW_Ok()
{
	AI_Output (other, self, "DIA_Lobart_WorkNOW_Ok_15_00"); //Dobrze...
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_WorkNOW_Ok_05_01"); //Wiêc poœpiesz siê, zanim zmieniê zdanie.
	};
	
	QuestStep_TurnipsForLobart = SetQuestStatus (Quest_TurnipsForLobart, LOG_RUNNING, QuestStep_TurnipsForLobart);
	SetNoteEntry (Quest_TurnipsForLobart, LOG_MISSION, "Farmer Lobart chce, abym zebra³ z pola rzepê. W zamian oferuje mi z³oto albo obni¿enie ceny ubrañ.");
	
	Info_ClearChoices(DIA_Lobart_WorkNOW);
};

func void DIA_Lobart_WorkNOW_WannaFoolMe()
{
	AI_Output (other, self, "DIA_Lobart_WorkNOW_WannaFoolMe_15_00"); //Mam wyrywaæ rzepê? Chyba sobie ze mnie ¿artujesz!
	AI_Output (self, other, "DIA_Lobart_WorkNOW_WannaFoolMe_05_01"); //Tak, taki d¿entelmen jak ty pewnie brzydzi siê uczciw¹ prac¹, co?
	
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_WorkNOW_WannaFoolMe_05_02"); //Jazda na pole albo wynoœ siê z mojej farmy!
	}
	else
	{
		AI_Output (self, other, "DIA_Lobart_WorkNOW_WannaFoolMe_05_03"); //W tej chwili nie mam dla ciebie ¿adnej innej pracy.
	};
	
	QuestStep_TurnipsForLobart = SetQuestStatus (Quest_TurnipsForLobart, LOG_RUNNING, QuestStep_TurnipsForLobart);
	SetNoteEntry (Quest_TurnipsForLobart, LOG_MISSION, "Farmer Lobart chce, abym zebra³ z pola rzepê. W zamian oferuje mi z³oto albo obni¿enie ceny ubrañ.");
	
	Info_ClearChoices(DIA_Lobart_WorkNOW);
};

//******************************************************************************************
//	RuebenRunning
//******************************************************************************************
instance DIA_Lobart_RuebenRunning (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	1;
	condition							=	DIA_Lobart_RuebenRunning_Condition;
	information							=	DIA_Lobart_RuebenRunning_Info;
	permanent							=	true;
	description							=	"Oto twoja rzepa!";
};

func int DIA_Lobart_RuebenRunning_Condition()
{
	if (QuestStep_TurnipsForLobart == LOG_RUNNING)
	&& (Npc_HasItems(other,ItPl_Beet) >= 1)
	&& (Kapitel < 9)
	{
		return true;
	};
};

func void DIA_Lobart_RuebenRunning_Info()
{
	AI_Output (other, self, "DIA_Lobart_RuebenRunning_15_00"); //Oto twoja rzepa!
	
	if (Npc_HasItems(other,ItPl_Beet) >= 20)
	{
		if (hero.guild == GIL_NONE)
		{
			AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_01"); //Widzisz, jednak jest z ciebie jakiœ po¿ytek.
		};
		
		QuestStep_TurnipsForLobart = SetQuestStatus (Quest_TurnipsForLobart, LOG_SUCCESS, QuestStep_TurnipsForLobart);
		B_GivePlayerXP(XP_BONUS_0);
		
		if ((Npc_IsDead(Hilda))== false)
		{
			AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_02"); //Zanieœ je mojej ¿onie i powiedz, ¿eby je ugotowa³a.
			
			QuestStep_TurnipsForHilda = SetQuestStatus (Quest_TurnipsForHilda, LOG_RUNNING, QuestStep_TurnipsForHilda);
			SetNoteEntry (Quest_TurnipsForHilda, LOG_MISSION, "Zebran¹ rzepê mam zanieœæ do ¿ony Lobarta, która przyrz¹dzi z niej posi³ek.");
		};
		
		AI_Output (other, self, "DIA_Lobart_RuebenRunning_15_03"); //Co z moj¹ zap³at¹?
		AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_04"); //Mogê ci daæ 5 sztuk z³ota.
		if (hero.guild == GIL_NONE)
		{
			AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_05"); //...albo sprzedaæ ubranie po ni¿szej cenie. Co wybierasz?
		};
		Info_ClearChoices(DIA_Lobart_RuebenRunning);
		
		if (hero.guild == GIL_NONE)
		{
			Info_AddChoice (DIA_Lobart_RuebenRunning, "Sprzedaj mi ubranie po ni¿szej cenie!", DIA_Lobart_RuebenRunning_Billiger);
		};
		Info_AddChoice (DIA_Lobart_RuebenRunning, "Daj mi 5 sztuk z³ota!", DIA_Lobart_RuebenRunning_Gold);
	}
	else
	{
		AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_06"); //Ale tu nie ma nawet 20 sztuk!
		if (hero.guild == GIL_NONE)
		{
			AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_07"); //Chcesz mi powiedzieæ, ¿e zjad³eœ resztê?! Jeœli tak, to mo¿esz zapomnieæ o wynagrodzeniu!
			AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_08"); //Jazda na pole po resztê rzepy! Wracaj do pracy albo naprawdê siê rozgniewam!
		};
		AI_StopProcessInfos(self);
	};
};

func void DIA_Lobart_RuebenRunning_Gold()
{
	AI_Output (other, self, "DIA_Lobart_RuebenRunning_Gold_15_00"); //Daj mi 5 sztuk z³ota!
	AI_Output (self, other, "DIA_Lobart_RuebenRunning_Gold_05_01"); //Proszê.
	
	B_GiveInvItems (self, other, ItMi_Gold, 5);
	
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_RuebenRunning_Gold_05_02"); //I nie przepij wszystkiego od razu.
	};
	Info_ClearChoices(DIA_Lobart_RuebenRunning);
};

func void DIA_Lobart_RuebenRunning_Billiger()
{
	AI_Output (other, self, "DIA_Lobart_RuebenRunning_Billiger_15_00"); //Sprzedaj mi ubranie po ni¿szej cenie!
	AI_Output (self, other, "DIA_Lobart_RuebenRunning_Billiger_05_01"); //Dobrze! Obni¿ê cenê o 10 monet.
	Info_ClearChoices(DIA_Lobart_RuebenRunning);
};

//******************************************************************************************
//	MoreWork
//******************************************************************************************
instance DIA_Lobart_MoreWork (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	1;
	condition							=	DIA_Lobart_MoreWork_Condition;
	information							=	DIA_Lobart_MoreWork_Info;
	permanent							=	true;
	description							=	"Czy masz dla mnie jeszcze jak¹œ robotê?";
};

func int DIA_Lobart_MoreWork_Condition()
{
	if ((QuestStep_TurnipsForLobart == LOG_RUNNING) || (QuestStep_TurnipsForLobart == LOG_SUCCESS))
	&& (Kapitel < 9)
	{
		return true;
	};
};

func void DIA_Lobart_MoreWork_Info()
{
	AI_Output (other, self, "DIA_Lobart_MoreWork_15_00"); //Czy masz dla mnie jeszcze jak¹œ robotê?
	
	if (QuestStep_TurnipsForLobart == LOG_RUNNING)
	{
		AI_Output (self, other, "DIA_Lobart_MoreWork_05_01"); //Najpierw przynieœ rzepê. Potem zobaczymy.
	}
	else //SUCCESS
	{
		AI_Output (self, other, "DIA_Lobart_MoreWork_05_02"); //Nie, ale zapytaj moj¹ ¿onê albo ch³opców pracuj¹cych w polu. Mo¿e oni znajd¹ dla ciebie jakieœ zajêcie.
	};
};

//******************************************************************************************
//	AndreHelpLobart
//******************************************************************************************
instance DIA_Lobart_ANDREHELPLOBART (C_INFO)
{
	npc									=	BAU_950_Lobart;
	condition							=	DIA_Lobart_ANDREHELPLOBART_Condition;
	information							=	DIA_Lobart_ANDREHELPLOBART_Info;
	description							=	"Andre mnie do ciebie przys³a³.";
};

func int DIA_Lobart_ANDREHELPLOBART_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Andre_HILFBAUERLOBART))
	{
		return true;
	};
};

func void DIA_Lobart_ANDREHELPLOBART_Info()
{
	AI_Output (other, self, "DIA_Lobart_ANDREHELPLOBART_15_00"); //Przysy³a mnie Andre. Czy mogê coœ dla ciebie zrobiæ?
	AI_Output (self, other, "DIA_Lobart_ANDREHELPLOBART_05_01"); //Tak, pewnie. Te cholerne polne bestie strasznie uprzykrzaj¹ mi ¿ycie.
	AI_Output (self, other, "DIA_Lobart_ANDREHELPLOBART_05_02"); //Za³atw jakoœ ten problem. Niewa¿ne jak!
	
	SetNoteEntry (Quest_LobartGiantbugs, LOG_MISSION, "Pola Lobarta atakowane s¹ przez polne bestie. Prosi³ mnie, abym siê nimi zaj¹³.");
	
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	BugDead
//******************************************************************************************

var int DIA_Lobart_BUGDEAD_noPerm;

//******************************************************************************************
instance DIA_Lobart_BUGDEAD (C_INFO)
{
	npc									=	BAU_950_Lobart;
	condition							=	DIA_Lobart_BUGDEAD_Condition;
	information							=	DIA_Lobart_BUGDEAD_Info;
	permanent							=	true;
	description							=	"Polne bestie nie ¿yj¹!";
};

func int DIA_Lobart_BUGDEAD_Condition()
{
	if (QuestStep_LobartGiantbugs == LOG_RUNNING)
	&& (DIA_Lobart_BUGDEAD_noPerm == false)
	{
		return true;
	};
};

func void DIA_Lobart_BUGDEAD_Info()
{
	if (Npc_IsDead(Lobarts_Giant_Bug1))
	&& (Npc_IsDead(Lobarts_Giant_Bug2))
	&& (Npc_IsDead(Lobarts_Giant_Bug3))
	&& (Npc_IsDead(Lobarts_Giant_Bug4))
	&& (Npc_IsDead(Lobarts_Giant_Bug5))
	&& (Npc_IsDead(Lobarts_Giant_Bug6))
	&& (Npc_IsDead(Lobarts_Giant_Bug7))
	{
		AI_Output (other, self, "DIA_Lobart_BUGDEAD_15_00"); //Polne bestie nie ¿yj¹!
		AI_Output (self, other, "DIA_Lobart_BUGDEAD_05_01"); //Dobra robota. Polecê twoje us³ugi znajomym. Proszê, oto zap³ata.
		
		B_StartOtherRoutine	(Vino, "Start");
		B_StartOtherRoutine	(LobartsBauer1, "Start");
		B_StartOtherRoutine	(LobartsBauer2, "Start");
		
		CreateInvItems (self, ItMi_Gold, 20);
		B_GiveInvItems (self, other, ItMi_Gold, 20);
		
		QuestStep_LobartGiantbugs = SetQuestStatus (Quest_LobartGiantbugs, LOG_SUCCESS, QuestStep_LobartGiantbugs);
		SetNoteEntry (Quest_LobartGiantbugs, LOG_MISSION, "Lobart nie musi siê ju¿ przejmowaæ polnymi bestiami. Zrobi³em z nimi porz¹dek.");
		
		DIA_Lobart_BUGDEAD_noPerm = true;
	}
	else  
	{
		AI_Output (other, self, "DIA_Lobart_BUGDEAD_15_02"); //Chyba wykoñczy³em je wszystkie!
		AI_Output (self, other, "DIA_Lobart_BUGDEAD_05_03"); //Nie próbuj mnie wykiwaæ. Wci¹¿ je tutaj widujê. Albo zabijesz je wszystkie, albo nie mamy o czym gadaæ.
		AI_StopProcessInfos(self);
	};
};

//******************************************************************************************
//	DMT
//******************************************************************************************
instance DIA_Lobart_DMT (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	30;
	condition							=	DIA_Lobart_DMT_Condition;
	information							=	DIA_Lobart_DMT_Info;
	description							=	"Co nowego na farmie?";
};

func int DIA_Lobart_DMT_Condition()
{
	if (Kapitel >= 9)
	{
		return true;
	};
};

func void DIA_Lobart_DMT_Info()
{
	AI_Output (other, self, "DIA_Lobart_DMT_15_00"); //Co nowego na farmie?
	AI_Output (self, other, "DIA_Lobart_DMT_05_01"); //Ju¿ nie dajê rady...
	AI_Output (self, other, "DIA_Lobart_DMT_05_02"); //Znienacka pojawili siê tutaj ci goœcie w czarnych kapturach.
	
	if (hero.guild == GIL_KDF)
	&& (Vino_isAlive_Kap3 == true)
	{
		AI_Output (self, other, "DIA_Lobart_DMT_05_03"); //Najpierw Vino mia³ z nimi bardzo d³ug¹ rozmowê, a potem gdzieœ go zabrali.
		
		if (NpcObsessedByDMT_Vino == false)
		{
			Info_AddChoice	(DIA_Lobart_DMT, "Dok¹d go zaci¹gnêli?", DIA_Lobart_DMT_VinoWohin);
		};
		Info_AddChoice (DIA_Lobart_DMT, "W czym mia³ im pomóc Vino?", DIA_Lobart_DMT_VinoWas);
	};
	
	if (!Npc_IsDead(Hilda))
	&& ((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL)	||	(hero.guild == GIL_KDF))
	{
		AI_Output (self, other, "DIA_Lobart_DMT_05_04"); //Nied³ugo potem moja ¿ona powa¿nie siê rozchorowa³a. Wiêkszoœæ czasu spêdza w ³ó¿ku. Dosyæ czêsto jej siê to zdarza.
	};
	AI_Output (self, other, "DIA_Lobart_DMT_05_05"); //Chyba oszalejê!
	
	Info_ClearChoices(DIA_Lobart_DMT);
	Info_AddChoice (DIA_Lobart_DMT, DIALOG_ENDE, DIA_Lobart_DMT_BACK);
	
	if (QuestStep_HealHilda != LOG_SUCCESS)
	&& (!Npc_IsDead(Hilda))
	&& ((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		Info_AddChoice (DIA_Lobart_DMT, "Czemu nie zabierzesz ¿ony do uzdrawiacza?", DIA_Lobart_DMT_FrauHeilen);
	};
	Info_AddChoice (DIA_Lobart_DMT, "Czemu nic nie zrobisz z tymi zakapturzonymi postaciami?", DIA_Lobart_DMT_hof);
	Info_AddChoice (DIA_Lobart_DMT, "Rozmawia³eœ z tymi odzianymi na czarno mê¿czyznami?", DIA_Lobart_DMT_spokeToThem);
};

func void DIA_Lobart_DMT_FrauHeilen()
{
	AI_Output (other, self, "DIA_Lobart_DMT_FrauHeilen_15_00"); //Czemu nie zabierzesz ¿ony do uzdrawiacza?
	AI_Output (self, other, "DIA_Lobart_DMT_FrauHeilen_05_01"); //Powinniœmy pójœæ do miasta i zobaczyæ siê z Vatrasem, ale nie mogê siê st¹d ruszyæ, dopóki to ca³e zamieszanie siê nie skoñczy.
	
	QuestStep_HealHilda = SetQuestStatus (Quest_HealHilda, LOG_RUNNING, QuestStep_HealHilda);
	SetNoteEntry (Quest_HealHilda, LOG_MISSION, "¯ona Lobarta, Hilda, zachorowa³a. Vatras ma lekarstwo, które mo¿e j¹ wyleczyæ.");
};

func void DIA_Lobart_DMT_BACK()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine	(self, "Start");
};

func void DIA_Lobart_DMT_spokeToThem()
{
	AI_Output (other, self, "DIA_Lobart_DMT_spokeToThem_15_00"); //Rozmawia³eœ z tymi odzianymi na czarno mê¿czyznami?
	AI_Output (self, other, "DIA_Lobart_DMT_spokeToThem_05_01"); //Jasne. Nie mia³em zreszt¹ wyboru.
	AI_Output (self, other, "DIA_Lobart_DMT_spokeToThem_05_02"); //Chyba kogoœ szukaj¹.
};

func void DIA_Lobart_DMT_hof()
{
	AI_Output (other, self, "DIA_Lobart_DMT_hof_15_00"); //Czemu nic nie zrobisz z tymi zakapturzonymi postaciami?
	AI_Output (self, other, "DIA_Lobart_DMT_hof_05_01"); //Bardzo bym chcia³, ale siê bojê. Widzia³em, jak spalili jednego cz³owieka ¿ywcem. Tak po prostu.
	AI_Output (self, other, "DIA_Lobart_DMT_hof_05_02"); //Czemu mia³bym ryzykowaæ ¿yciem?
};

func void DIA_Lobart_DMT_VinoWas()
{
	AI_Output (other, self, "DIA_Lobart_DMT_VinoWas_15_00"); //W czym mia³ im pomóc Vino?
	AI_Output (self, other, "DIA_Lobart_DMT_VinoWas_05_01"); //Nie powiedzieli. Po prostu go zabrali.
};

func void DIA_Lobart_DMT_VinoWohin()
{
	AI_Output (other, self, "DIA_Lobart_DMT_VinoWohin_15_00"); //Dok¹d go zaci¹gnêli?
	AI_Output (self, other, "DIA_Lobart_DMT_VinoWohin_05_01"); //Poszli przez to wzgórze.
};

//******************************************************************************************
//	VinoTOT
//******************************************************************************************
instance DIA_Lobart_VINOTOT (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	32;
	condition							=	DIA_Lobart_VINOTOT_Condition;
	information							=	DIA_Lobart_VINOTOT_Info;
	description							=	"Vino ju¿ nie wróci.";
};

func int DIA_Lobart_VINOTOT_Condition()
{
	if ((Npc_IsDead(Vino)) || (NpcObsessedByDMT_Vino == true))
	&& (Npc_KnowsInfo(other,DIA_Lobart_DMT))
	&& (hero.guild == GIL_KDF)
	{
		return true;
	};
};

func void DIA_Lobart_VINOTOT_Info()
{
	AI_Output (other, self, "DIA_Lobart_VINOTOT_15_00"); //Vino ju¿ nie wróci.
	if (Npc_IsDead(Vino))	
	{
		AI_Output (other, self, "DIA_Lobart_VINOTOT_15_01"); //Nie ¿yje.
	}
	else
	{
		AI_Output (other, self, "DIA_Lobart_VINOTOT_15_02"); //Doprowadzili go do szaleñstwa.
	};
	AI_Output (self, other, "DIA_Lobart_VINOTOT_05_03"); //Na Innosa. Mam nadziejê, ¿e ten koszmar wkrótce siê skoñczy.
	
	B_GivePlayerXP(XP_BONUS_1);
};

//******************************************************************************************
//	PERM
//******************************************************************************************
instance DIA_Lobart_PERM (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	80;
	condition							=	DIA_Lobart_PERM_Condition;
	information							=	DIA_Lobart_PERM_Info;
	permanent							=	true;
	description							=	"Uwa¿aj na swoj¹ farmê!";
};

func int DIA_Lobart_PERM_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Lobart_DMT))
	&& (Kapitel >= 9)
	&& (Npc_IsDead(OrcWarrior_Lobart1))
	&& (Npc_IsDead(OrcWarrior_Lobart2))
	&& (Npc_IsDead(OrcWarrior_Lobart3))
	&& (Npc_IsDead(OrcWarrior_Lobart4))
	&& (Npc_IsDead(OrcWarrior_Lobart5))
	&& (Npc_IsDead(OrcWarrior_Lobart6))
	{
		return true;
	};
};

func void DIA_Lobart_PERM_Info()
{
	AI_Output (other, self, "DIA_Lobart_PERM_15_00"); //Uwa¿aj na swoj¹ farmê!
	AI_Output (self, other, "DIA_Lobart_PERM_05_01"); //Postaram siê.
};

//******************************************************************************************
//	OrkProblem
//******************************************************************************************
instance DIA_Lobart_ORKPROBLEM (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	41;
	condition							=	DIA_Lobart_ORKPROBLEM_Condition;
	information							=	DIA_Lobart_ORKPROBLEM_Info;
	description							=	"Masz tu k³opot z orkami.";
};

func int DIA_Lobart_ORKPROBLEM_Condition()
{
	if ((!Npc_IsDead(OrcWarrior_Lobart1)
	|| (!Npc_IsDead(OrcWarrior_Lobart2))
	|| (!Npc_IsDead(OrcWarrior_Lobart3))
	|| (!Npc_IsDead(OrcWarrior_Lobart4))
	|| (!Npc_IsDead(OrcWarrior_Lobart5))
	|| (!Npc_IsDead(OrcWarrior_Lobart6)))
	&& (Kapitel >= 10)
	&& ((hero.guild == GIL_PAL) || (hero.guild == GIL_DJG))
	&& (Npc_KnowsInfo(other,DIA_Lobart_DMT)))
	{
		return true;
	};
};

func void DIA_Lobart_ORKPROBLEM_Info()
{
	AI_Output (other, self, "DIA_Lobart_ORKPROBLEM_15_00"); //Masz tu k³opot z orkami.
	AI_Output (self, other, "DIA_Lobart_ORKPROBLEM_05_01"); //Niech to szlag! Czy te problemy nigdy siê nie skoñcz¹?
	AI_Output (self, other, "DIA_Lobart_ORKPROBLEM_05_02"); //Jeœli tak dalej pójdzie, wkrótce wartoœæ ca³ej mojej farmy nie bêdzie przekraczaæ trzech monet!
	
	QuestStep_LobartOrcProblem = SetQuestStatus (Quest_LobartOrcProblem, LOG_RUNNING, QuestStep_LobartOrcProblem);
	SetNoteEntry (Quest_LobartOrcProblem, LOG_MISSION, "Orkowie zajêli farmê Lobarta, który poprosi³ mnie, abym siê ich pozby³.");
	
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	OrksWeg
//******************************************************************************************
instance DIA_Lobart_ORKSWEG (C_INFO)
{
	npc									=	BAU_950_Lobart;
	nr									=	42;
	condition							=	DIA_Lobart_ORKSWEG_Condition;
	information							=	DIA_Lobart_ORKSWEG_Info;
	description							=	"Pozby³em siê orków.";
};

func int DIA_Lobart_ORKSWEG_Condition()
{
	if (Npc_IsDead(OrcWarrior_Lobart1))
	&& (Npc_IsDead(OrcWarrior_Lobart2))
	&& (Npc_IsDead(OrcWarrior_Lobart3))
	&& (Npc_IsDead(OrcWarrior_Lobart4))
	&& (Npc_IsDead(OrcWarrior_Lobart5))
	&& (Npc_IsDead(OrcWarrior_Lobart6))
	&& (Kapitel >= 10)
	&& ((hero.guild == GIL_PAL) || (hero.guild == GIL_DJG))
	{
		return true;
	};
};

func void DIA_Lobart_ORKSWEG_Info()
{
	AI_Output (other, self, "DIA_Lobart_ORKSWEG_15_00"); //Pozby³em siê orków.
	if (hero.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Lobart_ORKSWEG_05_01"); //I niech ludzie nie gadaj¹, ¿e paladyni nic nie robi¹ dla farmerów.
	};
	AI_Output (self, other, "DIA_Lobart_ORKSWEG_05_02"); //Chwa³a Innosowi. Nie mogê ci zaoferowaæ ¿adnej wartoœciowej nagrody, ale mam nadziejê, ¿e docenisz ten gest.
	
	B_StartOtherRoutine	(Vino, "Start");
	B_StartOtherRoutine	(LobartsBauer1, "Start");
	B_StartOtherRoutine	(LobartsBauer2, "Start");
	
	QuestStep_LobartOrcProblem = SetQuestStatus (Quest_LobartOrcProblem, LOG_SUCCESS, QuestStep_LobartOrcProblem);
	B_GivePlayerXP(XP_BONUS_6);
	
	CreateInvItems (self, ItMi_Gold, 150);
	B_GiveInvItems (self, other, ItMi_Gold, 150);
};
