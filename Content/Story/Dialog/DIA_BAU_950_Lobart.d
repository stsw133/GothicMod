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
		AI_Output (self, other, "DIA_Lobart_Hallo_05_00"); //Czemu wkroczy�e� na m�j teren?
		AI_Output (self, other, "DIA_Lobart_Hallo_05_01"); //Po czyjej ty jeste� stronie? Popierasz zbuntowanych farmer�w czy Kr�la?
		
		Info_ClearChoices(DIA_Lobart_Hallo);
		Info_AddChoice (DIA_Lobart_Hallo, "Nie rozumiem...", DIA_Lobart_Hallo_What);
		Info_AddChoice (DIA_Lobart_Hallo, "Jestem za Kr�lem!", DIA_Lobart_Hallo_ForTheKing);
		Info_AddChoice (DIA_Lobart_Hallo, "Jestem za farmerami!", DIA_Lobart_Hallo_ForThePeasants);
	}
	else
	{
		AI_Output (self, other, "DIA_Lobart_Hallo_05_02"); //Co mog� dla ciebie zrobi�?
	};
};

func void DIA_Lobart_Hallo_ForThePeasants()
{
	AI_Output (other, self, "DIA_Lobart_Hallo_ForThePeasants_15_00"); //Jestem za farmerami!
	AI_Output (self, other, "DIA_Lobart_Hallo_ForThePeasants_05_01"); //Ha! Ten przekl�ty pod�egacz, Onar, �ci�gnie na nas wszystkich nieszcz�cie!
	AI_Output (self, other, "DIA_Lobart_Hallo_ForThePeasants_05_02"); //Jak s�dzisz, czy paladyni b�d� si� temu wszystkiemu przygl�da� w niesko�czono��?
	AI_Output (self, other, "DIA_Lobart_Hallo_ForThePeasants_05_03"); //Po tym co zrobi� Onar, w ca�ym mie�cie a� zawrza�o.
	
	Lobart_AgainstKing = true;
	Info_ClearChoices(DIA_Lobart_Hallo);
};

func void DIA_Lobart_Hallo_ForTheKing()
{
	AI_Output (other, self, "DIA_Lobart_Hallo_ForTheKing_15_00"); //Jestem za Kr�lem!
	AI_Output (self, other, "DIA_Lobart_Hallo_ForTheKing_05_01"); //'Za Kr�lem!' W�a�nie to powiedzia� stra�nik miejski, zabieraj�c mi moj� ostatni� owc�.
	AI_Output (self, other, "DIA_Lobart_Hallo_ForTheKing_05_02"); //Gdzie s� te �winie, kiedy naprawd� ich potrzebujemy? Gdzie byli, kiedy atakowali nas bandyci i orkowie?
	AI_Output (self, other, "DIA_Lobart_Hallo_ForTheKing_05_03"); //Powiem ci gdzie: w mie�cie, ukryci bezpiecznie za grubym murem obronnym.
	AI_Output (self, other, "DIA_Lobart_Hallo_ForTheKing_05_04"); //Wi�c daj mi spok�j z Kr�lem.
	
	Lobart_AgainstKing = false;
	Info_ClearChoices(DIA_Lobart_Hallo);
};

