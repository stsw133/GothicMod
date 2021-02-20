//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Randolph_EXIT (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Randolph_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Randolph_EXIT_Info()
{
	B_NpcClearObsessionByDMT(self);
};

//******************************************************************************************
//	SchwereLuft
//******************************************************************************************
instance DIA_Randolph_SchwereLuft (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	4;
	condition							=	DIA_Randolph_SchwereLuft_Condition;
	information							=	DIA_Randolph_SchwereLuft_Info;
	description							=	"Wszystko w porz�dku?";
};

func int DIA_Randolph_SchwereLuft_Condition()
{
	if (!Npc_IsDead(Alvares))
	&& (!Npc_IsDead(Engardo))
	&& (Kapitel < 10)
	{
		return true;
	};
};

func void DIA_Randolph_SchwereLuft_Info()
{
	AI_Output (other, self, "DIA_Randolph_SchwereLuft_15_00"); //Wszystko w porz�dku?
	AI_Output (self, other, "DIA_Randolph_SchwereLuft_06_01"); //Hmmm... Jedno z�e s�owo, a rozp�ta si� tu prawdziwe piek�o... Uwa�aj, bo b�dzie jatka.
	AI_Output (other, self, "DIA_Randolph_SchwereLuft_15_02"); //Czy przy��czysz si� do walki?
	AI_Output (self, other, "DIA_Randolph_SchwereLuft_06_03"); //Nie b�d� sta� jak idiota i przygl�da� si�, ale te� nie zamierzam nikogo prowokowa�.
	Akils_SLDStillthere = true;
	
	QuestStep_AkilNeedHelp = SetQuestStatus (Quest_AkilNeedHelp, LOG_RUNNING, QuestStep_AkilNeedHelp);
	SetNoteEntry (Quest_AkilNeedHelp, LOG_MISSION, "Farmie Akila zagra�aj� najemnicy.");
	
	B_NpcClearObsessionByDMT(self);
};

//******************************************************************************************
//	Hallo
//******************************************************************************************
instance DIA_Randolph_HALLO (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	4;
	condition							=	DIA_Randolph_HALLO_Condition;
	information							=	DIA_Randolph_HALLO_Info;
	permanent							=	false;
	description							=	"Wszystko w porz�dku?";
};

func int DIA_Randolph_HALLO_Condition()
{
	if (Npc_IsDead(Alvares))
	&& (Npc_IsDead(Engardo))
	&& (Kapitel < 10)
	{
		return true;
	};
};

func void DIA_Randolph_HALLO_Info()
{
	AI_Output (other, self, "DIA_Randolph_HALLO_15_00"); //Wszystko w porz�dku?
	if (Npc_IsDead(Akil))
	&& (Npc_IsDead(Kati))
	{
		AI_Output (self, other, "DIA_Randolph_HALLO_06_01"); //Skoro Kati i Akil udali si� do �wiata Innosa, teraz ja b�d� zajmowa� si� farm�.
		
		Npc_ExchangeRoutine (self, "START");
		AI_ContinueRoutine(self);
	}
	else
	{
		AI_Output (self, other, "DIA_Randolph_HALLO_06_02"); //Tak, w porz�dku. Ten Alvares ostatnio pozwala� sobie na zbyt wiele. Na szcz�cie ju� po wszystkim.
	};
	AI_Output (self, other, "DIA_Randolph_HALLO_06_03"); //Przyda�oby si� porz�dnie przep�uka� gard�o w gospodzie.
};

//******************************************************************************************
//	Baltram
//******************************************************************************************
instance DIA_Randolph_Baltram (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	5;
	condition							=	DIA_Randolph_Baltram_Condition;
	information							=	DIA_Randolph_Baltram_Info;
	description							=	"Baltram mnie przys�a�...";
};

func int DIA_Randolph_Baltram_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Randolph_HALLO))
	&& (QuestStep_BaltramPacket == LOG_RUNNING)
	&& (Npc_IsDead(Akil))
	&& (Npc_IsDead(Kati))
	&& (Lieferung_Geholt == false)
	&& (Kapitel < 10)
	{
		return true;
	};
};

