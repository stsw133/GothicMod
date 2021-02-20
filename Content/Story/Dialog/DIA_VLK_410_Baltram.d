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
		AI_Output (self, other, "DIA_Baltram_Hallo_01_00"); //Witaj, przybyszu. Nazywam si� Baltram. Przyszed�e� uzupe�ni� zapasy jedzenia?
		AI_Output (self, other, "DIA_Baltram_Hallo_01_01"); //Niestety, musz� ci� rozczarowa�. W tej chwili nie mam zbyt wielu zapas�w.
		AI_Output (self, other, "DIA_Baltram_Hallo_01_02"); //Ale wkr�tce dostan� now� dostaw�.
	}
	else
	{
		AI_Output (self, other, "DIA_Baltram_Hallo_01_03"); //Je�li przyszed�e�, �eby kupi� jedzenie, to mo�esz ju� odej��.
		AI_Output (self, other, "DIA_Baltram_Hallo_01_04"); //Wy, najemnicy, nic mnie nie obchodzicie! Mam przez was tylko k�opoty.
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
	AI_Output (other, self, "DIA_Addon_Baltram_LaresAbloese_15_00"); //Sk�d ten sceptycyzm?
	AI_Output (self, other, "DIA_Addon_Baltram_LaresAbloese_01_01"); //Widz� u ciebie znak Wodnego Kr�gu.
	AI_Output (other, self, "DIA_Addon_Baltram_LaresAbloese_15_02"); //Jeste� jego cz�onkiem?
	AI_Output (self, other, "DIA_Addon_Baltram_LaresAbloese_01_03"); //A je�li tak?
	AI_Output (other, self, "DIA_Addon_Baltram_LaresAbloese_15_04"); //To wiedz, �e Laresowi marzy si� zmiana pracy i odwo�anie z plac�wki w porcie.
	AI_Output (self, other, "DIA_Addon_Baltram_LaresAbloese_01_05"); //Zobacz�, czy uda mi si� znale�� kogo�, kto zechcia�by go zast�pi�.
	AI_Output (other, self, "DIA_Addon_Baltram_LaresAbloese_15_06"); //Rozumiem.
	B_GivePlayerXP(XP_BONUS_0);

	SetNoteEntry (Quest_LaresReplace, LOG_MISSION, "Baltram, kupiec z targowiska, zajmie si� zorganizowaniem zast�pcy dla Laresa. Mo�e Lares NARESZCIE opu�ci port.");

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
	description							=	"Masz dla mnie jak�� robot�?";
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
	AI_Output (other, self, "DIA_Baltram_Job_15_00"); //Masz dla mnie jak�� robot�?
	AI_Output (self, other, "DIA_Baltram_Job_01_01"); //Nie, mam ju� ch�opca na posy�ki. Porozmawiaj z innymi kupcami.
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
	AI_Output (self, other, "DIA_Baltram_Trick_01_02"); //M�j ch�opiec na posy�ki nie wr�ci�, a czekam na dostaw� od farmera Akila.
	AI_Output (other, self, "DIA_Baltram_Trick_15_03"); //A ile na tym zarobi�?
	AI_Output (self, other, "DIA_Baltram_Trick_01_04"); //Dam ci 50 sztuk z�ota.
	AI_Output (other, self, "DIA_Baltram_Trick_15_05"); //�wietnie, zajm� si� tym.
	AI_Output (self, other, "DIA_Baltram_Trick_01_06"); //W porz�dku, powiedz Akilowi, �e ja ci� przys�a�em. Dostaniesz od niego paczk�. Przynie� j� do mnie.
	
	SetNoteEntry (Quest_InnosEye, LOG_MISSION, "W mie�cie Khorinis przebywa grupa paladyn�w. Maj� ze sob� pot�ny artefakt, Oko Innosa, kt�rego moc pomo�e nam pokona� smoki. Musz� tylko przekona� paladyn�w, aby wsparli nasz� spraw�.");
	
	QuestStep_BaltramPacket = SetQuestStatus (Quest_BaltramPacket, LOG_RUNNING, QuestStep_BaltramPacket);
	SetNoteEntry (Quest_BaltramPacket, LOG_MISSION, "Je�li przynios� Baltramowi przesy�k�, zap�aci mi 50 sztuk z�ota.");
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
	description							=	"Poka� mi swoje towary.";
	trade								=	true;
};

