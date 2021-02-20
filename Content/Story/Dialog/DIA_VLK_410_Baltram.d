//******************************************************************************************
//	Info EXIT
//******************************************************************************************
INSTANCE DIA_Baltram_EXIT (C_INFO)
{
	npc									=	VLK_410_Baltram;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Baltram_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Baltram_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Info Hallo
//******************************************************************************************
instance DIA_Baltram_Hallo (C_INFO)
{
	npc									=	VLK_410_Baltram;
	nr									=	2;
	condition							=	DIA_Baltram_Hallo_Condition;
	information							=	DIA_Baltram_Hallo_Info;
	important							=	true;
};

func int DIA_Baltram_Hallo_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (self.aivar[AIV_TalkedToPlayer] == false)
	&& (QuestStep_NagurPacket == false)
	{
		return true;
	};
};

func void DIA_Baltram_Hallo_Info()
{
	if (hero.guild != GIL_SLD)
	&& (hero.guild != GIL_DJG)
	{
		AI_Output (self, other, "DIA_Baltram_Hallo_01_00"); //Witaj, przybyszu. Nazywam siê Baltram. Przyszed³eœ uzupe³niæ zapasy jedzenia?
		AI_Output (self, other, "DIA_Baltram_Hallo_01_01"); //Niestety, muszê ciê rozczarowaæ. W tej chwili nie mam zbyt wielu zapasów.
		AI_Output (self, other, "DIA_Baltram_Hallo_01_02"); //Ale wkrótce dostanê now¹ dostawê.
	}
	else
	{
		AI_Output (self, other, "DIA_Baltram_Hallo_01_03"); //Jeœli przyszed³eœ, ¿eby kupiæ jedzenie, to mo¿esz ju¿ odejœæ.
		AI_Output (self, other, "DIA_Baltram_Hallo_01_04"); //Wy, najemnicy, nic mnie nie obchodzicie! Mam przez was tylko k³opoty.
	};
};

//******************************************************************************************
//	Info LaresAbloese
//******************************************************************************************
instance DIA_Addon_Baltram_LaresAbloese (C_INFO)
{
	npc									=	VLK_410_Baltram;
	nr									=	1;
	condition							=	DIA_Addon_Baltram_LaresAbloese_Condition;
	information							=	DIA_Addon_Baltram_LaresAbloese_Info;
	important							=	true;
};

func int DIA_Addon_Baltram_LaresAbloese_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (SCIsWearingRangerRing == true)
	&& (QuestStep_LaresReplace == LOG_RUNNING)
	{
		return true;
	};
};

func void DIA_Addon_Baltram_LaresAbloese_Info()
{
	AI_Output (other, self, "DIA_Addon_Baltram_LaresAbloese_15_00"); //Sk¹d ten sceptycyzm?
	AI_Output (self, other, "DIA_Addon_Baltram_LaresAbloese_01_01"); //Widzê u ciebie znak Wodnego Krêgu.
	AI_Output (other, self, "DIA_Addon_Baltram_LaresAbloese_15_02"); //Jesteœ jego cz³onkiem?
	AI_Output (self, other, "DIA_Addon_Baltram_LaresAbloese_01_03"); //A jeœli tak?
	AI_Output (other, self, "DIA_Addon_Baltram_LaresAbloese_15_04"); //To wiedz, ¿e Laresowi marzy siê zmiana pracy i odwo³anie z placówki w porcie.
	AI_Output (self, other, "DIA_Addon_Baltram_LaresAbloese_01_05"); //Zobaczê, czy uda mi siê znaleŸæ kogoœ, kto zechcia³by go zast¹piæ.
	AI_Output (other, self, "DIA_Addon_Baltram_LaresAbloese_15_06"); //Rozumiem.
	B_GivePlayerXP(XP_BONUS_0);

	SetNoteEntry (Quest_LaresReplace, LOG_MISSION, "Baltram, kupiec z targowiska, zajmie siê zorganizowaniem zastêpcy dla Laresa. Mo¿e Lares NARESZCIE opuœci port.");

	SC_KnowsBaltramAsRanger = true;
};