func void DIA_Randolph_Baltram_Info()
{
	AI_Output (other, self, "DIA_Randolph_Baltram_15_00"); //Przysy�a mnie Baltram, mam odebra� dla niego dostaw�.
	AI_Output (self, other, "DIA_Randolph_Baltram_06_01"); //�wietnie. Wszystko ju� przygotowa�em. Oto paczka dla ciebie.
	
	CreateInvItems (self, ItMi_BaltramPaket, 1);
	B_GiveInvItems (self, other, ItMi_BaltramPaket, 1);
	Lieferung_Geholt = true;
	
	QuestStep_BaltramPacket = SetQuestStatus (Quest_BaltramPacket, LOG_PROGRESS, QuestStep_BaltramPacket);
	SetNoteEntry (Quest_BaltramPacket, LOG_MISSION, "Mam przesy�k�. Mog� j� teraz zabra� do Baltrama...");
	SetNoteEntry (Quest_NagurPacket, LOG_MISSION, "Mam przesy�k�. Mog� j� teraz zabra� do Nagura...");
};

//******************************************************************************************
//	Geschichte
//******************************************************************************************
instance DIA_Randolph_Geschichte (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	5;
	condition							=	DIA_Randolph_Geschichte_Condition;
	information							=	DIA_Randolph_Geschichte_Info;
	description							=	"Nie jeste� st�d, prawda?";
};

func int DIA_Randolph_Geschichte_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Randolph_HALLO))
	&& (Kapitel < 10)
	{
		return true;
	};
};

func void DIA_Randolph_Geschichte_Info()
{
	AI_Output (other, self, "DIA_Randolph_Geschichte_15_00"); //Nie jeste� st�d, prawda?
	AI_Output (self, other, "DIA_Randolph_Geschichte_06_01"); //Przybywam z po�udniowych wysp. Swego czasu Khorinis potrzebowa�o ludzi do wydobywania magicznej rudy.
	AI_Output (self, other, "DIA_Randolph_Geschichte_06_02"); //Kiedy jednak przyby�em na miejsce, okaza�o si�, �e maj� tu wielk�, magiczn� Barier�. Nie mia�em zamiaru jej przekracza�. Znalaz�em wi�c prac� w porcie.
	AI_Output (self, other, "DIA_Randolph_Geschichte_06_03"); //Kiedy port przesta� przyjmowa� statki, postanowi�em zmieni� prac�. Tak trafi�em do Akila. Prawd� powiedziawszy, ima�em si� ju� gorszych zaj��.
};

//******************************************************************************************
//	Taverne
//******************************************************************************************
instance DIA_Randolph_TAVERNE (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	5;
	condition							=	DIA_Randolph_TAVERNE_Condition;
	information							=	DIA_Randolph_TAVERNE_Info;
	description							=	"Bywasz w gospodzie?";
};

func int DIA_Randolph_TAVERNE_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Randolph_HALLO))
	&& (Kapitel < 10)
	{
		return true;
	};
};

func void DIA_Randolph_TAVERNE_Info()
{
	AI_Output (other, self, "DIA_Randolph_TAVERNE_15_00"); //Bywasz w gospodzie?
	AI_Output (self, other, "DIA_Randolph_TAVERNE_06_01"); //To prawda. Cho� ostatnio coraz rzadziej.
	AI_Output (self, other, "DIA_Randolph_TAVERNE_06_02"); //Nie sta� mnie na przesiadywanie tam.
};

//******************************************************************************************
//	WasIstInTaverne
//******************************************************************************************
instance DIA_Randolph_WASISTINTAVERNE (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	6;
	condition							=	DIA_Randolph_WASISTINTAVERNE_Condition;
	information							=	DIA_Randolph_WASISTINTAVERNE_Info;
	description							=	"Co tak dok�adnie dzieje si� w gospodzie?";
};

func int DIA_Randolph_WASISTINTAVERNE_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Randolph_TAVERNE))
	&& (Kapitel < 10)
	{
		return true;
	};
};

