
//#####################################################################
//##
//##
//##							KAPITEL 4
//##
//##
//#####################################################################



//***************************************************************************
//	Info EXIT
//***************************************************************************
INSTANCE DIA_SylvioDJG_EXIT (C_INFO)
{
	npc			= DJG_700_Sylvio;
	nr   		= 999;
	condition	= DIA_SylvioDJG_EXIT_Condition;
	information	= DIA_SylvioDJG_EXIT_Info;
	important	= 0;	
	permanent	= 1;
	description = DIALOG_END;
};                       

FUNC INT DIA_SylvioDJG_EXIT_Condition()
{
	return 1;
};

func VOID DIA_SylvioDJG_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};


///////////////////////////////////////////////////////////////////////
//	Info HelloAgain
///////////////////////////////////////////////////////////////////////
instance DIA_SylvioDJG_HelloAgain		(C_INFO)
{
	npc		 = 	DJG_700_Sylvio;
	condition	 = 	DIA_SylvioDJG_HelloAgain_Condition;
	information	 = 	DIA_SylvioDJG_HelloAgain_Info;
	important	 = 	TRUE;

};

func int DIA_SylvioDJG_HelloAgain_Condition ()
{
	if 	((Npc_IsDead(IceDragon))== FALSE)
		&& (IceDragon.aivar[AIV_TalkedToPlayer] == FALSE)
			{
				return TRUE;
			};
};

func void DIA_SylvioDJG_HelloAgain_Info ()
{
	if((other.guild == GIL_SLD)||(other.guild == GIL_DJG))
	{
		AI_Output			(self, other,"DIA_SylvioDJG_HelloAgain_09_00"); //A niech mnie! Szukasz �atwej kasy, h�? Wiedzia�em! Masz dusz� najemnika.
		AI_Output			(self, other,"DIA_SylvioDJG_HelloAgain_09_01"); //S�uchaj no, je�li my�lisz, �e tu zarobisz, to jeste� w b��dzie. Ja by�em pierwszy.
	}
	else if (other.guild == GIL_KDF)
	{
		AI_Output			(self, other, "DIA_SylvioDJG_HelloAgain_09_02"); //Hej, ty! Magowie strasznie mnie wkurzaj�! Spadaj st�d! Nie masz tu czego szuka�.
	}
	else
	{
		AI_Output			(self, other, "DIA_SylvioDJG_HelloAgain_09_03"); //Hej, ty, paladyn! Wracaj do swojej kopalni rudy. Nic tu po tobie.
	};
	
	AI_Output			(other, self, "DIA_SylvioDJG_HelloAgain_15_04"); //Rozumiem. Nikt nie lubi dzieli� si� �upem.
	AI_Output			(self, other, "DIA_SylvioDJG_HelloAgain_09_05"); //Ty to powiedzia�e�. Teraz znikaj.
};

///////////////////////////////////////////////////////////////////////
//	Info Versager
///////////////////////////////////////////////////////////////////////
instance DIA_Sylvio_VERSAGER		(C_INFO)
{
	npc		 = 	DJG_700_Sylvio;
	nr		 = 	6;
	condition	 = 	DIA_Sylvio_VERSAGER_Condition;
	information	 = 	DIA_Sylvio_VERSAGER_Info;

	description	 = 	"A je�li tego nie zrobi�?";
};

func int DIA_Sylvio_VERSAGER_Condition ()
{
	if 	(Npc_KnowsInfo(other, DIA_SylvioDJG_HelloAgain))
		&& (IceDragon.aivar[AIV_TalkedToPlayer] == FALSE)
		{
				return TRUE;
		};
};

func void DIA_Sylvio_VERSAGER_Info ()
{
	AI_Output			(other, self, "DIA_Sylvio_VERSAGER_15_00"); //A je�li tego nie zrobi�?
	AI_Output			(self, other, "DIA_Sylvio_VERSAGER_09_01"); //Nie zgrywaj mi tu wa�nego, spadaj, albo sko�czysz jak ta �winia, le��c na �niegu z bebechami na wierzchu.
};


///////////////////////////////////////////////////////////////////////
//	Info DeineLeute
///////////////////////////////////////////////////////////////////////
instance DIA_Sylvio_DEINELEUTE		(C_INFO)
{
	npc		 = 	DJG_700_Sylvio;
	nr		 = 	7;
	condition	 = 	DIA_Sylvio_DEINELEUTE_Condition;
	information	 = 	DIA_Sylvio_DEINELEUTE_Info;

	description	 = 	"To byli twoi ludzie?";
};

