///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Addon_Myxir_EXIT   (C_INFO)
{
	npc         = KDW_1403_Addon_Myxir_NW;
	nr          = 999;
	condition   = DIA_Addon_Myxir_EXIT_Condition;
	information = DIA_Addon_Myxir_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Addon_Myxir_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Addon_Myxir_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Myxir_Hallo		(C_INFO)
{
	npc			 = 	KDW_1403_Addon_Myxir_NW;
	nr			 = 	5;
	condition	 = 	DIA_Addon_Myxir_Hallo_Condition;
	information	 = 	DIA_Addon_Myxir_Hallo_Info;

	description	 = 	"Wszystko w porz�dku?";
};

func int DIA_Addon_Myxir_Hallo_Condition ()
{
	return true;
};

func void DIA_Addon_Myxir_Hallo_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Myxir_Hallo_15_00"); //Wszystko w porz�dku?
	AI_Output	(self, other, "DIA_Addon_Myxir_Hallo_12_01"); //Masz du�o odwagi, pokazuj�c si� tu.
};
///////////////////////////////////////////////////////////////////////
//	Info WasMachstDu
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Myxir_WasMachstDu		(C_INFO)
{
	npc			 = 	KDW_1403_Addon_Myxir_NW;
	nr			 = 	5;
	condition	 = 	DIA_Addon_Myxir_WasMachstDu_Condition;
	information	 = 	DIA_Addon_Myxir_WasMachstDu_Info;

	description	 = 	"Co tu robisz?";
};

func int DIA_Addon_Myxir_WasMachstDu_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Myxir_Hallo))
		{
			return true;
		};
};

func void DIA_Addon_Myxir_WasMachstDu_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Myxir_WasMachstDu_15_00"); //Co tu robisz?
	AI_Output	(self, other, "DIA_Addon_Myxir_WasMachstDu_12_01"); //Ucz� si� j�zyka budowniczych.
	AI_Output	(self, other, "DIA_Addon_Myxir_WasMachstDu_12_02"); //J�zyk jest kluczem do wiedzy tego staro�ytnego ludu.
	AI_Output	(self, other, "DIA_Addon_Myxir_WasMachstDu_12_03"); //Ka�dy z nas musi si� go nauczy�, inaczej ta ekspedycja dobiegnie ko�ca, zanim si� zacznie.
	AI_Output	(self, other, "DIA_Addon_Myxir_WasMachstDu_12_04"); //Budowniczowie u�ywali kamiennych tabliczek do przekazywania swojej wiedzy. Niestety, wiele z nich zniszczono lub skradziono dawno temu.
};
///////////////////////////////////////////////////////////////////////
//	Info Steintafeln
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Myxir_Steintafeln		(C_INFO)
{
	npc			 = 	KDW_1403_Addon_Myxir_NW;
	nr			 = 	5;
	condition	 = 	DIA_Addon_Myxir_Steintafeln_Condition;
	information	 = 	DIA_Addon_Myxir_Steintafeln_Info;

	description	 = 	"Co zapisano na tych kamiennych tablicach?";
};

func int DIA_Addon_Myxir_Steintafeln_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Myxir_WasMachstDu))
	{
		return true;
	};
};
func void DIA_Addon_Myxir_Steintafeln_Info ()
{
	AI_Output	(other, self, "DIA_Addon_Myxir_Steintafeln_15_00"); //Co zapisano na tych kamiennych tablicach?
	AI_Output	(self, other, "DIA_Addon_Myxir_Steintafeln_12_01"); //Zawieraj� w sobie ca�� wiedz� staro�ytnych.
	AI_Output	(self, other, "DIA_Addon_Myxir_Steintafeln_12_02"); //Niekt�rzy z nich za pomoc� zakl�� zwi�kszali sw� znajomo�� magii i walki.
	AI_Output	(self, other, "DIA_Addon_Myxir_Steintafeln_12_03"); //Dla kogo�, kto potrafi odczyta� tablice, to prawdziwy skarb.


	Log_CreateTopic (TOPIC_Addon_Stoneplates, LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Addon_Stoneplates, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_Stoneplates,"Na kamiennych tablicach spisano wiedz� staro�ytnego ludu budowniczych. Dzi�ki niekt�rym z tych tablic mo�na zwi�kszy� swoje umiej�tno�ci bojowe i znajomo�� magii, ale trzeba je umie� odczyta�."); 
};