//******************************************************************************************
//	Info Job
//******************************************************************************************
instance DIA_Baltram_Job (C_INFO)
{
	npc									=	VLK_410_Baltram;
	nr									=	3;
	condition							=	DIA_Baltram_Job_Condition;
	information							=	DIA_Baltram_Job_Info;
	permanent							=	false;
	description							=	"Masz dla mnie jak¹œ robotê?";
};

func int DIA_Baltram_Job_Condition()
{
	if (QuestStep_NagurPacket != LOG_RUNNING)
	&& (QuestStep_NagurPacket != LOG_SUCCESS)
	&& (hero.guild == GIL_NONE)
	{
		return true;
	};	
};

func void DIA_Baltram_Job_Info()
{
	AI_Output (other, self, "DIA_Baltram_Job_15_00"); //Masz dla mnie jak¹œ robotê?
	AI_Output (self, other, "DIA_Baltram_Job_01_01"); //Nie, mam ju¿ ch³opca na posy³ki. Porozmawiaj z innymi kupcami.
};

//******************************************************************************************
//	Info Trick
//******************************************************************************************
instance DIA_Baltram_Trick (C_INFO)
{
	npc									=	VLK_410_Baltram;
	nr									=	4;
	condition							=	DIA_Baltram_Trick_Condition;
	information							=	DIA_Baltram_Trick_Info;
	important							=	true;
};

func int DIA_Baltram_Trick_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (QuestStep_NagurPacket == LOG_RUNNING)
	{
		return true;
	};
};

func void DIA_Baltram_Trick_Info()
{
	AI_Output (self, other, "DIA_Baltram_Trick_01_00"); //Szukasz pracy?
	AI_Output (other, self, "DIA_Baltram_Trick_15_01"); //Jasne, a o co chodzi?
	AI_Output (self, other, "DIA_Baltram_Trick_01_02"); //Mój ch³opiec na posy³ki nie wróci³, a czekam na dostawê od farmera Akila.
	AI_Output (other, self, "DIA_Baltram_Trick_15_03"); //A ile na tym zarobiê?
	AI_Output (self, other, "DIA_Baltram_Trick_01_04"); //Dam ci 50 sztuk z³ota.
	AI_Output (other, self, "DIA_Baltram_Trick_15_05"); //Œwietnie, zajmê siê tym.
	AI_Output (self, other, "DIA_Baltram_Trick_01_06"); //W porz¹dku, powiedz Akilowi, ¿e ja ciê przys³a³em. Dostaniesz od niego paczkê. Przynieœ j¹ do mnie.
	
	SetNoteEntry (Quest_InnosEye, LOG_MISSION, "W mieœcie Khorinis przebywa grupa paladynów. Maj¹ ze sob¹ potê¿ny artefakt, Oko Innosa, którego moc pomo¿e nam pokonaæ smoki. Muszê tylko przekonaæ paladynów, aby wsparli nasz¹ sprawê.");
	
	QuestStep_BaltramPacket = SetQuestStatus (Quest_BaltramPacket, LOG_RUNNING, QuestStep_BaltramPacket);
	SetNoteEntry (Quest_BaltramPacket, LOG_MISSION, "Jeœli przyniosê Baltramowi przesy³kê, zap³aci mi 50 sztuk z³ota.");
};

//******************************************************************************************
//	Info WAREZ
//******************************************************************************************

var int Baltram_TradeLOG;

//******************************************************************************************
instance DIA_Baltram_WAREZ (C_INFO)
{
	npc									=	VLK_410_Baltram;
	nr									=	2;
	condition							=	atrue;
	information							=	DIA_Baltram_WAREZ_Info;
	permanent							=	true;
	description							=	"Poka¿ mi swoje towary.";
	trade								=	true;
};

