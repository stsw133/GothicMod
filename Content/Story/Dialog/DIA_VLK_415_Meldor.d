//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Meldor_EXIT (C_INFO)
{
	npc									=	VLK_415_Meldor;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Meldor_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Meldor_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Hallo
//******************************************************************************************
instance DIA_Meldor_Hallo (C_INFO)
{
	npc									=	VLK_415_Meldor;
	nr									=	2;
	condition							=	DIA_Meldor_Hallo_Condition;
	information							=	DIA_Meldor_Hallo_Info;
	permanent							=	false;
	important							=	true;
};

func int DIA_Meldor_Hallo_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (self.aivar[AIV_TalkedToPlayer] == false)
	{
		return true;
	};
};

func void DIA_Meldor_Hallo_Info()
{
	AI_Output (self, other, "DIA_Meldor_Hallo_07_00"); //Czego chcesz?
	AI_Output (other, self, "DIA_Meldor_Hallo_15_01"); //Chcia³em siê tutaj rozejrzeæ...
	AI_Output (self, other, "DIA_Meldor_Hallo_07_02"); //A dok¹d dok³adnie siê udajesz?
};

//******************************************************************************************
//	Interessantes
//******************************************************************************************
instance DIA_Meldor_Interessantes (C_INFO)
{
	npc									=	VLK_415_Meldor;
	nr									=	2;
	condition							=	atrue;
	information							=	DIA_Meldor_Interessantes_Info;
	permanent							=	false;
	description							=	"Czy s¹ tutaj jakieœ interesuj¹ce rzeczy?";
};

func void DIA_Meldor_Interessantes_Info()
{
	AI_Output (other, self, "DIA_Meldor_Interessantes_15_00"); //Czy s¹ tutaj jakieœ interesuj¹ce rzeczy?
	AI_Output (self, other, "DIA_Meldor_Interessantes_07_01"); //Jest burdel i knajpa. W³aœciciel nazywa siê Kardif. Jeœli potrzebne ci s¹ jakieœ informacje, powinieneœ udaæ siê do niego.
	AI_Output (self, other, "DIA_Meldor_Interessantes_07_02"); //Tak przy okazji, potrzebujesz gotówki?
	
	SetNoteEntry (Note_Traders, LOG_NOTE, "Kardif, w³aœciciel knajpy, sprzedaje informacje.");
};

//******************************************************************************************
//	Lehmar
//******************************************************************************************
instance DIA_Meldor_Lehmar (C_INFO)
{
	npc									=	VLK_415_Meldor;
	nr									=	3;
	condition							=	DIA_Meldor_Lehmar_Condition;
	information							=	DIA_Meldor_Lehmar_Info;
	permanent							=	false;
	description							=	"A co, rozdajesz pieni¹dze?";
};

func int DIA_Meldor_Lehmar_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Meldor_Interessantes))
	{
		return true;
	};
};

func void DIA_Meldor_Lehmar_Info()
{
	AI_Output (other, self, "DIA_Meldor_Lehmar_15_00"); //A co, rozdajesz pieni¹dze?
	AI_Output (self, other, "DIA_Meldor_Lehmar_07_01"); //Nie. Ale po drugiej stronie ulicy mieszka Lehmar. Po¿ycza pieni¹dze na procent.
	AI_Output (self, other, "DIA_Meldor_Lehmar_07_02"); //Jestem pewien, ¿e po¿yczy ci parê sztuk z³ota.
	Npc_ExchangeRoutine (self, "START");
};

//******************************************************************************************
//	Arbeitest
//******************************************************************************************
instance DIA_Meldor_Arbeitest (C_INFO)
{
	npc									=	VLK_415_Meldor;
	nr									=	4;
	condition							=	DIA_Meldor_Arbeitest_Condition;
	information							=	DIA_Meldor_Arbeitest_Info;
	permanent							=	false;
	description							=	"Pracujesz dla Lehmara?";
};

func int DIA_Meldor_Arbeitest_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Meldor_Lehmar))
	{
		return true;
	};
};

