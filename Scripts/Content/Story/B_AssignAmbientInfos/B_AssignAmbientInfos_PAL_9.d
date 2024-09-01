///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_PAL_9_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							= DIALOG_END;
};

///******************************************************************************************
/// JOIN
///******************************************************************************************
instance DIA_PAL_9_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_PAL_9_JOIN_Condition;
	information							=	DIA_PAL_9_JOIN_Info;
	permanent							=	true;
	description							=	"Jak mog� zosta� paladynem?";
};
func int DIA_PAL_9_JOIN_Condition()
{
	if (other.guild == GIL_NONE)
	{
		return true;
	};
};
func void DIA_PAL_9_JOIN_Info()
{
	AI_Output (other, self, "DIA_PAL_9_JOIN_15_00"); //Jak mog� zosta� paladynem?
	AI_Output (self, other, "DIA_PAL_9_JOIN_09_01"); //Ci, kt�rzy wyka�� si� odwag� w s�u�bie Innosowi lub Kr�lowi, mog� zosta� wybrani!
	AI_Output (self, other, "DIA_PAL_9_JOIN_09_02"); //M�wi�c prosto: wybrani zostan� najlepsi. CIEBIE czeka jednak jeszcze d�uga droga.
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_PAL_9_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	DIA_PAL_9_PEOPLE_Condition;
	information							=	DIA_PAL_9_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto tu dowodzi?";
};
func int DIA_PAL_9_PEOPLE_Condition()
{
	if (other.guild != GIL_PAL)
	{
		return true;
	};
};
func void DIA_PAL_9_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_PAL_9_PEOPLE_15_00"); //Kto tu dowodzi?
	AI_Output (self, other, "DIA_PAL_9_PEOPLE_09_01"); //Lord Hagen.
	AI_Output (other, self, "DIA_PAL_9_PEOPLE_15_02"); //I?
	AI_Output (self, other, "DIA_PAL_9_PEOPLE_09_03"); //I nikt wi�cej. Lord Hagen jest najwy�szym urz�dnikiem i dow�dc� na wyspie.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_PAL_9_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	DIA_PAL_9_LOCATION_Condition;
	information							=	DIA_PAL_9_LOCATION_Info;
	permanent							=	true;
	description							=	"Dlaczego wy, paladyni, przybyli�cie do Khorinis?";
};
func int DIA_PAL_9_LOCATION_Condition()
{
	if (Kapitel == 7)
	{
		return true;
	};
};
func void DIA_PAL_9_LOCATION_Info()
{
	AI_Output (other, self, "DIA_PAL_9_LOCATION_15_00"); //Dlaczego wy, paladyni, przybyli�cie do Khorinis?
	AI_Output (self, other, "DIA_PAL_9_LOCATION_09_01"); //To nie twoja sprawa, kolego! Wystarczy ci wiedzie�, �e s�u�ymy Kr�lowi i Innosowi!
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_PAL_9_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_PAL_9_STANDARD_Info;
	permanent							=	true;
	description							=	"Co s�ycha�?";
};
func void DIA_PAL_9_STANDARD_Info()
{
	AI_Output (other, self, "DIA_PAL_9_STANDARD_15_00"); //Co s�ycha�?
	
	if (other.guild == GIL_PAL)
	|| (other.guild == GIL_KDF)
	{
		if (Kapitel <= 10)
		{
			if (MIS_OLDWORLD == LOG_SUCCESS)
			{
				AI_Output (self, other, "DIA_PAL_9_STANDARD_09_01"); //Teraz, kiedy przysz�o nam zmierzy� si� ze smokami, jestem pewien, �e nasz dow�dca odpowiednio zareaguje.
			}
			else
			{
				AI_Output (self, other, "DIA_PAL_9_STANDARD_09_02"); //Nie mamy �adnych wiadomo�ci od naszych oddzia��w w G�rniczej Dolinie. To bardzo niepokoj�ce.
			};
		};
		if (Kapitel >= 11)
		{
			AI_Output (self, other, "DIA_PAL_9_STANDARD_09_03"); //B�ogos�awiony niech b�dzie Innos! Niebezpiecze�stwo ataku smok�w zosta�o za�egnane. �eby dotrze� do rudy, musimy si� zaj�� ju� tylko orkami.
		};
	}
	else
	{
		AI_Output (self, other, "DIA_PAL_9_STANDARD_09_04"); //Je�li nie masz ju� nic wi�cej do powiedzenia, to spadaj, prostaku.
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_PAL_9 (var C_Npc slf)
{
	DIA_PAL_9_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_PAL_9_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_PAL_9_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_PAL_9_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_PAL_9_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