func void DIA_Baltram_WAREZ_Info()
{
	AI_Output (other, self, "DIA_Baltram_WAREZ_15_00"); //Poka¿ mi swoje towary.
	
	if (Baltram_TradeLOG == false)
	{
		SetNoteEntry (Note_Traders, LOG_NOTE, "Baltram sprzedaje na targowisku ¿ywnoœæ.");
		Baltram_TradeLOG = true;
	};
	
	if (Kapitel == 9)
	&& (QuestStep_RescueBennet != LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Baltram_WAREZ_01_01"); //Nie powinni byli do tego dopuœciæ. No i jeden z najemników zamordowa³ paladyna.
		AI_Output (self, other, "DIA_Baltram_WAREZ_01_02"); //Coœ siê musia³o w koñcu staæ!
	};
	if ((QuestStep_BaltramTrade != LOG_SUCCESS)
	&& ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG)))
	{
		AI_Output (self, other, "DIA_Baltram_WAREZ_01_03"); //Tacy jak ty nic ode mnie nie dostan¹.
		AI_Output (other, self, "DIA_Baltram_WAREZ_15_04"); //Dlaczego?
		AI_Output (self, other, "DIA_Baltram_WAREZ_01_05"); //Najpierw podjudzasz wieœniaków, a potem udajesz, ¿e nic siê nie sta³o.
		AI_Output (self, other, "DIA_Baltram_WAREZ_01_06"); //A teraz zje¿d¿aj, odstraszasz mi klientów.
		
		QuestStep_BaltramTrade = LOG_FAILED;
		
		AI_StopProcessInfos(self);
	};
	B_GiveTradeInv(self);
};

//******************************************************************************************
//	Info Skip
//******************************************************************************************
instance DIA_Addon_Baltram_Skip (C_INFO)
{
	npc									=	VLK_410_Baltram;
	nr									=	5;
	condition							=	DIA_Addon_Baltram_Skip_Condition;
	information							=	DIA_Addon_Baltram_Skip_Info;
	permanent							=	false;
	description							=	"Handlujesz z piratami?";
};

func int DIA_Addon_Baltram_Skip_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Addon_Skip_NW_Baltram))
	{
		return true;
	};
};

func void DIA_Addon_Baltram_Skip_Info()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_15_00"); //Handlujesz z piratami?
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_01_01"); //Co? Kto tak mówi?
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_15_02"); //Jeden z nich... Chyba czeka na ciebie w swojej zatoczce.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_01_03"); //A co mia³em zrobiæ? Czasy s¹ ciê¿kie, jakoœ trzeba zarobiæ na chleb.
	
	Info_ClearChoices(DIA_Addon_Baltram_Skip);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "A nie boisz siê schwytania na gor¹cym uczynku?", DIA_Addon_Baltram_Skip_erwischen);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "A pomyœla³eœ o konsekwencjach?", DIA_Addon_Baltram_Skip_MIL);
};

func void DIA_Addon_Baltram_Skip_Back()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_Back_15_00"); //Tylko tyle chcia³em wiedzieæ.
	Info_ClearChoices(DIA_Addon_Baltram_Skip);
};

func void DIA_Addon_Baltram_Skip_MIL()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_MIL_15_00"); //A pomyœla³eœ o konsekwencjach?
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_MIL_01_01"); //Powiem ci wszystko, co wiem, a ty mnie nie zakapujesz. Umowa stoi?
	
	Info_ClearChoices(DIA_Addon_Baltram_Skip);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Czym z nimi handlujesz?", DIA_Addon_Baltram_Skip_was);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Co wiesz o piratach?", DIA_Addon_Baltram_Skip_pirat);
};