func void DIA_Randolph_WASISTINTAVERNE_Info()
{
	AI_Output (other, self, "DIA_Randolph_WASISTINTAVERNE_15_00"); //Co tak dok�adnie dzieje si� w gospodzie?
	AI_Output (self, other, "DIA_Randolph_WASISTINTAVERNE_06_01"); //Najpro�ciej m�wi�c, kwitnie tam hazard.
	AI_Output (self, other, "DIA_Randolph_WASISTINTAVERNE_06_02"); //Dw�ch go�ci konkuruje w piciu piwa. Wygrywa ten, kt�ry d�u�ej utrzyma si� na nogach.
	AI_Output (self, other, "DIA_Randolph_WASISTINTAVERNE_06_03"); //Przegra�em w tej konkurencji. Zanim tam wr�c�, musz� troch� zarobi�.
	
	QuestStep_DrinkChallenge = SetQuestStatus (Quest_DrinkChallenge, LOG_RUNNING, QuestStep_DrinkChallenge);
	SetNoteEntry (Quest_DrinkChallenge, LOG_MISSION, "W gospodzie s� przyjmowane zak�ady.");
};

//******************************************************************************************
//	GEGENWEN
//******************************************************************************************
instance DIA_Randolph_GEGENWEN (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	7;
	condition							=	DIA_Randolph_GEGENWEN_Condition;
	information							=	DIA_Randolph_GEGENWEN_Info;
	description							=	"Kto by� twoim przeciwnikiem?";
};

func int DIA_Randolph_GEGENWEN_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Randolph_WASISTINTAVERNE))
	&& (Kapitel < 10)
	{
		return true;
	};
};

func void DIA_Randolph_GEGENWEN_Info()
{
	AI_Output (other, self, "DIA_Randolph_GEGENWEN_15_00"); //Kto by� twoim przeciwnikiem?
	AI_Output (self, other, "DIA_Randolph_GEGENWEN_06_01"); //Ten stary hultaj - Rukhar. Jak dot�d nie uda�o mi si� go pokona�.
	AI_Output (self, other, "DIA_Randolph_GEGENWEN_06_02"); //Co� mi si� jednak zdaje, �e ten �mierdz�cy patafian za ka�dym razem doprawia� moje piwo ginem.
	AI_Output (self, other, "DIA_Randolph_GEGENWEN_06_03"); //Wydaje mi si�, �e ta brudna kanalia trzyma gin w tym swoim kufrze!
	AI_Output (self, other, "DIA_Randolph_GEGENWEN_06_04"); //Kto� powinien podmieni� gin na wod�. Wtedy mo�e sobie doprawia� moje piwo, jak d�ugo zechce.
	AI_Output (self, other, "DIA_Randolph_GEGENWEN_06_05"); //Gdybym tylko mia� troch� z�ota, by raz jeszcze stan�� z nim do pojedynku...
	
	SetNoteEntry (Quest_DrinkChallenge, LOG_MISSION, "Randolph opowiedzia� mi o Rukharze i konkursie picia. Randolph nie ma ju� pieni�dzy, aby stan�� przeciwko Rukharowi.");
	SetNoteEntry (Quest_DrinkChallenge, LOG_MISSION, "Randolph podejrzewa, �e Rukhar oszukuje podczas zawod�w w piciu. Prosi mnie, abym zamieni� butelk� ginu, kt�r� Rukhar trzyma w swoim kufrze, na butelk� wody.");
};

//******************************************************************************************
//	WasBrauchstDu
//******************************************************************************************
instance DIA_Randolph_WASBRAUCHSTDU (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	8;
	condition							=	DIA_Randolph_WASBRAUCHSTDU_Condition;
	information							=	DIA_Randolph_WASBRAUCHSTDU_Info;
	description							=	"Ile pieni�dzy potrzebujesz, by wzi�� udzia� w konkursie?";
};

func int DIA_Randolph_WASBRAUCHSTDU_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Randolph_GEGENWEN))
	&& (MIS_Rukhar_Wettkampf == LOG_RUNNING)
	&& (Kapitel < 10)
	{
		return true;
	};
};