func int DIA_Sylvio_DEINELEUTE_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Sylvio_VERSAGER))
		&& (IceDragon.aivar[AIV_TalkedToPlayer] == FALSE)
		&& (MIS_DJG_Sylvio_KillIceGolem == 0)
		{
				return TRUE;
		};
};

func void DIA_Sylvio_DEINELEUTE_Info ()
{
	AI_Output			(other, self, "DIA_Sylvio_DEINELEUTE_15_00"); //To byli twoi ludzie?
	AI_Output			(self, other, "DIA_Sylvio_DEINELEUTE_09_01"); //Ju� nie. �adna strata. Ci idioci byli nic niewarci.
};


///////////////////////////////////////////////////////////////////////
//	Info WasIstPassiert
///////////////////////////////////////////////////////////////////////
instance DIA_Sylvio_WASISTPASSIERT		(C_INFO)
{
	npc		 = 	DJG_700_Sylvio;
	nr		 = 	8;
	condition	 = 	DIA_Sylvio_WASISTPASSIERT_Condition;
	information	 = 	DIA_Sylvio_WASISTPASSIERT_Info;

	description	 = 	"Co im si� sta�o?";
};

func int DIA_Sylvio_WASISTPASSIERT_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Sylvio_VERSAGER))
		&& (IceDragon.aivar[AIV_TalkedToPlayer] == FALSE)
		{
				return TRUE;
		};
};

func void DIA_Sylvio_WASISTPASSIERT_Info ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASISTPASSIERT_15_00"); //Co im si� sta�o?
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_09_01"); //Nie potrafili poradzi� sobie z lodowymi gigantami, a teraz w�chaj� kwiatki od strony pod�o�a.
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_09_02"); //Skoro taki z ciebie twardziel, to mo�e ty spr�bujesz.


	Info_AddChoice	(DIA_Sylvio_WASISTPASSIERT, "W porz�dku, czemu nie?", DIA_Sylvio_WASISTPASSIERT_ok );
	Info_AddChoice	(DIA_Sylvio_WASISTPASSIERT, "Dobra, a co TY b�dziesz z tego mia�?", DIA_Sylvio_WASISTPASSIERT_washastdudavon );
	Info_AddChoice	(DIA_Sylvio_WASISTPASSIERT, "A co JA b�d� z tego mia�?", DIA_Sylvio_WASISTPASSIERT_warum );
	Info_AddChoice	(DIA_Sylvio_WASISTPASSIERT, "Dlaczego sam si� ich nie pozb�dziesz?", DIA_Sylvio_WASISTPASSIERT_selbst );

	Log_CreateTopic (TOPIC_SylvioKillIceGolem, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_SylvioKillIceGolem, LOG_RUNNING);
	B_LogEntry (TOPIC_SylvioKillIceGolem,"Sylvio boi si� dw�ch lodowych golem�w strzeg�cych wej�cia do skutego lodem obszaru G�rniczej Doliny."); 

	MIS_DJG_Sylvio_KillIceGolem = LOG_RUNNING;
};
func void DIA_Sylvio_WASISTPASSIERT_selbst ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASISTPASSIERT_selbst_15_00"); //Dlaczego sam si� ich nie pozb�dziesz?
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_selbst_09_01"); //Spokojnie, spokojnie. Nie strosz si� tak.
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_selbst_09_02"); //Je�li chcesz zna� moje zdanie, to robisz ze strachu pod siebie.
	
	Info_AddChoice	(DIA_Sylvio_WASISTPASSIERT, "Nie mam zamiaru uczestniczy� w twoich gierkach.", DIA_Sylvio_WASISTPASSIERT_keinInteresse );

};
var int DJG_Sylvio_PromisedMoney;
func void DIA_Sylvio_WASISTPASSIERT_warum ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASISTPASSIERT_warum_15_00"); //Co ja b�d� z tego mia�?
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_warum_09_01"); //Ja wiem... Powiedzmy 1000 sztuk z�ota. Co ty na to?

	DJG_Sylvio_PromisedMoney = TRUE;
};

func void DIA_Sylvio_WASISTPASSIERT_washastdudavon ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASISTPASSIERT_washastdudavon_15_00"); //Dobra, a co TY b�dziesz z tego mia�?
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_washastdudavon_09_01"); //Ten znowu to samo. Mam zamiar pow��czy� si� po lodowej krainie.
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_washastdudavon_09_02"); //Jest par� spraw, z kt�rymi mam problem.
	
	Info_AddChoice	(DIA_Sylvio_WASISTPASSIERT, "Co takiego kryje w sobie lodowa kraina?", DIA_Sylvio_WASISTPASSIERT_Eisregion );

};

