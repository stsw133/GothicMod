//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Lutero_EXIT (C_INFO)
{
	npc									=	VLK_404_Lutero;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Lutero_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};                       

FUNC VOID DIA_Lutero_EXIT_Info()
{
	AI_StopProcessInfos(self);
	
	if (QuestStep_LuteroClaws == LOG_RUNNING)
	&& (QuestStep_FajethSnappers == LOG_SUCCESS)
	&& (Npc_KnowsInfo(other,DIA_Bilgot_KNOWSLEADSNAPPER) == false)
	{
		QuestStep_LuteroClaws = SetQuestStatus (Quest_LuteroClaws, LOG_OBSOLETE, QuestStep_LuteroClaws);
		B_CheckLog();
	};
};

//******************************************************************************************
//	Hallo
//******************************************************************************************
INSTANCE DIA_Lutero_Hallo (C_INFO)
{
	npc									=	VLK_404_Lutero;
	nr									=	5;
	condition							=	DIA_Lutero_Hallo_Condition;
	information							=	DIA_Lutero_Hallo_Info;
	important							=	true;
};

FUNC INT DIA_Lutero_Hallo_Condition()
{
	if ((other.guild != GIL_NONE)
	&& (other.guild != GIL_NOV))
	&& (Npc_IsInState(self,ZS_Talk))
	{
		return true;
	};
};

FUNC VOID DIA_Lutero_Hallo_Info()
{
	AI_Output (self ,other,"DIA_Lutero_Hallo_13_00"); //Nazywam si� Lutero. Zajmuj� si� skupem i sprzeda�� najr�niejszych rzeczy.
	AI_Output (other ,self,"DIA_Lutero_Hallo_15_01"); //Co mo�esz mi zaoferowa�?
	AI_Output (self ,other,"DIA_Lutero_Hallo_13_02"); //Mam tu wyj�tkowo rzadkie i niespotykane towary. Jeszcze nigdy nie zdarzy�o mi si� zawie�� oczekiwa� klienta.
	
	SetNoteEntry (Note_Traders, LOG_NOTE, "Lutero sprzedaje w g�rnym mie�cie rzadkie towary.");
};

//******************************************************************************************
//	GetLost
//******************************************************************************************
INSTANCE DIA_Lutero_GetLost (C_INFO)
{
	npc									=	VLK_404_Lutero;
	nr									=	5;
	condition							=	DIA_Lutero_GetLost_Condition;
	information							=	DIA_Lutero_GetLost_Info;
	important							=	true;
};

FUNC INT DIA_Lutero_GetLost_Condition()
{
	if ((other.guild == GIL_NONE)
	&& (other.guild == GIL_NOV))
	&& (Npc_IsInState(self,ZS_Talk))
	{
		return true;
	};
};

