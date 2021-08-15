///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Albrecht_EXIT   (C_INFO)
{
	npc         = PAL_202_Albrecht;
	nr          = 999;
	condition   = DIA_Albrecht_EXIT_Condition;
	information = DIA_Albrecht_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};

FUNC INT DIA_Albrecht_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Albrecht_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info Hagen
///////////////////////////////////////////////////////////////////////
instance DIA_Albrecht_Hagen		(C_INFO)
{
	npc		 	 = 	PAL_202_Albrecht;
	nr			 =  1;
	condition	 = 	DIA_Albrecht_Hagen_Condition;
	information	 = 	DIA_Albrecht_Hagen_Info;
	permanent    =  FALSE;
	description	 =  "Muszê porozmawiaæ z Lordem Hagenem!";
};

func int DIA_Albrecht_Hagen_Condition ()
{	
	if (LordHagen.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Albrecht_Hagen_Info ()
{
	AI_Output (other, self, "DIA_Albrecht_Hagen_15_00"); //Muszê porozmawiaæ z Lordem Hagenem!
	AI_Output (self, other, "DIA_Albrecht_Hagen_03_01"); //Jest w wielkiej sali, na wprost st¹d.
	AI_Output (self, other, "DIA_Albrecht_Hagen_03_02"); //Cokolwiek chcesz od niego, streszczaj siê - to zajêty cz³owiek!
};
///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Albrecht_Hallo		(C_INFO)
{
	npc		 	 = 	PAL_202_Albrecht;
	nr			 =  2;
	condition	 = 	DIA_Albrecht_Hallo_Condition;
	information	 = 	DIA_Albrecht_Hallo_Info;
	permanent    =  FALSE;
	description	 =  "Czym siê zajmuje paladyn?";
};

func int DIA_Albrecht_Hallo_Condition ()
{	
	return TRUE;
};
func void DIA_Albrecht_Hallo_Info ()
{
	AI_Output (other, self, "DIA_Albrecht_Hallo_15_00"); //Czym siê zajmuje paladyn?
	AI_Output (self, other, "DIA_Albrecht_Hallo_03_01"); //Paladyn jest wojownikiem Innosa. ¯yje, by mu s³u¿yæ i walczy, by oddaæ mu czeœæ.
	AI_Output (self, other, "DIA_Albrecht_Hallo_03_02"); //W zamian obdarzeni zostajemy darem magii. Magi¹ run - które otrzymujemy w uznaniu naszych czynów.
};
///////////////////////////////////////////////////////////////////////
//	Info CanTeach
///////////////////////////////////////////////////////////////////////
instance DIA_Albrecht_CanTeach		(C_INFO)
{
	npc		 	 = 	PAL_202_Albrecht;
	nr			 =  99;
	condition	 = 	DIA_Albrecht_CanTeach_Condition;
	information	 = 	DIA_Albrecht_CanTeach_Info;
	permanent    =  TRUE;
	description	 = 	"Mo¿esz mnie czegoœ nauczyæ?";
};

func int DIA_Albrecht_CanTeach_Condition ()
{	
	if  (Albrecht_TeachMANA == FALSE)
	{	
		return TRUE;
	};
};
func void DIA_Albrecht_CanTeach_Info ()
{
	AI_Output (other, self, "DIA_Albrecht_CanTeach_15_00"); //Mo¿esz mnie czegoœ nauczyæ?
	
	if (other.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Albrecht_CanTeach_03_01"); //Jeœli udowodnisz, ¿e jesteœ tego godny, obdarzê ciê magicznymi runami paladynów.
		AI_Output (self, other, "DIA_Albrecht_CanTeach_03_02"); //Poza tym, mogê nauczyæ ciê, jak zwiêkszyæ swoj¹ magiczn¹ moc.
		Albrecht_TeachMANA = TRUE;
		B_LogEntry (TOPIC_CityTeacher,"Paladyn Albrecht mo¿e mi pomóc w zwiêkszeniu moich mocy magicznych.");
	}
	else
	{	
		AI_Output (self, other, "DIA_Albrecht_CanTeach_03_03"); //Szkolê tylko paladynów.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info TEACHPalRunes
///////////////////////////////////////////////////////////////////////

var int HasSpellPalBless;
var int HasSpellPalHeal;
var int HasSpellPalHolyBolt;
var int HasSpellPalJustice;
var int HasSpellPalDestroyEvil;

instance DIA_Albrecht_TEACHPalRunes (C_INFO)
{
	npc		  	 = 	PAL_202_Albrecht;
	nr			 = 	100;
	condition	 = 	DIA_Albrecht_TEACHPalRunes_Condition;
	information	 = 	DIA_Albrecht_TEACHPalRunes_Info;
	permanent	 = 	true;
	description	 = 	"Czy jestem godny otrzymania runy?";
};
func int DIA_Albrecht_TEACHPalRunes_Condition()
{	
	if (Albrecht_TeachMANA)
	{
		return true;
	};
};
func void DIA_Albrecht_TEACHPalRunes_Info()
{
	AI_Output (other, self, "DIA_Albrecht_TEACHPalRunes_15_00"); //Czy jestem godny otrzymania runy?
	
	if (!HasSpellPalBless)
	{
		AI_Output (self, other, "DIA_Albrecht_TEACHPalRunes_03_01"); //Jako symbol twej rangi naznaczê ciê Run¹ Œwiat³a. To symbol prawdy i sprawiedliwoœci.
		AI_Output (self, other, "DIA_Albrecht_TEACHPalRunes_03_02"); //Rozœwietla drogê wszystkim tym, którzy krocz¹ œcie¿k¹ Innosa.
		AI_Output (self, other, "DIA_Albrecht_TEACHPalRunes_03_03"); //Musisz zas³u¿yæ na pozosta³e runy. Wróæ do mnie, kiedy uznasz, ¿e jesteœ ich godny.
		
		CreateInvItems (self, ItRu_PalBless, 1);
		B_GiveInvItems (self, other, ItRu_PalBless, 1);
		HasSpellPalBless = true;
	}
	else
	{
		AI_Output (self, other, "DIA_Albrecht_TEACHPalRunes_03_04"); //Jak¹ drogê wybra³eœ?
		AI_Output (self, other, "DIA_Albrecht_TEACHPalRunes_03_05"); //Drogê uzdrawiania czy drogê walki?
		
		Info_ClearChoices	(DIA_Albrecht_TEACHPalRunes);
		Info_AddChoice		(DIA_Albrecht_TEACHPalRunes, DIALOG_BACK,DIA_Albrecht_TEACHPalRunes_BACK);
		Info_AddChoice		(DIA_Albrecht_TEACHPalRunes, "Wybieram drogê leczenia.", DIA_Albrecht_TEACHPalRunes_Heal);
		Info_AddChoice		(DIA_Albrecht_TEACHPalRunes, "Wybieram drogê walki.", DIA_Albrecht_TEACHPalRunes_Combat);
	};	
};

func void DIA_Albrecht_TEACHPalRunes_BACK()
{
	Info_ClearChoices   (DIA_Albrecht_TEACHPalRunes);
};

func void B_Albrecht_YouAreNotWorthy()
{
	AI_Output (self, other, "B_Albrecht_YouAreNotWorthy_03_00"); //Nie jesteœ jeszcze godzien, by otrzymaæ kolejny czar z tej œcie¿ki.
};

func void DIA_Albrecht_TEACHPalRunes_Heal()
{
	AI_Output (other, self, "DIA_Albrecht_TEACHPalRunes_Heal_15_00"); //Wybieram drogê leczenia.
	if (!HasSpellPalHeal && !HasSpellPalHolyBolt)
	&& (MIS_ReadyforChapter4)
	{
		CreateInvItems (self, ItRu_PalHeal, 1);
		B_GiveInvItems (self, other, ItRu_PalHeal, 1);
		HasSpellPalHeal = true;
	}
	else if (!HasSpellPalJustice && !HasSpellPalDestroyEvil)
	&& (Kapitel >= 11)
	{
		CreateInvItems (self, ItRu_PalJustice, 1);
		B_GiveInvItems (self, other, ItRu_PalJustice, 1);
		HasSpellPalJustice = true;
	}
	else
	{
		B_Albrecht_YouAreNotWorthy();
	};
};

func void DIA_Albrecht_TEACHPalRunes_Combat()
{
	AI_Output (other, self, "DIA_Albrecht_TEACHPalRunes_Combat_15_00"); //Wybieram drogê walki.
	
	if (!HasSpellPalHolyBolt && !HasSpellPalHeal)
	&& (MIS_ReadyforChapter4)
	{
		CreateInvItems (self, ItRu_PalHolyBolt, 1);
		B_GiveInvItems (self, other, ItRu_PalHolyBolt, 1);
		HasSpellPalHolyBolt = true;
	}
	else if (!HasSpellPalDestroyEvil && !HasSpellPalJustice)
	&& (Kapitel >= 11)
	{
		CreateInvItems (self, ItRu_PalDestroyEvil, 1);
		B_GiveInvItems (self, other, ItRu_PalDestroyEvil, 1);
		HasSpellPalDestroyEvil = true;
	}
	else
	{
		B_Albrecht_YouAreNotWorthy();
	};
};
///////////////////////////////////////////////////////////////////////
//	Info TEACH
///////////////////////////////////////////////////////////////////////
instance DIA_Albrecht_Teach		(C_INFO)
{
	npc		  	 = 	PAL_202_Albrecht;
	nr			 = 	101;
	condition	 = 	DIA_Albrecht_Teach_Condition;
	information	 = 	DIA_Albrecht_Teach_Info;
	permanent	 = 	FALSE;	//TRUE
	description	 = 	"Chcê zwiêkszyæ moje moce magiczne.";
};
func int DIA_Albrecht_Teach_Condition ()
{	
	if (Albrecht_TeachMANA == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Albrecht_Teach_Info ()
{
	AI_Output (other, self, "DIA_Albrecht_Teach_15_00"); //Chcê zwiêkszyæ moje moce magiczne.
	
	/*
	Info_ClearChoices   (DIA_Albrecht_Teach);
	Info_AddChoice 		(DIA_Albrecht_Teach, DIALOG_BACK, DIA_Albrecht_Teach_BACK);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP1	, B_GetLearnCostAttribute(other, ATR_MANA_MAX))	,DIA_Albrecht_Teach_1);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP5	, B_GetLearnCostAttribute(other, ATR_MANA_MAX)*5)	,DIA_Albrecht_Teach_5);
	*/
	B_RaiseAttribute(other, ATR_MANA_MAX, 2);
};
/*
func void DIA_Albrecht_Teach_BACK()
{
	if (other.attribute [ATR_MANA_MAX] >= T_MED)
	{
		AI_Output (self, other, "DIA_Albrecht_Teach_03_00"); //Jeœli chcesz to zrobiæ, musisz poszukaæ innego nauczyciela.
	};
	Info_ClearChoices (DIA_Albrecht_TEACH);
};
func void DIA_Albrecht_Teach_1()
{
	B_TeachAttributePoints (self, other, ATR_MANA_MAX, 1, T_MED);
	
	Info_ClearChoices   (DIA_Albrecht_Teach);
	
	Info_AddChoice 		(DIA_Albrecht_Teach, DIALOG_BACK, DIA_Albrecht_TEACH_BACK);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP1	, B_GetLearnCostAttribute(other, ATR_MANA_MAX))	,DIA_Albrecht_Teach_1);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP5	, B_GetLearnCostAttribute(other, ATR_MANA_MAX)*5)	,DIA_Albrecht_Teach_5);
	
	
};
func void DIA_Albrecht_Teach_5()
{
	B_TeachAttributePoints (self, other, ATR_MANA_MAX, 5, T_MED);
	
	Info_ClearChoices   (DIA_Albrecht_Teach);
	
	Info_AddChoice 		(DIA_Albrecht_Teach, DIALOG_BACK, DIA_Albrecht_Teach_BACK);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP1	, B_GetLearnCostAttribute(other, ATR_MANA_MAX))	,DIA_Albrecht_Teach_1);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP5	, B_GetLearnCostAttribute(other, ATR_MANA_MAX)*5)	,DIA_Albrecht_Teach_5);
	
	
};
*/