func void DIA_Sylvio_WASISTPASSIERT_keinInteresse ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASISTPASSIERT_keinInteresse_NEIN_15_00"); //Nie mam zamiaru uczestniczy� w twoich gierkach.
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_keinInteresse_NEIN_09_01"); //Taak. Wi�c wyno� si� st�d, tch�rzu.

	AI_StopProcessInfos	(self);
};

func void DIA_Sylvio_WASISTPASSIERT_Eisregion ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASISTPASSIERT_keinInteresse_15_00"); //Co takiego kryje w sobie lodowa kraina?
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_keinInteresse_09_01"); //Ty chyba nie masz do�� tych swoich pyta�, co? Dobra, powiem ci.
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_keinInteresse_09_02"); //Tutaj, za klifami, rozci�ga si� lodowa kraina, jakiej nigdy jeszcze nie widzia�e�.
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_keinInteresse_09_03"); //Podobno znajduje si� tam wielki skarb lodowego smoka.
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_keinInteresse_09_04"); //Ja za� chc� tego skarbu. Wi�c jak? Zgadzasz si�, czy nie?
};
func void DIA_Sylvio_WASISTPASSIERT_ok ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASISTPASSIERT_ok_15_00"); //W porz�dku, czemu nie?
	AI_Output			(self, other, "DIA_Sylvio_WASISTPASSIERT_ok_09_01"); //Po�piesz si� wi�c. Nie mam dla ciebie ca�ego dnia.

	AI_StopProcessInfos	(self);
};

///////////////////////////////////////////////////////////////////////
//	Info IceGolemsKilled
///////////////////////////////////////////////////////////////////////
instance DIA_Sylvio_ICEGOLEMSKILLED		(C_INFO)
{
	npc		 = 	DJG_700_Sylvio;
	nr		 = 	9;
	condition	 = 	DIA_Sylvio_ICEGOLEMSKILLED_Condition;
	information	 = 	DIA_Sylvio_ICEGOLEMSKILLED_Info;

	description	 = 	"Przej�cie jest bezpieczne!";
};

func int DIA_Sylvio_ICEGOLEMSKILLED_Condition ()
{
	if 	(Npc_IsDead(Golem_Sylvio1))
		&& (Npc_IsDead(Golem_Sylvio2))
		&& (MIS_DJG_Sylvio_KillIceGolem  == LOG_RUNNING)
		&& (IceDragon.aivar[AIV_TalkedToPlayer] == FALSE)
			{
					return TRUE;
			};
};

func void DIA_Sylvio_ICEGOLEMSKILLED_Info ()
{
	AI_Output			(other, self, "DIA_Sylvio_ICEGOLEMSKILLED_15_00"); //Przej�cie jest bezpieczne! Pozby�em si� lodowych gigant�w.
	AI_Output			(self, other, "DIA_Sylvio_ICEGOLEMSKILLED_09_01"); //�wietna robota. Niech no i ja si� przyjrz�.

	if (DJG_Sylvio_PromisedMoney  == TRUE)
	{
	AI_Output			(other, self, "DIA_Sylvio_ICEGOLEMSKILLED_15_02"); //Chwileczk�. A co z moimi pieni�dzmi?
	AI_Output			(self, other, "DIA_Sylvio_ICEGOLEMSKILLED_09_03"); //Wszystko w swoim czasie.
	};

	AI_StopProcessInfos	(self);

	MIS_DJG_Sylvio_KillIceGolem = LOG_SUCCESS;
	B_GivePlayerXP(600);
	Npc_ExchangeRoutine	(self,		"IceWait1");
	B_StartotherRoutine (DJG_Bullco,"IceWait1");	
};


///////////////////////////////////////////////////////////////////////
//	Info Wasjetzt
///////////////////////////////////////////////////////////////////////
instance DIA_Sylvio_WASJETZT		(C_INFO)
{
	npc		 = 	DJG_700_Sylvio;
	nr		 = 	10;
	condition	 = 	DIA_Sylvio_WASJETZT_Condition;
	information	 = 	DIA_Sylvio_WASJETZT_Info;

	description	 = 	"Co dalej?";
};

func int DIA_Sylvio_WASJETZT_Condition ()
{
	if 	(MIS_DJG_Sylvio_KillIceGolem  == LOG_SUCCESS)
		&& (IceDragon.aivar[AIV_TalkedToPlayer] == FALSE)
			{
					return TRUE;
			};
};

