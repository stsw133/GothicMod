//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Thekla_EXIT (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Thekla_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Thekla_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Hallo
//******************************************************************************************
instance DIA_Thekla_HALLO (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	1;
	condition							=	atrue;
	information							=	DIA_Thekla_HALLO_Info;
	important							=	true;
};

func void DIA_Thekla_HALLO_Info()
{
	AI_Output (self, other, "DIA_Thekla_HALLO_17_00"); //Co robisz w mojej kuchni?
};

//******************************************************************************************
//	Lecker
//******************************************************************************************
instance DIA_Thekla_Lecker (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	2;
	condition							=	DIA_Thekla_Lecker_Condition;
	information							=	DIA_Thekla_Lecker_Info;
	description							=	"Coœ tutaj wspaniale pachnie!";
};

func int DIA_Thekla_Lecker_Condition()
{
	if (other.guild == GIL_NONE)
	{
		return true;
	};
};

func void DIA_Thekla_Lecker_Info()
{
	AI_Output (other, self, "DIA_Thekla_Lecker_15_00"); //Coœ tutaj wspaniale pachnie!
	AI_Output (self, other, "DIA_Thekla_Lecker_17_01"); //Och tak! Ju¿ ja znam takich jak ty! Myszkujecie po ca³ym domu.
	AI_Output (self, other, "DIA_Thekla_Lecker_17_02"); //Najpierw siê przymilacie, a kiedy cz³owiek chce was o coœ poprosiæ - nikogo nigdy nie ma!
};

//******************************************************************************************
//	Hunger
//******************************************************************************************

var int Thekla_GaveStew;

//******************************************************************************************
instance DIA_Thekla_Hunger (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	3;
	condition							=	DIA_Thekla_Hunger_Condition;
	information							=	DIA_Thekla_Hunger_Info;
	description							=	"Jestem g³odny!";
};

func int DIA_Thekla_Hunger_Condition()
{
	if (Thekla_GaveStew == false)
	{
		return true;
	};
};

func void DIA_Thekla_Hunger_Info()
{
	AI_Output (other, self, "DIA_Thekla_Hunger_15_00"); //Jestem g³odny!
	if (other.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Thekla_Hunger_17_01"); //Nie karmiê w³óczêgów. Jedzenie jest dla tych, którzy pracuj¹.
		AI_Output (self, other, "DIA_Thekla_Hunger_17_02"); //I dla tego najemnego mot³ochu, oczywiœcie.
	}
	else if (other.guild == GIL_SLD)
	|| (other.guild == GIL_DJG)
	{
		AI_Output (self, other, "DIA_Thekla_Hunger_17_03"); //Hej, twoje ¿arcie.
		B_GiveInvItems (self, other, ItFo_TastyStew, 1);
		Thekla_GaveStew = true;
	}
	else if (other.guild == GIL_MIL)
	{
		AI_Output (self, other, "DIA_Thekla_Hunger_17_04"); //Nie obs³ugujemy tu stra¿ników.
	}
	else if (other.guild == GIL_PAL)
	|| (other.guild == GIL_KDF)
	|| (other.guild == GIL_NOV)
	{
		AI_Output (self, other, "DIA_Thekla_Hunger_17_05"); //Jak mog³abym odmówiæ proœbie przedstawiciela Innosa?
		B_GiveInvItems (self, other, ItFo_TastyStew, 1);
		Thekla_GaveStew = true;
	}
	else
	{
		AI_Output (self, other, "DIA_Thekla_Hunger_17_07"); //Nie obs³ugujemy tu obcych. Jeœli zdobêdziesz moje zaufanie to mo¿e coœ dostaniesz.
	};
};

//******************************************************************************************
//	Arbeit
//******************************************************************************************
instance DIA_Thekla_Arbeit (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	4;
	condition							=	DIA_Thekla_Arbeit_Condition;
	information							=	DIA_Thekla_Arbeit_Info;
	description							=	"Szukam pracy.";
};

