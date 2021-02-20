//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Rosi_EXIT (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Rosi_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Rosi_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Hallo
//******************************************************************************************
instance DIA_Rosi_HALLO (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	3;
	condition							=	atrue;
	information							=	DIA_Rosi_HALLO_Info;
	description							=	"Wszystko w porz¹dku?";
};

func void DIA_Rosi_HALLO_Info ()
{
	AI_Output (other, self, "DIA_Rosi_HALLO_15_00"); //Wszystko w porz¹dku?
	AI_Output (self, other, "DIA_Rosi_HALLO_17_01"); //Có¿, w³aœciwie nie do koñca. Krêgos³up strasznie mnie boli od ciê¿kiej pracy. Co ciê tu sprowadza? Tak rzadko miewam goœci.
	if ((hero.guild != GIL_MIL))
	{
		AI_Output (self, other, "DIA_Rosi_HALLO_17_02"); //Na ogó³ odwiedzaj¹ mnie albo zbiry z gór, albo ci okropni stra¿nicy miejscy.
		AI_Output (self, other, "DIA_Rosi_HALLO_17_03"); //Ostatnio doœæ czêsto nachodz¹ farmy, ale ty nie wygl¹dasz jak jeden z nich.
	};
};

//******************************************************************************************
//	WasMachstDu
//******************************************************************************************
instance DIA_Rosi_WASMACHSTDU (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	4;
	condition							=	DIA_Rosi_WASMACHSTDU_Condition;
	information							=	DIA_Rosi_WASMACHSTDU_Info;
	description							=	"Co tu porabiasz?";
};

func int DIA_Rosi_WASMACHSTDU_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Rosi_HALLO))
	&& (Kapitel < 11)
	{
		return true;
	};
};

func void DIA_Rosi_WASMACHSTDU_Info()
{
	AI_Output (other, self, "DIA_Rosi_WASMACHSTDU_15_00"); //Co tu porabiasz?
	if (!Npc_IsDead(Sekob))
	{
		AI_Output (self, other, "DIA_Rosi_WASMACHSTDU_17_01"); //Od lat sama siê o to pytam. Mój m¹¿, Sekob, ma na pieñku ju¿ chyba ze wszystkimi w okolicy.
		AI_Output (self, other, "DIA_Rosi_WASMACHSTDU_17_02"); //Jest zad³u¿ony po uszy. Dlatego te¿ podkrada ró¿ne towary Onarowi, sprzedaj¹c je póŸniej w mieœcie.
		AI_Output (self, other, "DIA_Rosi_WASMACHSTDU_17_03"); //Dziêki tym machlojkom uda³o mu siê zbiæ fortunê.
		AI_Output (self, other, "DIA_Rosi_WASMACHSTDU_17_04"); //Ka¿e ludziom pracowaæ tak d³ugo, a¿ biedakom zaczynaj¹ siê ³amaæ krêgos³upy. Dosz³o do tego, ¿e nazywaj¹ go nadzorc¹ niewolników.
		AI_Output (self, other, "DIA_Rosi_WASMACHSTDU_17_05"); //Nie jestem specjalnie dumna z tego, ¿e Sekob jest moim mê¿em, uwierz mi. Czasem ¿a³ujê, ¿e nie ma ju¿ Bariery.
	};
	AI_Output (self, other, "DIA_Rosi_WASMACHSTDU_17_06"); //Mo¿e chcia³byœ kupiæ coœ do jedzenia albo broñ do polowania w lesie?
	
	SetNoteEntry (Note_Traders, LOG_NOTE, "Rosi sprzedaje na farmie Sekoba przeró¿ne towary.");
};

//******************************************************************************************
//	Warez
//******************************************************************************************
instance DIA_Rosi_WAREZ (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	2;
	condition							=	DIA_Rosi_WAREZ_Condition;
	information							=	DIA_Rosi_WAREZ_Info;
	permanent							=	true;
	description							=	"Co mo¿esz mi zaoferowaæ?";
	trade								=	true;
};

func int DIA_Rosi_WAREZ_Condition()
{
	if ((Npc_KnowsInfo(other,DIA_Rosi_WASMACHSTDU))
	|| ((Kapitel >= 11) && (Npc_KnowsInfo(other,DIA_Rosi_FLEEFROMSEKOB)))
	|| (Npc_IsDead(Sekob)))
	&& (QuestStep_SekobRosi != LOG_SUCCESS)
	{
		return true;
	};
};