func void DIA_Meldor_Arbeitest_Info()
{
	AI_Output (other, self, "DIA_Meldor_Arbeitest_15_00"); //Pracujesz dla Lehmara?
	AI_Output (self, other, "DIA_Meldor_Arbeitest_07_01"); //Hmm... Zgad³eœ, geniuszu.
};

//******************************************************************************************
//	InsOV
//******************************************************************************************
instance DIA_Meldor_InsOV (C_INFO)
{
	npc									=	VLK_415_Meldor;
	nr									=	5;
	condition							=	atrue;
	information							=	DIA_Meldor_InsOV_Info;
	permanent							=	false;
	description							=	"W³aœciwie to idê do górnego miasta.";
};

func void DIA_Meldor_InsOV_Info()
{
	AI_Output (other, self, "DIA_Meldor_InsOV_15_00"); //W³aœciwie to idê do górnego miasta.
	AI_Output (self, other, "DIA_Meldor_InsOV_07_01"); //Tak, oczywiœcie. A ja w³aœnie mia³em wsi¹œæ na statek, który zawiezie mnie prosto na audiencjê u Króla.
	AI_Output (self, other, "DIA_Meldor_InsOV_07_02"); //Od kiedy pojawili siê paladyni, takich jak ty czy ja nie wpuszcza siê do górnego miasta.
};

//******************************************************************************************
//	Citizen
//******************************************************************************************
instance DIA_Meldor_Citizen (C_INFO)
{
	npc									=	VLK_415_Meldor;
	nr									=	6;
	condition							=	DIA_Meldor_Citizen_Condition;
	information							=	DIA_Meldor_Citizen_Info;
	permanent							=	false;
	description							=	"Czy jesteœ obywatelem tego miasta?";
};

func int DIA_Meldor_Citizen_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Meldor_InsOV))
	{
		return true;
	};
};

func void DIA_Meldor_Citizen_Info()
{
	AI_Output (other, self, "DIA_Meldor_Citizen_15_00"); //Czy jesteœ obywatelem tego miasta?
	AI_Output (self, other, "DIA_Meldor_Citizen_07_01"); //Jeœli chodzi ci o to, czy tu mieszkam, to odpowiedŸ brzmi - tak. Co nie znaczy, ¿e mogê wchodziæ do górnego miasta.
	AI_Output (self, other, "DIA_Meldor_Citizen_07_02"); //Tylko arystokracja ma tam wstêp, no i oczywiœcie handlarze, i rzemieœlnicy z dolnej czêœci miasta.
	AI_Output (self, other, "DIA_Meldor_Citizen_07_03"); //W dzielnicy portowej raczej nie znajdziesz nikogo spoœród œmietanki Khorinis. Tu nie ma nawet regularnych patroli stra¿y miejskiej.
};

//******************************************************************************************
//	Smoke
//******************************************************************************************
instance DIA_Meldor_Smoke (C_INFO)
{
	npc									=	VLK_415_Meldor;
	nr									=	5;
	condition							=	DIA_Meldor_Smoke_Condition;
	information							=	DIA_Meldor_Smoke_Info;
	permanent							=	false;
	description							=	"Wiesz mo¿e, gdzie mogê kupiæ trochê ziela?";
};

func int DIA_Meldor_Smoke_Condition()
{
	if (QuestStep_RedLight == LOG_RUNNING)
	{
		return true;
	};
};

func void DIA_Meldor_Smoke_Info()
{
	var C_ITEM heroArmor; heroArmor = Npc_GetEquippedArmor(other);
	
	AI_Output (other, self, "DIA_Meldor_Smoke_15_00"); //Wiesz mo¿e, gdzie mogê kupiæ trochê ziela?
	
	if (Hlp_IsItem(heroArmor,ItAR_MIL_L) == true)
	|| (Hlp_IsItem(heroArmor,ItAR_MIL_M) == true)
	|| (Hlp_IsItem(heroArmor,ItAR_MIL_H) == true)
	|| (Hlp_IsItem(heroArmor,ItAR_MIL_N) == true)
	{
		AI_Output (self, other, "DIA_Meldor_Smoke_07_01"); //Nie, nie mam pojêcia.
	}
	else
	{
		AI_Output (self, other, "DIA_Meldor_Smoke_07_02"); //Na twoim miejscu spróbowa³bym szczêœcia w Czerwonej Latarni.
	};
};

