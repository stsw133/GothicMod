//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Vino_EXIT (C_INFO)
{
	npc									=	BAU_952_Vino;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Vino_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Vino_EXIT_Info()
{
	B_NpcClearObsessionByDMT(self);
};

//******************************************************************************************
//	Hallo
//******************************************************************************************
instance DIA_Vino_HALLO (C_INFO)
{
	npc									=	BAU_952_Vino;
	nr									=	1;
	condition							=	DIA_Vino_HALLO_Condition;
	information							=	DIA_Vino_HALLO_Info;
	important							=	true;
};

func int DIA_Vino_HALLO_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (Kapitel < 9)
	{
		return true;
	};
};

func void DIA_Vino_HALLO_Info()
{
	AI_Output (other, self, "DIA_Vino_HALLO_15_00"); //Jak idzie praca?
	AI_Output (self, other, "DIA_Vino_HALLO_05_01"); //Jak zwykle, roboty coraz wiêcej, pieniêdzy coraz mniej. Jak Ÿle pójdzie, to jutro napadn¹ nas orkowie i spal¹ nasz¹ farmê.
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Vino_HALLO_05_02"); //Królewscy paladyni zajêli niemal ca³e miasto. Ale jakoœ w¹tpiê, ¿eby chcia³o im siê ruszyæ ty³ki i ochroniæ nas przed orkami.
	};
};

//******************************************************************************************
//	SeekWork
//******************************************************************************************
instance DIA_Vino_SeekWork (C_INFO)
{
	npc									=	BAU_952_Vino;
	nr									=	1;
	condition							=	DIA_Vino_SeekWork_Condition;
	information							=	DIA_Vino_SeekWork_Info;
	description							=	"Mogê ci jakoœ pomóc? Szukam pracy.";
};

func int DIA_Vino_SeekWork_Condition()
{
	if ((Npc_KnowsInfo(other,DIA_Lobart_WorkNOW)
	|| (Npc_KnowsInfo(other,DIA_Lobart_KLEIDUNG)))
	&& (!Npc_IsDead(Lobart))
	&& (Kapitel < 9))
	{
		return true;
	};
};

func void DIA_Vino_SeekWork_Info()
{
	AI_Output (other, self, "DIA_Vino_SeekWork_15_00"); //Mogê ci jakoœ pomóc? Szukam pracy.
	if (hero.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Vino_SeekWork_05_01"); //Znasz siê na pracy w polu?
		AI_Output (other, self, "DIA_Vino_SeekWork_15_02"); //A na czym tu siê znaæ?
		AI_Output (self, other, "DIA_Vino_SeekWork_05_03"); //Ach! W takim razie ju¿ ci chyba podziêkujê.
		if (!Npc_IsDead(Lobart))
		{
			AI_Output (self, other, "DIA_Vino_SeekWork_05_04"); //Jeœli chcesz siê zatrudniæ u Lobarta jako zwyk³y robotnik, to ostrzegam. Ludziom takim jak ty p³aci naprawdê marnie.
			
			if (QuestStep_FarmerArmor == LOG_RUNNING)
			&& ((Npc_KnowsInfo(other,DIA_Lobart_KLEIDUNG)) || (Npc_KnowsInfo(other,DIA_Lobart_WorkNOW)))
			{
				AI_Output (other, self, "DIA_Vino_SeekWork_15_05"); //Obieca³, ¿e sprzeda mi tanio czyste ubranie, jeœli pomogê na farmie.
				AI_Output (self, other, "DIA_Vino_SeekWork_05_06"); //Hmmm. Nie mam dla ciebie pracy, ale mo¿esz przynieœæ mnie i ch³opakom coœ do picia.
				AI_Output (self, other, "DIA_Vino_SeekWork_05_07"); //Przynieœ no flaszkê wina, a powiem Lobartowi, ¿eœ siê œwietnie spisa³.
				
				QuestStep_VinoWine = SetQuestStatus (Quest_VinoWine, LOG_RUNNING, QuestStep_VinoWine);
				SetNoteEntry (Quest_VinoWine, LOG_MISSION, "Jeœli Vino dostanie ode mnie butelkê wina, powie Lobartowi, ¿e mu pomog³em.");
			}
			else
			{	
				AI_Output (self, other, "DIA_Vino_SeekWork_05_08"); //Ale nie bierzesz jej dla mnie, zrozumiano?
			};
		};
	}
	else
	{
		AI_Output (self, other, "DIA_Vino_SeekWork_05_09"); //Nie s¹dzê! Ktoœ taki jak ty nie chcia³by siê chyba mêczyæ z prac¹, któr¹ mam do zaoferowania.
	};
};

