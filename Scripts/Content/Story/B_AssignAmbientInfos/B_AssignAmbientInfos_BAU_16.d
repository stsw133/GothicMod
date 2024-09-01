///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_BAU_16_EXIT (C_Info)
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
instance DIA_BAU_16_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_BAU_16_JOIN_Condition;
	information							=	DIA_BAU_16_JOIN_Info;
	permanent							=	true;
	description							=	"Powiedz mi co� wi�cej o tych najemnikach!";
};
func int DIA_BAU_16_JOIN_Condition()
{
	if (Kapitel == 7)
	{
		return true;
	};
};
func void DIA_BAU_16_JOIN_Info()
{
	AI_Output (other, self, "DIA_BAU_16_JOIN_15_00"); //Powiedz mi co� wi�cej o tych najemnikach!
	AI_Output (self, other, "DIA_BAU_16_JOIN_16_01"); //Ca�ymi dniami w��cz� si� po farmie, od czasu do czasu dadz� sobie po pyskach i najwyra�niej dobrze si� bawi�.
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_BAU_16_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_BAU_16_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto tu dowodzi?";
};
func void DIA_BAU_16_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_BAU_16_PEOPLE_15_00"); //Kto tu rz�dzi?
	AI_Output (self, other, "DIA_BAU_16_PEOPLE_16_01"); //Je�li chcesz zna� moje zdanie, najemnicy.
	AI_Output (self, other, "DIA_BAU_16_PEOPLE_16_02"); //Onar wprawdzie im p�aci, ale i tak robi� przewa�nie to, co im si� �ywnie podoba.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_BAU_16_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_BAU_16_LOCATION_Info;
	permanent							=	true;
	description							=	"Co mo�esz mi powiedzie� o tym miejscu?";
};
func void DIA_BAU_16_LOCATION_Info()
{
	AI_Output (other, self, "DIA_BAU_16_LOCATION_15_00"); //Co mo�esz mi powiedzie� o tej okolicy?
	AI_Output (self, other, "DIA_BAU_16_LOCATION_16_01"); //W pobli�u znajduj� si� trzy farmy. Farma Onara na wschodzie, za� na p�nocnym kra�cu doliny gospodarstwo Sekoba.
	AI_Output (self, other, "DIA_BAU_16_LOCATION_16_02"); //�cie�ka pn�ca si� na wy�yn�, na po�udniowy wsch�d st�d, prowadzi na farm� Bengara.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_BAU_16_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_BAU_16_STANDARD_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_BAU_16_STANDARD_Info()
{
	AI_Output (other, self, "DIA_BAU_16_STANDARD_15_00"); //Co s�ycha�?
	
	if (Kapitel == 7)
	{
		AI_Output (self, other, "DIA_BAU_16_STANDARD_16_01"); //Od kiedy okaza�o si�, �e potrafimy si� broni�, oddzia�y z miasta przesta�y rozkrada� nasze zbiory i inwentarz! Chyba zbytnio si� nas boj�!
	};
	if (Kapitel == 8)
	{
		AI_Output (self, other, "DIA_BAU_16_STANDARD_16_02"); //Ludzie powiadaj�, �e w G�rniczej Dolinie gromadzi si� armia. Pono� wkr�tce tu nadci�gnie.
	};
	if (Kapitel == 9)
	{
		AI_Output (self, other, "DIA_BAU_16_STANDARD_16_03"); //Plotka g�osi, �e w G�rniczej Dolinie zadomowi�y si� smoki, ale jako� trudno mi w to uwierzy�.
	};
	if (Kapitel == 10)
	{
		AI_Output (self, other, "DIA_BAU_16_STANDARD_16_04"); //Niekt�rzy z najemnik�w odeszli. W�a�ciwie nie wiem, czy to dobrze, czy to �le.
	};
	if (Kapitel >= 11)
	{
		AI_Output (self, other, "DIA_BAU_16_STANDARD_16_05"); //Swoj� drog� zastanawiam si�, po co w�a�ciwie wysy�aj� tylu paladyn�w do G�rniczej Doliny, o co w tym wszystkim chodzi?
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_BAU_16 (var C_Npc slf)
{
	DIA_BAU_16_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_BAU_16_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_BAU_16_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_BAU_16_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_BAU_16_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
