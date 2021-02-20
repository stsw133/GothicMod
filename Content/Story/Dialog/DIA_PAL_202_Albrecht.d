///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Albrecht_EXIT   (C_INFO)
{
	npc         = PAL_202_Albrecht;
	nr          = 999;
	condition   = DIA_Albrecht_EXIT_Condition;
	information = DIA_Albrecht_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Albrecht_EXIT_Condition()
{
	return true;
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
	permanent    =  false;
	description	 =  "Musz� porozmawia� z Lordem Hagenem!";
};

func int DIA_Albrecht_Hagen_Condition ()
{	
	if (LordHagen.aivar[AIV_TalkedToPlayer] == false)
	{
		return true;
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
	permanent    =  false;
	description	 =  "Czym si� zajmuje paladyn?";
};

func int DIA_Albrecht_Hallo_Condition ()
{	
	return true;
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
	permanent    =  true;
	description	 = 	"Mo�esz mnie czego� nauczy�?";
};
var int Albrecht_TeachMANA;
func int DIA_Albrecht_CanTeach_Condition ()
{
	if (Albrecht_TeachMANA == false)
	{	
		return true;
	};
};
func void DIA_Albrecht_CanTeach_Info ()
{
	AI_Output (other, self, "DIA_Albrecht_CanTeach_15_00"); //Mo�esz mnie czego� nauczy�?
	
	if (other.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Albrecht_CanTeach_03_01"); //Je�li udowodnisz, �e jeste� tego godny, obdarz� ci� magicznymi runami paladyn�w.
		AI_Output (self, other, "DIA_Albrecht_CanTeach_03_02"); //Poza tym, mog� nauczy� ci�, jak zwi�kszy� swoj� magiczn� moc.
		Albrecht_TeachMANA = true;
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
/*
instance DIA_Albrecht_TEACHPalRunes		(C_INFO)
{
	npc		  	 = 	PAL_202_Albrecht;
	nr			 = 	100;
	condition	 = 	DIA_Albrecht_TEACHPalRunes_Condition;
	information	 = 	DIA_Albrecht_TEACHPalRunes_Info;
	permanent	 = 	true;
	description	 = 	"Czy jestem godny otrzymania runy?";
};
func int DIA_Albrecht_TEACHPalRunes_Condition ()
{	
	if (Albrecht_TeachMANA == true)
	&& ((PalSpell_Heal == false) || (PalSpell_Bolt == false))
	{
		return true;
	};
};
func void DIA_Albrecht_TEACHPalRunes_Info ()
{
	AI_Output (other, self, "DIA_Albrecht_TEACHPalRunes_15_00"); //Czy jestem godny otrzymania runy?

	AI_Output (self,other, "DIA_Albrecht_TEACHPalRunes_03_04"); //Jak� drog� wybra�e�?
	AI_Output (self,other, "DIA_Albrecht_TEACHPalRunes_03_05"); //Drog� uzdrawiania czy drog� walki?

	Info_ClearChoices   (DIA_Albrecht_TEACHPalRunes);
	Info_AddChoice (DIA_Albrecht_TEACHPalRunes,DIALOG_BACK,DIA_Albrecht_TEACHPalRunes_BACK);
	if (PalSpell_Heal == false)
	{
		Info_AddChoice (DIA_Albrecht_TEACHPalRunes,"Wybieram drog� leczenia.",DIA_Albrecht_TEACHPalRunes_Heal);
	};
	if (PalSpell_Bolt == false)
	{
		Info_AddChoice (DIA_Albrecht_TEACHPalRunes,"Wybieram drog� walki.",DIA_Albrecht_TEACHPalRunes_Combat);
	};
};

FUNC VOID DIA_Albrecht_TEACHPalRunes_BACK()
{
	Info_ClearChoices   (DIA_Albrecht_TEACHPalRunes);
};

FUNC VOID B_Albrecht_YouAreNotWorthy()
{
	AI_Output (self ,other,"B_Albrecht_YouAreNotWorthy_03_00"); //Nie jeste� jeszcze godzien, by otrzyma� kolejny czar z tej �cie�ki.
};

FUNC VOID DIA_Albrecht_TEACHPalRunes_Heal()
{
	AI_Output (other,self ,"DIA_Albrecht_TEACHPalRunes_Heal_15_00"); //Wybieram drog� leczenia.

	if (Kapitel >= 9+PalSpell_Bolt)
	{
		PalSpell_Heal = true;
		PrintScreen	("Nauka: runa uleczenia ran", -1, -1, FONT_SCREEN, 2);
	}
	else
	{
		B_Albrecht_YouAreNotWorthy();
	};
};

FUNC VOID DIA_Albrecht_TEACHPalRunes_Combat()
{
	AI_Output (other,self ,"DIA_Albrecht_TEACHPalRunes_Combat_15_00"); //Wybieram drog� walki.

	if (Kapitel >= 9+PalSpell_Heal)
	{
		PalSpell_Bolt = true;
		PrintScreen	("Nauka: runa magicznej strza�y", -1, -1, FONT_SCREEN, 2);
	}
	else
	{
		B_Albrecht_YouAreNotWorthy();
	};
};
*/