func void DIA_Sylvio_WASJETZT_Info ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASJETZT_15_00"); //Co dalej?
	AI_Output			(self, other, "DIA_Sylvio_WASJETZT_09_01"); //C�. Obawiam si�, �e nie jest dobrze.
	AI_Output			(self, other, "DIA_Sylvio_WASJETZT_09_02"); //Najlepiej b�dzie, je�li p�jdziesz przodem, a ja za tob�.

	Info_AddChoice	(DIA_Sylvio_WASJETZT, "Niech ci b�dzie.", DIA_Sylvio_WASJETZT_ok );
	Info_AddChoice	(DIA_Sylvio_WASJETZT, "Czy�by� si� ba�?", DIA_Sylvio_WASJETZT_trennen );
	Info_AddChoice	(DIA_Sylvio_WASJETZT, "Nie b�d� odwala� za ciebie brudnej roboty.", DIA_Sylvio_WASJETZT_nein );
	if (DJG_Sylvio_PromisedMoney  == TRUE)
	{
	Info_AddChoice	(DIA_Sylvio_WASJETZT, "Najpierw mi zap�a�.", DIA_Sylvio_WASJETZT_Geld );
	};
};
func void DIA_Sylvio_WASJETZT_trennen ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASJETZT_trennen_15_00"); //Czy�by� si� ba�?
	AI_Output			(self, other, "DIA_Sylvio_WASJETZT_trennen_09_01"); //Nonsens. Przesta� bredzi�, tylko prowad�.

};

func void DIA_Sylvio_WASJETZT_ok ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASJETZT_ok_15_00"); //Niech ci b�dzie.
	AI_Output			(self, other, "DIA_Sylvio_WASJETZT_ok_09_01"); //No dalej. Do dzie�a.

	AI_StopProcessInfos	(self);
};

func void DIA_Sylvio_WASJETZT_nein ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASJETZT_nein_15_00"); //Nie b�d� odwala� za ciebie brudnej roboty.
	AI_Output			(self, other, "DIA_Sylvio_WASJETZT_nein_09_01"); //Tch�rz!

	AI_StopProcessInfos	(self);
};

func void DIA_Sylvio_WASJETZT_Geld ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASJETZT_Geld_15_00"); //Najpierw mi zap�a�.
	AI_Output			(self, other, "DIA_Sylvio_WASJETZT_Geld_09_01"); //Kiedy pozb�dziemy si� smoka, dostaniesz tyle z�ota, ile zdo�asz unie��.

	Info_AddChoice	(DIA_Sylvio_WASJETZT, "Chc� moich pieni�dzy, natychmiast.", DIA_Sylvio_WASJETZT_jetztGeld );
};

func void DIA_Sylvio_WASJETZT_jetztGeld ()
{
	AI_Output			(other, self, "DIA_Sylvio_WASJETZT_jetztGeld_15_00"); //Chc� moich pieni�dzy, natychmiast.
	AI_Output			(self, other, "DIA_Sylvio_WASJETZT_jetztGeld_09_01"); //Albo idziesz przodem, albo b�dziesz mia� ze mn� do czynienia.
};

///////////////////////////////////////////////////////////////////////
//	Info Kommstdu
///////////////////////////////////////////////////////////////////////
instance DIA_Sylvio_KOMMSTDU		(C_INFO)
{
	npc		 = 	DJG_700_Sylvio;
	nr		 = 	11;
	condition	 = 	DIA_Sylvio_KOMMSTDU_Condition;
	information	 = 	DIA_Sylvio_KOMMSTDU_Info;
	permanent	 = 	TRUE;

	description	 = 	"My�la�em, �e wybierasz si� do lodowej krainy.";
};

func int DIA_Sylvio_KOMMSTDU_Condition ()
{
	if 	(Npc_KnowsInfo(other, DIA_Sylvio_WASJETZT))
		&& (IceDragon.aivar[AIV_TalkedToPlayer] == FALSE)
			{
					return TRUE;
			};
};

func void DIA_Sylvio_KOMMSTDU_Info ()
{
	AI_Output			(other, self, "DIA_Sylvio_KOMMSTDU_15_00"); //My�la�em, �e wybierasz si� do lodowej krainy.
	AI_Output			(self, other, "DIA_Sylvio_KOMMSTDU_09_01"); //No dalej, id� przodem. B�d� zaraz za tob�.

	AI_StopProcessInfos	(self);	 
};

///////////////////////////////////////////////////////////////////////
//	Info DuHier
///////////////////////////////////////////////////////////////////////
instance DIA_Sylvio_DUHIER		(C_INFO)
{
	npc		 = 	DJG_700_Sylvio;
	nr		 = 	11;
	condition	 = 	DIA_Sylvio_DUHIER_Condition;
	information	 = 	DIA_Sylvio_DUHIER_Info;
	permanent	 = 	TRUE;

	description	 = 	"Przyda�aby mi si� pomoc.";
};