func void DIA_Lobart_Hallo_What()
{
	AI_Output (other, self, "DIA_Lobart_Hallo_What_15_00"); //Nie rozumiem...
	AI_Output (self, other, "DIA_Lobart_Hallo_What_05_01"); //Co?! Lepiej ze mn� nie zadzieraj, ch�opcze! Chc�, �eby�my wiedzieli na czym stoimy! No wi�c? Po czyjej jeste� stronie?!
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
	description							=	"Potrzebne mi jakie� ubranie!";
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
	AI_Output (other, self, "DIA_Lobart_KLEIDUNG_15_00"); //Potrzebne mi jakie� ubranie!
	AI_Output (self, other, "DIA_Lobart_KLEIDUNG_05_01"); //Mog� ci da� czyste ubranie robocze.
	AI_Output (self, other, "DIA_Lobart_KLEIDUNG_05_02"); //Je�li mi za nie zap�acisz.
	
	QuestStep_FarmerArmor = SetQuestStatus (Quest_FarmerArmor, LOG_RUNNING, QuestStep_FarmerArmor);
	SetNoteEntry (Quest_FarmerArmor, LOG_MISSION, "Farmer Lobart chce mi sprzeda� ubranie robocze.");
	
	if (!Npc_KnowsInfo(other,DIA_Lobart_WorkNOW))
	{
		AI_Output (self, other, "DIA_Lobart_KLEIDUNG_05_03"); //A je�li nie masz czym zap�aci�... na farmie zawsze przyda si� dodatkowa para r�k. To znaczy, je�li potrzebujesz pracy.
		SetNoteEntry (Quest_FarmerArmor, LOG_MISSION, "Mog� na nie cz�ciowo zarobi�, pracuj�c na jego farmie. Im wi�cej pracy wykonam, tym ni�sza b�dzie cena ubra�.");
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
	AI_Output (self, other, "DIA_Lobart_BuyClothes_05_01"); //Zastan�wmy si�...
	
	if (Lobart_AgainstKing == true)
	{
		//stillschweigender Abzug
		Wert_LobartsRuestung = Wert_LobartsRuestung - 10;
	};
	if (QuestStep_TurnipsForLobart == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Lobart_BuyClothes_05_02"); //Pracowa�e� dla mnie w polu.
		Wert_LobartsRuestung = Wert_LobartsRuestung - 10;
	};
	if (QuestStep_HildaPan == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Lobart_BuyClothes_05_03"); //Pomog�e� mojej �onie.
		Wert_LobartsRuestung = Wert_LobartsRuestung - 10;
	};
	if (QuestStep_VinoWine == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Lobart_BuyClothes_05_04"); //Vino m�wi, �e jeste� dla niego nieocenion� pomoc�. A to ju� o czym� �wiadczy - niecz�sto zdarza mu si� chwali� pracownik�w.
		Wert_LobartsRuestung = Wert_LobartsRuestung - 10;
	};
	if (QuestStep_MalethBandits == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Lobart_BuyClothes_05_05"); //Maleth m�wi, �e przep�dzi�e� bandyt�w. Mieli�my przez nich ca�� mas� problem�w. Dzi�kuj� ci!
		Wert_LobartsRuestung = Wert_LobartsRuestung - 10;
	};
	
	// ------------------------------
	// ------ Wert der R�stung ------
	// ------------------------------
	B_Say_Gold (self, other, Wert_LobartsRuestung);
	
	if (Wert_LobartsRuestung == 30) 
	{
		AI_Output (self, other, "DIA_Lobart_GOLD_05_06"); //Cena nie zmaleje.
		SetNoteEntry (Quest_FarmerArmor, LOG_MISSION, "Jednak nie sprzeda mi go taniej ni� za 30 sztuk z�ota.");
	};
	
	Info_ClearChoices(DIA_Lobart_BuyClothes);
	Info_AddChoice (DIA_Lobart_BuyClothes, "To wci�� za du�o.", DIA_Lobart_BuyClothes_NotYet);
	Info_AddChoice (DIA_Lobart_BuyClothes, "Daj mi wi�c to ubranie robocze", DIA_Lobart_BuyClothes_BUY);
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
		AI_Output (self, other, "DIA_Lobart_BuyClothes_BUY_05_04"); //Nie masz wystarczaj�co du�o z�ota!
	};
	
	Info_ClearChoices(DIA_Lobart_BuyClothes);
};

