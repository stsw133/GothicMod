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
	AI_Output (self ,other,"DIA_Lutero_Hallo_13_00"); //Nazywam siê Lutero. Zajmujê siê skupem i sprzeda¿¹ najró¿niejszych rzeczy.
	AI_Output (other ,self,"DIA_Lutero_Hallo_15_01"); //Co mo¿esz mi zaoferowaæ?
	AI_Output (self ,other,"DIA_Lutero_Hallo_13_02"); //Mam tu wyj¹tkowo rzadkie i niespotykane towary. Jeszcze nigdy nie zdarzy³o mi siê zawieœæ oczekiwañ klienta.
	
	SetNoteEntry (Note_Traders, LOG_NOTE, "Lutero sprzedaje w górnym mieœcie rzadkie towary.");
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
		AI_Output (self, other, "DIA_Lutero_GetLost_13_00"); //Wynocha st¹d! Nie masz co robiæ? ZnajdŸ sobie jak¹œ pracê, darmozjadzie - tylko jak najdalej st¹d!
	}
	else
	{
		AI_Output (self, other, "DIA_Lutero_GetLost_13_01"); //Czego tu szukasz, nowicjuszu? Czy nie powinieneœ przebywaæ w klasztorze?
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
	description							=	"Szukasz czegoœ konkretnego?";
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
	AI_Output (other, self, "DIA_Lutero_Snapper_15_00"); //Szukasz czegoœ konkretnego?
	AI_Output (self, other, "DIA_Lutero_Snapper_13_01"); //Tak, potrzebne mi s¹ pazury zêbacza.
	AI_Output (self, other, "DIA_Lutero_Snapper_13_02"); //Jednak nie chodzi mi o jakiekolwiek pazury. To musi byæ coœ specjalnego, szpony potê¿nej bestii, która zabi³a dziesi¹tki myœliwych, albo coœ takiego.
	AI_Output (other, self, "DIA_Lutero_Snapper_15_03"); //Gdzie mogê znaleŸæ zêbacze?
	AI_Output (self, other, "DIA_Lutero_Snapper_13_04"); //Kilka z nich zamieszkuje tê wyspê, ale wiêkszoœæ grasuje w Górniczej Dolinie.
	AI_Output (other, self, "DIA_Lutero_Snapper_15_05"); //Co z tego bêdê mia³?
	
	if (other.guild == GIL_KDF)
	{
		AI_Output (self, other, "DIA_Lutero_Hello_13_06"); //Mogê dla ciebie znaleŸæ kamieñ runiczny.
	}
	else
	{
		AI_Output (self, other, "DIA_Lutero_Hello_13_07"); //Mogê daæ ci pierœcieñ nietykalnoœci.
	};
	AI_Output (other, self, "DIA_Lutero_Hello_15_08"); //Zobaczê, co siê da zrobiæ.
	
	QuestStep_LuteroClaws = SetQuestStatus (Quest_LuteroClaws, LOG_RUNNING, QuestStep_LuteroClaws);
	SetNoteEntry (Quest_LuteroClaws, LOG_MISSION, "Kupiec Lutero poszukuje pazurów wyj¹tkowo silnego zêbacza.");
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
	description							=	"Mam tu dla ciebie pazury bardzo niezwyk³ego zêbacza.";
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
	AI_Output (other, self, "DIA_Lutero_Kralle_15_00"); //Mam tu dla ciebie pazury bardzo niezwyk³ego zêbacza.
	B_GiveInvItems (other, self, ItAt_ClawLeader, 1);
	AI_Output (self, other, "DIA_Lutero_Kralle_13_01"); //Moi klienci siê uciesz¹.
	
	B_GivePlayerXP(XP_BONUS_1);
	QuestStep_LuteroClaws = SetQuestStatus (Quest_LuteroClaws, LOG_SUCCESS, QuestStep_LuteroClaws);
	
	if (other.guild == GIL_KDF)
	{
		AI_Output (self, other, "DIA_Lutero_Hello_13_02"); //Nie mam tutaj kamienia runicznego. Ale wiem, gdzie go mo¿na znaleŸæ.
		AI_Output (self, other, "DIA_Lutero_Hello_13_03"); //W drodze z miasta do gospody, bêdziesz przechodzi³ pod mostem.
		AI_Output (self, other, "DIA_Lutero_Hello_13_04"); //Jest tam jaskinia, w której jeden z moich przyjació³ ukry³ skrzyniê z kamieniem runicznym. Oto klucz.
		B_GiveInvItems (self, other, ITKE_RUNE_MIS, 1);
	}
	else
	{
		AI_Output (self, other, "DIA_Lutero_Hello_13_05"); //Oto pierœcieñ, który ci obieca³em.
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
	description							=	"Poka¿ mi swoje towary.";
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
	AI_Output (other, self, "DIA_Lutero_Trade_15_00"); //Poka¿ mi swoje towary.
};
