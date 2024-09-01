///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_OCVLK_1_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_OCVLK_1_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	DIA_OCVLK_1_PEOPLE_Condition;
	information							=	DIA_OCVLK_1_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto tu dowodzi?";
};
func int DIA_OCVLK_1_PEOPLE_Condition()
{
	if (Kapitel <= 10)
	&& (MIS_KilledDragons < 4)
	{
		return true;
	};
};
func void DIA_OCVLK_1_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_OCVLK_1_PEOPLE_15_00"); //Kto tu dowodzi?
	AI_Output (self, other, "DIA_OCVLK_1_PEOPLE_01_01"); //Kapitan Garond. Odk�d jednak walki uleg�y zaostrzeniu, nie rusza si� z sali tronowej na krok. Obawiam si�, �e ca�a sprawa �le si� sko�czy.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_OCVLK_1_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	DIA_OCVLK_1_LOCATION_Condition;
	information							=	DIA_OCVLK_1_LOCATION_Info;
	permanent							=	true;
	description							=	"Co wiesz o G�rniczej Dolinie?";
};
func int DIA_OCVLK_1_LOCATION_Condition()
{
	if (Kapitel <= 10)
	&& (MIS_KilledDragons < 4)
	{
		return true;
	};
};
func void DIA_OCVLK_1_LOCATION_Info()
{
	AI_Output (other, self, "DIA_OCVLK_1_LOCATION_15_00"); //Co wiesz o G�rniczej Dolinie?
	AI_Output (self, other, "DIA_OCVLK_1_LOCATION_01_01"); //Wydaje mi si�, �e kilku naszych ch�opak�w wci�� pracuje w kopalniach.
	AI_Output (self, other, "DIA_OCVLK_1_LOCATION_01_02"); //Jednak nie zdecydowa�bym si� na handel z nimi. Ca�a dolina zaj�ta jest przez ork�w. Nie wspomn� ju� o smokach.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_OCVLK_1_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_OCVLK_1_STANDARD_Info;
	permanent							=	true;
	description							=	"Jak leci?";
};
func void DIA_OCVLK_1_STANDARD_Info()
{
	AI_Output (other, self, "DIA_OCVLK_1_STANDARD_15_00"); //Jak si� maj� sprawy?
	
	if (Kapitel <= 9)
	{
		AI_Output (self, other, "DIA_OCVLK_1_STANDARD_01_01"); //Orkowie zap�dzili nas w kozi r�g! Bez posi�k�w d�ugo nie wytrzymamy, wszyscy zgin�! Zreszt� dziwi mnie fakt, �e smoki nas nie wyko�czy�y.
	};
	if (Kapitel == 10)
	{
		if (MIS_KilledDragons < 4)
		{
			AI_Output (self, other, "DIA_OCVLK_1_STANDARD_01_02"); //Przynajmniej posi�ki dotar�y na czas.
		}
		else
		{
			AI_Output (self, other, "DIA_OCVLK_1_STANDARD_01_03"); //S�ysza�em, �e smoki zosta�y zabite? Innosowi niech b�d� dzi�ki!
		};
	};
	if (Kapitel >= 11)
	{
		if (!MIS_OCGateOpen)
		{
			AI_Output (self, other, "DIA_OCVLK_1_STANDARD_01_04"); //Przekl�ta ruda. Powinni�my zrzuci� ca�y jej zapas z barykad. Mo�e wtedy orkowie zostawiliby nas w spokoju.
		}
		else
		{
			AI_Output (self, other, "DIA_OCVLK_1_STANDARD_01_05"); //Ta sterta skrzy� porozrzucana bez�adnie przed bram� na pewno nie zatrzyma ork�w!
		};
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_OCVLK_1 (var C_Npc slf)
{
	DIA_OCVLK_1_EXIT.npc				=	Hlp_GetinstanceID(slf);
	DIA_OCVLK_1_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_OCVLK_1_LOCATION.npc			=	Hlp_GetinstanceID(slf);
	DIA_OCVLK_1_STANDARD.npc			=	Hlp_GetinstanceID(slf);
};