func void DIA_Rosi_WAREZ_Info()
{
	AI_Output (other, self, "DIA_Rosi_WAREZ_15_00"); //Co mo¿esz mi zaoferowaæ?
	AI_Output (self, other, "DIA_Rosi_WAREZ_17_01"); //A czego potrzebujesz?
	B_GiveTradeInv(self);
};

//******************************************************************************************
//	Barriere
//******************************************************************************************
instance DIA_Rosi_BARRIERE (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	6;
	condition							=	DIA_Rosi_BARRIERE_Condition;
	information							=	DIA_Rosi_BARRIERE_Info;
	description							=	"Bariery?";
};

func int DIA_Rosi_BARRIERE_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Rosi_WASMACHSTDU))
	&& (!Npc_IsDead(Sekob))
	{
		return true;
	};
};

func void DIA_Rosi_BARRIERE_Info()
{
	AI_Output (other, self, "DIA_Rosi_BARRIERE_15_00"); //Bariery?
	AI_Output (self, other, "DIA_Rosi_BARRIERE_17_01"); //No wiesz, kopu³y otaczaj¹cej do niedawna Górnicz¹ Dolinê.
	AI_Output (self, other, "DIA_Rosi_BARRIERE_17_02"); //Wielu robotników i farmerów, którzy pope³nili jakieœ przestêpstwa, po prostu tam wrzucano, ju¿ nigdy nie wracali.
};

//******************************************************************************************
//	DuInBarriere
//******************************************************************************************
instance DIA_Rosi_DuInBarriere (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	10;
	condition							=	DIA_Rosi_DuInBarriere_Condition;
	information							=	DIA_Rosi_DuInBarriere_Info;
	description							=	"Widzia³aœ kiedykolwiek Barierê?";
};

func int DIA_Rosi_DuInBarriere_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Rosi_BARRIERE))
	{
		return true;
	};
};

func void DIA_Rosi_DuInBarriere_Info()
{
	AI_Output (other, self, "DIA_Rosi_DuInBarriere_15_00"); //Widzia³aœ kiedykolwiek Barierê?
	AI_Output (self, other, "DIA_Rosi_DuInBarriere_17_01"); //Nie. Jedynie o niej s³ysza³am. Bengar, farmer z pastwisk po³o¿onych nieco wy¿ej, na pewno bêdzie móg³ powiedzieæ ci wiêcej.
	AI_Output (self, other, "DIA_Rosi_DuInBarriere_17_02"); //Jego farma znajduje siê niedaleko prze³êczy prowadz¹cej do Górniczej Doliny.
};

//******************************************************************************************
//	Bengar
//******************************************************************************************
instance DIA_Rosi_BENGAR (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	11;
	condition							=	DIA_Rosi_BENGAR_Condition;
	information							=	DIA_Rosi_BENGAR_Info;
	description							=	"Jak dojœæ do farmy Bengara?";
};

func int DIA_Rosi_BENGAR_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Rosi_DuInBarriere))
	&& (!Npc_IsDead(Balthasar))
	{
		return true;
	};
};

func void DIA_Rosi_BENGAR_Info()
{
	AI_Output (other, self, "DIA_Rosi_BENGAR_15_00"); //Jak dojœæ do farmy Bengara?
	AI_Output (self, other, "DIA_Rosi_BENGAR_17_01"); //Zapytaj o to Balthasara. To nasz pasterz. Czasem prowadzi stado na pastwiska Bengara.
	AI_Output (self, other, "DIA_Rosi_BENGAR_17_02"); //Jestem pewna, ¿e powie ci, jak tam dojœæ.
};

//******************************************************************************************
//	Miliz
//******************************************************************************************
instance DIA_Rosi_Miliz (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	7;
	condition							=	DIA_Rosi_Miliz_Condition;
	information							=	DIA_Rosi_Miliz_Info;
	description							=	"Dlaczego stra¿ atakuje wasze farmy?";
};

func int DIA_Rosi_Miliz_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Rosi_WASMACHSTDU))
	&& ((hero.guild != GIL_MIL))
	{
		return true;
	};
};