func void DIA_Baltram_WAREZ_Info()
{
	AI_Output (other, self, "DIA_Baltram_WAREZ_15_00"); //Poka� mi swoje towary.
	
	if (Baltram_TradeLOG == false)
	{
		SetNoteEntry (Note_Traders, LOG_NOTE, "Baltram sprzedaje na targowisku �ywno��.");
		Baltram_TradeLOG = true;
	};
	
	if (Kapitel == 9)
	&& (QuestStep_RescueBennet != LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Baltram_WAREZ_01_01"); //Nie powinni byli do tego dopu�ci�. No i jeden z najemnik�w zamordowa� paladyna.
		AI_Output (self, other, "DIA_Baltram_WAREZ_01_02"); //Co� si� musia�o w ko�cu sta�!
	};
	if ((QuestStep_BaltramTrade != LOG_SUCCESS)
	&& ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG)))
	{
		AI_Output (self, other, "DIA_Baltram_WAREZ_01_03"); //Tacy jak ty nic ode mnie nie dostan�.
		AI_Output (other, self, "DIA_Baltram_WAREZ_15_04"); //Dlaczego?
		AI_Output (self, other, "DIA_Baltram_WAREZ_01_05"); //Najpierw podjudzasz wie�niak�w, a potem udajesz, �e nic si� nie sta�o.
		AI_Output (self, other, "DIA_Baltram_WAREZ_01_06"); //A teraz zje�d�aj, odstraszasz mi klient�w.
		
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
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_01_01"); //Co? Kto tak m�wi?
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_15_02"); //Jeden z nich... Chyba czeka na ciebie w swojej zatoczce.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_01_03"); //A co mia�em zrobi�? Czasy s� ci�kie, jako� trzeba zarobi� na chleb.
	
	Info_ClearChoices(DIA_Addon_Baltram_Skip);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "A nie boisz si� schwytania na gor�cym uczynku?", DIA_Addon_Baltram_Skip_erwischen);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "A pomy�la�e� o konsekwencjach?", DIA_Addon_Baltram_Skip_MIL);
};

func void DIA_Addon_Baltram_Skip_Back()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_Back_15_00"); //Tylko tyle chcia�em wiedzie�.
	Info_ClearChoices(DIA_Addon_Baltram_Skip);
};

func void DIA_Addon_Baltram_Skip_MIL()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_MIL_15_00"); //A pomy�la�e� o konsekwencjach?
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_MIL_01_01"); //Powiem ci wszystko, co wiem, a ty mnie nie zakapujesz. Umowa stoi?
	
	Info_ClearChoices(DIA_Addon_Baltram_Skip);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Czym z nimi handlujesz?", DIA_Addon_Baltram_Skip_was);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Co wiesz o piratach?", DIA_Addon_Baltram_Skip_pirat);
};

func void DIA_Addon_Baltram_Skip_erwischen()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_erwischen_15_00"); //A nie boisz si� schwytania na gor�cym uczynku?
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_erwischen_01_01"); //To mo�liwe - w ko�cu tobie uda�o si� o tym dowiedzie�...
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_erwischen_01_02"); //Ale nikomu nie powiesz, prawda?
	
	Info_ClearChoices(DIA_Addon_Baltram_Skip);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Czym z nimi handlujesz?", DIA_Addon_Baltram_Skip_was);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Co wiesz o piratach?", DIA_Addon_Baltram_Skip_pirat);
};

func void DIA_Addon_Baltram_Skip_was()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_was_15_00"); //Czym z nimi handlujesz?
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_was_01_01"); //Z regu�y dostarczam im �ywno��.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_was_01_02"); //W zamian otrzymuj� najlepszy rum, jaki trafia do Khorinis.
	
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Tylko tyle chcia�em wiedzie�.", DIA_Addon_Baltram_Skip_Back);
	Info_AddChoice (DIA_Addon_Baltram_Skip, "Mog� ci pom�c w interesach.", DIA_Addon_Baltram_Skip_Ich);
};

func void DIA_Addon_Baltram_Skip_Ich()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_Ich_15_00"); //Mog� ci pom�c w interesach.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_Ich_01_01"); //Niez�y pomys� - ja nie mog� na razie opuszcza� Khorinis.
	CreateInvItems (self, ItMi_SkipPaket, 1);
	B_GiveInvItems (self, other, ItMi_SkipPaket, 1);
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_Ich_01_02"); //We� t� paczk� i powiedz Skipowi, �eby tym razem nie �a�owa� rumu.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_Ich_01_03"); //Oczekuj� co najmniej trzech butli.
	
	QuestStep_BaltramPirates = SetQuestStatus (Quest_BaltramPirates, LOG_RUNNING, QuestStep_BaltramPirates);
	SetNoteEntry (Quest_BaltramPirates, LOG_MISSION, "Baltram da� mi przesy�k�. Powinienem j� zanie�� Skipowi.");
};

