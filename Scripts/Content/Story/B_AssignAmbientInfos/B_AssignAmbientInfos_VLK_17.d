///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_VLK_17_EXIT (C_Info)
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
instance DIA_VLK_17_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_VLK_17_JOIN_Condition;
	information							=	DIA_VLK_17_JOIN_Info;
	permanent							=	true;
	description							=	"Co powinienem zrobi�, by zosta� obywatelem miasta?";
};
func int DIA_VLK_17_JOIN_Condition()
{
	if (hero.guild == GIL_NONE)
	&& (Player_IsApprentice == APP_NONE)
	{
		return true;
	};
};
func void DIA_VLK_17_JOIN_Info()
{
	AI_Output (other, self, "DIA_VLK_17_JOIN_15_00"); //Co powinienem zrobi�, by zosta� obywatelem miasta?
	AI_Output (self, other, "DIA_VLK_17_JOIN_17_01"); //Mistrzowie rzemios�a z dolnej cz�ci miasta posiadaj� bardzo du�e wp�ywy. Powiniene� porozmawia� z kt�rym� z nich.
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_VLK_17_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_VLK_17_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kim s� najwa�niejsze osoby w mie�cie?";
};
func void DIA_VLK_17_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_VLK_17_PEOPLE_15_00"); //Kim s� najwa�niejsze osoby w mie�cie?
	AI_Output (self, other, "DIA_VLK_17_PEOPLE_17_01"); //Od swojego przybycia paladyni kontroluj� w�a�ciwie ca�e Khorinis.
	AI_Output (self, other, "DIA_VLK_17_PEOPLE_17_02"); //Przedstawicielem prawa w mie�cie jest Lord Andre, znajdziesz go w koszarach.
	AI_Output (self, other, "DIA_VLK_17_PEOPLE_17_03"); //S� tylko dwa sposoby na spotkanie si� z nim - mo�na z�ama� prawo albo przy��czy� si� do stra�y miejskiej.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_VLK_17_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_VLK_17_LOCATION_Info;
	permanent							=	true;
	description							=	"Kt�re z miejsc w Khorinis warto odwiedzi�?";
};
func void DIA_VLK_17_LOCATION_Info()
{
	AI_Output (other, self, "DIA_VLK_17_LOCATION_15_00"); //Kt�re z miejsc w Khorinis warto odwiedzi�?
	AI_Output (self, other, "DIA_VLK_17_LOCATION_17_01"); //Mo�e powiniene� zapyta� o to jakiego� m�czyzn�. Je�li szukasz rozrywki, udaj si� do dzielnicy portowej.
	AI_Output (self, other, "DIA_VLK_17_LOCATION_17_02"); //Je�li jednak chcesz co� kupi�, udaj si� na targowisko niedaleko wschodniej bramy, lub do dolnej cz�ci miasta.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_VLK_17_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_VLK_17_STANDARD_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_VLK_17_STANDARD_Info()
{
	AI_Output (other, self, "DIA_VLK_17_STANDARD_15_00"); //Co s�ycha�?
	
	if (Kapitel == 7)
	|| (Kapitel == 8)
	{
		AI_Output (self, other, "DIA_VLK_17_STANDARD_17_01"); //Zastanawiam si�, po co paladyni pojawili si� w mie�cie. Niby przej�li kontrol� nad ratuszem, koszarami i portem, ale, jak dot�d, nic nie robi�.
		AI_Output (self, other, "DIA_VLK_17_STANDARD_17_02"); //Gdyby przyjechali tu zaj�� si� orkami lub bandytami, ju� dawno powinni co� z tym zrobi�. Musi by� inny pow�d...
	};
	if (Kapitel == 9)
	{
		AI_Output (self, other, "DIA_VLK_17_STANDARD_17_03"); //Chyba ju� wiem, co sprowadzi�o tu paladyn�w. Chodzi o rud�. Zaj�liby si� lepiej ochron� miasta.
	};
	if (Kapitel == 10)
	{
		AI_Output (self, other, "DIA_VLK_17_STANDARD_17_04"); //Mam nadziej�, �e w opowie�ciach o smokach jest troch� prawdy. Lord Hagen b�dzie musia� co� zrobi�, nie narazi nas przecie� na atak bestii.
	};
	if (Kapitel == 11)
	{
		AI_Output (self, other, "DIA_VLK_17_STANDARD_17_05"); //Teraz, kiedy smoki zosta�y pokonane, paladyni nie powinni mie� problemu ze st�umieniem pozosta�ych niepokoj�w.
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_VLK_17 (var C_Npc slf)
{
	DIA_VLK_17_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_17_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_17_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_17_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_17_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