//******************************************************************************************
//	BringWine
//******************************************************************************************
instance DIA_Vino_BringWine (C_INFO)
{
	npc									=	BAU_952_Vino;
	nr									=	1;
	condition							=	DIA_Vino_BringWine_Condition;
	information							=	DIA_Vino_BringWine_Info;
	description							=	"Oto twoje wino.";
};

func int DIA_Vino_BringWine_Condition()
{
	if (QuestStep_VinoWine == LOG_RUNNING)
	&& (Npc_HasItems(other,itfo_wine) > 0)
	&& (Kapitel < 9)
	{
		return true;
	};
};

func void DIA_Vino_BringWine_Info()
{
	AI_Output (other, self, "DIA_Vino_BringWine_15_00"); //Oto twoje wino.
	B_GiveInvItems (other,self, itfo_wine, 1);
	AI_Output (self, other, "DIA_Vino_BringWine_05_01"); //Wolê nie pytaæ, jak je zdoby³eœ. A kogó¿ to obchodzi?
	if (!Npc_IsDead(Lobart))
	{
		AI_Output (self, other, "DIA_Vino_BringWine_05_02"); //Tak czy inaczej, dziêki.
		if (hero.guild == GIL_NONE)
		{
			AI_Output (self, other, "DIA_Vino_BringWine_05_03"); //Postaram siê, by Lobart us³ysza³ o tobie same dobre rzeczy.
		};
	};
	
	QuestStep_VinoWine = SetQuestStatus (Quest_VinoWine, LOG_SUCCESS, QuestStep_VinoWine);
	B_GivePlayerXP(XP_BONUS_0);
};

//******************************************************************************************
//	ToTheCity
//******************************************************************************************
instance DIA_Vino_ToTheCity (C_INFO)
{
	npc									=	BAU_952_Vino;
	nr									=	3;
	condition							=	DIA_Vino_ToTheCity_Condition;
	information							=	DIA_Vino_ToTheCity_Info;
	description							=	"Ruszam w stronê miasta.";
};

func int DIA_Vino_ToTheCity_Condition()
{
	if (hero.guild == GIL_NONE)
	{
		return true;
	};
};

func void DIA_Vino_ToTheCity_Info()
{
	AI_Output (other, self, "DIA_Vino_ToTheCity_15_00"); //Ruszam w stronê miasta.
	AI_Output (self, other, "DIA_Vino_ToTheCity_05_01"); //I?
	AI_Output (other, self, "DIA_Vino_ToTheCity_15_02"); //Czy mo¿esz mi powiedzieæ coœ ciekawego na temat miasta?
	AI_Output (self, other, "DIA_Vino_ToTheCity_05_03"); //Nie. Ale Maleth zagl¹da tam od czasu do czasu - mo¿e on coœ wie, to znaczy coœ, co by ciê zainteresowa³o.
};

//******************************************************************************************
//	PERM
//******************************************************************************************

var int Vino_Gossip_Orks;
var int Vino_Gossip_Bugs;

//******************************************************************************************
instance DIA_Vino_PERM (C_INFO)
{
	npc									=	BAU_952_Vino;
	nr									=	10;
	condition							=	DIA_Vino_PERM_Condition;
	information							=	DIA_Vino_PERM_Info;
	permanent							=	true;
	description							=	"Jakieœ ciekawe nowiny?";
};

func int DIA_Vino_PERM_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Vino_HALLO))
	&& (Kapitel < 9)
	{
		return true;
	};
};

func void DIA_Vino_PERM_Info()
{
	AI_Output (other, self, "DIA_Vino_PERM_15_00"); //Jakieœ ciekawe nowiny?
	if (Vino_Gossip_Orks == false)
	{
		AI_Output (self, other, "DIA_Vino_PERM_05_01"); //Przysi¹g³bym, ¿em dwa dni temu widzia³ orka, na skraju lasu.
		AI_Output (self, other, "DIA_Vino_PERM_05_02"); //Od tego czasu podczas snu staram siê mieæ choæ jedno oko otwarte.
		Vino_Gossip_Orks = true;
		Knows_Ork = true;
	}
	else if (Vino_Gossip_Bugs == false)
	&& (QuestStep_LobartGiantbugs == LOG_RUNNING)
	{
		AI_Output (self, other, "DIA_Vino_PERM_05_03"); //Ta wielka plaga ¿uków doprowadza nas do szaleñstwa. S¹ wszêdzie. ¯r¹ wszystko, co napotkaj¹ na swej drodze.
		AI_Output (self, other, "DIA_Vino_PERM_05_04"); //Jakoœ w zesz³ym tygodniu le¿a³em sobie na ³¹ce i ju¿ prawie zasypia³em, kiedy poczu³em, ¿e jedna z tych bestii zaczyna siê dobieraæ do mojego buta!
		AI_Output (self, other, "DIA_Vino_PERM_05_05"); //Trza by³o widzieæ, jakem ucieka³. Od tamtego czasu nie mogê spokojnie spaæ.
		Vino_Gossip_Bugs = true;
	}
	else
	{
		AI_Output (self, other, "DIA_Vino_PERM_05_06"); //Oprócz tego, co ci powiedzia³em, nic.
	};
};

