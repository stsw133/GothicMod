///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_Addon_BL_BDT_1_EXIT (C_Info)
{
	nr									=	999;
	condition							=	atrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// Chef
///******************************************************************************************
instance DIA_Addon_BL_BDT_1_Chef (C_Info)
{
	nr									=	2;
	condition							=	atrue;
	information							=	DIA_Addon_BL_BDT_1_Chef_Info;
	permanent							=	true;
	description							=	"Kto tu jest szefem?";
};
func void DIA_Addon_BL_BDT_1_Chef_Info()
{
	AI_Output (other, self, "DIA_Addon_BL_BDT_1_Chef_15_00");//Kto tu jest szefem?
	
	if (RavenIsDead)
	{
		if (Npc_IsDead(Thorus))
		{
			AI_Output (self, other, "DIA_Addon_BL_BDT_1_Chef_01_01");//Przyw�dcy przychodz� i odchodz�... Trudno ich zliczy�.
		}
		else
		{
			AI_Output (self, other, "DIA_Addon_BL_BDT_1_Chef_01_02");//Chyba naszym nowym szefem jest Thorus.
		};
	}
	else
	{
		AI_Output (self, other, "DIA_Addon_BL_BDT_1_Chef_01_03");//Naszym nowym przyw�dc� jest Kruk. On nas tu doprowadzi� i za�o�y� nasz ob�z.
		AI_Output (self, other, "DIA_Addon_BL_BDT_1_Chef_01_04");//Sprawuje kontrol� nad kopalni�, bo inaczej te psy dawno pozabija�yby si� o z�oto.
	};
};

///******************************************************************************************
/// Lager
///******************************************************************************************
instance DIA_Addon_BL_BDT_1_Lager (C_Info)
{
	nr									=	3;
	condition							=	DIA_Addon_BL_BDT_1_Lager_Condition;
	information							=	DIA_Addon_BL_BDT_1_Lager_Info;
	permanent							=	false;
	description							=	"Co wiesz o obozie?";
};
func int DIA_Addon_BL_BDT_1_Lager_Condition()
{
	if (!Sklaven_Flucht)
	|| (!Npc_IsDead(Raven))
	{
		return true;
	};
};
func void DIA_Addon_BL_BDT_1_Lager_Info()
{
	AI_Output (other, self, "DIA_Addon_BL_BDT_1_Lager_15_00");//Co wiesz o obozie?
	AI_Output (self, other, "DIA_Addon_BL_BDT_1_Lager_01_01");//Gdy sta�o si� jasne, �e jest tu kopalnia z�ota, te szczury wyrzyna�y si� a� mi�o.
	AI_Output (self, other, "DIA_Addon_BL_BDT_1_Lager_01_02");//Wtedy Kruk zabi� najgorszych z nich, a reszt� wyrzuci� z kopalni.
	AI_Output (self, other, "DIA_Addon_BL_BDT_1_Lager_01_03");//Od tamtej pory nikomu nie wolno wchodzi� na g�rny obszar. A wi�ni�w zap�dzi� do pracy w kopalni.
	
	if (!SC_KnowsRavensGoldmine)
	{
		B_LogEntry (TOPIC_Addon_RavenKDW, LogText_Addon_RavensGoldmine);
		Log_AddEntry (TOPIC_Addon_Sklaven, LogText_Addon_RavensGoldmine);
		B_LogEntry (TOPIC_Addon_ScoutBandits, Log_Text_Addon_ScoutBandits);
	};
	SC_KnowsRavensGoldmine = true;
};

///******************************************************************************************
/// Lager2
///******************************************************************************************
instance DIA_Addon_BL_BDT_1_Lager2 (C_Info)
{
	nr									=	3;
	condition							=	DIA_Addon_BL_BDT_1_Lager2_Condition;
	information							=	DIA_Addon_BL_BDT_1_Lager2_Info;
	permanent							=	true;
	description							=	"Co mo�esz mi powiedzie� o obozowisku?";
};
func int DIA_Addon_BL_BDT_1_Lager2_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Addon_BL_BDT_1_Lager))
	{
		return true;
	};
};
func void DIA_Addon_BL_BDT_1_Lager2_Info()
{
	AI_Output (other, self, "DIA_Addon_BL_BDT_1_Lager2_15_00");//Co wiesz o obozie?
	AI_Output (self, other, "DIA_Addon_BL_BDT_1_Lager2_01_01");//Je�eli kogo� zaatakujesz, WSZYSCY b�d� ci� �ciga�.
	AI_Output (self, other, "DIA_Addon_BL_BDT_1_Lager2_01_02");//No chyba �e masz dobry pow�d, �eby si� do kogo� dobra�. Wtedy nikt nie b�dzie si� wtr�ca�.
};