func int DIA_Sylvio_DUHIER_Condition ()
{
	if 	((Npc_IsDead(IceDragon)) == FALSE)
		&& (IceDragon.aivar[AIV_TalkedToPlayer] == TRUE)
			{
					return TRUE;
			};
};

func void DIA_Sylvio_DUHIER_Info ()
{
	AI_Output			(other, self, "DIA_Sylvio_DUHIER_15_00"); //Przyda�aby mi si� pomoc.
	AI_Output			(self, other, "DIA_Sylvio_DUHIER_09_01"); //Nonsens. �wietnie sobie radzisz.
	
	AI_StopProcessInfos	(self);	 
};

///////////////////////////////////////////////////////////////////////
//	Info WhatNext
///////////////////////////////////////////////////////////////////////
instance DIA_SylvioDJG_WHATNEXT		(C_INFO)
{
	npc		     = 	DJG_700_Sylvio;
	nr		 = 	12;
	condition	 = 	DIA_SylvioDJG_WHATNEXT_Condition;
	information	 = 	DIA_SylvioDJG_WHATNEXT_Info;
	important	 = 	TRUE;
};

func int DIA_SylvioDJG_WHATNEXT_Condition ()
{
	if 	(Npc_IsDead(IceDragon))		
		{
			return TRUE;
		};
};

func void DIA_SylvioDJG_WHATNEXT_Info ()
{
	AI_Output	(self, other, "DIA_SylvioDJG_WHATNEXT_09_00"); //Lodowy smok nie �yje. Teraz dawaj wszystko, co masz przy sobie!
	AI_Output	(other, self, "DIA_SylvioDJG_WHATNEXT_15_01"); //Po moim trupie!
	AI_Output	(self, other, "DIA_SylvioDJG_WHATNEXT_09_02"); //To mnie b�d� s�awi� za zabicie smoka.
	AI_Output	(self, other, "DIA_SylvioDJG_WHATNEXT_09_03"); //Twoja rola w tym przedstawieniu w�a�nie dobieg�a ko�ca!

	TOPIC_END_SylvioKillIceGolem = TRUE;
	B_GivePlayerXP(200);
	Info_ClearChoices	(DIA_SylvioDJG_WHATNEXT);
	Info_AddChoice	(DIA_SylvioDJG_WHATNEXT, DIALOG_END, DIA_SylvioDJG_WHATNEXT_ATTACK );
};
func void DIA_SylvioDJG_WHATNEXT_ATTACK ()
{
	AI_StopProcessInfos	(self);
	Npc_SetRefuseTalk (self,60);

	Npc_ExchangeRoutine (self,	"Start");
	B_StartOtherRoutine (DJG_Bullco,"Start");

	B_LogEntry (TOPIC_Dragonhunter,"Sylvio, ta �winia, pr�bowa� sobie przyw�aszczy� moje zas�ugi w pokonaniu lodowych smok�w. Wysz�a z tego niez�a k��tnia."); 

	B_Attack (self, other, AR_NONE, 1);	
	B_Attack (DJG_Bullco, other, AR_NONE, 1);	
};

///////////////////////////////////////////////////////////////////////
//	Info ButNow
///////////////////////////////////////////////////////////////////////
instance DIA_SylvioDJG_BUTNOW		(C_INFO)
{
	npc		     = 	DJG_700_Sylvio;
	nr		 = 	13;
	condition	 = 	DIA_SylvioDJG_BUTNOW_Condition;
	information	 = 	DIA_SylvioDJG_BUTNOW_Info;
	important	 = 	TRUE;
	permanent	 = 	TRUE;
};

func int DIA_SylvioDJG_BUTNOW_Condition ()
{
	if 	(Npc_IsDead(IceDragon))
		&& (Npc_RefuseTalk(self) == FALSE)
		&& (Npc_KnowsInfo(other, DIA_SylvioDJG_WHATNEXT))
			{
				return TRUE;
			};
};

func void DIA_SylvioDJG_BUTNOW_Info ()
{
	AI_Output	(self, other, "DIA_SylvioDJG_BUTNOW_09_00"); //Czas na zap�at�.
	
	AI_StopProcessInfos	(self);

	Npc_SetRefuseTalk (self,60);

	B_Attack (self, other, AR_NONE, 1);	
	B_Attack (DJG_Bullco, other, AR_NONE, 1);	
};