func int DIA_Thekla_Arbeit_Condition()
{
	if (other.guild == GIL_NONE)
	{
		return true;
	};
};

func void DIA_Thekla_Arbeit_Info()
{
	AI_Output (other, self, "DIA_Thekla_Arbeit_15_00"); //Szukam pracy...
	AI_Output (self, other, "DIA_Thekla_Arbeit_17_01"); //Chcesz pracowaæ na farmie?
	AI_Output (self, other, "DIA_Thekla_Arbeit_17_02"); //Jedynie Onar mo¿e o tym decydowaæ. Farma, jak i ca³a dolina, nale¿¹ do niego.
};

//******************************************************************************************
//	WannaJoin
//******************************************************************************************
instance DIA_Thekla_WannaJoin (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	5;
	condition							=	DIA_Thekla_WannaJoin_Condition;
	information							=	DIA_Thekla_WannaJoin_Info;
	description							=	"W³aœciwie to chcia³em siê przy³¹czyæ do najemników...";
};

func int DIA_Thekla_WannaJoin_Condition()
{
	if (other.guild == GIL_NONE)
	&& (Npc_KnowsInfo(other,DIA_Thekla_Arbeit))
	{
		return true;
	};
};

func void DIA_Thekla_WannaJoin_Info()
{
	AI_Output (other, self, "DIA_Thekla_WannaJoin_15_00"); //W³aœciwie to chcia³em siê przy³¹czyæ do najemników...
	AI_Output (self, other, "DIA_Thekla_WannaJoin_17_01"); //Jesteœ wiêc jednym z tych przestêpców z kolonii karnej?
	AI_Output (self, other, "DIA_Thekla_WannaJoin_17_02"); //Mog³am siê domyœliæ! Zostaw mnie w spokoju! Jest was tu woko³o ju¿ dostatecznie wielu!
};

//******************************************************************************************
//	Schlafen
//******************************************************************************************
instance DIA_Thekla_Schlafen (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	6;
	condition							=	DIA_Thekla_Schlafen_Condition;
	information							=	DIA_Thekla_Schlafen_Info;
	description							=	"Szukam miejsca na nocleg.";
};

func int DIA_Thekla_Schlafen_Condition()
{
	if (other.guild == GIL_NONE)
	{
		return true;
	};
};

func void DIA_Thekla_Schlafen_Info()
{
	AI_Output (other, self, "DIA_Thekla_Schlafen_15_00"); //Szukam miejsca na nocleg.
	AI_Output (self, other, "DIA_Thekla_Schlafen_17_01"); //Wybij sobie z g³owy spanie w mojej kuchni. Poszukaj sobie miejsca w stodole.
};
		
//******************************************************************************************
//	Problem
//******************************************************************************************
instance DIA_Thekla_Problem (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	7;
	condition							=	DIA_Thekla_Problem_Condition;
	information							=	DIA_Thekla_Problem_Info;
	description							=	"Dlaczego tak nie lubisz najemników?";
};

func int DIA_Thekla_Problem_Condition()
{
	if (Kapitel <= 9)
	&& (Npc_KnowsInfo(other,DIA_Thekla_WannaJoin))
	{
		return true;
	};
};

func void DIA_Thekla_Problem_Info()
{
	AI_Output (other, self, "DIA_Thekla_Problem_15_00"); //Dlaczego tak nie lubisz najemników?
	AI_Output (self, other, "DIA_Thekla_Problem_17_01"); //Ci durnie strasznie graj¹ mi na nerwach! Szczególnie Sylvio i jego t³usty kumpel, Bullko.
	AI_Output (self, other, "DIA_Thekla_Problem_17_02"); //Przesiaduj¹ tu ca³ymi dniami i uprzykrzaj¹ mi ¿ycie.
	AI_Output (self, other, "DIA_Thekla_Problem_17_03"); //Zupa za gor¹ca, miêso za twarde... I tak dalej, i tak dalej.
	if (other.guild == GIL_NONE)
	{
		AI_Output (other, self, "DIA_Thekla_Problem_15_04"); //Dlaczego wiêc nic z tym nie zrobisz?
		AI_Output (self, other, "DIA_Thekla_Problem_17_05"); //A co ja mogê, Panie M¹dralo? Pogroziæ im wa³kiem? Na wieœniaków to mo¿e dzia³a, ale na tych œmierdz¹cych drani nie.
	};
};

