///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_BAU_13_EXIT (C_Info)
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
instance DIA_BAU_13_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_BAU_13_JOIN_Condition;
	information							=	DIA_BAU_13_JOIN_Info;
	permanent							=	true;
	description							=	"Powiedz mi coœ wiêcej o tych najemnikach!";
};
func int DIA_BAU_13_JOIN_Condition()
{
	if (Kapitel == 7)
	{
		return true;
	};
};
func void DIA_BAU_13_JOIN_Info()
{
	AI_Output (other, self, "DIA_BAU_13_JOIN_15_00"); //Powiedz mi coœ wiêcej o tych najemnikach!
	AI_Output (self, other, "DIA_BAU_13_JOIN_13_01"); //Jeœli dadz¹ ci siê we znaki, to porozmawiaj z Lee. My, ch³opi, zawsze tak robimy, a on trzyma swoich ludzi krótko.
	AI_Output (self, other, "DIA_BAU_13_JOIN_13_02"); //Jeœli któryœ z nich Ÿle siê zachowuje, od razu dostaje nauczkê.
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_BAU_13_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_BAU_13_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto tu dowodzi?";
};
func void DIA_BAU_13_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_BAU_13_PEOPLE_15_00"); //Kto tu rz¹dzi?
	AI_Output (self, other, "DIA_BAU_13_PEOPLE_13_01"); //Jeœli chcesz znaæ moje zdanie, najemnicy. Fakt, Onar ich op³aca, ale chyba tylko sam Innos wie, jak d³ugo jeszcze bêd¹ go s³uchaæ.
	AI_Output (self, other, "DIA_BAU_13_PEOPLE_13_02"); //Niech no tylko najemnicy pójd¹ po rozum do g³owy, a szybko wpadn¹ na to, ¿e nie jest im potrzebny. Nie chcia³bym byæ wtedy w jego skórze.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_BAU_13_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_BAU_13_LOCATION_Info;
	permanent							=	true;
	description							=	"Co mo¿esz mi powiedzieæ o tym miejscu?";
};
func void DIA_BAU_13_LOCATION_Info()
{
	AI_Output (other, self, "DIA_BAU_13_LOCATION_15_00"); //Co mo¿esz mi powiedzieæ o tym miejscu?
	AI_Output (self, other, "DIA_BAU_13_LOCATION_13_01"); //W pobli¿u znajduj¹ siê trzy farmy. Farma Onara na wschodzie, zaœ u pó³nocnego ujœcia doliny gospodarstwo Sekoba.
	AI_Output (self, other, "DIA_BAU_13_LOCATION_13_02"); //Œcie¿ka pn¹ca siê na wy¿ynê, na po³udniowy zachód st¹d, prowadzi na farmê Bengara.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_BAU_13_STANDARD(C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_BAU_13_STANDARD_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_BAU_13_STANDARD_Info()
{
	AI_Output (other, self, "DIA_BAU_13_STANDARD_15_00"); //Co s³ychaæ?
	
	if (Kapitel == 7)
	{
		AI_Output (self, other, "DIA_BAU_13_STANDARD_13_01"); //Od kiedy zaczêliœmy siê broniæ, oddzia³y stacjonuj¹ce w mieœcie przesta³y rozkradaæ nasze zbiory i inwentarz! Chyba zbytnio siê nas boj¹!
	};
	if (Kapitel == 8)
	{
		AI_Output (self, other, "DIA_BAU_13_STANDARD_13_02"); //Paladyni z miasta nie za bardzo przejmuj¹ siê naszym losem. Jeœli orkowie zaatakuj¹, bêdziemy zdani tylko na siebie.
	};
	if (Kapitel == 9)
	{
		AI_Output (self, other, "DIA_BAU_13_STANDARD_13_03"); //I jeszcze smoki! Plotka g³osi, ¿e bestie pojawi³y siê w Górniczej Dolinie. Ponoæ wkrótce maj¹ przeprawiæ siê przez prze³êcz!
	};
	if (Kapitel == 10)
	{
		AI_Output (self, other, "DIA_BAU_13_STANDARD_13_04"); //Mówi siê nawet o tym, jakoby bandyci z gór zmierzali w stronê Górniczej Doliny. Jak dla mnie, to trochê za du¿o niebezpieczeñstw.
	};
	if (Kapitel >= 11)
	{
		AI_Output (self, other, "DIA_BAU_13_STANDARD_13_05"); //Kiedy podatki spadn¹ do jakichœ sensownych wartoœci, a my bêdziemy przyzwoicie zarabiaæ, wtedy znów zaczniemy handlowaæ z miastem.
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_BAU_13 (var C_Npc slf)
{
	DIA_BAU_13_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_BAU_13_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_BAU_13_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_BAU_13_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_BAU_13_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
