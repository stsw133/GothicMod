///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_VLK_8_EXIT(C_Info)
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
instance DIA_VLK_8_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_VLK_8_JOIN_Condition;
	information							=	DIA_VLK_8_JOIN_Info;
	permanent							=	true;
	description							=	"Chcia�bym zosta� obywatelem tego miasta!";
};
func int DIA_VLK_8_JOIN_Condition()
{
	if (hero.guild == GIL_NONE)
	&& (Player_IsApprentice == APP_NONE)
	{
		return true;
	};
};
func void DIA_VLK_8_JOIN_Info()
{
	AI_Output (other, self, "DIA_VLK_8_JOIN_15_00"); //Chcia�bym zosta� obywatelem tego miasta!
	AI_Output (self, other, "DIA_VLK_8_JOIN_08_01"); //Po co mi to m�wisz? Id� do kt�rego� z rzemie�lnik�w w dolnej cz�ci miasta. Je�li dopisze ci szcz�cie, kt�ry� przyjmie ci� na czeladnika.
	AI_Output (self, other, "DIA_VLK_8_JOIN_08_02"); //W innym wypadku b�dziesz musia� p�j�� do gubernatora i zosta� zarejestrowany jako prawny obywatel.
	AI_Output (self, other, "DIA_VLK_8_JOIN_08_03"); //W chwili obecnej mo�esz jednak o tym zapomnie�. Dop�ki w mie�cie stacjonuj� paladyni, dop�ty gubernator nie ma w�adzy w mie�cie.
	AI_Output (self, other, "DIA_VLK_8_JOIN_08_04"); //Przyw�dca paladyn�w, Lord Hagen, z pewno�ci� nie ma czasu na takie drobnostki.
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_VLK_8_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_VLK_8_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kt�rzy z obywateli miasta s� najwa�niejsi?";
};
func void DIA_VLK_8_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_VLK_8_PEOPLE_15_00"); //Kt�rzy z obywateli miasta s� najwa�niejsi?
	AI_Output (self, other, "DIA_VLK_8_PEOPLE_08_01"); //Opr�cz paladyn�w... Najwa�niejsi s� rzemie�lnicy z dolnej cz�ci miasta. Ich zdanie bardzo si� tu liczy.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_VLK_8_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_VLK_8_LOCATION_Info;
	permanent							=	true;
	description							=	"Czy s� tutaj jakie� interesuj�ce rzeczy?";
};
func void DIA_VLK_8_LOCATION_Info()
{
	AI_Output (other, self, "DIA_VLK_8_LOCATION_15_00"); //Jakie ciekawe miejsca warto tu zobaczy�?
	AI_Output (self, other, "DIA_VLK_8_LOCATION_08_01"); //Niedawno do portu wp�yn�� statek paladyn�w. Jest wielki. Koniecznie musisz go zobaczy�.
	AI_Output (self, other, "DIA_VLK_8_LOCATION_08_02"); //W�tpi� jednak, by chcieli ci� wpu�ci� na pok�ad. Paladyni broni� wst�pu na statek jak klejnot�w koronnych.
	AI_Output (self, other, "DIA_VLK_8_LOCATION_08_03"); //Nic dziwnego. To jedyna p�ywaj�ca jednostka zakotwiczona w okolicy.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_VLK_8_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_VLK_8_STANDARD_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_VLK_8_STANDARD_Info()
{
	AI_Output (other, self, "DIA_VLK_8_STANDARD_15_00"); //Co s�ycha�?
	
	if (Kapitel == 1)
	{
		AI_Output (self, other, "DIA_Addon_VLK_8_STANDARD_08_00"); //Ostatnimi czasy wszyscy s� bardzo nerwowi.
		AI_Output (self, other, "DIA_Addon_VLK_8_STANDARD_08_01"); //Jakby ma�o by�o tego, �e przybyli tu paladyni - teraz jeszcze znikaj� ludzie!
		AI_Output (self, other, "DIA_Addon_VLK_8_STANDARD_08_02"); //Najwy�sza pora, �eby stra� co� z tym zrobi�a.
		
		if (!SC_HearedAboutMissingPeople)
		{
			Log_CreateTopic (TOPIC_Addon_WhoStolePeople, LOG_MISSION);
			Log_SetTopicStatus (TOPIC_Addon_WhoStolePeople, LOG_RUNNING);
			B_LogEntry (TOPIC_Addon_WhoStolePeople, LogText_Addon_SCKnowsMisspeapl);
		};
		SC_HearedAboutMissingPeople = true;
	};
	
	if (Kapitel == 8)
	{
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_01"); //Wszyscy czekaj� na og�oszenie powodu wizyty paladyn�w. Domy�lam si�, �e s� tu z powodu ork�w. Bestie pewnie wkr�tce zaatakuj�!
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_02"); //Mo�e i paladyn�w prowadzi �aska Innosa, lecz kiedy zjawi� si� orkowe hordy, wszyscy b�dziemy straceni.
	};
	if (Kapitel == 9)
	{
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_03"); //Ludzie powiadaj�, �e jedynym powodem wizyty paladyn�w jest ch�� zabrania rudy... na potrzeby wojny na kontynencie.
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_04"); //Czy wiesz, co to oznacza? Kr�l ma w g��bokim powa�aniu to, �e orkowie wszystkich nas pozabijaj�.
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_05"); //Zrobi� wszystko, by by� na tym statku, kiedy paladyni zaczn� podnosi� kotwic�.
	};
	if (Kapitel == 10)
	{
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_06"); //Pono� orkowie lec� tutaj na grzbietach smok�w, wielkich jak po�owa miasta. Nie mamy �adnych szans na obron�!
	};
	if (Kapitel >= 11)
	{
		AI_Output (self, other, "DIA_VLK_8_STANDARD_08_07"); //Ludzie m�wi�, �e smoki zosta�y pokonane. Czy to prawda?
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_VLK_8 (var C_Npc slf)
{
	DIA_VLK_8_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_8_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_VLK_8_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_8_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_VLK_8_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
