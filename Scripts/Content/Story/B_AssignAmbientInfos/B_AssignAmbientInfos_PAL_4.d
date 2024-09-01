///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_PAL_4_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// JOIN
///******************************************************************************************
instance DIA_PAL_4_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_PAL_4_JOIN_Condition;
	information							=	DIA_PAL_4_JOIN_Info;
	permanent							=	true;
	description							=	"Jak mog� zosta� paladynem?";
};                       
func int DIA_PAL_4_JOIN_Condition()
{
	if (other.guild == GIL_NONE)
	{
		return true;
	};
};
func void DIA_PAL_4_JOIN_Info()
{
	AI_Output (other, self, "DIA_PAL_4_JOIN_15_00"); //Jak mog� zosta� paladynem?
	AI_Output (self, other, "DIA_PAL_4_JOIN_04_01"); //Je�li w istocie tego pragniesz, to powiniene� do��czy� do paladyn�w.
	AI_Output (self, other, "DIA_PAL_4_JOIN_04_02"); //Udaj si� do koszar i porozmawiaj z Lordem Andre. Do��cz do oddzia��w stra�y.
	AI_Output (self, other, "DIA_PAL_4_JOIN_04_03"); //By� mo�e w ten spos�b dowiedziesz swej warto�ci.
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_PAL_4_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	DIA_PAL_4_PEOPLE_Condition;
	information							=	DIA_PAL_4_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto tu dowodzi?";
};                       
func int DIA_PAL_4_PEOPLE_Condition()
{
	if (other.guild != GIL_PAL)
	{
		return true;
	};
};
func void DIA_PAL_4_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_PAL_4_PEOPLE_15_00"); //Kto tu dowodzi?
	AI_Output (self, other, "DIA_PAL_4_PEOPLE_04_01"); //Lord Hagen jest dow�dc� wszystkich oddzia��w na wyspie. P�ki tu jeste�my, sprawuje tak�e urz�d gubernatora.
	AI_Output (self, other, "DIA_PAL_4_PEOPLE_04_02"); //Jest jednak bardzo zaj�ty. Je�li masz jaki� problem, udaj si� do koszar i porozmawiaj z Lordem Andre.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_PAL_4_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	DIA_PAL_4_LOCATION_Condition;
	information							=	DIA_PAL_4_LOCATION_Info;
	permanent							=	true;
	description							=	"Co paladyni robi� tutaj, w Khorinis?";
};
func int DIA_PAL_4_LOCATION_Condition()
{
	if (Kapitel == 7)
	{
		return true;
	};
};
func void DIA_PAL_4_LOCATION_Info()
{
	AI_Output (other, self, "DIA_PAL_4_LOCATION_15_00"); //Co paladyni robi� tutaj, w Khorinis?
	AI_Output (self, other, "DIA_PAL_4_LOCATION_04_01"); //Nie wolno mi na ten temat rozmawia�.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_PAL_4_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_PAL_4_STANDARD_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_PAL_4_STANDARD_Info()
{
	AI_Output (other, self, "DIA_PAL_4_STANDARD_15_00"); //Co s�ycha�?
	
	if (other.guild == GIL_PAL)
	|| (other.guild == GIL_KDF)
	{
		if (Kapitel <= 10)
		{
			if (MIS_OLDWORLD == LOG_SUCCESS)
			{
				AI_Output (self, other, "DIA_PAL_4_STANDARD_04_01"); //Wci�� walczymy ze smokami, jestem pewien, �e nasz kapitan podejmie wkr�tce jakie� zdecydowane kroki.
			}
			else
			{
				AI_Output (self, other, "DIA_PAL_4_STANDARD_04_02"); //Ci�gle nie mamy �adnych wie�ci z obozowiska w G�rniczej Dolinie. To bardzo niepokoj�ce.
			};
		};
		if (Kapitel >= 11)
		{
			AI_Output (self, other, "DIA_PAL_4_STANDARD_04_03"); //B�ogos�awiony niech b�dzie Innos! Niebezpiecze�stwo ataku smok�w zosta�o za�egnane. �eby dotrze� do rudy, musimy si� ju� tylko zaj�� orkami.
		};
	}
	else
	{
		AI_Output (self, other, "DIA_PAL_4_STANDARD_04_04"); //Nie mam czasu na rozpowiadanie plotek zas�yszanych gdzie� na mie�cie.
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_PAL_4 (var C_Npc slf)
{
	DIA_PAL_4_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_PAL_4_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_PAL_4_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_PAL_4_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_PAL_4_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