func void DIA_Addon_Baltram_Skip_erwischen()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_erwischen_15_00"); //A nie boisz siê schwytania na gor¹cym uczynku?
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_erwischen_01_01"); //To mo¿liwe - w koñcu tobie uda³o siê o tym dowiedzieæ...
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_erwischen_01_02"); //Ale nikomu nie powiesz, prawda?
	
	Info_ClearChoices(DIA_Addon_Baltram_Skip);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Czym z nimi handlujesz?", DIA_Addon_Baltram_Skip_was);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Co wiesz o piratach?", DIA_Addon_Baltram_Skip_pirat);
};

func void DIA_Addon_Baltram_Skip_was()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_was_15_00"); //Czym z nimi handlujesz?
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_was_01_01"); //Z regu³y dostarczam im ¿ywnoœæ.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_was_01_02"); //W zamian otrzymujê najlepszy rum, jaki trafia do Khorinis.
	
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Tylko tyle chcia³em wiedzieæ.", DIA_Addon_Baltram_Skip_Back);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Mogê ci pomóc w interesach.", DIA_Addon_Baltram_Skip_Ich);
};

func void DIA_Addon_Baltram_Skip_Ich()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_Ich_15_00"); //Mogê ci pomóc w interesach.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_Ich_01_01"); //Niez³y pomys³ - ja nie mogê na razie opuszczaæ Khorinis.
	CreateInvItems (self, ItMi_SkipPaket, 1);
	B_GiveInvItems (self, other, ItMi_SkipPaket, 1);
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_Ich_01_02"); //WeŸ tê paczkê i powiedz Skipowi, ¿eby tym razem nie ¿a³owa³ rumu.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_Ich_01_03"); //Oczekujê co najmniej trzech butli.
	
	QuestStep_BaltramPirates = SetQuestStatus (Quest_BaltramPirates, LOG_RUNNING, QuestStep_BaltramPirates);
	SetNoteEntry (Quest_BaltramPirates, LOG_MISSION, "Baltram da³ mi przesy³kê. Powinienem j¹ zanieœæ Skipowi.");
};

func void DIA_Addon_Baltram_Skip_pirat()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_pirat_15_00"); //Co wiesz o piratach?
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_pirat_01_01"); //Zamieszkuj¹ ukryt¹ czêœæ wyspy.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_pirat_01_02"); //O ile mi wiadomo, mo¿na tam dotrzeæ jedynie statkiem.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_pirat_01_03"); //Mieszkañcy Khorinis obawiaj¹ siê piratów - i s³usznie. To banda œmierdz¹cych rzezimieszków...
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_pirat_01_04"); //Choæ moim zdaniem i tak piraci s¹ lepsi od bandytów.
};

//******************************************************************************************
//	Info SkipsRum
//******************************************************************************************
instance DIA_Addon_Baltram_SkipsRum (C_INFO)
{
	npc									=	VLK_410_Baltram;
	nr									=	5;
	condition							=	DIA_Addon_Baltram_SkipsRum_Condition;
	information							=	DIA_Addon_Baltram_SkipsRum_Info;
	permanent							=	false;
	description							=	"Mam rum od Skipa.";
};

func int DIA_Addon_Baltram_SkipsRum_Condition()
{
	if (Skip_Rum4Baltram == true)
	&& (QuestStep_BaltramPirates == LOG_RUNNING)
	&& ((Skip_Rum4Baltram_All == true) && (Npc_HasItems(other,ItFo_Rum) >= 3))
	|| ((Skip_Rum4Baltram_All == false) && (Npc_HasItems(other,ItFo_Rum) >= 2))
	{
		return true;
	};
};