func void DIA_Addon_Baltram_Skip_pirat()
{
	AI_Output (other, self, "DIA_Addon_Baltram_Skip_pirat_15_00"); //Co wiesz o piratach?
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_pirat_01_01"); //Zamieszkuj� ukryt� cz�� wyspy.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_pirat_01_02"); //O ile mi wiadomo, mo�na tam dotrze� jedynie statkiem.
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_pirat_01_03"); //Mieszka�cy Khorinis obawiaj� si� pirat�w - i s�usznie. To banda �mierdz�cych rzezimieszk�w...
	AI_Output (self, other, "DIA_Addon_Baltram_Skip_pirat_01_04"); //Cho� moim zdaniem i tak piraci s� lepsi od bandyt�w.
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
		AI_Output (other, self, "DIA_Addon_Baltram_SkipsRum_15_00"); //Mam rum, tylko �e Skip da� mi jedynie dwie butle.
		AI_Output (self, other, "DIA_Addon_Baltram_SkipsRum_01_01"); //Drogo, bardzo drogo... Za kogo si� ten Skip uwa�a? No nic, dawaj.
		B_GiveInvItems (other, self, ItFo_Rum, 2);
	}
	else
	{
		B_GiveInvItems (other, self, ItFo_Rum, 3);
	};
	AI_Output (self, other, "DIA_Addon_Baltram_SkipsRum_01_02"); //Nie mog� da� ci zbyt wiele w zamian. To wszystko.
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
	description							=	"Jak trafi� do gospodarstwa Akila?";
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
	AI_Output (other, self, "DIA_Baltram_AkilsHof_15_00"); //Jak trafi� do gospodarstwa Akila?
	AI_Output (self, other, "DIA_Baltram_AkilsHof_01_01"); //Wyjd� st�d przez wschodni� bram� i id� drog� na po�udniowy wsch�d.
	AI_Output (self, other, "DIA_Baltram_AkilsHof_01_02"); //Po chwili dojdziesz do kamiennych schod�w. Wejd� po nich i zobaczysz gospodarstwo Akila.
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
	description							=	"Mam przesy�k� od Akila.";
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
	AI_Output (other, self, "DIA_Baltram_Lieferung_15_00"); //Mam przesy�k� od Akila.
	AI_Output (self, other, "DIA_Baltram_Lieferung_01_01"); //Doskonale. Znowu mog� oferowa� �wie�y towar. Oto twoje 50 sztuk z�ota.
	
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
	description							= 	"Nie mo�emy mimo wszystko robi� wsp�lnie interes�w?";
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
	AI_Output (other, self, "DIA_Baltram_LetUsTrade_15_00"); //Nie mo�emy mimo wszystko robi� wsp�lnie interes�w?
	AI_Output (self, other, "DIA_Baltram_LetUsTrade_01_01"); //S�uchaj, je�li dostarczysz mi 10 szynek i 10 butelek wina, to znowu ubijemy interes.
	AI_Output (other, self, "DIA_Baltram_LetUsTrade_15_02"); //Zobacz�, co si� da zrobi�.
	
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
	description							=	"Mam to, czego chcia�e�.";
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
	AI_Output (other, self, "DIA_Baltram_HaveYourWarez_15_00"); //Mam to, czego chcia�e�.
	AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_01"); //Poka�.
	
	if (Npc_HasItems(other,ItFo_Bacon) < 10)
	{
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_02"); //Um�wili�my si� na 10 szynek. Przyjd� do mnie, jak b�dziesz tyle mia�.
		BaltramEnoughBacon = false;
	}
	else
	{
		BaltramEnoughBacon = true;
	};
	
	if (Npc_HasItems(other,ItFo_Wine) < 10)
	{
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_03"); //A co z 10 butelkami wina? Zapomnia�e�?
		BaltramEnoughWine = false;
	}
	else
	{
		BaltramEnoughWine = true;
	};
	
	if (BaltramEnoughBacon == true)
	&& (BaltramEnoughWine == true)
	{
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_04"); //Hmmm, nie jest najlepsze, ale w dzisiejszych czasach nie mo�na by� zbyt wybrednym.
		B_GiveInvItems (other, self, ItFo_Bacon, 10);
		B_GiveInvItems (other, self, ItFo_Wine, 10);
		AI_Output (self, other, "DIA_Baltram_HaveYourWarez_01_05"); //No, teraz mo�emy przej�� do interes�w.
		
		B_GivePlayerXP(XP_BONUS_1);
		QuestStep_BaltramTrade = SetQuestStatus (Quest_BaltramTrade, LOG_SUCCESS, QuestStep_BaltramTrade);
	};
};