FUNC VOID DIA_Lutero_GetLost_Info()
{
	if (other.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Lutero_GetLost_13_00"); //Wynocha st�d! Nie masz co robi�? Znajd� sobie jak�� prac�, darmozjadzie - tylko jak najdalej st�d!
	}
	else
	{
		AI_Output (self, other, "DIA_Lutero_GetLost_13_01"); //Czego tu szukasz, nowicjuszu? Czy nie powiniene� przebywa� w klasztorze?
	};
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Snapper
//******************************************************************************************
INSTANCE DIA_Lutero_Snapper (C_INFO)
{
	npc									=	VLK_404_Lutero;
	nr									=	5;
	condition							=	DIA_Lutero_Snapper_Condition;
	information							=	DIA_Lutero_Snapper_Info;
	permanent							=	false;
	description							=	"Szukasz czego� konkretnego?";
};

FUNC INT DIA_Lutero_Snapper_Condition()
{
	if (other.guild != GIL_NONE)
	&& (other.guild != GIL_NOV)
	{
		return true;
	};
};

FUNC VOID DIA_Lutero_Snapper_Info()
{
	AI_Output (other, self, "DIA_Lutero_Snapper_15_00"); //Szukasz czego� konkretnego?
	AI_Output (self, other, "DIA_Lutero_Snapper_13_01"); //Tak, potrzebne mi s� pazury z�bacza.
	AI_Output (self, other, "DIA_Lutero_Snapper_13_02"); //Jednak nie chodzi mi o jakiekolwiek pazury. To musi by� co� specjalnego, szpony pot�nej bestii, kt�ra zabi�a dziesi�tki my�liwych, albo co� takiego.
	AI_Output (other, self, "DIA_Lutero_Snapper_15_03"); //Gdzie mog� znale�� z�bacze?
	AI_Output (self, other, "DIA_Lutero_Snapper_13_04"); //Kilka z nich zamieszkuje t� wysp�, ale wi�kszo�� grasuje w G�rniczej Dolinie.
	AI_Output (other, self, "DIA_Lutero_Snapper_15_05"); //Co z tego b�d� mia�?
	
	if (other.guild == GIL_KDF)
	{
		AI_Output (self, other, "DIA_Lutero_Hello_13_06"); //Mog� dla ciebie znale�� kamie� runiczny.
	}
	else
	{
		AI_Output (self, other, "DIA_Lutero_Hello_13_07"); //Mog� da� ci pier�cie� nietykalno�ci.
	};
	AI_Output (other, self, "DIA_Lutero_Hello_15_08"); //Zobacz�, co si� da zrobi�.
	
	QuestStep_LuteroClaws = SetQuestStatus (Quest_LuteroClaws, LOG_RUNNING, QuestStep_LuteroClaws);
	SetNoteEntry (Quest_LuteroClaws, LOG_MISSION, "Kupiec Lutero poszukuje pazur�w wyj�tkowo silnego z�bacza.");
};

//******************************************************************************************
//	Kralle abliefern
//******************************************************************************************
INSTANCE DIA_Lutero_Kralle (C_INFO)
{
	npc									=	VLK_404_Lutero;
	nr									=	5;
	condition							=	DIA_Lutero_Kralle_Condition;
	information							=	DIA_Lutero_Kralle_Info;
	permanent							=	false;
	description							=	"Mam tu dla ciebie pazury bardzo niezwyk�ego z�bacza.";
};

FUNC INT DIA_Lutero_Kralle_Condition()
{
	if (Npc_HasItems(other,ItAt_ClawLeader) >= 1)
	&& (Npc_KnowsInfo(other,DIA_Lutero_Snapper))
	{
		return true;
	};
};

FUNC VOID DIA_Lutero_Kralle_Info()
{
	AI_Output (other, self, "DIA_Lutero_Kralle_15_00"); //Mam tu dla ciebie pazury bardzo niezwyk�ego z�bacza.
	B_GiveInvItems (other, self, ItAt_ClawLeader, 1);
	AI_Output (self, other, "DIA_Lutero_Kralle_13_01"); //Moi klienci si� uciesz�.
	
	B_GivePlayerXP(XP_BONUS_1);
	QuestStep_LuteroClaws = SetQuestStatus (Quest_LuteroClaws, LOG_SUCCESS, QuestStep_LuteroClaws);
	
	if (other.guild == GIL_KDF)
	{
		AI_Output (self, other, "DIA_Lutero_Hello_13_02"); //Nie mam tutaj kamienia runicznego. Ale wiem, gdzie go mo�na znale��.
		AI_Output (self, other, "DIA_Lutero_Hello_13_03"); //W drodze z miasta do gospody, b�dziesz przechodzi� pod mostem.
		AI_Output (self, other, "DIA_Lutero_Hello_13_04"); //Jest tam jaskinia, w kt�rej jeden z moich przyjaci� ukry� skrzyni� z kamieniem runicznym. Oto klucz.
		B_GiveInvItems (self, other, ITKE_RUNE_MIS, 1);
	}
	else
	{
		AI_Output (self, other, "DIA_Lutero_Hello_13_05"); //Oto pier�cie�, kt�ry ci obieca�em.
		B_GiveInvItems (self, other, ItRi_ProtTotal_01, 1);
	};
};
//******************************************************************************************
//	Trade
//******************************************************************************************
INSTANCE DIA_Lutero_Trade (C_INFO)
{
	npc									=	VLK_404_Lutero;
	nr									=	5;
	condition							=	DIA_Lutero_Trade_Condition;
	information							=	DIA_Lutero_Trade_Info;
	permanent							=	true;
	description							=	"Poka� mi swoje towary.";
	trade								=	true;
};

FUNC INT DIA_Lutero_Trade_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Lutero_Hallo))
	{
		return true;
	};
};

FUNC VOID DIA_Lutero_Trade_Info()
{
	B_GiveTradeInv(self);
	AI_Output (other, self, "DIA_Lutero_Trade_15_00"); //Poka� mi swoje towary.
};