//******************************************************************************************
//	DmtAmStart
//******************************************************************************************

var int DIA_Vino_DMTAMSTART_OneTime;

//******************************************************************************************
instance DIA_Vino_DMTAMSTART (C_INFO)
{
	npc									=	BAU_952_Vino;
	nr									=	31;
	condition							=	DIA_Vino_DMTAMSTART_Condition;
	information							=	DIA_Vino_DMTAMSTART_Info;
	permanent							=	true;
	description							=	"Jak ci siê wiedzie?";
};

func int DIA_Vino_DMTAMSTART_Condition()
{
	if (Kapitel == 9)
	&& (hero.guild != GIL_KDF)
	{
		return true;
	};
};

func void DIA_Vino_DMTAMSTART_Info()
{
	AI_Output (other, self, "DIA_Vino_DMTAMSTART_15_00"); //Jak ci siê wiedzie?
	
	if (FoundVinosKellerei == true)
	&& (DIA_Vino_DMTAMSTART_OneTime == false)
	&& (hero.guild != GIL_MIL)
	{
		AI_Output (self, other, "DIA_Vino_DMTAMSTART_05_01"); //Ogólnie do dupy. Stra¿ znalaz³a moj¹ ukryt¹ gorzelniê.
		AI_Output (self, other, "DIA_Vino_DMTAMSTART_05_02"); //Mam nadziejê, ¿e nie zorientuj¹ siê, kto jest jej w³aœcicielem.
		B_GivePlayerXP(XP_BONUS_1);
		DIA_Vino_DMTAMSTART_OneTime = true;
	}
	else
	{
		AI_Output (self, other, "DIA_Vino_DMTAMSTART_05_03"); //I jeszcze te psubraty w czarnych kapturach. Ktoœ powinien poodcinaæ im te kapturzyska razem z zawartoœci¹.
	};
};

//******************************************************************************************
//	Obesessed
//******************************************************************************************
instance DIA_Vino_Obesessed (C_INFO)
{
	npc									=	BAU_952_Vino;
	nr									=	32;
	condition							=	DIA_Vino_Obesessed_Condition;
	information							=	DIA_Vino_Obesessed_Info;
	permanent							=	true;
	description							=	"Coœ nie tak?";
};

func int DIA_Vino_Obesessed_Condition()
{
	if (NpcObsessedByDMT_Vino == false)
	&& (Kapitel >= 9)
	&& (hero.guild == GIL_KDF)
	{
		return true;
	};
};

func void DIA_Vino_Obesessed_Info()
{
	if (Npc_IsDead(DMT_Vino1))
	&& (Npc_IsDead(DMT_Vino2))
	&& (Npc_IsDead(DMT_Vino3))
	&& (Npc_IsDead(DMT_Vino4))
	{
		B_NpcObsessedByDMT(self);
	}
	else
	{
		AI_Output (other, self, "DIA_Vino_Obesessed_15_00"); //Coœ nie tak?
		AI_Output (self, other, "DIA_Vino_Obesessed_05_01"); //Do cholery, wynoœ siê. Inaczej mnie zabij¹.
		AI_StopProcessInfos(self);
		
		DMT_Vino1.aivar[AIV_EnemyOverride] = false;
		DMT_Vino2.aivar[AIV_EnemyOverride] = false;
		DMT_Vino3.aivar[AIV_EnemyOverride] = false;
		DMT_Vino4.aivar[AIV_EnemyOverride] = false;
	};
};

//******************************************************************************************
//	Heilung
//******************************************************************************************

var int DIA_Vino_Heilung_oneTime;

//******************************************************************************************
instance DIA_Vino_Heilung (C_INFO)
{
	npc									=	BAU_952_Vino;
	nr									=	55;
	condition							=	DIA_Vino_Heilung_Condition;
	information							=	DIA_Vino_Heilung_Info;
	permanent							=	true;
	description							=	"Nie jesteœ sob¹.";
};

func int DIA_Vino_Heilung_Condition()
{
 	if (NpcObsessedByDMT_Vino == true) && (NpcObsessedByDMT == false)
	&& (hero.guild == GIL_KDF)
	&& (Npc_GetDistToWP(self,"NW_MONASTERY_PLACE_07") > 4000)
	{
		return true;
	};
};