func void DIA_Lobart_BuyClothes_NotYet()
{
	AI_Output (other, self, "DIA_Lobart_BuyClothes_NotYet_15_00"); //To wci�� za du�o.
	AI_Output (self, other, "DIA_Lobart_BuyClothes_NotYet_05_01"); //Prosz� bardzo.
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
	description							=	"Co tu si� dzieje?";
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
	AI_Output (other, self, "DIA_Lobart_AufstandInfo_15_00"); //Co tu si� dzieje?
	AI_Output (self, other, "DIA_Lobart_AufstandInfo_05_01"); //Pytasz, co si� dzieje? Ch�opie, sk�d ty si� urwa�e�? Jeste�my w przededniu wojny domowej!
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_AufstandInfo_05_02"); //Do tej pory farmerzy traktowali czynsz jako sprawiedliwie naliczany podatek.
		AI_Output (self, other, "DIA_Lobart_AufstandInfo_05_03"); //Jednak odk�d w mie�cie pojawili si� paladyni, coraz cz�ciej odwiedzaj� nas stra�nicy, kawa�ek po kawa�ku rozkradaj�c nasz dobytek.
		AI_Output (self, other, "DIA_Lobart_AufstandInfo_05_04"); //Je�li tak dalej p�jdzie, to wkr�tce nic nam ju� nie pozostanie.
	};
	AI_Output (self, other, "DIA_Lobart_AufstandInfo_05_05"); //Niekt�rzy farmerzy zaczynaj� si� buntowa�. Pierwszy by� Onar!
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
	description							=	"Powiedz mi co� wi�cej o tym Onarze.";
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
	AI_Output (other, self, "DIA_Lobart_OnarStory_15_00"); //Powiedz mi co� wi�cej o tym Onarze.

		if ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
		{
			AI_Output (self, other, "DIA_Lobart_OnarStory_05_01"); //Jeste� najemnikiem, prawda? Wi�c chyba najlepiej znasz swojego szefa?
		}
		else
		{
			AI_Output (self, other, "DIA_Lobart_OnarStory_05_02"); //Onar jest w�a�cicielem najwi�kszej farmy w okolicy. Ca�kowicie zerwa� kontakty z miastem.
			AI_Output (self, other, "DIA_Lobart_OnarStory_05_03"); //Podobno zatrudni� najemnik�w, aby nie dopuszczali stra�y do jego posiad�o�ci!
			AI_Output (self, other, "DIA_Lobart_OnarStory_05_04"); //Trudno si� zreszt� temu dziwi�.
			AI_Output (self, other, "DIA_Lobart_OnarStory_05_05"); //W ka�dym razie to zadzia�a�o - �aden stra�nik miejski nie �mie postawi� stopy na jego terenach.
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
	description							=	"Kim s� ci najemnicy zatrudnieni przez Onara?";
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
	AI_Output (other, self, "DIA_Lobart_SldInfo_15_00"); //Kim s� ci najemnicy zatrudnieni przez Onara?
	AI_Output (self, other, "DIA_Lobart_SldInfo_05_01"); //Nie wiem o nich zbyt wiele. Prawdopodobnie wi�kszo�� z nich to byli wi�niowie z Kolonii.
	AI_Output (self, other, "DIA_Lobart_SldInfo_05_02"); //Wszyscy wiemy, czego si� po nich mo�na spodziewa�...
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
	description							=	"Po czyjej jeste� stronie? Ch�op�w czy Kr�la?";
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
	AI_Output (other, self, "DIA_Lobart_WhichSide_15_00"); //A co z tob�? Po kt�rej jeste� stronie? Ch�op�w czy Kr�la?
	AI_Output (self, other, "DIA_Lobart_WhichSide_05_01"); //Mieszkam zbyt blisko miasta, �eby mie� jakikolwiek wyb�r.
	AI_Output (self, other, "DIA_Lobart_WhichSide_05_02"); //Ale ciesz� si� z tego. To by�aby bardzo trudna decyzja.
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_WhichSide_05_03"); //Kr�l zabiera nam wszystko, co mamy. Z kolei Onar szczuje swoimi najemnikami ka�dego, kto nie chce si� do niego przy��czy�.
		AI_Output (self, other, "DIA_Lobart_WhichSide_05_04"); //Dlatego wi�kszo�� farmer�w wci�� nie mo�e si� jeszcze zdecydowa�. Jednak wcze�niej czy p�niej b�d� musieli opowiedzie� si� po kt�rej� ze stron.
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
	AI_Output (self, other, "DIA_Lobart_WorkNOW_05_01"); //Je�li chcesz, mo�esz u mnie pracowa�.
	AI_Output (self, other, "DIA_Lobart_WorkNOW_05_02"); //Mo�esz pracowa� w polu albo znale�� sobie jakie� inne zaj�cie. Roboty na farmie nigdy nie brakuje.
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_WorkNOW_05_03"); //Mog� ci zap�aci�, albo - je�li wolisz - dostaniesz ode mnie porz�dne ubranie.
		AI_Output (self, other, "DIA_Lobart_WorkNOW_05_04"); //Te rzeczy s� troch� warte. Nie mog� ci ich tak po prostu odda�. Jednak je�li zgodzisz si� dla mnie pracowa�, sprzedam ci je po ni�szej cenie.
		
		QuestStep_FarmerArmor = SetQuestStatus (Quest_FarmerArmor, LOG_RUNNING, QuestStep_FarmerArmor);
		SetNoteEntry (Quest_FarmerArmor, LOG_MISSION, "Farmer Lobart chce mi sprzeda� ubranie robocze, kt�rego cz�� ceny mog� odpracowa� w polu. Im wi�cej pracy wykonam, tym ni�sza b�dzie cena ubra�.");
		
		if (Npc_HasEquippedArmor(other) == false)
		|| (QuestStep_FarmerArmor == LOG_RUNNING)
		{
			AI_Output (self, other, "DIA_Lobart_WorkNOW_05_05"); //Na twoim miejscu wzi��bym ubranie...
		}
		else
		{
			AI_Output (self, other, "DIA_Lobart_WorkNOW_05_06"); //Ale poniewa� masz ju� ca�kiem przyzwoite ubranie, pewnie wola�by� z�oto.
		};
	};
	AI_Output (self, other, "DIA_Lobart_WorkNOW_05_07"); //Trzeba zebra� rzep� z tego ma�ego poletka przy stodole.
	
	Info_ClearChoices(DIA_Lobart_WorkNOW);
	Info_AddChoice (DIA_Lobart_WorkNOW, "Mam wyrywa� rzep�? Chyba sobie ze mnie �artujesz!", DIA_Lobart_WorkNOW_WannaFoolMe);
	Info_AddChoice (DIA_Lobart_WorkNOW, "W porz�dku...", DIA_Lobart_WorkNOW_Ok);
};

