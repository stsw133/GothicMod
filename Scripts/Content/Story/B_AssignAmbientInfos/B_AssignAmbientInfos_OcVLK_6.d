///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_OCVLK_6_EXIT (C_Info)
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
instance DIA_OCVLK_6_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_OCVLK_6_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto tu dowodzi?";
};
func void DIA_OCVLK_6_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_OCVLK_6_PEOPLE_15_00"); //Kto tu dowodzi?
	AI_Output (self, other, "DIA_OCVLK_6_PEOPLE_06_01"); //Fortem, a w�a�ciwie tym, co z niego zosta�o, zarz�dza Garond.
	AI_Output (self, other, "DIA_OCVLK_6_PEOPLE_06_02"); //Jednak niczym nie zajmuje si� osobi�cie - chyba �e kt�ry� z jego ludzi wpadnie w jaki� tarapaty.
	
	if (!Npc_IsDead(Engor))
	{
		AI_Output (self, other, "DIA_OCVLK_6_PEOPLE_06_03"); //Je�li szukasz wyposa�enia, porozmawiaj lepiej z Engorem. Znajdziesz go w budynku naprzeciw siedziby Garonda.
	};
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_OCVLK_6_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	DIA_OCVLK_6_LOCATION_Condition;
	information							=	DIA_OCVLK_6_LOCATION_Info;
	permanent							=	true;
	description							=	"Powiedz mi co� na temat sytuacji w G�rniczej Dolinie.";
};
func int DIA_OCVLK_6_LOCATION_Condition()
{
	if (Kapitel <= 10)
	&& (MIS_KilledDragons < 10)
	{
		return true;
	};
};
func void DIA_OCVLK_6_LOCATION_Info()
{
	AI_Output (other, self, "DIA_OCVLK_6_LOCATION_15_00"); //Powiedz mi co� na temat sytuacji w G�rniczej Dolinie.
	AI_Output (self, other, "DIA_OCVLK_6_LOCATION_06_01"); //Martwi� si� orkow� palisad�. Nie wiem nawet, co si� za ni� kryje.
	AI_Output (self, other, "DIA_OCVLK_6_LOCATION_06_02"); //Na pocz�tku kilku z nich wybudowa�o mur. Potem, pewnej nocy, sprowadzili machiny obl�nicze.
	AI_Output (self, other, "DIA_OCVLK_6_LOCATION_06_03"); //Mamy szcz�cie, �e uda�o si� nam odeprze� atak.
	AI_Output (self, other, "DIA_OCVLK_6_LOCATION_06_04"); //Za palisad� znajduje si� przysta�. Je�li orkowie otrzymaj� dostawy zapas�w drog� morsk�, b�dziemy zgubieni.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_OCVLK_6_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_OCVLK_6_STANDARD_Info;
	permanent							=	true;
	description							=	"Co s�ycha�?";
};
func void DIA_OCVLK_6_STANDARD_Info()
{
	AI_Output (other, self, "DIA_OCVLK_6_STANDARD_15_00"); //Jak leci?
	
	if (Kapitel <= 9)
	{
		AI_Output (self, other, "DIA_OCVLK_6_STANDARD_06_01"); //Przy��cz si� do armii, m�wili, zasmakuj przygody, m�wili. A teraz... no, sam popatrz.
		AI_Output (self, other, "DIA_OCVLK_6_STANDARD_06_02"); //W tej chwili nawet za zbli�enie si� do zapas�w jedzenia grozi kara �mierci. Garond chyba si� obawia, �e ukradniemy co si� da i damy drapaka.
		AI_Output (self, other, "DIA_OCVLK_6_STANDARD_06_03"); //Je�li te przekl�te smoki nas nie pozabijaj�, to pewnie wszyscy zdechniemy tu z g�odu.
	};
	if (Kapitel == 10)
	{
		if (MIS_KilledDragons < 4)
		{
			AI_Output (self, other, "DIA_OCVLK_6_STANDARD_06_04"); //�owcy smok�w! Nie roz�mieszaj mnie! Ci ludzie niczego tu nie zmieni�.
		}
		else
		{
			AI_Output (self, other, "DIA_OCVLK_6_STANDARD_06_05"); //Podobno smoki zosta�y zg�adzone. Mo�e jednak jest dla nas jaka� nadzieja!
		};
	};
	if (Kapitel >= 11)
	{
		if (!MIS_OCGateOpen)
		{
			AI_Output (self, other, "DIA_OCVLK_6_STANDARD_06_06"); //Przekl�ta ruda. Powinni�my zrzuci� ca�y jej zapas z barykad. Mo�e wtedy orkowie zostawiliby nas w spokoju.
		}
		else
		{
			AI_Output (self, other, "DIA_OCVLK_6_STANDARD_06_07"); //Te �a�osne skrzynie porozrzucane bez�adnie przed bram� nie zatrzymaj� orkowych atak�w!
		};
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_OCVLK_6 (var C_Npc slf)
{
	DIA_OCVLK_6_EXIT.npc				=	Hlp_GetinstanceID(slf);
	DIA_OCVLK_6_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_OCVLK_6_LOCATION.npc			=	Hlp_GetinstanceID(slf);
	DIA_OCVLK_6_STANDARD.npc			=	Hlp_GetinstanceID(slf);
};