///******************************************************************************************
/// News
///******************************************************************************************
instance DIA_Addon_BL_BDT_1_News (C_Info)
{
	nr									=	4;
	condition							=	aTrue;
	information							=	DIA_Addon_BL_BDT_1_News_Info;
	permanent							=	true;
	description							=	"Co nowego?";
};
func void DIA_Addon_BL_BDT_1_News_Info()
{
	AI_Output (other, self, "DIA_Addon_BL_BDT_1_News_15_00");//Co nowego?
	
	if (RavenIsDead)
	{
		AI_Output (self, other, "DIA_Addon_BL_BDT_1_News_01_01");//Kruk nie �yje. Co my teraz zrobimy?
	};
	AI_Output (self, other, "DIA_Addon_BL_BDT_1_News_01_02");//Piraci nie chc� ju� wozi� nas na sta�y l�d, bo nie dostali wynagrodzenia za ostatnie wycieczki.
	AI_Output (self, other, "DIA_Addon_BL_BDT_1_News_01_03");//Powinni�my wbi� jednego czy dw�ch na pal, wtedy reszta na pewno zmieni zdanie.
};

///******************************************************************************************
/// Sklaven
///******************************************************************************************
instance DIA_Addon_BL_BDT_1_Sklaven (C_Info)
{
	nr									=	5;
	condition							=	DIA_Addon_BL_BDT_1_Sklaven_Condition;
	information							=	DIA_Addon_BL_BDT_1_Sklaven_Info;
	permanent							=	true;
	description							=	"Co wiesz o wi�niach?";
};
func int DIA_Addon_BL_BDT_1_Sklaven_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Addon_BL_BDT_1_Lager))
	&& (!Sklaven_Flucht || !RavenIsDead)
	{
		return true;
	};
};
func void DIA_Addon_BL_BDT_1_Sklaven_Info()
{
	AI_Output (other, self, "DIA_Addon_BL_BDT_1_Sklaven_15_00");//Co wiesz o wi�niach?
	AI_Output (self, other, "DIA_Addon_BL_BDT_1_Sklaven_01_01");//Kruk chce, �eby co� wykopali. Najpierw zmusi� do tego bandyt�w, ale zbyt wielu z nich oszala�o.
	AI_Output (self, other, "DIA_Addon_BL_BDT_1_Sklaven_01_02");//Dlatego zaprz�g� wi�ni�w - nawet gdy zgin�, nie ma to znaczenia.
	
	if (!BDT_1_Ausbuddeln)
	{
		AI_Output (other, self, "DIA_Addon_BL_BDT_1_Sklaven_15_03");//Co Kruk chce wykopa�?
		AI_Output (self, other, "DIA_Addon_BL_BDT_1_Sklaven_01_04");//Nie mam poj�cia, ale wygl�da na to, �e to co� wi�cej ni� z�oto.
		BDT_1_Ausbuddeln = true;
	};
};
func void B_AssignAmbientInfos_Addon_BL_BDT_1 (var C_Npc slf)
{
	DIA_Addon_BL_BDT_1_EXIT.npc			=	Hlp_GetinstanceID(slf);
	DIA_Addon_BL_BDT_1_Chef.npc			=	Hlp_GetinstanceID(slf);
	DIA_Addon_BL_BDT_1_Lager.npc		=	Hlp_GetinstanceID(slf);
	DIA_Addon_BL_BDT_1_News.npc			=	Hlp_GetinstanceID(slf);
	DIA_Addon_BL_BDT_1_Sklaven.npc		=	Hlp_GetinstanceID(slf);
	DIA_Addon_BL_BDT_1_Lager2.npc		=	Hlp_GetinstanceID(slf);
};