func void DIA_Randolph_WASBRAUCHSTDU_Info()
{
	AI_Output (other, self, "DIA_Randolph_WASBRAUCHSTDU_15_00"); //Ile pieni�dzy potrzebujesz, by wzi�� udzia� w konkursie?
	AI_Output (self, other, "DIA_Randolph_WASBRAUCHSTDU_06_01"); //10 sztuk z�ota.
};

//******************************************************************************************
//	IchGebeDirGeld
//******************************************************************************************

var int DIA_Randolph_ICHGEBEDIRGELD_noPerm;

//******************************************************************************************
instance DIA_Randolph_ICHGEBEDIRGELD (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	9;
	condition							=	DIA_Randolph_ICHGEBEDIRGELD_Condition;
	information							=	DIA_Randolph_ICHGEBEDIRGELD_Info;
	permanent							=	true;
	description							=	"Dam ci pieni�dze, by� m�g� stan�� w szranki z Rukharem.";
};

func int DIA_Randolph_ICHGEBEDIRGELD_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Randolph_WASBRAUCHSTDU))
	&& (DIA_Randolph_ICHGEBEDIRGELD_noPerm == false)
	&& (Kapitel < 10)
	{
		return true;
	};
};

func void DIA_Randolph_ICHGEBEDIRGELD_Info()
{
	AI_Output (other, self, "DIA_Randolph_ICHGEBEDIRGELD_15_00"); //Dam ci pieni�dze, by� m�g� stan�� w szranki z Rukharem.
	if (B_GiveInvItems(other,self,ItMi_Gold,10))
	{
		AI_Output (self, other, "DIA_Randolph_ICHGEBEDIRGELD_06_01"); //Naprawd�? Serdecznie dzi�kuj�. Wkr�tce je oddam.
		AI_Output (self, other, "DIA_Randolph_ICHGEBEDIRGELD_06_02"); //Je�li wygram, dorzuc� nawet co� ekstra.
		
		SetNoteEntry (Quest_DrinkChallenge, LOG_MISSION, "Powinienem wybra� si� na zawody w piciu piwa.");
		B_GivePlayerXP(XP_BONUS_0);
		
		DIA_Randolph_ICHGEBEDIRGELD_noPerm = true;
		
		B_NpcClearObsessionByDMT(self);
		
		MIS_Rukhar_Wettkampf_Day = Wld_GetDay();
		
		Npc_ExchangeRoutine	(self, "Wettkampf");
		B_StartOtherRoutine	(Orlan, "Wettkampf");
		B_StartOtherRoutine	(Rukhar, "Wettkampf");
	}
	else
	{
		AI_Output (self, other, "DIA_Randolph_ICHGEBEDIRGELD_06_03"); //Nie trzeba, sam ledwie wi��esz koniec z ko�cem.
	};
	B_NpcClearObsessionByDMT(self);
};

//******************************************************************************************
//	WettKampfZuEnde
//******************************************************************************************

VAR int DIA_Randolph_WETTKAMPFZUENDE_OneTime;

//******************************************************************************************
instance DIA_Randolph_WETTKAMPFZUENDE (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	10;
	condition							=	DIA_Randolph_WETTKAMPFZUENDE_Condition;
	information							=	DIA_Randolph_WETTKAMPFZUENDE_Info;
	permanent							=	true;
	description							=	"Mamy kaca?";
};

func int DIA_Randolph_WETTKAMPFZUENDE_Condition()
{
	if (MIS_Rukhar_Wettkampf == LOG_SUCCESS)
	&& (Kapitel < 10)
	{
		return true;
	};
};

