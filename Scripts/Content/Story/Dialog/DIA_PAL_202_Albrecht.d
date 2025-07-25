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
	description	 =  "Musz� porozmawia� z Lordem Hagenem!";
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
	AI_Output (other, self, "DIA_Albrecht_Hagen_15_00"); //Musz� porozmawia� z Lordem Hagenem!
	AI_Output (self, other, "DIA_Albrecht_Hagen_03_01"); //Jest w wielkiej sali, na wprost st�d.
	AI_Output (self, other, "DIA_Albrecht_Hagen_03_02"); //Cokolwiek chcesz od niego, streszczaj si� - to zaj�ty cz�owiek!
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
	description	 =  "Czym si� zajmuje paladyn?";
};

func int DIA_Albrecht_Hallo_Condition ()
{	
	return TRUE;
};
func void DIA_Albrecht_Hallo_Info ()
{
	AI_Output (other, self, "DIA_Albrecht_Hallo_15_00"); //Czym si� zajmuje paladyn?
	AI_Output (self, other, "DIA_Albrecht_Hallo_03_01"); //Paladyn jest wojownikiem Innosa. �yje, by mu s�u�y� i walczy, by odda� mu cze��.
	AI_Output (self, other, "DIA_Albrecht_Hallo_03_02"); //W zamian obdarzeni zostajemy darem magii. Magi� run - kt�re otrzymujemy w uznaniu naszych czyn�w.
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
	description	 = 	"Mo�esz mnie czego� nauczy�?";
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
	AI_Output (other, self, "DIA_Albrecht_CanTeach_15_00"); //Mo�esz mnie czego� nauczy�?
	
	if (other.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Albrecht_CanTeach_03_01"); //Je�li udowodnisz, �e jeste� tego godny, obdarz� ci� magicznymi runami paladyn�w.
		AI_Output (self, other, "DIA_Albrecht_CanTeach_03_02"); //Poza tym, mog� nauczy� ci�, jak zwi�kszy� swoj� magiczn� moc.
		Albrecht_TeachMANA = TRUE;
		B_LogEntry (TOPIC_CityTeacher,"Paladyn Albrecht mo�e mi pom�c w zwi�kszeniu moich mocy magicznych.");
	}
	else
	{	
		AI_Output (self, other, "DIA_Albrecht_CanTeach_03_03"); //Szkol� tylko paladyn�w.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info TEACHPalRunes
///////////////////////////////////////////////////////////////////////

var int HasSpellPalBless;
var int HasSpellPalFaith;
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
		AI_Output (self, other, "DIA_Albrecht_TEACHPalRunes_03_01"); //Jako symbol twej rangi naznacz� ci� Run� �wiat�a. To symbol prawdy i sprawiedliwo�ci.
		AI_Output (self, other, "DIA_Albrecht_TEACHPalRunes_03_02"); //Roz�wietla drog� wszystkim tym, kt�rzy krocz� �cie�k� Innosa.
		AI_Output (self, other, "DIA_Albrecht_TEACHPalRunes_03_03"); //Musisz zas�u�y� na pozosta�e runy. Wr�� do mnie, kiedy uznasz, �e jeste� ich godny.
		
		CreateInvItems (self, ItRu_PalBless, 1);
		B_GiveInvItems (self, other, ItRu_PalBless, 1);
		HasSpellPalBless = true;
	}
	else
	{
		AI_Output (self, other, "DIA_Albrecht_TEACHPalRunes_03_04"); //Jak� drog� wybra�e�?
		AI_Output (self, other, "DIA_Albrecht_TEACHPalRunes_03_05"); //Drog� uzdrawiania czy drog� walki?
		
		Info_ClearChoices	(DIA_Albrecht_TEACHPalRunes);
		Info_AddChoice		(DIA_Albrecht_TEACHPalRunes, DIALOG_BACK,DIA_Albrecht_TEACHPalRunes_BACK);
		Info_AddChoice		(DIA_Albrecht_TEACHPalRunes, "Wybieram drog� leczenia.", DIA_Albrecht_TEACHPalRunes_Heal);
		Info_AddChoice		(DIA_Albrecht_TEACHPalRunes, "Wybieram drog� walki.", DIA_Albrecht_TEACHPalRunes_Combat);
	};	
};