func void DIA_Rosi_Miliz_Info()
{
	AI_Output (other, self, "DIA_Rosi_Miliz_15_00"); //Dlaczego stra¿ atakuje wasze farmy?
	AI_Output (self, other, "DIA_Rosi_Miliz_17_01"); //Poniewa¿ nie ma ich kto chroniæ, ³atwiej jest je spl¹drowaæ i okraœæ, ni¿ kupowaæ towary.
	AI_Output (self, other, "DIA_Rosi_Miliz_17_02"); //Król jest daleko st¹d, musimy wiêc pracowaæ dla Onara i mieæ nadziejê, ¿e przyœle na czas swoich ludzi, ¿eby uchronili nas przed atakami.
};

//******************************************************************************************
//	Onar
//******************************************************************************************
instance DIA_Rosi_ONAR (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	8;
	condition							=	DIA_Rosi_ONAR_Condition;
	information							=	DIA_Rosi_ONAR_Info;
	description							=	"Jak wygl¹da pomoc ze strony Onara?";
};

func int DIA_Rosi_ONAR_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Rosi_Miliz))
	{
		return true;
	};
};

func void DIA_Rosi_ONAR_Info()
{
	AI_Output (other, self, "DIA_Rosi_ONAR_15_00"); //Jak wygl¹da pomoc ze strony Onara?
	AI_Output (self, other, "DIA_Rosi_ONAR_17_01"); //Czasami wiemy wczeœniej o planowanym przez stra¿ ataku.
	AI_Output (self, other, "DIA_Rosi_ONAR_17_02"); //Wtedy wysy³amy kogoœ na farmê w³aœciciela ziemskiego i prosimy o pomoc.
	AI_Output (self, other, "DIA_Rosi_ONAR_17_03"); //Z regu³y najemnicy, których op³aca, przybywaj¹ tu na czas, by rozprawiæ siê ze stra¿nikami.
	AI_Output (self, other, "DIA_Rosi_ONAR_17_04"); //Ale tak po prawdzie, najemnicy wcale nie s¹ du¿o lepsi od najeŸdŸców.
};

//******************************************************************************************
//	PERMKAP1
//******************************************************************************************
instance DIA_Rosi_PERMKAP1 (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	80;
	condition							=	DIA_Rosi_PERMKAP1_Condition;
	information							=	DIA_Rosi_PERMKAP1_Info;
	permanent							=	true;
	description							=	"G³owa do góry.";
};

func int DIA_Rosi_PERMKAP1_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Rosi_WASMACHSTDU))
	|| ((Kapitel >= 11)	&& (Npc_KnowsInfo(other,DIA_Rosi_FLEEFROMSEKOB)))
	{
		return true;
	};
};

func void DIA_Rosi_PERMKAP1_Info()
{
	AI_Output (other, self, "DIA_Rosi_PERMKAP1_15_00"); //G³owa do góry.
	if (QuestStep_SekobRosi == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Rosi_PERMKAP1_17_01"); //IdŸ siê utop w jeziorze!
	}
	else
	{
		AI_Output (self, other, "DIA_Rosi_PERMKAP1_17_02"); //Uwa¿aj na siebie i nie pozwól, by ciê dopadli.
	};
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	FleeFromSekob
//******************************************************************************************
instance DIA_Rosi_FLEEFROMSEKOB (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	50;
	condition							=	DIA_Rosi_FLEEFROMSEKOB_Condition;
	information							=	DIA_Rosi_FLEEFROMSEKOB_Info;
	description							=	"Co robisz w tej dziczy?";
};

func int DIA_Rosi_FLEEFROMSEKOB_Condition()
{
	if (Kapitel == 11)	
	&& (Rosi_FleeFromSekob_Kap5 == true)
	{
		return true;
	};
};

func void DIA_Rosi_FLEEFROMSEKOB_Info()
{
	AI_Output (other, self, "DIA_Rosi_FLEEFROMSEKOB_15_00"); //Co robisz w tej dziczy?
	AI_Output (self, other, "DIA_Rosi_FLEEFROMSEKOB_17_01"); //Nie mog³am ju¿ d³u¿ej wytrzymaæ na farmie Sekoba. Kl¹³ jak szewc.
	AI_Output (self, other, "DIA_Rosi_FLEEFROMSEKOB_17_02"); //Krzycza³ i krzycza³, w koñcu w ogóle nie da³o siê z nim rozmawiaæ.
	AI_Output (self, other, "DIA_Rosi_FLEEFROMSEKOB_17_03"); //Muszê siê st¹d wynosiæ, ale nie wiem, dok¹d iœæ.
	AI_Output (self, other, "DIA_Rosi_FLEEFROMSEKOB_17_04"); //Mo¿e zechcia³byœ mi pomóc?
	B_GivePlayerXP(XP_BONUS_2);
	RosiFoundKap5 = true;
};

//******************************************************************************************
//	Hilfe
//******************************************************************************************
instance DIA_Rosi_HILFE (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	51;
	condition							=	DIA_Rosi_HILFE_Condition;
	information							=	DIA_Rosi_HILFE_Info;
	description							=	"Chcê ciê st¹d zabraæ.";
};

func int DIA_Rosi_HILFE_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Rosi_FLEEFROMSEKOB))
	&& (Rosi_FleeFromSekob_Kap5 == true)
	{
		return true;
	};
};

