//******************************************************************************************
//	Info EXIT
//******************************************************************************************
INSTANCE DIA_Salandril_EXIT (C_INFO)
{
	npc									=	VLK_422_Salandril;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Salandril_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Salandril_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Info Hallo
//******************************************************************************************
instance DIA_Salandril_Hallo (C_INFO)
{
	npc									=	VLK_422_Salandril;
	nr									=	2;
	condition							=	DIA_Salandril_Hallo_Condition;
	information							=	DIA_Salandril_Hallo_Info;
	permanent							=	false;
	important							=	true;
};

func int DIA_Salandril_Hallo_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (QuestStep_OldWorld != LOG_SUCCESS)
	{
		return true;
	};
};

func void DIA_Salandril_Hallo_Info()
{
	AI_Output (self, other, "DIA_Salandril_PERM_13_00"); //Witaj, w�drowcze. Szukasz doskona�ej mikstury?
	AI_Output (self, other, "DIA_Salandril_PERM_13_01"); //Mam �wietny wyb�r po rozs�dnych cenach. A moje mikstury s� o wiele lepsze od tych, kt�re stara si� sprzedawa� Zuris.
	
	SetNoteEntry (Note_Traders, LOG_NOTE, "Salandril sprzedaje mikstury. Jego sklep znajduje si� w g�rnym mie�cie.");
};

//******************************************************************************************
//	Info Trank
//******************************************************************************************
instance DIA_Salandril_Trank (C_INFO)
{
	npc									=	VLK_422_Salandril;
	nr									=	2;
	condition							=	DIA_Salandril_Trank_Condition;
	information							=	DIA_Salandril_Trank_Info;
	permanent							=	false;
	important							=	true;
};

func int DIA_Salandril_Trank_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (QuestStep_OldWorld == LOG_SUCCESS)
	&& (Npc_KnowsInfo(other,DIA_Salandril_KLOSTER) == false)
	{
		return true;
	};
};

func void DIA_Salandril_Trank_Info()
{
	AI_Output (self, other, "DIA_Salandril_Trank_13_00"); //S�ysza�em, �e by�e� z paladynami w G�rniczej Dolinie. Jestem pod wra�eniem.
	AI_Output (self, other, "DIA_Salandril_Trank_13_01"); //Nie �piesz si� i spokojnie obejrzyj m�j towar. Dobrze si� sk�ada, bo akurat mam co� wyj�tkowego na sprzeda�.
	CreateInvItems (self, ItPo_Perm_DEX, 1);
};

//******************************************************************************************
//	Info Trade
//******************************************************************************************
instance DIA_Salandril_Trade (C_INFO)
{
	npc									=	VLK_422_Salandril;
	nr									=	9;
	condition							=	DIA_Salandril_Trade_Condition;
	information							=	DIA_Salandril_Trade_Info;
	permanent							=	true;
	description							=	"Poka� mi swoje towary..";
	trade								=	true;
};

func int DIA_Salandril_Trade_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Salandril_KLOSTER) == false)
	{
		return true;
	};
};

func void DIA_Salandril_Trade_Info()
{
	B_GiveTradeInv(self);
	AI_Output (other, self, "DIA_Salandril_Trade_15_00"); //Poka� mi swoje towary.
	
	if (other.guild == GIL_KDF)
	{
		AI_Output (self, other, "DIA_Salandril_Trade_13_01"); //Z przyjemno�ci�, czcigodny Bracie.
		if (QuestStep_FakeMineDocs == LOG_RUNNING)
		{
			SC_KnowsProspektorSalandril = true;
		};
	};
	if (other.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Salandril_Trade_13_02"); //Z przyjemno�ci�, szlachetny Panie.
	};
};

//******************************************************************************************
//	Info Kloster
//******************************************************************************************
instance DIA_Salandril_KLOSTER (C_INFO)
{
	npc									=	VLK_422_Salandril;
	nr									=	2;
	condition							=	DIA_Salandril_KLOSTER_Condition;
	information							=	DIA_Salandril_KLOSTER_Info;
	permanent							=	false;
	description							=	"Masz uda� si� do klasztoru, w kt�rym zostaniesz os�dzony!";
};

