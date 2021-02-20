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
	description							=	"Wszystko w porz¹dku?";
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
	AI_Output (other, self, "DIA_Randolph_SchwereLuft_15_00"); //Wszystko w porz¹dku?
	AI_Output (self, other, "DIA_Randolph_SchwereLuft_06_01"); //Hmmm... Jedno z³e s³owo, a rozpêta siê tu prawdziwe piek³o... Uwa¿aj, bo bêdzie jatka.
	AI_Output (other, self, "DIA_Randolph_SchwereLuft_15_02"); //Czy przy³¹czysz siê do walki?
	AI_Output (self, other, "DIA_Randolph_SchwereLuft_06_03"); //Nie bêdê sta³ jak idiota i przygl¹da³ siê, ale te¿ nie zamierzam nikogo prowokowaæ.
	Akils_SLDStillthere = true;
	
	QuestStep_AkilNeedHelp = SetQuestStatus (Quest_AkilNeedHelp, LOG_RUNNING, QuestStep_AkilNeedHelp);
	SetNoteEntry (Quest_AkilNeedHelp, LOG_MISSION, "Farmie Akila zagra¿aj¹ najemnicy.");
	
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
	description							=	"Wszystko w porz¹dku?";
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
	AI_Output (other, self, "DIA_Randolph_HALLO_15_00"); //Wszystko w porz¹dku?
	if (Npc_IsDead(Akil))
	&& (Npc_IsDead(Kati))
	{
		AI_Output (self, other, "DIA_Randolph_HALLO_06_01"); //Skoro Kati i Akil udali siê do œwiata Innosa, teraz ja bêdê zajmowa³ siê farm¹.
		
		Npc_ExchangeRoutine (self, "START");
		AI_ContinueRoutine(self);
	}
	else
	{
		AI_Output (self, other, "DIA_Randolph_HALLO_06_02"); //Tak, w porz¹dku. Ten Alvares ostatnio pozwala³ sobie na zbyt wiele. Na szczêœcie ju¿ po wszystkim.
	};
	AI_Output (self, other, "DIA_Randolph_HALLO_06_03"); //Przyda³oby siê porz¹dnie przep³ukaæ gard³o w gospodzie.
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
	description							=	"Baltram mnie przys³a³...";
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
	AI_Output (other, self, "DIA_Randolph_Baltram_15_00"); //Przysy³a mnie Baltram, mam odebraæ dla niego dostawê.
	AI_Output (self, other, "DIA_Randolph_Baltram_06_01"); //Œwietnie. Wszystko ju¿ przygotowa³em. Oto paczka dla ciebie.
	
	CreateInvItems (self, ItMi_BaltramPaket, 1);
	B_GiveInvItems (self, other, ItMi_BaltramPaket, 1);
	Lieferung_Geholt = true;
	
	QuestStep_BaltramPacket = SetQuestStatus (Quest_BaltramPacket, LOG_PROGRESS, QuestStep_BaltramPacket);
	SetNoteEntry (Quest_BaltramPacket, LOG_MISSION, "Mam przesy³kê. Mogê j¹ teraz zabraæ do Baltrama...");
	SetNoteEntry (Quest_NagurPacket, LOG_MISSION, "Mam przesy³kê. Mogê j¹ teraz zabraæ do Nagura...");
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
	description							=	"Nie jesteœ st¹d, prawda?";
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
	AI_Output (other, self, "DIA_Randolph_Geschichte_15_00"); //Nie jesteœ st¹d, prawda?
	AI_Output (self, other, "DIA_Randolph_Geschichte_06_01"); //Przybywam z po³udniowych wysp. Swego czasu Khorinis potrzebowa³o ludzi do wydobywania magicznej rudy.
	AI_Output (self, other, "DIA_Randolph_Geschichte_06_02"); //Kiedy jednak przyby³em na miejsce, okaza³o siê, ¿e maj¹ tu wielk¹, magiczn¹ Barierê. Nie mia³em zamiaru jej przekraczaæ. Znalaz³em wiêc pracê w porcie.
	AI_Output (self, other, "DIA_Randolph_Geschichte_06_03"); //Kiedy port przesta³ przyjmowaæ statki, postanowi³em zmieniæ pracê. Tak trafi³em do Akila. Prawdê powiedziawszy, ima³em siê ju¿ gorszych zajêæ.
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
	AI_Output (self, other, "DIA_Randolph_TAVERNE_06_01"); //To prawda. Choæ ostatnio coraz rzadziej.
	AI_Output (self, other, "DIA_Randolph_TAVERNE_06_02"); //Nie staæ mnie na przesiadywanie tam.
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
	description							=	"Co tak dok³adnie dzieje siê w gospodzie?";
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
	AI_Output (other, self, "DIA_Randolph_WASISTINTAVERNE_15_00"); //Co tak dok³adnie dzieje siê w gospodzie?
	AI_Output (self, other, "DIA_Randolph_WASISTINTAVERNE_06_01"); //Najproœciej mówi¹c, kwitnie tam hazard.
	AI_Output (self, other, "DIA_Randolph_WASISTINTAVERNE_06_02"); //Dwóch goœci konkuruje w piciu piwa. Wygrywa ten, który d³u¿ej utrzyma siê na nogach.
	AI_Output (self, other, "DIA_Randolph_WASISTINTAVERNE_06_03"); //Przegra³em w tej konkurencji. Zanim tam wrócê, muszê trochê zarobiæ.
	
	QuestStep_DrinkChallenge = SetQuestStatus (Quest_DrinkChallenge, LOG_RUNNING, QuestStep_DrinkChallenge);
	SetNoteEntry (Quest_DrinkChallenge, LOG_MISSION, "W gospodzie s¹ przyjmowane zak³ady.");
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
	description							=	"Kto by³ twoim przeciwnikiem?";
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
	AI_Output (other, self, "DIA_Randolph_GEGENWEN_15_00"); //Kto by³ twoim przeciwnikiem?
	AI_Output (self, other, "DIA_Randolph_GEGENWEN_06_01"); //Ten stary hultaj - Rukhar. Jak dot¹d nie uda³o mi siê go pokonaæ.
	AI_Output (self, other, "DIA_Randolph_GEGENWEN_06_02"); //Coœ mi siê jednak zdaje, ¿e ten œmierdz¹cy patafian za ka¿dym razem doprawia³ moje piwo ginem.
	AI_Output (self, other, "DIA_Randolph_GEGENWEN_06_03"); //Wydaje mi siê, ¿e ta brudna kanalia trzyma gin w tym swoim kufrze!
	AI_Output (self, other, "DIA_Randolph_GEGENWEN_06_04"); //Ktoœ powinien podmieniæ gin na wodê. Wtedy mo¿e sobie doprawiaæ moje piwo, jak d³ugo zechce.
	AI_Output (self, other, "DIA_Randolph_GEGENWEN_06_05"); //Gdybym tylko mia³ trochê z³ota, by raz jeszcze stan¹æ z nim do pojedynku...
	
	SetNoteEntry (Quest_DrinkChallenge, LOG_MISSION, "Randolph opowiedzia³ mi o Rukharze i konkursie picia. Randolph nie ma ju¿ pieniêdzy, aby stan¹æ przeciwko Rukharowi.");
	SetNoteEntry (Quest_DrinkChallenge, LOG_MISSION, "Randolph podejrzewa, ¿e Rukhar oszukuje podczas zawodów w piciu. Prosi mnie, abym zamieni³ butelkê ginu, któr¹ Rukhar trzyma w swoim kufrze, na butelkê wody.");
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
	description							=	"Ile pieniêdzy potrzebujesz, by wzi¹æ udzia³ w konkursie?";
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
	AI_Output (other, self, "DIA_Randolph_WASBRAUCHSTDU_15_00"); //Ile pieniêdzy potrzebujesz, by wzi¹æ udzia³ w konkursie?
	AI_Output (self, other, "DIA_Randolph_WASBRAUCHSTDU_06_01"); //10 sztuk z³ota.
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
	description							=	"Dam ci pieni¹dze, byœ móg³ stan¹æ w szranki z Rukharem.";
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
	AI_Output (other, self, "DIA_Randolph_ICHGEBEDIRGELD_15_00"); //Dam ci pieni¹dze, byœ móg³ stan¹æ w szranki z Rukharem.
	if (B_GiveInvItems(other,self,ItMi_Gold,10))
	{
		AI_Output (self, other, "DIA_Randolph_ICHGEBEDIRGELD_06_01"); //Naprawdê? Serdecznie dziêkujê. Wkrótce je oddam.
		AI_Output (self, other, "DIA_Randolph_ICHGEBEDIRGELD_06_02"); //Jeœli wygram, dorzucê nawet coœ ekstra.
		
		SetNoteEntry (Quest_DrinkChallenge, LOG_MISSION, "Powinienem wybraæ siê na zawody w piciu piwa.");
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
		AI_Output (self, other, "DIA_Randolph_ICHGEBEDIRGELD_06_03"); //Nie trzeba, sam ledwie wi¹¿esz koniec z koñcem.
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
		AI_Output (self, other, "DIA_Randolph_WETTKAMPFZUENDE_06_01"); //Chyba nawet parê kaców na raz... Ju¿ nigdy nie dotknê alkoholu.
		AI_Output (self, other, "DIA_Randolph_WETTKAMPFZUENDE_06_02"); //Twoje pieni¹dze przepad³y. Przykro mi.
	}
	else
	{
		AI_Output (self, other, "DIA_Randolph_WETTKAMPFZUENDE_06_03"); //Nie. Czujê siê œwietnie.
		if (DIA_Randolph_WETTKAMPFZUENDE_OneTime == false)
		{
			AI_Output (self, other, "DIA_Randolph_WETTKAMPFZUENDE_06_04"); //W koñcu siê uda³o. Wielkie dziêki za po¿yczkê. Proszê, przyjmij to w podziêce.
			CreateInvItems (self, ItMi_Gold, 20);
			B_GiveInvItems (self, other, ItMi_Gold, 12);
			DIA_Randolph_WETTKAMPFZUENDE_OneTime = true;
		};
		AI_Output (self, other, "DIA_Randolph_WETTKAMPFZUENDE_06_05"); //Wygl¹da na to, ¿e Rukhar d³uugo jeszcze bêdzie trzeŸwia³.
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
	description							=	"Oszala³eœ?";
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
		AI_Output (other, self, "DIA_Randolph_PERM_15_00"); //Wszystko w porz¹dku?
		
		if ((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL))
		&& (QuestStep_HealRandolph != LOG_SUCCESS)
		{
			if (DIA_Sagitta_HEALRANDOLPH_GotOne == false)
			&& (DIA_Sagitta_HEALRANDOLPH_KnowsPrice == true)
			&& (DIA_Randolph_PERM_GotMoney == false)
			{
				AI_Output (other, self, "DIA_Randolph_PERM_15_01"); //Wysy³asz mnie bez grosza przy duszy i nawet nie raczysz uprzedziæ, ¿e to cholerstwo tyle kosztuje?
				AI_Output (other, self, "DIA_Randolph_PERM_15_02"); //Sagitta ¿¹da ode mnie 300 sztuk z³ota.
				AI_Output (self, other, "DIA_Randolph_PERM_06_03"); //Nie dam ci wiêcej ni¿ 150 sztuk z³ota. Proszê, musisz mi pomóc, b³agam.
				
				CreateInvItems (self, ItMi_Gold, 150);
				B_GiveInvItems (self, other, ItMi_Gold, 150);
				DIA_Randolph_PERM_GotMoney = true;
			}
			else
			{
				AI_Output (self, other, "DIA_Randolph_PERM_06_04"); //Czujê siê potwornie. Od kiedy przesta³em piæ, wszystko mnie boli. Naprawê potrzebujê pomocy.
				AI_Output (self, other, "DIA_Randolph_PERM_06_05"); //Jest pewne lekarstwo, które powinno pomóc.
				AI_Output (self, other, "DIA_Randolph_PERM_06_06"); //Sagitta, stara zielarka, zwykle je dla mnie przygotowuje. Ale nie mogê ryzykowaæ wyprawy do niej, kiedy bandy orków grasuj¹ po okolicy.
			};
			
			QuestStep_HealRandolph = SetQuestStatus (Quest_HealRandolph, LOG_RUNNING, QuestStep_HealRandolph);
			SetNoteEntry (Quest_HealRandolph, LOG_MISSION, "Randolph twierdzi, ¿e przesta³ piæ alkohol, i prosi mnie o przyniesienie od zielarki Sagitty jakichœ zió³, które pomog¹ mu przetrwaæ pierwsze ciê¿kie dni trzeŸwoœci.");
		}
		else
		{
			AI_Output (self, other, "DIA_Randolph_PERM_06_07"); //Ci¹gle jeszcze krêci mi siê w g³owie, ale ogólnie jest o wiele lepiej.
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
	description							=	"Alkohol uderzy³ do g³ówki, co?";
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
	AI_Output (other, self, "DIA_Randolph_Heilung_15_00"); //Alkohol uderzy³ do g³ówki, co?
	AI_Output (self, other, "DIA_Randolph_Heilung_06_01"); //Ju¿ nigdy ani kropelki. Nigdy w ¿yciu. S³owo honoru.
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
	description							=	"Proszê, to powinno z³agodziæ objawy odstawienia trunków.";
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
	AI_Output (other, self, "DIA_Randolph_SAGITTAHEAL_15_00"); //Proszê, to powinno z³agodziæ objawy odstawienia trunków.
	
	B_GiveInvItems (other, self, ItPo_HealRandolph_MIS, 1);					
	if (Npc_IsInState(self,ZS_Pick_FP))
	{
		B_UseItem (self, ItPo_HealRandolph_MIS);
	};
	
	AI_Output (self, other, "DIA_Randolph_SAGITTAHEAL_06_01"); //Och! Dziêki, stary. Nareszcie trochê odpocznê.
	AI_Output (self, other, "DIA_Randolph_SAGITTAHEAL_06_02"); //Jak ja ci siê odwdziêczê?
	
	if (DIA_Randolph_PERM_GotMoney == false)
	{
		AI_Output (self, other, "DIA_Randolph_SAGITTAHEAL_06_03"); //Te kilka monet to niewiele, wiem. Ale to ostatnie pieni¹dze, jakie mi zosta³y.
		
		CreateInvItems (self, ItMi_Gold, 150);									
		B_GiveInvItems (self, other, ItMi_Gold, 150);					
	}
	else
	{
		AI_Output (other, self, "DIA_Randolph_SAGITTAHEAL_15_04"); //Zap³aci³em za ciebie kupê kasy, a ty dajesz mi kilka œmierdz¹cych monet? To nawet nie pokryje moich wydatków.
		AI_Output (self, other, "DIA_Randolph_SAGITTAHEAL_06_05"); //Mogê siê chyba uznaæ za szczêœliwca. Nieczêsto spotyka siê tak pomocnych paladynów. Nie s¹dzisz?
	};
	
	QuestStep_HealRandolph = SetQuestStatus (Quest_HealRandolph, LOG_SUCCESS, QuestStep_HealRandolph);
	B_GivePlayerXP(XP_BONUS_5);
	B_NpcClearObsessionByDMT(self);
};
