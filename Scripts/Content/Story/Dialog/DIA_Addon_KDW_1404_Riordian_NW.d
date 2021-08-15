///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Riordian_EXIT   (C_INFO)
{
	npc         = KDW_1404_Addon_Riordian_NW;
	nr          = 999;
	condition   = DIA_Addon_Riordian_EXIT_Condition;
	information = DIA_Addon_Riordian_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};

FUNC INT DIA_Addon_Riordian_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Addon_Riordian_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_Hallo		(C_INFO)
{
	npc			 = 	KDW_1404_Addon_Riordian_NW;
	nr			 = 	5;
	condition	 = 	DIA_Addon_Riordian_Hallo_Condition;
	information	 = 	DIA_Addon_Riordian_Hallo_Info;
	description	 = 	"Co robisz?";
};

func int DIA_Addon_Riordian_Hallo_Condition ()
{
	return TRUE;
};

func void DIA_Addon_Riordian_Hallo_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_Hallo_15_00"); //Co robisz?
	AI_Output	(self, other, "DIA_Addon_Riordian_Hallo_10_01"); //Badam kultur� tego staro�ytnego ludu.
	AI_Output	(self, other, "DIA_Addon_Riordian_Hallo_10_02"); //Z inskrypcji wiemy, �e �yli tu bardzo dawno temu.
	AI_Output	(self, other, "DIA_Addon_Riordian_Hallo_10_03"); //Nie wiem dok�adnie, KIEDY powsta�a ta budowla, ale ich cywilizacja by�a bardzo rozwini�ta.
	AI_Output	(self, other, "DIA_Addon_Riordian_Hallo_10_04"); //Zbudowali miasto po drugiej stronie g�r. Oraz �wi�tyni� Adanosa.
};
///////////////////////////////////////////////////////////////////////
//	Info Alter
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_Alter		(C_INFO)
{
	npc			 = 	KDW_1404_Addon_Riordian_NW;
	nr			 = 	6;
	condition	 = 	DIA_Addon_Riordian_Alter_Condition;
	information	 = 	DIA_Addon_Riordian_Alter_Info;
	description	 = 	"Na ile lat oceniasz wiek tego budynku?";
};
func int DIA_Addon_Riordian_Alter_Condition ()
{
	if Npc_KnowsInfo (other, DIA_Addon_Riordian_Hallo)
	{
		return TRUE;
	};
};
func void DIA_Addon_Riordian_Alter_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_Alter_15_00"); //Na ile lat oceniasz wiek tego budynku?
	AI_Output	(self, other, "DIA_Addon_Riordian_Alter_10_01"); //Nie potrafi� powiedzie� dok�adnie, ale na pewno ma ju� kilkaset lat.
};
///////////////////////////////////////////////////////////////////////
//	Info Atlantis
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_Atlantis		(C_INFO)
{
	npc			 = 	KDW_1404_Addon_Riordian_NW;
	nr			 = 	4;
	condition	 = 	DIA_Addon_Riordian_Atlantis_Condition;
	information	 = 	DIA_Addon_Riordian_Atlantis_Info;
	description	 = 	"Zaginione miasto na wyspie Khorinis?";
};

func int DIA_Addon_Riordian_Atlantis_Condition ()
{
	if Npc_KnowsInfo (other, DIA_Addon_Riordian_Hallo)
	{
		return TRUE;
	};
};

func void DIA_Addon_Riordian_Atlantis_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_Atlantis_15_00"); //Zaginione miasto na wyspie Khorinis?
	AI_Output	(self, other, "DIA_Addon_Riordian_Atlantis_10_01"); //Tak. Do tej pory my�leli�my, �e znamy ca�� wysp�.
	AI_Output	(self, other, "DIA_Addon_Riordian_Atlantis_10_02"); //S�dzili�my, �e ca�� jej p�nocno-wschodni� cz�� zajmuje ogromny masyw g�rski.
	AI_Output	(self, other, "DIA_Addon_Riordian_Atlantis_10_03"); //Ale mylili�my si�.
	AI_Output	(self, other, "DIA_Addon_Riordian_Atlantis_10_04"); //Za g�rami le�y dolina. Znajdowa�o si� tam miasto prastarej cywilizacji.
	AI_Output	(self, other, "DIA_Addon_Riordian_Atlantis_10_05"); //Ch�tnie bym zobaczy� budynki tego miasta, ale pewnie rozpad�y si� w py� wieki temu...
	
	B_LogEntry (TOPIC_Addon_KDW,"Magowie Wody podejrzewaj�, �e za portalem znajduje si� staro�ytne, zaginione miasto."); 
};
///////////////////////////////////////////////////////////////////////
//	Info SaturasWantYou
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Riordian_SaturasWantYou		(C_INFO)
{
	npc			 = 	KDW_1404_Addon_Riordian_NW;
	nr			 = 	5;
	condition	 = 	DIA_Addon_Riordian_SaturasWantYou_Condition;
	information	 = 	DIA_Addon_Riordian_SaturasWantYou_Info;
	description	 = 	"Saturas chce ci� widzie�.";
};

func int DIA_Addon_Riordian_SaturasWantYou_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Riordian_Hallo))
	&& (MIS_Addon_Saturas_BringRiordian2Me == LOG_RUNNING)
	{
		return TRUE;
	};
};

func void DIA_Addon_Riordian_SaturasWantYou_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_SaturasWantYou_15_00"); //Saturas chce ci� widzie�.
	AI_Output	(self, other, "DIA_Addon_Riordian_SaturasWantYou_10_01"); //Czy�by posun�� si� naprz�d ze swym dochodzeniem? W takim razie natychmiast si� z nim zobacz�.
	
	if (Nefarius_NW.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Riordian_SaturasWantYou_10_02"); //Je�li chcesz si� dowiedzie� wi�cej o tym miejscu, porozmawiaj z Nefariusem.
		AI_Output	(self, other, "DIA_Addon_Riordian_SaturasWantYou_10_03"); //Znajdziesz go w g��bi krypt.
	};	
	
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine	(self,"Saturas");
	MIS_Addon_Saturas_BringRiordian2Me = LOG_SUCCESS;
	B_GivePlayerXP(100);
};

///////////////////////////////////////////////////////////////////////
//	Info Perm
///////////////////////////////////////////////////////////////////////
var int Riordian_PermNews;

instance DIA_Addon_Riordian_Perm		(C_INFO)
{
	npc			 = 	KDW_1404_Addon_Riordian_NW;
	nr			 = 	99;
	condition	 = 	DIA_Addon_Riordian_Perm_Condition;
	information	 = 	DIA_Addon_Riordian_Perm_Info;
	permanent	 = 	TRUE;

	description	 = 	"Dowiedzia�e� si� czego� nowego?";
};

func int DIA_Addon_Riordian_Perm_Condition ()
{
	if (MIS_Addon_Saturas_BringRiordian2Me == LOG_SUCCESS)
		{
			return TRUE;
		};
};

func void DIA_Addon_Riordian_Perm_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Riordian_Perm_15_00"); //Dowiedzia�e� si� czego� nowego?
	if (Riordian_PermNews == FALSE)
	{
		AI_Output	(self, other, "DIA_Addon_Riordian_Perm_10_01"); //Wiem, �e ta prastara cywilizacja czci�a Adanosa!
		Riordian_PermNews = TRUE;
	}
	else
	{
		AI_Output	(self, other, "DIA_Addon_Riordian_Perm_10_02"); //Raczej nie. Wr�� p�niej.
	};
	AI_StopProcessInfos (self);
};