func void DIA_Rosi_HILFE_Info()
{
	AI_Output (other, self, "DIA_Rosi_HILFE_15_00"); //Chcê ciê st¹d zabraæ.
	
	self.aivar[AIV_PARTYMEMBER] = true;
	Till.aivar[AIV_PARTYMEMBER] = true;
	
	if ((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL))
	{
		AI_Output (other, self, "DIA_Rosi_HILFE_15_01"); //Móg³bym odprowadziæ ciê do miasta.
	};
	if ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
	{
		AI_Output (other, self, "DIA_Rosi_HILFE_15_02"); //Zaprowadzê ciê na farmê w³aœciciela.
	};
	if (hero.guild == GIL_KDF)
	{
		AI_Output (other, self, "DIA_Rosi_HILFE_15_03"); //ChodŸ ze mn¹ do klasztoru, znajdziesz tam gor¹ce przyjêcie.
	};	
	AI_Output (self, other, "DIA_Rosi_HILFE_17_04"); //Nigdy nie zapomnê co dla mnie zrobi³eœ i oczywiœcie zap³acê.
	
	if (Npc_IsDead(Till))
	{
		AI_Output (self, other, "DIA_Rosi_HILFE_17_05"); //IdŸ przodem, bêdê sz³a za tob¹.
	}
	else
	{
		AI_Output (self, other, "DIA_Rosi_HILFE_17_06"); //IdŸ przodem, bêdziemy szli za tob¹
	};
	
	AI_StopProcessInfos(self);
	
	if ((hero.guild == GIL_MIL) || (hero.guild == GIL_PAL))
	{
		Npc_ExchangeRoutine	(self, "FollowCity");
		B_StartOtherRoutine (Till, "FollowCity");
	};
	if ((hero.guild == GIL_SLD) || (hero.guild == GIL_DJG))
	{
		Npc_ExchangeRoutine	(self, "FollowBigfarm");
		B_StartOtherRoutine (Till, "FollowBigfarm");
	};
	if (hero.guild == GIL_KDF)
	{
		Npc_ExchangeRoutine	(self, "FollowKloster");
		B_StartOtherRoutine (Till, "FollowKloster");
	};
	
	QuestStep_RosiRun = SetQuestStatus (Quest_RosiRun, LOG_RUNNING, QuestStep_RosiRun);
	SetNoteEntry (Quest_RosiRun, LOG_MISSION, "Rosi nie mog³a wytrzymaæ na farmie Sekoba, ale teraz nie wie, gdzie siê udaæ. Wyprowadzê j¹ z tej g³uszy.");
};

//******************************************************************************************
//	ANGEKOMMEN
//******************************************************************************************
instance DIA_Rosi_ANGEKOMMEN (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	55;
	condition							=	DIA_Rosi_ANGEKOMMEN_Condition;
	information							=	DIA_Rosi_ANGEKOMMEN_Info;
	important							=	true;
};

func int DIA_Rosi_ANGEKOMMEN_Condition()
{
	if (Kapitel == 11)
	&& (QuestStep_SekobRosi != LOG_SUCCESS)
	&& (Rosi_FleeFromSekob_Kap5 == true)
	&& (((Npc_GetDistToWP(self,"CITY2") < 6000) && (hero.guild == GIL_PAL))
	|| ((Npc_GetDistToWP(self,"NW_BIGFARM_KITCHEN_02") < 6000) && (hero.guild == GIL_DJG))
	|| ((Npc_GetDistToWP(self,"KLOSTER") < 6000) && (hero.guild == GIL_KDF)))
	{
		return true;
	};
};

