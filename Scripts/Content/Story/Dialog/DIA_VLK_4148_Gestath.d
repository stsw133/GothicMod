///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Gestath_EXIT   (C_INFO)
{
	npc         = VLK_4148_Gestath;
	nr          = 999;
	condition   = DIA_Gestath_EXIT_Condition;
	information = DIA_Gestath_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};

FUNC INT DIA_Gestath_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Gestath_EXIT_Info()
{
	var C_Item heroArmor; heroArmor = Npc_GetEquippedArmor(other);
	
	if (Hlp_IsItem (heroArmor, ITAR_Crawler) == TRUE)
	{
		AI_Output			(self, other, "DIA_Gestath_EXIT_09_00"); //Niez�a zbroja!
	};
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info HALLO
///////////////////////////////////////////////////////////////////////
instance DIA_Gestath_HALLO		(C_INFO)
{
	npc		 = 	VLK_4148_Gestath;
	nr		 = 	3;
	condition	 = 	DIA_Gestath_HALLO_Condition;
	information	 = 	DIA_Gestath_HALLO_Info;

	description	 = 	"Co s�ycha�?";
};

func int DIA_Gestath_HALLO_Condition ()
{
	return TRUE;
};

func void DIA_Gestath_HALLO_Info ()
{
	AI_Output			(other, self, "DIA_Gestath_HALLO_15_00"); //Jak leci?
	AI_Output			(self, other, "DIA_Gestath_HALLO_09_01"); //Przyj�cie tutaj jest prawdziwym aktem odwagi. Pewnie si� zgubi�e�, co?
	Gestath_TeachAnimalTrophy = TRUE;
	self.aivar[AIV_CanOffer] = self.aivar[AIV_CanOffer] | OFFER_Teaching;
	Info_ClearChoices	(DIA_Gestath_HALLO);
	Info_AddChoice	(DIA_Gestath_HALLO, "Jest tu co� wartego zobaczenia?", DIA_Gestath_HALLO_waszusehen );
	Info_AddChoice	(DIA_Gestath_HALLO, "Co tutaj robisz?", DIA_Gestath_HALLO_was );
};
func void DIA_Gestath_HALLO_plate ()
{
	AI_Output			(other, self, "DIA_Gestath_HALLO_plate_15_00"); //Niez�a zbroja.
	AI_Output			(self, other, "DIA_Gestath_HALLO_plate_09_01"); //Taak. Ci�ko co� takiego dosta�. Jest zrobiona z pancerza pe�zacza. Zrobi� j� dla mnie pewien cz�owiek imieniem Wilk.
	AI_Output			(self, other, "DIA_Gestath_HALLO_plate_09_02"); //Wtedy by�em wi�niem w Kolonii. Da�em mu kilka �usek pe�zacza, a par� dni p�niej zbroja by�a ju� gotowa. Facet jest w porz�dku.

	Wolf_ProduceCrawlerArmor = TRUE;
	
	Info_AddChoice	(DIA_Gestath_HALLO, DIALOG_BACK, DIA_Gestath_HALLO_Back );
	Info_AddChoice	(DIA_Gestath_HALLO, "Gdzie teraz przebywa Wilk?", DIA_Gestath_HALLO_plate_woWolf );
};
func void DIA_Gestath_HALLO_plate_woWolf ()
{
	AI_Output			(other, self, "DIA_Gestath_HALLO_plate_woWolf_15_00"); //Gdzie teraz przebywa Wilk?
	AI_Output			(self, other, "DIA_Gestath_HALLO_plate_woWolf_09_01"); //Nie widzia�em go od czasu, kiedy by� najemnikiem w Kolonii.
	AI_Output			(self, other, "DIA_Gestath_HALLO_plate_woWolf_09_02"); //Przypuszczam, �e wci�� obraca si� w tym samym towarzystwie.
};

func void DIA_Gestath_HALLO_was ()
{
	AI_Output			(other, self, "DIA_Gestath_HALLO_was_15_00"); //Co tutaj robisz?
	AI_Output			(self, other, "DIA_Gestath_HALLO_was_09_01"); //Zarabiam.
	AI_Output			(other, self, "DIA_Gestath_HALLO_was_15_02"); //W takim miejscu?
	AI_Output			(self, other, "DIA_Gestath_HALLO_was_09_03"); //Jestem my�liwym. Specjalizuj� si� w trudnych zadaniach.
	AI_Output			(self, other, "DIA_Gestath_HALLO_was_09_04"); //Ogniste jaszczury, pe�zacze, z�bacze... Jednym s�owem - wszystko, na co nikt inny nie zechcia�by zapolowa�.
	
	Info_AddChoice	(DIA_Gestath_HALLO, "Niez�a zbroja.", DIA_Gestath_HALLO_plate );
};

func void DIA_Gestath_HALLO_waszusehen ()
{
	AI_Output			(other, self, "DIA_Gestath_HALLO_waszusehen_15_00"); //Jest tu co� wartego zobaczenia?
	AI_Output			(self, other, "DIA_Gestath_HALLO_waszusehen_09_01"); //Troch� ognistych jaszczur�w, ork�w i cholera wie, czego jeszcze. Nie by�em jeszcze na wy�ynach.
	AI_Output			(self, other, "DIA_Gestath_HALLO_waszusehen_09_02"); //Nie radz� jednak pr�bowa�. Stworzenia, kt�re �yj� tam na g�rze, nie wygl�daj� zbyt przyja�nie.
};

func void DIA_Gestath_HALLO_Back ()
{
	Info_ClearChoices	(DIA_Gestath_HALLO);
};

///////////////////////////////////////////////////////////////////////
//	Info Drachen
///////////////////////////////////////////////////////////////////////
instance DIA_Gestath_Drachen		(C_INFO)
{
	npc		 = 	VLK_4148_Gestath;
	nr		 = 	3;
	condition	 = 	DIA_Gestath_Drachen_Condition;
	information	 = 	DIA_Gestath_Drachen_Info;
	permanent	 = 	TRUE;

	description	 = 	"Potrafisz oprawia� smoki?";
};
var int Gestath_DragonTrophy;

func int DIA_Gestath_Drachen_Condition ()
{
	if (Gestath_DragonTrophy == FALSE)
	&& (Gestath_TeachAnimalTrophy == TRUE)
	{
		return TRUE;
	};
};

func void DIA_Gestath_Drachen_Info ()
{
	AI_Output			(other, self, "DIA_Gestath_Drachen_15_00"); //Potrafisz oprawia� smoki?
	if (Kapitel < 10)
	{
		AI_Output			(self, other, "DIA_Gestath_Drachen_09_01"); //Kiedy�, kiedy nabierzesz do�wiadczenia, mo�e nawet naucz� ci� tej sztuki!
	}
	else
	{	
		AI_Output			(self, other, "DIA_Gestath_Drachen_09_02"); //Jasne.
		Gestath_DragonTrophy = TRUE;
	};
};
