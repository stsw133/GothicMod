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
	AI_Output (self, other, "DIA_OCVLK_1_PEOPLE_01_01"); //Kapitan Garond. Odk¹d jednak walki uleg³y zaostrzeniu, nie rusza siê z sali tronowej na krok. Obawiam siê, ¿e ca³a sprawa Ÿle siê skoñczy.
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
	description							=	"Co wiesz o Górniczej Dolinie?";
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
	AI_Output (other, self, "DIA_OCVLK_1_LOCATION_15_00"); //Co wiesz o Górniczej Dolinie?
	AI_Output (self, other, "DIA_OCVLK_1_LOCATION_01_01"); //Wydaje mi siê, ¿e kilku naszych ch³opaków wci¹¿ pracuje w kopalniach.
	AI_Output (self, other, "DIA_OCVLK_1_LOCATION_01_02"); //Jednak nie zdecydowa³bym siê na handel z nimi. Ca³a dolina zajêta jest przez orków. Nie wspomnê ju¿ o smokach.
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
	AI_Output (other, self, "DIA_OCVLK_1_STANDARD_15_00"); //Jak siê maj¹ sprawy?
	
	if (Kapitel <= 9)
	{
		AI_Output (self, other, "DIA_OCVLK_1_STANDARD_01_01"); //Orkowie zapêdzili nas w kozi róg! Bez posi³ków d³ugo nie wytrzymamy, wszyscy zgin¹! Zreszt¹ dziwi mnie fakt, ¿e smoki nas nie wykoñczy³y.
	};
	if (Kapitel == 10)
	{
		if (MIS_KilledDragons < 4)
		{
			AI_Output (self, other, "DIA_OCVLK_1_STANDARD_01_02"); //Przynajmniej posi³ki dotar³y na czas.
		}
		else
		{
			AI_Output (self, other, "DIA_OCVLK_1_STANDARD_01_03"); //S³ysza³em, ¿e smoki zosta³y zabite? Innosowi niech bêd¹ dziêki!
		};
	};
	if (Kapitel >= 11)
	{
		if (!MIS_OCGateOpen)
		{
			AI_Output (self, other, "DIA_OCVLK_1_STANDARD_01_04"); //Przeklêta ruda. Powinniœmy zrzuciæ ca³y jej zapas z barykad. Mo¿e wtedy orkowie zostawiliby nas w spokoju.
		}
		else
		{
			AI_Output (self, other, "DIA_OCVLK_1_STANDARD_01_05"); //Ta sterta skrzyñ porozrzucana bez³adnie przed bram¹ na pewno nie zatrzyma orków!
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