func void DIA_Lobart_WorkNOW_Ok()
{
	AI_Output (other, self, "DIA_Lobart_WorkNOW_Ok_15_00"); //Dobrze...
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_WorkNOW_Ok_05_01"); //Wi�c po�piesz si�, zanim zmieni� zdanie.
	};
	
	QuestStep_TurnipsForLobart = SetQuestStatus (Quest_TurnipsForLobart, LOG_RUNNING, QuestStep_TurnipsForLobart);
	SetNoteEntry (Quest_TurnipsForLobart, LOG_MISSION, "Farmer Lobart chce, abym zebra� z pola rzep�. W zamian oferuje mi z�oto albo obni�enie ceny ubra�.");
	
	Info_ClearChoices(DIA_Lobart_WorkNOW);
};

func void DIA_Lobart_WorkNOW_WannaFoolMe()
{
	AI_Output (other, self, "DIA_Lobart_WorkNOW_WannaFoolMe_15_00"); //Mam wyrywa� rzep�? Chyba sobie ze mnie �artujesz!
	AI_Output (self, other, "DIA_Lobart_WorkNOW_WannaFoolMe_05_01"); //Tak, taki d�entelmen jak ty pewnie brzydzi si� uczciw� prac�, co?
	
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_WorkNOW_WannaFoolMe_05_02"); //Jazda na pole albo wyno� si� z mojej farmy!
	}
	else
	{
		AI_Output (self, other, "DIA_Lobart_WorkNOW_WannaFoolMe_05_03"); //W tej chwili nie mam dla ciebie �adnej innej pracy.
	};
	
	QuestStep_TurnipsForLobart = SetQuestStatus (Quest_TurnipsForLobart, LOG_RUNNING, QuestStep_TurnipsForLobart);
	SetNoteEntry (Quest_TurnipsForLobart, LOG_MISSION, "Farmer Lobart chce, abym zebra� z pola rzep�. W zamian oferuje mi z�oto albo obni�enie ceny ubra�.");
	
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
			AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_01"); //Widzisz, jednak jest z ciebie jaki� po�ytek.
		};
		
		QuestStep_TurnipsForLobart = SetQuestStatus (Quest_TurnipsForLobart, LOG_SUCCESS, QuestStep_TurnipsForLobart);
		B_GivePlayerXP(XP_BONUS_0);
		
		if ((Npc_IsDead(Hilda))== false)
		{
			AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_02"); //Zanie� je mojej �onie i powiedz, �eby je ugotowa�a.
			
			QuestStep_TurnipsForHilda = SetQuestStatus (Quest_TurnipsForHilda, LOG_RUNNING, QuestStep_TurnipsForHilda);
			SetNoteEntry (Quest_TurnipsForHilda, LOG_MISSION, "Zebran� rzep� mam zanie�� do �ony Lobarta, kt�ra przyrz�dzi z niej posi�ek.");
		};
		
		AI_Output (other, self, "DIA_Lobart_RuebenRunning_15_03"); //Co z moj� zap�at�?
		AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_04"); //Mog� ci da� 5 sztuk z�ota.
		if (hero.guild == GIL_NONE)
		{
			AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_05"); //...albo sprzeda� ubranie po ni�szej cenie. Co wybierasz?
		};
		Info_ClearChoices(DIA_Lobart_RuebenRunning);
		
		if (hero.guild == GIL_NONE)
		{
			Info_AddChoice (DIA_Lobart_RuebenRunning, "Sprzedaj mi ubranie po ni�szej cenie!", DIA_Lobart_RuebenRunning_Billiger);
		};
		Info_AddChoice (DIA_Lobart_RuebenRunning, "Daj mi 5 sztuk z�ota!", DIA_Lobart_RuebenRunning_Gold);
	}
	else
	{
		AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_06"); //Ale tu nie ma nawet 20 sztuk!
		if (hero.guild == GIL_NONE)
		{
			AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_07"); //Chcesz mi powiedzie�, �e zjad�e� reszt�?! Je�li tak, to mo�esz zapomnie� o wynagrodzeniu!
			AI_Output (self, other, "DIA_Lobart_RuebenRunning_05_08"); //Jazda na pole po reszt� rzepy! Wracaj do pracy albo naprawd� si� rozgniewam!
		};
		AI_StopProcessInfos(self);
	};
};