func void DIA_Rosi_ANGEKOMMEN_Info()
{
	AI_Output (self, other, "DIA_Rosi_ANGEKOMMEN_17_00"); //Dalej ju¿ sobie poradzê.
	AI_Output (self, other, "DIA_Rosi_ANGEKOMMEN_17_01"); //Bardzo ci dziêkujê. Có¿ ja bym bez ciebie zrobi³a.
	
	self.aivar[AIV_PARTYMEMBER] = false;
	Till.aivar[AIV_PARTYMEMBER] = false;
	
	QuestStep_SekobRosi = LOG_OBSOLETE;
	QuestStep_RosiRun = SetQuestStatus (Quest_RosiRun, LOG_SUCCESS, QuestStep_RosiRun);
	
	AI_Output (self, other, "DIA_Rosi_ANGEKOMMEN_17_02"); //Proszê, przyjmij w podziêce ten skromny podarek.
	
	CreateInvItems (Rosi, ItMi_Gold, 450);
	B_GiveInvItems (self, other, ItMi_Gold, 450);
	
	if (Npc_IsDead(Till))
	{
		B_GivePlayerXP(XP_BONUS_8);
	}
	else
	{
		B_GivePlayerXP(XP_BONUS_10);
	};
	
	AI_StopProcessInfos(self);
	
	if (Npc_GetDistToWP(self,"CITY2") < 8000)
	{
		Npc_ExchangeRoutine	(self, "CITY");
		B_StartOtherRoutine (Till, "CITY");
	}
	else if (Npc_GetDistToWP(self,"BIGFARM") < 8000) 
	{
		Npc_ExchangeRoutine	(self, "BIGFARM");
		B_StartOtherRoutine (Till, "BIGFARM");
	}
	else if (Npc_GetDistToWP(self,"KLOSTER") < 8000)
	{
		Npc_ExchangeRoutine	(self, "KLOSTER");
		B_StartOtherRoutine (Till, "KLOSTER");
	};
};

//******************************************************************************************
//	TRAIT
//******************************************************************************************
instance DIA_Rosi_TRAIT (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	55;
	condition							=	DIA_Rosi_TRAIT_Condition;
	information							=	DIA_Rosi_TRAIT_Info;
	description							=	"Widzisz, jesteœmy w domu.";
};

func int DIA_Rosi_TRAIT_Condition()
{
	if (QuestStep_SekobRosi == LOG_SUCCESS)
	&& (Rosi_FleeFromSekob_Kap5 == true)
	{
		return true;
	};
};

func void DIA_Rosi_TRAIT_Info()
{
	AI_Output (other, self, "DIA_Rosi_TRAIT_15_00"); //Widzisz, jesteœmy w domu.
	AI_Output (self, other, "DIA_Rosi_TRAIT_17_01"); //Ty brudna œwinio, jesteœ najgorszym chamem, jakiego spotka³am w ¿yciu.
	AI_StopProcessInfos(self);
	
	self.aivar[AIV_PARTYMEMBER] = false;
	Till.aivar[AIV_PARTYMEMBER] = false;
	
	QuestStep_RosiRun = SetQuestStatus (Quest_RosiRun, LOG_FAILED, QuestStep_RosiRun);
	B_GivePlayerXP(XP_BONUS_2);
};

//******************************************************************************************
//	MinenAnteil
//******************************************************************************************
instance DIA_Rosi_MinenAnteil (C_INFO)
{
	npc									=	BAU_936_Rosi;
	nr									=	3;
	condition							=	DIA_Rosi_MinenAnteil_Condition;
	information							=	DIA_Rosi_MinenAnteil_Info;
	description							=	"Sprzedajesz nielegalne udzia³y w kopalni, nie wstyd ci?";
};

func int DIA_Rosi_MinenAnteil_Condition()
{
	if (hero.guild == GIL_KDF)
	&& (MIS_Serpentes_MinenAnteil_KDF == LOG_RUNNING)
	&& (Npc_KnowsInfo(other,DIA_Rosi_WASMACHSTDU))
	{
		return true;
	};
};

func void DIA_Rosi_MinenAnteil_Info()
{
	AI_Output (other, self, "DIA_Rosi_Minenanteil_15_00"); //Sprzedajesz nielegalne udzia³y w kopalni, nie wstyd ci?
	AI_Output (self, other, "DIA_Rosi_Minenanteil_17_01"); //Nie. Ja te¿ muszê z czegoœ ¿yæ. Nie ja, zreszt¹, wprowadzi³am je do obiegu.
	B_GivePlayerXP(XP_BONUS_1);
};