//******************************************************************************************
//	PERM
//******************************************************************************************

var int Meldor_DGNews;

//******************************************************************************************
instance DIA_Meldor_PERM (C_INFO)
{
	npc									=	VLK_415_Meldor;
	nr									=	7;
	condition							=	atrue;
	information							=	DIA_Meldor_PERM_Info;
	permanent							=	true;
	description							=	"Czy ostatnio wydarzy³o siê tu coœ niezwyk³ego?";
};

func void DIA_Meldor_PERM_Info()
{
	AI_Output (other, self, "DIA_Meldor_PERM_15_00"); //Czy ostatnio wydarzy³o siê tu coœ niezwyk³ego?
	
	if (Kapitel <= 7)
	{
		AI_Output (self, other, "DIA_Meldor_PERM_07_01"); //Nie tak dawno temu stra¿ miejska wywróci³a ca³¹ dzielnicê portow¹ do góry nogami.
		AI_Output (self, other, "DIA_Meldor_PERM_07_02"); //Szukali skradzionych kosztownoœci. Ostatnio zdarzy³o siê tu sporo kradzie¿y. Szczególnie w lepszych dzielnicach.
		AI_Output (self, other, "DIA_Meldor_PERM_07_03"); //NajwyraŸniej próbuj¹ zwaliæ winê na biedotê z portu.
	}
	else if (Andre_Diebesgilde_aufgeraeumt == true)
	&& (Meldor_DGNews == false)
	{
		AI_Output (self, other, "DIA_Meldor_PERM_07_04"); //Podobno znaleŸli w kana³ach z³odziejsk¹ kryjówkê. Wszyscy przestêpcy zostali zabici.
		Meldor_DGNews = true;
	}
	else if (Kapitel == 9)
	{
		AI_Output (self, other, "DIA_Meldor_PERM_07_05"); //Podobno w Górniczej Dolinie s¹ smoki. Ciekaw jestem, kiedy nasi paladyni zostan¹ wys³ani do walki.
	}
	else if (Kapitel == 11)
	{
		AI_Output (self, other, "DIA_Meldor_PERM_07_06"); //Podobno wszystkie smoki s¹ martwe.
	}
	else
	{
		AI_Output (self, other, "DIA_Meldor_PERM_07_07"); //Nie.
	};
};

//******************************************************************************************
//	Lehmar
//******************************************************************************************
instance DIA_Meldor_VonLehmar (C_INFO)
{
	npc									=	VLK_415_Meldor;
	nr									=	1;
	condition							=	DIA_Meldor_VonLehmar_Condition;
	information							=	DIA_Meldor_VonLehmar_Info;
	permanent							=	false;
	important							=	true;
};

func int DIA_Meldor_VonLehmar_Condition()
{
	if ((Lehmar_GeldGeliehen_Day <= (Wld_GetDay()-2))
	&& (Lehmar_GeldGeliehen != 0))
	&& (RangerHelp_LehmarKohle == false)
	&& (Lehmar.aivar[AIV_DefeatedByPlayer] == DBP_NONE)
	{
		return true;
	};
};

func void DIA_Meldor_VonLehmar_Info()
{
	AI_Output (self, other, "DIA_Meldor_VonLehmar_07_00"); //Hej, zaczekaj...
	AI_Output (self, other, "DIA_Meldor_VonLehmar_07_01"); //Mam dla ciebie wiadomoœæ od Lehmara.

	AI_StopProcessInfos(self);

	B_Attack (self, other, AR_NONE, 1);
};