func void DIA_Addon_Baltram_SkipsRum_Info()
{
	if (Skip_Rum4Baltram_All == false)
	{
		AI_Output (other, self, "DIA_Addon_Baltram_SkipsRum_15_00"); //Mam rum, tylko ¿e Skip da³ mi jedynie dwie butle.
		AI_Output (self, other, "DIA_Addon_Baltram_SkipsRum_01_01"); //Drogo, bardzo drogo... Za kogo siê ten Skip uwa¿a? No nic, dawaj.
		B_GiveInvItems (other, self, ItFo_Rum, 2);
	}
	else
	{
		B_GiveInvItems (other, self, ItFo_Rum, 3);
	};
	AI_Output (self, other, "DIA_Addon_Baltram_SkipsRum_01_02"); //Nie mogê daæ ci zbyt wiele w zamian. To wszystko.
	if (Skip_Rum4Baltram_All == false)
	{
		CreateInvItems (self, ItMi_Gold, 10);
		B_GiveInvItems (self, other, ItMi_Gold, 10);
	}
	else
	{
		CreateInvItems (self, ItMi_Gold, 20);
		B_GiveInvItems (self, other, ItMi_Gold, 20);
	};

	QuestStep_BaltramPirates = SetQuestStatus (Quest_BaltramPirates, LOG_SUCCESS, QuestStep_BaltramPirates);
	B_GivePlayerXP(XP_BONUS_0);
};

//******************************************************************************************
//	Info AkilsHof
//******************************************************************************************
instance DIA_Baltram_AkilsHof (C_INFO)
{
	npc									=	VLK_410_Baltram;
	nr									=	4;
	condition							=	DIA_Baltram_AkilsHof_Condition;
	information							=	DIA_Baltram_AkilsHof_Info;
	permanent							=	false;
	description							=	"Jak trafiæ do gospodarstwa Akila?";
};

func int DIA_Baltram_AkilsHof_Condition()
{
	if (QuestStep_BaltramPacket == LOG_RUNNING)
	{
		return true;
	};
};

func void DIA_Baltram_AkilsHof_Info()
{
	AI_Output (other, self, "DIA_Baltram_AkilsHof_15_00"); //Jak trafiæ do gospodarstwa Akila?
	AI_Output (self, other, "DIA_Baltram_AkilsHof_01_01"); //WyjdŸ st¹d przez wschodni¹ bramê i idŸ drog¹ na po³udniowy wschód.
	AI_Output (self, other, "DIA_Baltram_AkilsHof_01_02"); //Po chwili dojdziesz do kamiennych schodów. WejdŸ po nich i zobaczysz gospodarstwo Akila.
};

//******************************************************************************************
//	Info Lieferung geholt
//******************************************************************************************
instance DIA_Baltram_Lieferung (C_INFO)
{
	npc									=	VLK_410_Baltram;
	nr									=	5;
	condition							=	DIA_Baltram_Lieferung_Condition;
	information							=	DIA_Baltram_Lieferung_Info;
	permanent							=	false;
	description							=	"Mam przesy³kê od Akila.";
};

func int DIA_Baltram_Lieferung_Condition()
{
	if (Npc_HasItems(other,ItMi_BaltramPaket) >= 1)
	{
		return true;
	};
};

func void DIA_Baltram_Lieferung_Info()
{
	AI_Output (other, self, "DIA_Baltram_Lieferung_15_00"); //Mam przesy³kê od Akila.
	AI_Output (self, other, "DIA_Baltram_Lieferung_01_01"); //Doskonale. Znowu mogê oferowaæ œwie¿y towar. Oto twoje 50 sztuk z³ota.
	
	B_GiveInvItems (other, self, ItMi_BaltramPaket, 1);
	B_GiveInvItems (self, other, ItMi_Gold, 50);
	
	B_GivePlayerXP(XP_BONUS_1);
	QuestStep_BaltramPacket = SetQuestStatus (Quest_BaltramPacket, LOG_SUCCESS, QuestStep_BaltramPacket);
	QuestStep_NagurPacket = SetQuestStatus (Quest_NagurPacket, LOG_FAILED, QuestStep_NagurPacket);
	
	Npc_RemoveInvItems (self, ItMi_BaltramPaket, 1);
	
	CreateInvItems (self, ItFo_Cheese, 5);
	CreateInvItems (self, ItFo_Apple, 10);
	CreateInvItems (self, ItFo_Beer, 5);
	CreateInvItems (self, ItFo_Bacon, 5);
	CreateInvItems (self, ItFo_Sausage, 5);
};