func void DIA_Randolph_WETTKAMPFZUENDE_Info()
{
	AI_Output (other, self, "DIA_Randolph_WETTKAMPFZUENDE_15_00"); //Mamy kaca?
	
	if (Rukhar_Won_Wettkampf == true)
	{
		AI_Output (self, other, "DIA_Randolph_WETTKAMPFZUENDE_06_01"); //Chyba nawet par� kac�w na raz... Ju� nigdy nie dotkn� alkoholu.
		AI_Output (self, other, "DIA_Randolph_WETTKAMPFZUENDE_06_02"); //Twoje pieni�dze przepad�y. Przykro mi.
	}
	else
	{
		AI_Output (self, other, "DIA_Randolph_WETTKAMPFZUENDE_06_03"); //Nie. Czuj� si� �wietnie.
		if (DIA_Randolph_WETTKAMPFZUENDE_OneTime == false)
		{
			AI_Output (self, other, "DIA_Randolph_WETTKAMPFZUENDE_06_04"); //W ko�cu si� uda�o. Wielkie dzi�ki za po�yczk�. Prosz�, przyjmij to w podzi�ce.
			CreateInvItems (self, ItMi_Gold, 20);
			B_GiveInvItems (self, other, ItMi_Gold, 12);
			DIA_Randolph_WETTKAMPFZUENDE_OneTime = true;
		};
		AI_Output (self, other, "DIA_Randolph_WETTKAMPFZUENDE_06_05"); //Wygl�da na to, �e Rukhar d�uugo jeszcze b�dzie trze�wia�.
	};
	B_NpcClearObsessionByDMT(self);
};

//******************************************************************************************
//	PERM
//******************************************************************************************

var int DIA_Randolph_PERM_GotMoney;

//******************************************************************************************
instance DIA_Randolph_PERM (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	30;
	condition							=	DIA_Randolph_PERM_Condition;
	information							=	DIA_Randolph_PERM_Info;
	permanent							=	true;
	description							=	"Oszala�e�?";
};

func int DIA_Randolph_PERM_Condition()
{
	if (Kapitel >= 10)
	&& (NpcObsessedByDMT_Randolph == false)
	{
		return true;
	};
};

func void DIA_Randolph_PERM_Info()
{
	if (hero.guild == GIL_KDF)
	{
		B_NpcObsessedByDMT(self);
	}
	else
	{
		AI_Output (other, self, "DIA_Randolph_PERM_15_00"); //Wszystko w porz�dku?
		
		if ((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL))
		&& (QuestStep_HealRandolph != LOG_SUCCESS)
		{
			if (DIA_Sagitta_HEALRANDOLPH_GotOne == false)
			&& (DIA_Sagitta_HEALRANDOLPH_KnowsPrice == true)
			&& (DIA_Randolph_PERM_GotMoney == false)
			{
				AI_Output (other, self, "DIA_Randolph_PERM_15_01"); //Wysy�asz mnie bez grosza przy duszy i nawet nie raczysz uprzedzi�, �e to cholerstwo tyle kosztuje?
				AI_Output (other, self, "DIA_Randolph_PERM_15_02"); //Sagitta ��da ode mnie 300 sztuk z�ota.
				AI_Output (self, other, "DIA_Randolph_PERM_06_03"); //Nie dam ci wi�cej ni� 150 sztuk z�ota. Prosz�, musisz mi pom�c, b�agam.
				
				CreateInvItems (self, ItMi_Gold, 150);
				B_GiveInvItems (self, other, ItMi_Gold, 150);
				DIA_Randolph_PERM_GotMoney = true;
			}
			else
			{
				AI_Output (self, other, "DIA_Randolph_PERM_06_04"); //Czuj� si� potwornie. Od kiedy przesta�em pi�, wszystko mnie boli. Napraw� potrzebuj� pomocy.
				AI_Output (self, other, "DIA_Randolph_PERM_06_05"); //Jest pewne lekarstwo, kt�re powinno pom�c.
				AI_Output (self, other, "DIA_Randolph_PERM_06_06"); //Sagitta, stara zielarka, zwykle je dla mnie przygotowuje. Ale nie mog� ryzykowa� wyprawy do niej, kiedy bandy ork�w grasuj� po okolicy.
			};
			
			QuestStep_HealRandolph = SetQuestStatus (Quest_HealRandolph, LOG_RUNNING, QuestStep_HealRandolph);
			SetNoteEntry (Quest_HealRandolph, LOG_MISSION, "Randolph twierdzi, �e przesta� pi� alkohol, i prosi mnie o przyniesienie od zielarki Sagitty jakich� zi�, kt�re pomog� mu przetrwa� pierwsze ci�kie dni trze�wo�ci.");
		}
		else
		{
			AI_Output (self, other, "DIA_Randolph_PERM_06_07"); //Ci�gle jeszcze kr�ci mi si� w g�owie, ale og�lnie jest o wiele lepiej.
		};
	};
};