//******************************************************************************************
//	Manieren
//******************************************************************************************
instance DIA_Thekla_Manieren (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	7;
	condition							=	DIA_Thekla_Manieren_Condition;
	information							=	DIA_Thekla_Manieren_Info;
	description							=	"Mo¿e ja nauczy³bym tych dwóch dobrych manier?";
};

func int DIA_Thekla_Manieren_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Thekla_Problem)) 
	&& (Sylvio.aivar[AIV_LastFightAgainstPlayer] == FIGHT_NONE)
	&& (Bullco.aivar[AIV_LastFightAgainstPlayer] == FIGHT_NONE)
	&& (Kapitel <= 9)
	{
		return true;
	};
};

func void DIA_Thekla_Manieren_Info()
{
	AI_Output (other, self, "DIA_Thekla_Manieren_15_00"); //Mo¿e ja nauczy³bym tych dwóch dobrych manier?
	AI_Output (self, other, "DIA_Thekla_Manieren_17_01"); //Lepiej uwa¿aj, kochaniutki. Z tego co wiem, Sylvio nosi magiczn¹ zbrojê, trudno go pokonaæ.
	AI_Output (other, self, "DIA_Thekla_Manieren_15_02"); //A Bullko?
	AI_Output (self, other, "DIA_Thekla_Manieren_17_03"); //Ten facet jest silny jak wó³. Jak dot¹d za³atwi³ wszystkich, którzy sprzeciwiali siê jemu b¹dŸ Sylviowi.
};

//******************************************************************************************
//	AfterFight
//******************************************************************************************
instance DIA_Thekla_AfterFight (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	7;
	condition							=	DIA_Thekla_AfterFight_Condition;
	information							=	DIA_Thekla_AfterFight_Info;
	important							=	true;
};