//******************************************************************************************
//	Info LetUsTrade
//******************************************************************************************
instance DIA_Baltram_LetUsTrade (C_INFO)
{
	npc									= 	VLK_410_Baltram;
	nr									=	6;
	condition							= 	DIA_Baltram_LetUsTrade_Condition;
	information							= 	DIA_Baltram_LetUsTrade_Info;
	permanent							=	false;
	description							= 	"Nie mo¿emy mimo wszystko robiæ wspólnie interesów?";
};

func int DIA_Baltram_LetUsTrade_Condition()
{
	if (QuestStep_BaltramTrade == LOG_FAILED)
	{
		return true;
	};
};

func void DIA_Baltram_LetUsTrade_Info()
{
	AI_Output (other, self, "DIA_Baltram_LetUsTrade_15_00"); //Nie mo¿emy mimo wszystko robiæ wspólnie interesów?
	AI_Output (self, other, "DIA_Baltram_LetUsTrade_01_01"); //S³uchaj, jeœli dostarczysz mi 10 szynek i 10 butelek wina, to znowu ubijemy interes.
	AI_Output (other, self, "DIA_Baltram_LetUsTrade_15_02"); //Zobaczê, co siê da zrobiæ.
	
	QuestStep_BaltramTrade = SetQuestStatus (Quest_BaltramTrade, LOG_RUNNING, QuestStep_BaltramTrade);
};

//******************************************************************************************
//	Info HaveYourWarez
//******************************************************************************************

var int BaltramEnoughBacon;
var int BaltramEnoughWine;

//******************************************************************************************
instance DIA_Baltram_HaveYourWarez (C_INFO)
{
	npc									=	VLK_410_Baltram;
	nr									=	6;
	condition							=	DIA_Baltram_HaveYourWarez_Condition;
	information							=	DIA_Baltram_HaveYourWarez_Info;
	permanent							=	true;
	description							=	"Mam to, czego chcia³eœ.";
};

func int DIA_Baltram_HaveYourWarez_Condition()
{
	if (QuestStep_BaltramTrade == LOG_RUNNING)
	&& (QuestStep_BaltramTrade != LOG_SUCCESS)
	{
		return true;
	};
};

func void DIA_Baltram_HaveYourWarez_Info()
{
	AI_Output (other, self, "DIA_Baltram_HaveYourWarez_15_00"); //Mam to, czego chcia³eœ.
	AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_01"); //Poka¿.
	
	if (Npc_HasItems(other,ItFo_Bacon) < 10)
	{
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_02"); //Umówiliœmy siê na 10 szynek. PrzyjdŸ do mnie, jak bêdziesz tyle mia³.
		BaltramEnoughBacon = false;
	}
	else
	{
		BaltramEnoughBacon = true;
	};
	
	if (Npc_HasItems(other,ItFo_Wine) < 10)
	{
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_03"); //A co z 10 butelkami wina? Zapomnia³eœ?
		BaltramEnoughWine = false;
	}
	else
	{
		BaltramEnoughWine = true;
	};
	
	if (BaltramEnoughBacon == true)
	&& (BaltramEnoughWine == true)
	{
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_04"); //Hmmm, nie jest najlepsze, ale w dzisiejszych czasach nie mo¿na byæ zbyt wybrednym.
		B_GiveInvItems (other, self, ItFo_Bacon, 10);
		B_GiveInvItems (other, self, ItFo_Wine, 10);
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_05"); //No, teraz mo¿emy przejœæ do interesów.
		
		B_GivePlayerXP(XP_BONUS_1);
		QuestStep_BaltramTrade = SetQuestStatus (Quest_BaltramTrade, LOG_SUCCESS, QuestStep_BaltramTrade);
	};
};