func void DIA_Vino_Heilung_Info()
{
	AI_Output (other, self, "DIA_Vino_Heilung_15_00"); //Nie jesteœ sob¹.
	AI_Output (self, other, "DIA_Vino_Heilung_05_01"); //Moja g³owa... D³u¿ej tego nie wytrzymam.
	if (DIA_Vino_Heilung_oneTime == false)
	{
		AI_Output (other, self, "DIA_Vino_Heilung_15_02"); //Powinieneœ udaæ siê do klasztoru. Pyrokar, najwy¿szy Mag Ognia, móg³by ci pomóc.
		AI_Output (self, other, "DIA_Vino_Heilung_05_03"); //Tak uwa¿asz? W porz¹dku, spróbujê.
		B_NpcClearObsessionByDMT(self);
		B_StartOtherRoutine (Vino, "Kloster");
		
		B_LogEntry (TOPIC_DEMENTOREN, "Vino jest opêtany. Wys³a³em go do klasztoru, aby tam poprosi³ o uzdrowienie. Mam nadziejê, ¿e wszystko bêdzie dobrze.");
		
		B_GivePlayerXP(XP_BONUS_4);
		DIA_Vino_Heilung_oneTime = true;
	};
};

//******************************************************************************************
//	Perm4Obsessed
//******************************************************************************************

var int DIA_Vino_PERM4OBSESSED_XP_oneTime;

//******************************************************************************************
instance DIA_Vino_PERM4OBSESSED (C_INFO)
{
	npc									=	BAU_952_Vino;
	nr									=	41;
	condition							=	DIA_Vino_PERM4OBSESSED_Condition;
	information							=	DIA_Vino_PERM4OBSESSED_Info;
	permanent							=	true;
	description							=	"Jak siê masz?";
};

func int DIA_Vino_PERM4OBSESSED_Condition()
{
	if (hero.guild == GIL_KDF)
	&& (NpcObsessedByDMT_Vino == true)
	&& (Npc_GetDistToWP(self,"NW_MONASTERY_PLACE_07") < 4000)
	{
		return true;
	};
};

func void DIA_Vino_PERM4OBSESSED_Info()
{
	AI_Output (other, self, "DIA_Vino_PERM4OBSESSED_15_00"); //Jak siê masz?
	AI_Output (self, other, "DIA_Vino_PERM4OBSESSED_05_01"); //Wszystko w porz¹dku. Ch³opaki mi pomog¹. Wci¹¿ jednak cholernie krêci mi siê w g³owie.
	if (DIA_Vino_PERM4OBSESSED_XP_oneTime == false)
	{
		AI_Output (self, other, "DIA_Vino_PERM4OBSESSED_05_02"); //Muszê przyznaæ, ¿e to najlepsze wino, jakie pi³em.
		B_GivePlayerXP(XP_BONUS_1);
		DIA_Vino_PERM4OBSESSED_XP_oneTime = true; 
	};
};

//******************************************************************************************
//	Perm45Und6
//******************************************************************************************
instance DIA_Vino_PERM45UND6 (C_INFO)
{
	npc									=	BAU_952_Vino;
	nr									=	42;
	condition							=	DIA_Vino_PERM45UND6_Condition;
	information							=	DIA_Vino_PERM45UND6_Info;
	permanent							=	true;
	description							=	"Jakieœ wieœci?";
};

func int DIA_Vino_PERM45UND6_Condition()
{
	if (Kapitel >= 10)	
	&& (hero.guild != GIL_KDF)
	&& (NpcObsessedByDMT_Vino == false)
	{
		return true;
	};
};

func void DIA_Vino_PERM45UND6_Info()
{
	AI_Output (other, self, "DIA_Vino_PERM45UND6_15_00"); //Jakieœ wieœci?
	if (hero.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Vino_PERM45UND6_05_01"); //Ostatnio drastycznie wzros³a liczba orków w okolicy.
		AI_Output (self, other, "DIA_Vino_PERM45UND6_05_02"); //Chyba wy, paladyni, pozbêdziecie siê ich, prawda?
	}
	else	//hero.guild == GIL_DJG
	{
		AI_Output (self, other, "DIA_Vino_PERM45UND6_05_03"); //Obawiam siê, ¿e wkrótce przyjdzie nam porzuciæ farmê, i przy³¹czyæ siê do najemników Onara.
	};
	if (FoundVinosKellerei == true)
	&& (hero.guild != GIL_MIL)
	{
		AI_Output (self, other, "DIA_Vino_PERM45UND6_05_04"); //Niestety, stra¿e znalaz³y moj¹ ma³¹ gorzelniê. Mam nadziejê, ¿e mnie nie dopadn¹.
	};
};