func void DIA_Lobart_RuebenRunning_Gold()
{
	AI_Output (other, self, "DIA_Lobart_RuebenRunning_Gold_15_00"); //Daj mi 5 sztuk z�ota!
	AI_Output (self, other, "DIA_Lobart_RuebenRunning_Gold_05_01"); //Prosz�.
	
	B_GiveInvItems (self, other, ItMi_Gold, 5);
	
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lobart_RuebenRunning_Gold_05_02"); //I nie przepij wszystkiego od razu.
	};
	Info_ClearChoices(DIA_Lobart_RuebenRunning);
};

func void DIA_Lobart_RuebenRunning_Billiger()
{
	AI_Output (other, self, "DIA_Lobart_RuebenRunning_Billiger_15_00"); //Sprzedaj mi ubranie po ni�szej cenie!
	AI_Output (self, other, "DIA_Lobart_RuebenRunning_Billiger_05_01"); //Dobrze! Obni�� cen� o 10 monet.
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
	description							=	"Czy masz dla mnie jeszcze jak�� robot�?";
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
	AI_Output (other, self, "DIA_Lobart_MoreWork_15_00"); //Czy masz dla mnie jeszcze jak�� robot�?
	
	if (QuestStep_TurnipsForLobart == LOG_RUNNING)
	{
		AI_Output (self, other, "DIA_Lobart_MoreWork_05_01"); //Najpierw przynie� rzep�. Potem zobaczymy.
	}
	else //SUCCESS
	{
		AI_Output (self, other, "DIA_Lobart_MoreWork_05_02"); //Nie, ale zapytaj moj� �on� albo ch�opc�w pracuj�cych w polu. Mo�e oni znajd� dla ciebie jakie� zaj�cie.
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
	description							=	"Andre mnie do ciebie przys�a�.";
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
	AI_Output (other, self, "DIA_Lobart_ANDREHELPLOBART_15_00"); //Przysy�a mnie Andre. Czy mog� co� dla ciebie zrobi�?
	AI_Output (self, other, "DIA_Lobart_ANDREHELPLOBART_05_01"); //Tak, pewnie. Te cholerne polne bestie strasznie uprzykrzaj� mi �ycie.
	AI_Output (self, other, "DIA_Lobart_ANDREHELPLOBART_05_02"); //Za�atw jako� ten problem. Niewa�ne jak!
	
	SetNoteEntry (Quest_LobartGiantbugs, LOG_MISSION, "Pola Lobarta atakowane s� przez polne bestie. Prosi� mnie, abym si� nimi zaj��.");
	
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
	description							=	"Polne bestie nie �yj�!";
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
		AI_Output (other, self, "DIA_Lobart_BUGDEAD_15_00"); //Polne bestie nie �yj�!
		AI_Output (self, other, "DIA_Lobart_BUGDEAD_05_01"); //Dobra robota. Polec� twoje us�ugi znajomym. Prosz�, oto zap�ata.
		
		B_StartOtherRoutine	(Vino, "Start");
		B_StartOtherRoutine	(LobartsBauer1, "Start");
		B_StartOtherRoutine	(LobartsBauer2, "Start");
		
		CreateInvItems (self, ItMi_Gold, 20);
		B_GiveInvItems (self, other, ItMi_Gold, 20);
		
		QuestStep_LobartGiantbugs = SetQuestStatus (Quest_LobartGiantbugs, LOG_SUCCESS, QuestStep_LobartGiantbugs);
		SetNoteEntry (Quest_LobartGiantbugs, LOG_MISSION, "Lobart nie musi si� ju� przejmowa� polnymi bestiami. Zrobi�em z nimi porz�dek.");
		
		DIA_Lobart_BUGDEAD_noPerm = true;
	}
	else  
	{
		AI_Output (other, self, "DIA_Lobart_BUGDEAD_15_02"); //Chyba wyko�czy�em je wszystkie!
		AI_Output (self, other, "DIA_Lobart_BUGDEAD_05_03"); //Nie pr�buj mnie wykiwa�. Wci�� je tutaj widuj�. Albo zabijesz je wszystkie, albo nie mamy o czym gada�.
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
	AI_Output (self, other, "DIA_Lobart_DMT_05_01"); //Ju� nie daj� rady...
	AI_Output (self, other, "DIA_Lobart_DMT_05_02"); //Znienacka pojawili si� tutaj ci go�cie w czarnych kapturach.
	
	if (hero.guild == GIL_KDF)
	&& (Vino_isAlive_Kap3 == true)
	{
		AI_Output (self, other, "DIA_Lobart_DMT_05_03"); //Najpierw Vino mia� z nimi bardzo d�ug� rozmow�, a potem gdzie� go zabrali.
		
		if (NpcObsessedByDMT_Vino == false)
		{
			Info_AddChoice	(DIA_Lobart_DMT, "Dok�d go zaci�gn�li?", DIA_Lobart_DMT_VinoWohin);
		};
		Info_AddChoice (DIA_Lobart_DMT, "W czym mia� im pom�c Vino?", DIA_Lobart_DMT_VinoWas);
	};
	
	if (!Npc_IsDead(Hilda))
	&& ((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL)	||	(hero.guild == GIL_KDF))
	{
		AI_Output (self, other, "DIA_Lobart_DMT_05_04"); //Nied�ugo potem moja �ona powa�nie si� rozchorowa�a. Wi�kszo�� czasu sp�dza w ��ku. Dosy� cz�sto jej si� to zdarza.
	};
	AI_Output (self, other, "DIA_Lobart_DMT_05_05"); //Chyba oszalej�!
	
	Info_ClearChoices(DIA_Lobart_DMT);
	Info_AddChoice (DIA_Lobart_DMT, DIALOG_ENDE, DIA_Lobart_DMT_BACK);
	
	if (QuestStep_HealHilda != LOG_SUCCESS)
	&& (!Npc_IsDead(Hilda))
	&& ((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		Info_AddChoice (DIA_Lobart_DMT, "Czemu nie zabierzesz �ony do uzdrawiacza?", DIA_Lobart_DMT_FrauHeilen);
	};
	Info_AddChoice (DIA_Lobart_DMT, "Czemu nic nie zrobisz z tymi zakapturzonymi postaciami?", DIA_Lobart_DMT_hof);
	Info_AddChoice (DIA_Lobart_DMT, "Rozmawia�e� z tymi odzianymi na czarno m�czyznami?", DIA_Lobart_DMT_spokeToThem);
};

func void DIA_Lobart_DMT_FrauHeilen()
{
	AI_Output (other, self, "DIA_Lobart_DMT_FrauHeilen_15_00"); //Czemu nie zabierzesz �ony do uzdrawiacza?
	AI_Output (self, other, "DIA_Lobart_DMT_FrauHeilen_05_01"); //Powinni�my p�j�� do miasta i zobaczy� si� z Vatrasem, ale nie mog� si� st�d ruszy�, dop�ki to ca�e zamieszanie si� nie sko�czy.
	
	QuestStep_HealHilda = SetQuestStatus (Quest_HealHilda, LOG_RUNNING, QuestStep_HealHilda);
	SetNoteEntry (Quest_HealHilda, LOG_MISSION, "�ona Lobarta, Hilda, zachorowa�a. Vatras ma lekarstwo, kt�re mo�e j� wyleczy�.");
};

func void DIA_Lobart_DMT_BACK()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine	(self, "Start");
};

func void DIA_Lobart_DMT_spokeToThem()
{
	AI_Output (other, self, "DIA_Lobart_DMT_spokeToThem_15_00"); //Rozmawia�e� z tymi odzianymi na czarno m�czyznami?
	AI_Output (self, other, "DIA_Lobart_DMT_spokeToThem_05_01"); //Jasne. Nie mia�em zreszt� wyboru.
	AI_Output (self, other, "DIA_Lobart_DMT_spokeToThem_05_02"); //Chyba kogo� szukaj�.
};

func void DIA_Lobart_DMT_hof()
{
	AI_Output (other, self, "DIA_Lobart_DMT_hof_15_00"); //Czemu nic nie zrobisz z tymi zakapturzonymi postaciami?
	AI_Output (self, other, "DIA_Lobart_DMT_hof_05_01"); //Bardzo bym chcia�, ale si� boj�. Widzia�em, jak spalili jednego cz�owieka �ywcem. Tak po prostu.
	AI_Output (self, other, "DIA_Lobart_DMT_hof_05_02"); //Czemu mia�bym ryzykowa� �yciem?
};

func void DIA_Lobart_DMT_VinoWas()
{
	AI_Output (other, self, "DIA_Lobart_DMT_VinoWas_15_00"); //W czym mia� im pom�c Vino?
	AI_Output (self, other, "DIA_Lobart_DMT_VinoWas_05_01"); //Nie powiedzieli. Po prostu go zabrali.
};

func void DIA_Lobart_DMT_VinoWohin()
{
	AI_Output (other, self, "DIA_Lobart_DMT_VinoWohin_15_00"); //Dok�d go zaci�gn�li?
	AI_Output (self, other, "DIA_Lobart_DMT_VinoWohin_05_01"); //Poszli przez to wzg�rze.
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
	description							=	"Vino ju� nie wr�ci.";
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
	AI_Output (other, self, "DIA_Lobart_VINOTOT_15_00"); //Vino ju� nie wr�ci.
	if (Npc_IsDead(Vino))	
	{
		AI_Output (other, self, "DIA_Lobart_VINOTOT_15_01"); //Nie �yje.
	}
	else
	{
		AI_Output (other, self, "DIA_Lobart_VINOTOT_15_02"); //Doprowadzili go do szale�stwa.
	};
	AI_Output (self, other, "DIA_Lobart_VINOTOT_05_03"); //Na Innosa. Mam nadziej�, �e ten koszmar wkr�tce si� sko�czy.
	
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
	description							=	"Uwa�aj na swoj� farm�!";
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
	AI_Output (other, self, "DIA_Lobart_PERM_15_00"); //Uwa�aj na swoj� farm�!
	AI_Output (self, other, "DIA_Lobart_PERM_05_01"); //Postaram si�.
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
	description							=	"Masz tu k�opot z orkami.";
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
	AI_Output (other, self, "DIA_Lobart_ORKPROBLEM_15_00"); //Masz tu k�opot z orkami.
	AI_Output (self, other, "DIA_Lobart_ORKPROBLEM_05_01"); //Niech to szlag! Czy te problemy nigdy si� nie sko�cz�?
	AI_Output (self, other, "DIA_Lobart_ORKPROBLEM_05_02"); //Je�li tak dalej p�jdzie, wkr�tce warto�� ca�ej mojej farmy nie b�dzie przekracza� trzech monet!
	
	QuestStep_LobartOrcProblem = SetQuestStatus (Quest_LobartOrcProblem, LOG_RUNNING, QuestStep_LobartOrcProblem);
	SetNoteEntry (Quest_LobartOrcProblem, LOG_MISSION, "Orkowie zaj�li farm� Lobarta, kt�ry poprosi� mnie, abym si� ich pozby�.");
	
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
	description							=	"Pozby�em si� ork�w.";
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
	AI_Output (other, self, "DIA_Lobart_ORKSWEG_15_00"); //Pozby�em si� ork�w.
	if (hero.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Lobart_ORKSWEG_05_01"); //I niech ludzie nie gadaj�, �e paladyni nic nie robi� dla farmer�w.
	};
	AI_Output (self, other, "DIA_Lobart_ORKSWEG_05_02"); //Chwa�a Innosowi. Nie mog� ci zaoferowa� �adnej warto�ciowej nagrody, ale mam nadziej�, �e docenisz ten gest.
	
	B_StartOtherRoutine	(Vino, "Start");
	B_StartOtherRoutine	(LobartsBauer1, "Start");
	B_StartOtherRoutine	(LobartsBauer2, "Start");
	
	QuestStep_LobartOrcProblem = SetQuestStatus (Quest_LobartOrcProblem, LOG_SUCCESS, QuestStep_LobartOrcProblem);
	B_GivePlayerXP(XP_BONUS_6);
	
	CreateInvItems (self, ItMi_Gold, 150);
	B_GiveInvItems (self, other, ItMi_Gold, 150);
};