func void DIA_Albrecht_TEACHPalRunes_BACK()
{
	Info_ClearChoices   (DIA_Albrecht_TEACHPalRunes);
};

func void B_Albrecht_YouAreNotWorthy()
{
	AI_Output (self, other, "B_Albrecht_YouAreNotWorthy_03_00"); //Nie jeste� jeszcze godzien, by otrzyma� kolejny czar z tej �cie�ki.
};

func void DIA_Albrecht_TEACHPalRunes_Heal()
{
	AI_Output (other, self, "DIA_Albrecht_TEACHPalRunes_Heal_15_00"); //Wybieram drog� leczenia.
	if (!HasSpellPalFaith && !HasSpellPalHolyBolt)
	&& (MIS_ReadyforChapter4)
	{
		CreateInvItems (self, ItRu_PalFaith, 1);
		B_GiveInvItems (self, other, ItRu_PalFaith, 1);
		HasSpellPalFaith = true;
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
	AI_Output (other, self, "DIA_Albrecht_TEACHPalRunes_Combat_15_00"); //Wybieram drog� walki.
	
	if (!HasSpellPalHolyBolt && !HasSpellPalFaith)
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
	description	 = 	"Chc� zwi�kszy� moje moce magiczne.";
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
	AI_Output (other, self, "DIA_Albrecht_Teach_15_00"); //Chc� zwi�kszy� moje moce magiczne.
	
	/*
	Info_ClearChoices   (DIA_Albrecht_Teach);
	Info_AddChoice 		(DIA_Albrecht_Teach, DIALOG_BACK, DIA_Albrecht_Teach_BACK);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP1, B_GetLearnCostAttribute(other, ATR_MANA_MAX, 1))	,DIA_Albrecht_Teach_1);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP5, B_GetLearnCostAttribute(other, ATR_MANA_MAX, 5))	,DIA_Albrecht_Teach_5);
	*/
	B_RaiseAttribute(other, ATR_MANA_MAX, 2);
};
/*
func void DIA_Albrecht_Teach_BACK()
{
	if (other.attribute [ATR_MANA_MAX] >= T_MED)
	{
		AI_Output (self, other, "DIA_Albrecht_Teach_03_00"); //Je�li chcesz to zrobi�, musisz poszuka� innego nauczyciela.
	};
	Info_ClearChoices (DIA_Albrecht_TEACH);
};
func void DIA_Albrecht_Teach_1()
{
	B_TeachAttribute (self, other, ATR_MANA_MAX, 1, T_MED);
	
	Info_ClearChoices   (DIA_Albrecht_Teach);
	
	Info_AddChoice 		(DIA_Albrecht_Teach, DIALOG_BACK, DIA_Albrecht_TEACH_BACK);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP1, B_GetLearnCostAttribute(other, ATR_MANA_MAX, 1))	,DIA_Albrecht_Teach_1);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP5, B_GetLearnCostAttribute(other, ATR_MANA_MAX, 5))	,DIA_Albrecht_Teach_5);
	
	
};
func void DIA_Albrecht_Teach_5()
{
	B_TeachAttribute (self, other, ATR_MANA_MAX, 5, T_MED);
	
	Info_ClearChoices   (DIA_Albrecht_Teach);
	
	Info_AddChoice 		(DIA_Albrecht_Teach, DIALOG_BACK, DIA_Albrecht_Teach_BACK);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP1, B_GetLearnCostAttribute(other, ATR_MANA_MAX, 1))	,DIA_Albrecht_Teach_1);
	Info_AddChoice		(DIA_Albrecht_Teach, B_BuildLearnString(PRINT_LearnMP5, B_GetLearnCostAttribute(other, ATR_MANA_MAX, 5))	,DIA_Albrecht_Teach_5);
	
	
};
*/