func int DIA_Thekla_AfterFight_Condition()
{
	if (Sylvio.aivar[AIV_LastFightAgainstPlayer] == FIGHT_WON)
	|| (Bullco.aivar[AIV_LastFightAgainstPlayer] == FIGHT_WON)
	|| (Bullco.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
	&& (Kapitel <= 9)
	{
		return true;
	};
};

func void DIA_Thekla_AfterFight_Info()
{
	if (Bullco.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
	{
		AI_Output (self, other, "DIA_Thekla_AfterFight_17_00"); //Pokaza³eœ Bullkowi, gdzie jego miejsce, kochaniutki.
		AI_Output (self, other, "DIA_Thekla_AfterFight_17_01"); //Pokonanie tej opas³ej œwini musia³o byæ strasznie mêcz¹ce.
	}
	else //Sylvio oder Bullco gewonnen
	{
		AI_Output (self, other, "DIA_Thekla_AfterFight_17_02"); //NieŸle ci siê oberwa³o.
		if (Npc_KnowsInfo(other,DIA_Thekla_Manieren)) 
		{
			AI_Output (self, other, "DIA_Thekla_AfterFight_17_03"); //A nie mówi³am? Teraz ju¿ wiesz, co mia³am na myœli.
		};
		AI_Output (other, self, "DIA_Thekla_AfterFight_15_04"); //Widzê, ¿e œwietnie siê bawisz.
		AI_Output (self, other, "DIA_Thekla_AfterFight_17_05"); //No ju¿, nie rób takiej miny. Nie ty pierwszy oberwa³eœ od tego œmiecia.
	};
	AI_Output (self, other, "DIA_Thekla_AfterFight_17_06"); //Masz, zjedz coœ - to powinno dodaæ ci si³.
	
	B_GiveInvItems (self, other, ItFo_TastyStew, 1);	
	Thekla_GaveStew = true;
};

//******************************************************************************************
//	SagittaPaket
//******************************************************************************************
instance DIA_Thekla_SagittaPaket (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	4;
	condition							=	DIA_Thekla_SagittaPaket_Condition;
	information							=	DIA_Thekla_SagittaPaket_Info;
	permanent							=	true;
	description							=	"Mam tu przesy³kê od Sagitty.";
};

func int DIA_Thekla_SagittaPaket_Condition()
{
	if (Npc_HasItems(other,ItMi_TheklasPaket))
	&& (QuestStep_TheklaPacket == LOG_RUNNING)
	{
		return true;
	};
};

func void DIA_Thekla_SagittaPaket_Info()
{
	B_GiveInvItems (other, self, ItMi_TheklasPaket, 1);
	
	AI_Output (other, self, "DIA_Thekla_SagittaPaket_15_00"); //Mam tu przesy³kê od Sagitty.
	AI_Output (self, other, "DIA_Thekla_SagittaPaket_17_01"); //Wielkie dziêki. Jednak na coœ siê przyda³eœ.
	
	QuestStep_TheklaPacket = SetQuestStatus (Quest_TheklaPacket, LOG_SUCCESS, QuestStep_TheklaPacket);
	B_GivePlayerXP(XP_BONUS_3);
};

//******************************************************************************************
//	SagittaPaket
//******************************************************************************************

var int Thekla_MehrEintopfKap1;
var int Thekla_MehrEintopfKap3;
var int Thekla_MehrEintopfKap5;
var int TheklaStew_PersuasionBonus;

//******************************************************************************************
instance DIA_Thekla_PERM (C_INFO)
{
	npc									=	BAU_913_Thekla;
	nr									=	900;
	condition							=	DIA_Thekla_PERM_Condition;
	information							=	DIA_Thekla_PERM_Info;
	permanent							=	true;
	description							=	"Dostanê jeszcze trochê gulaszu?";
};

func int DIA_Thekla_PERM_Condition()
{
	if (Thekla_GaveStew == true)
	{
		return true;
	};
};

func void DIA_Thekla_PERM_Info()
{
	AI_Output (other, self, "DIA_Thekla_PERM_15_00"); //Dostanê jeszcze trochê gulaszu?
	
	if (Npc_GetTalentSkill(other,NPC_TALENT_PERSUASION) == true)
	&& (TheklaStew_PersuasionBonus == false)
	{
		AI_Output (self, other, "DIA_Thekla_PERM_17_10"); //W porz¹dku. Znaj moje dobre serce. Proszê, nie chcê, ¿ebyœ siê biedaczku zag³odzi³.
		B_GiveInvItems (self, other, ItFo_TastyStew, 1);
		TheklaStew_PersuasionBonus = true;
	}
	else if (QuestStep_TheklaPacket == false)
	{
		AI_Output (self, other, "DIA_Thekla_PERM_17_01"); //Ju¿ nie ma.
		AI_Output (other, self, "DIA_Thekla_PERM_15_02"); //Nawet ma³ej miseczki?
		AI_Output (self, other, "DIA_Thekla_PERM_17_03"); //Nawet miseczki.
		AI_Output (other, self, "DIA_Thekla_PERM_15_04"); //Mogê wylizaæ garnek?
		AI_Output (self, other, "DIA_Thekla_PERM_17_05"); //Daj spokój!
		AI_Output (self, other, "DIA_Thekla_PERM_17_06"); //Skoro tak ci smakuje mój gulasz, bêdziesz musia³ coœ zrobiæ, by go dostaæ.
		AI_Output (other, self, "DIA_Thekla_PERM_15_07"); //Co takiego?
		AI_Output (self, other, "DIA_Thekla_PERM_17_08"); //Udaj siê do Sagitty, wiedŸmy mieszkaj¹cej za farm¹ Sekoba, i przynieœ mi od niej paczkê zió³.
		AI_Output (self, other, "DIA_Thekla_PERM_17_09"); //Jeœli przyniesiesz zio³a, ugotujê gulasz.
		
		QuestStep_TheklaPacket = SetQuestStatus (Quest_TheklaPacket, LOG_RUNNING, QuestStep_TheklaPacket);
		SetNoteEntry (Quest_TheklaPacket, LOG_MISSION, "Jeœli przyniosê Thekli zio³a od uzdrawiaczki Sagitty, mogê liczyæ na kolejny posi³ek. Sagitta mieszka za farm¹ Sekoba.");
		
		CreateInvItems (Sagitta, ItMi_TheklasPaket, 1);
	}
	else if (QuestStep_TheklaPacket == LOG_SUCCESS)
	{
		if (Kapitel <= 8)
		{
			if (Thekla_MehrEintopfKap1 == false)
			{
				AI_Output (self, other, "DIA_Thekla_PERM_17_10"); //W porz¹dku. Znaj moje dobre serce. Proszê, nie chcê, ¿ebyœ siê biedaczku zag³odzi³.
				B_GiveInvItems (self, other, ItFo_TastyStew, 1);
				Thekla_MehrEintopfKap1 = true;
			}
			else 
			{
				AI_Output (self, other, "DIA_Thekla_PERM_17_11"); //Hej, hej, hej! Nie tak ³apczywie! Dam ci znaæ, jeœli bêdê mia³a dla ciebie jakieœ zadanie.
				AI_Output (self, other, "DIA_Thekla_PERM_17_12"); //Wtedy dostaniesz wiêcej gulaszu, zrozumiano?
			};
		};
		
		if (Kapitel == 9)
		|| (Kapitel == 10)
		{
			if (Thekla_MehrEintopfKap3 == false)
			&& (QuestStep_RescueBennet == LOG_SUCCESS)
			{
				AI_Output (self, other, "DIA_Thekla_PERM_17_13"); //S³ysza³am, ¿e pomog³eœ Bennetowi. Dobra robota, ch³opcze.
				B_GiveInvItems (self, other, ItFo_TastyStew, 1);
				Thekla_MehrEintopfKap3 = true;
			}
			else 
			{
				if (QuestStep_RescueBennet != LOG_SUCCESS)
				{
					AI_Output (self, other, "DIA_Thekla_PERM_17_14"); //Te psubraty ze stra¿y uwiêzi³y Benneta!
					AI_Output (self, other, "DIA_Thekla_PERM_17_15"); //Zrób coœ dla mnie i wyci¹gnij tego nieszczêœnika. W miêdzyczasie ugotujê trochê smakowitego gulaszu.
				}
				else
				{
					AI_Output (self, other, "DIA_Thekla_PERM_17_16"); //Nic ju¿ nie zosta³o. PrzyjdŸ póŸniej.
				};
			};
		};
		
		if (Kapitel >= 11)
		{
			if (Thekla_MehrEintopfKap5 == false)
			{
				AI_Output (self, other, "DIA_Thekla_PERM_17_17"); //Nigdy nie przestajesz byæ g³odny? Czym ty siê w³aœciwie zajmujesz?
				AI_Output (other, self, "DIA_Thekla_PERM_15_18"); //W³aœnie posieka³em kilka smoków.
				AI_Output (self, other, "DIA_Thekla_PERM_17_19"); //Och! W takim razie zas³u¿y³eœ chyba na porz¹dn¹ michê gulaszu.
				
				B_GiveInvItems (self, other, ItFo_TastyStew, 1);
				Thekla_MehrEintopfKap5 = true;
			}
			else 
			{
				AI_Output (self, other, "DIA_Thekla_PERM_17_20"); //To wszystko, nie ma ju¿ wiêcej.
			};
		};
	}
	else //Running oder Failed
	{
		AI_Output (self, other, "DIA_Thekla_PERM_17_21"); //Nie ma zió³, nie ma gulaszu - jasne?
	};
};