func int DIA_Salandril_KLOSTER_Condition()
{
	if ((SC_KnowsProspektorSalandril == true) || (QuestStep_SerpentesBringSalandril == LOG_RUNNING))
	{
		return true;
	};
};

func void DIA_Salandril_KLOSTER_Info()
{
	AI_Output (other, self, "DIA_Salandril_KLOSTER_15_00"); //Masz uda� si� do klasztoru, w kt�rym zostaniesz os�dzony!
	AI_Output (self, other, "DIA_Salandril_KLOSTER_13_01"); //Co? Nie ma mowy! Ci n�dzni magowie nie maj� nawet cienia dowodu przeciwko mnie!

	if (hero.guild == GIL_KDF)
	&& (SC_KnowsProspektorSalandril == true)
	{
		AI_Output (other, self, "DIA_Salandril_KLOSTER_15_02"); //A co z tymi fa�szywymi udzia�ami w kopalni, kt�re mo�na wsz�dzie kupi�? Widnieje na nich tw�j podpis. Jeste� winny!
	}
	else
	{
		AI_Output (other, self, "DIA_Salandril_KLOSTER_15_03"); //Mam rozkazy do wykonania i albo ze mn� p�jdziesz, albo ci� do tego zmusz�.
	};
	
	AI_Output (self, other, "DIA_Salandril_KLOSTER_13_04"); //CO? Przeci�gn� ci� przez ca�e miasto i poka��, jak nale�y si� do mnie zwraca�!
	
	AI_StopProcessInfos(self);
	B_Attack (self, other, AR_NONE, 1);
};

//******************************************************************************************
//	Info GehinsKloster
//******************************************************************************************
instance DIA_Salandril_GehinsKloster (C_INFO)
{
	npc									=	VLK_422_Salandril;
	nr									=	2;
	condition							=	DIA_Salandril_GehinsKloster_Condition;
	information							=	DIA_Salandril_GehinsKloster_Info;
	permanent							=	false;
	description							=	"No, to teraz p�jdziesz do klasztoru, czy b�dziemy si� dalej bawi�?";
};

func int DIA_Salandril_GehinsKloster_Condition()
{
	if ((SC_KnowsProspektorSalandril == true) || (QuestStep_SerpentesBringSalandril == LOG_RUNNING))
	&& (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
	&& (Npc_KnowsInfo(other,DIA_Salandril_KLOSTER))
	{
		return true;
	};
};

func void DIA_Salandril_GehinsKloster_Info()
{
	AI_Output (other, self, "DIA_Salandril_GehinsKloster_15_00"); //No, to teraz p�jdziesz do klasztoru, czy b�dziemy si� dalej bawi�?
	AI_Output (self, other, "DIA_Salandril_GehinsKloster_13_01"); //B�dziesz tego �a�owa�! Cholera! P�jd� do tego twojego klasztoru, ale nie my�l, �e ujdzie ci to na sucho.
	
	QuestStep_SerpentesBringSalandril = SetQuestStatus (Quest_SerpentesBringSalandril, LOG_SUCCESS, QuestStep_SerpentesBringSalandril);
	
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine	(self, "KlosterUrteil");
};

//******************************************************************************************
//	Info Verschwinde
//******************************************************************************************
instance DIA_Salandril_Verschwinde (C_INFO)
{
	npc									=	VLK_422_Salandril;
	nr									=	2;
	condition							=	DIA_Salandril_Verschwinde_Condition;
	information							=	DIA_Salandril_Verschwinde_Info;
	permanent							=	true;
	important							=	true;
};

func int DIA_Salandril_Verschwinde_Condition()
{
	if (QuestStep_SerpentesBringSalandril == LOG_SUCCESS)
	&& (Npc_IsInState(self,ZS_Talk))
	{
		return true;
	};	
};

func void DIA_Salandril_Verschwinde_Info()
{
	B_Say (self, other, "$NOTNOW");
	AI_StopProcessInfos(self);
};