//******************************************************************************************
//	Heilung
//******************************************************************************************
instance DIA_Randolph_Heilung (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	55;
	condition							=	DIA_Randolph_Heilung_Condition;
	information							=	DIA_Randolph_Heilung_Info;
	permanent							=	true;
	description							=	"Alkohol uderzy� do g��wki, co?";
};

func int DIA_Randolph_Heilung_Condition()
{
 	if (NpcObsessedByDMT_Randolph == true) && (NpcObsessedByDMT == false)
	&& (hero.guild == GIL_KDF)
	{
		return true;
	};
};

func void DIA_Randolph_Heilung_Info()
{
	AI_Output (other, self, "DIA_Randolph_Heilung_15_00"); //Alkohol uderzy� do g��wki, co?
	AI_Output (self, other, "DIA_Randolph_Heilung_06_01"); //Ju� nigdy ani kropelki. Nigdy w �yciu. S�owo honoru.
	B_NpcClearObsessionByDMT(self);
};

//******************************************************************************************
//	SagittaHeal
//******************************************************************************************
instance DIA_Randolph_SAGITTAHEAL (C_INFO)
{
	npc									=	BAU_942_Randolph;
	nr									=	56;
	condition							=	DIA_Randolph_SAGITTAHEAL_Condition;
	information							=	DIA_Randolph_SAGITTAHEAL_Info;
	description							=	"Prosz�, to powinno z�agodzi� objawy odstawienia trunk�w.";
};

func int DIA_Randolph_SAGITTAHEAL_Condition()
{
	if (QuestStep_HealRandolph == LOG_RUNNING)
	&& (Npc_HasItems(other,ItPo_HealRandolph_MIS))
	{
		return true;
	};
};

func void DIA_Randolph_SAGITTAHEAL_Info()
{
	AI_Output (other, self, "DIA_Randolph_SAGITTAHEAL_15_00"); //Prosz�, to powinno z�agodzi� objawy odstawienia trunk�w.
	
	B_GiveInvItems (other, self, ItPo_HealRandolph_MIS, 1);					
	if (Npc_IsInState(self,ZS_Pick_FP))
	{
		B_UseItem (self, ItPo_HealRandolph_MIS);
	};
	
	AI_Output (self, other, "DIA_Randolph_SAGITTAHEAL_06_01"); //Och! Dzi�ki, stary. Nareszcie troch� odpoczn�.
	AI_Output (self, other, "DIA_Randolph_SAGITTAHEAL_06_02"); //Jak ja ci si� odwdzi�cz�?
	
	if (DIA_Randolph_PERM_GotMoney == false)
	{
		AI_Output (self, other, "DIA_Randolph_SAGITTAHEAL_06_03"); //Te kilka monet to niewiele, wiem. Ale to ostatnie pieni�dze, jakie mi zosta�y.
		
		CreateInvItems (self, ItMi_Gold, 150);									
		B_GiveInvItems (self, other, ItMi_Gold, 150);					
	}
	else
	{
		AI_Output (other, self, "DIA_Randolph_SAGITTAHEAL_15_04"); //Zap�aci�em za ciebie kup� kasy, a ty dajesz mi kilka �mierdz�cych monet? To nawet nie pokryje moich wydatk�w.
		AI_Output (self, other, "DIA_Randolph_SAGITTAHEAL_06_05"); //Mog� si� chyba uzna� za szcz�liwca. Niecz�sto spotyka si� tak pomocnych paladyn�w. Nie s�dzisz?
	};
	
	QuestStep_HealRandolph = SetQuestStatus (Quest_HealRandolph, LOG_SUCCESS, QuestStep_HealRandolph);
	B_GivePlayerXP(XP_BONUS_5);
	B_NpcClearObsessionByDMT(self);
};
