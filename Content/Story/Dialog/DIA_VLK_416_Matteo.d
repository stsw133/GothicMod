//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Matteo_EXIT (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_MAtteo_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Matteo_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Hallo
//******************************************************************************************
INSTANCE DIA_Matteo_Hallo(C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	1;
	condition							=	DIA_Matteo_Hallo_Condition;
	information							=	DIA_MAtteo_Hallo_Info;
	permanent							=	false;
	important							=	true;
};

FUNC INT DIA_Matteo_Hallo_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_Hallo_Info()
{
	AI_Output (self, other, "DIA_Matteo_Hallo_09_00"); //Co mog� dla ciebie zrobi�?
};

//******************************************************************************************
//	Sell What
//******************************************************************************************
INSTANCE DIA_Matteo_SellWhat (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	1;
	condition							=	atrue;
	information							=	DIA_MAtteo_SellWhat_Info;
	permanent							=	false;
	description							=	"Co sprzedajesz?";
};

FUNC VOID DIA_Matteo_SellWhat_Info()
{
	AI_Output (other, self, "DIA_Matteo_SellWhat_15_00"); //Co sprzedajesz?
	AI_Output (self, other, "DIA_Matteo_SellWhat_09_01"); //Mog� ci zaproponowa� wszystko, czego b�dziesz potrzebowa�, �eby przetrwa� w dziczy. Bro�, pochodnie, �ywno��... nawet pancerz.
	AI_Output (self, other, "DIA_Matteo_SellWhat_09_02"); //Mam na stanie co� specjalnego.
	AI_Output (self, other, "DIA_Matteo_SellWhat_09_03"); //Pancerz z podw�jnie utwardzanej sk�ry z�bacza - nieu�ywany. Zainteresowany?
	
	SetNoteEntry (Note_Traders, LOG_NOTE, "Sklep Mattea znajduje si� przy po�udniowej bramie miasta. Mo�na tam kupi� or�, �ywno�� oraz wyposa�enie.");
};

//******************************************************************************************
//	TRADE
//******************************************************************************************
INSTANCE DIA_Matteo_TRADE (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	800;
	condition							=	DIA_Matteo_TRADE_Condition;
	information							=	DIA_Matteo_TRADE_Info;
	permanent							=	true;
	description							=	"Poka� mi swoje towary.";
	trade								=	true;
};

FUNC INT DIA_Matteo_TRADE_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_SellWhat))
	{
		return true;
	};	
};

FUNC VOID DIA_Matteo_TRADE_Info()
{
	AI_Output (other, self, "DIA_Matteo_TRADE_15_00"); //Poka� mi swoje towary.
	if (Kapitel == 9)
	&& (QuestStep_RescueBennet != LOG_SUCCESS)
	{
		AI_Output (self,other,"DIA_Matteo_TRADE_09_01"); //Od czasu jak najemnicy za�atwili paladyna Lothara, inspekcje paladyn�w s� coraz bardziej nieprzyjemne.
		AI_Output (self,other,"DIA_Matteo_TRADE_09_02"); //Mam nadziej�, �e jak ju� powiesz� morderc�, sytuacja si� uspokoi.
	}
	else if (Kapitel == 11)
	{
		AI_Output (self,other,"DIA_Matteo_TRADE_09_03"); //Wygl�da na to, �e tym razem paladyni traktuj� to naprawd� powa�nie. Wycofali nawet swoich stra�nik�w ze statku.
		AI_Output (self,other,"DIA_Matteo_TRADE_09_04"); //Dobrze, �e uzupe�niasz zapasy. Kto wie, czy miasto utrzyma si� jeszcze tydzie�.
	};
	B_GiveTradeInv(self);
};

//******************************************************************************************
//	ARMOR
//******************************************************************************************

var int Matteo_LeatherBought;

//******************************************************************************************
instance DIA_Matteo_LEATHER (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	850;
	condition							=	DIA_Matteo_LEATHER_Condition;
	information							=	DIA_Matteo_LEATHER_Info;
	permanent							=	true;
	description							=	"Kup sk�rzany pancerz. 450 sztuk z�ota.";
};

func int DIA_Matteo_LEATHER_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_SellWhat))
	&& (Matteo_LeatherBought < 1)
	{
		return true;
	};
};

func void DIA_Matteo_LEATHER_Info()
{
	AI_Output (other, self, "DIA_Matteo_LEATHER_15_00"); //Dobra, daj mi pancerz.
	
	if (B_GiveInvItems(other,self,ItMi_Gold,ITAR_Leather_L.value))
	{
		AI_Output (self, other, "DIA_Matteo_LEATHER_09_01"); //Na pewno ci si� spodoba.
		
		B_GiveInvItems (self, other, ITAR_LEATHER_L, 1);
		Matteo_LeatherBought = 1;
	}
	else
	{
		AI_Output (self, other, "DIA_Matteo_LEATHER_09_02"); //Ten pancerz ma swoj� cen� - i jest jej wart. Przyjd�, jak b�dziesz mia� z�oto.
	};
};

//******************************************************************************************
instance DIA_Matteo_LEATHER2 (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	851;
	condition							=	DIA_Matteo_LEATHER2_Condition;
	information							=	DIA_Matteo_LEATHER2_Info;
	permanent							=	true;
	description							=	"Kup pancerz ze sk�ry tygrysa. 600 sztuk z�ota.";
};

func int DIA_Matteo_LEATHER2_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_SellWhat))
	&& (Matteo_LeatherBought < 2)
	{
		return true;
	};
};

func void DIA_Matteo_LEATHER2_Info()
{
	AI_Output (other, self, "DIA_Matteo_LEATHER_15_00"); //Dobra, daj mi ten pancerz.
	
	if (B_GiveInvItems(other,self,ItMi_Gold,ITAR_Leather_T.value))
	{	
		AI_Output (self, other, "DIA_Matteo_LEATHER_09_01"); //Na pewno ci si� spodoba.
		
		B_GiveInvItems (self, other, ITAR_Leather_T, 1);
		Matteo_LeatherBought = 2;
	}
	else
	{
		AI_Output (self, other, "DIA_Matteo_LEATHER_09_02"); //Ten pancerz ma swoj� cen� - i jest jej wart. Przyjd�, jak b�dziesz mia� z�oto.
	};
};

//******************************************************************************************
//	Paladine
//******************************************************************************************
INSTANCE DIA_Matteo_Paladine (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	2;
	condition							=	DIA_Matteo_Paladine_Condition;
	information							=	DIA_MAtteo_Paladine_Info;
	permanent							=	false;
	description							=	"Co wiesz o paladynach?";
};

FUNC INT DIA_Matteo_Paladine_Condition()
{
	if (other.guild != GIL_PAL)
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_Paladine_Info()
{
	AI_Output (other, self, "DIA_Matteo_Paladine_15_00"); //Co wiesz o paladynach?
	AI_Output (self, other, "DIA_Matteo_Paladine_09_01"); //Od czasu, jak te bydlaki przysz�y do miasta, mam same k�opoty.
	AI_Output (self, other, "DIA_Matteo_Paladine_09_02"); //Kiedy ostatnio szed�em do g�rnego miasta, zatrzymali mnie stra�nicy i zapytali, po co tam id�!
	AI_Output (other, self, "DIA_Matteo_Paladine_15_03"); //I?
	AI_Output (self, other, "DIA_Matteo_Paladine_09_04"); //Oczywi�cie, �e mnie wpu�cili!
	AI_Output (self, other, "DIA_Matteo_Paladine_09_05"); //Mia�em w mie�cie sklep, kiedy wi�kszo�� z tych nad�tych dupk�w gania�a jeszcze �winie!
	AI_Output (self, other, "DIA_Matteo_Paladine_09_06"); //A wczoraj te bydlaki skonfiskowa�y po�ow� mojego towaru!
};

//******************************************************************************************
//	Confiscated
//******************************************************************************************
INSTANCE DIA_Matteo_Confiscated (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	2;
	condition							=	DIA_Matteo_Confiscated_Condition;
	information							=	DIA_MAtteo_Confiscated_Info;
	permanent							=	false;
	description							=	"Paladyni zabrali twoje towary?";
};

FUNC INT DIA_Matteo_Confiscated_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_Paladine))
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_Confiscated_Info()
{
	AI_Output (other, self, "DIA_Matteo_Confiscated_15_00"); //Paladyni zabrali twoje towary?
	AI_Output (self, other, "DIA_Matteo_Confiscated_09_01"); //Wszystko, co mia�em na podw�rku.
	AI_Output (self, other, "DIA_Matteo_Confiscated_09_02"); //Postawili stra�nika przy wej�ciu na podw�rko.
	AI_Output (self, other, "DIA_Matteo_Confiscated_09_03"); //Je�li mi si� poszcz�ci, nie zabior� mi wszystkiego. Mo�e chocia� zostawi� t� zbroj�.
};

//******************************************************************************************
//	HelpMeToOV
//******************************************************************************************
INSTANCE DIA_Matteo_HelpMeToOV (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	3;
	condition							=	DIA_Matteo_HelpMeToOV_Condition;
	information							=	DIA_MAtteo_HelpMeToOV_Info;
	permanent							=	false;
	description							=	"Czy mo�esz mi pom�c dosta� si� do g�rnego miasta?";
};

FUNC INT DIA_Matteo_HelpMeToOV_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_Paladine))
	&& (Player_IsApprentice == APP_NONE)
	&& (other.guild == GIL_NONE)
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_HelpMeToOV_Info()
{
	AI_Output (other, self, "DIA_Matteo_HelpMeToOV_15_00"); //Czy mo�esz mi pom�c dosta� si� do g�rnego miasta?
	AI_Output (self, other, "DIA_Matteo_HelpMeToOV_09_01"); //Co? Co b�dziesz TAM robi�?
	AI_Output (other, self, "DIA_Matteo_HelpMeToOV_15_02"); //Mam wa�n� wiadomo��...
	AI_Output (self, other, "DIA_Matteo_HelpMeToOV_09_03"); //No, no, no. Pr�bowa�e� przemkn�� si� ko�o stra�nik�w?
	
	if (Torwache_305.aivar[AIV_TalkedToPlayer] == true)
	{
		AI_Output (other, self, "DIA_Matteo_HelpMeToOV_15_04"); //Cz�owieku, zapomnij!
		AI_Output (self, other, "DIA_Matteo_HelpMeToOV_09_05"); //To TYPOWE dla tych �ebrak�w!
	}
	else
	{
		AI_Output (other, self, "DIA_Matteo_HelpMeToOV_15_06"); //Nie rozumiem, dlaczego mia�bym w og�le pr�bowa�.
		AI_Output (self, other, "DIA_Matteo_HelpMeToOV_09_07"); //Pewnie masz racj�.
	};
	
	AI_Output (self, other, "DIA_Matteo_HelpMeToOV_09_08"); //Nie wiem, jak WA�NA jest twoja wiadomo�� - nie obchodzi mnie to.
	AI_Output (self, other, "DIA_Matteo_HelpMeToOV_09_09"); //Ale nawet gdyby� powiedzia� im, �e statek pe�en ork�w wp�yn�� w�a�nie do portu i tak by ci� odes�ali.
	AI_Output (self, other, "DIA_Matteo_HelpMeToOV_09_10"); //Bo maj� swoje ROZKAZY.
};

//******************************************************************************************
//	HelpMeNow
//******************************************************************************************
func void B_Matteo_Preis()
{
	AI_Output (self, other, "DIA_Matteo_HelpMeNow_09_01"); //Wygl�da na to, �e to dla ciebie wa�ne.
	AI_Output (self, other, "DIA_Matteo_HelpMeNow_09_02"); //Pytanie tylko, JAK wa�ne?
	AI_Output (other, self, "DIA_Matteo_HelpMeNow_15_03"); //Do czego zmierzasz?
	AI_Output (self, other, "DIA_Matteo_HelpMeNow_09_04"); //Mog� ci pom�c - by�o nie by�o jestem tu jednym z najbardziej wp�ywowych ludzi.
	AI_Output (self, other, "DIA_Matteo_HelpMeNow_09_05"); //Ale to ci� b�dzie kosztowa�.
};

INSTANCE DIA_Matteo_HelpMeNow (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	3;
	condition							=	DIA_Matteo_HelpMeNow_Condition;
	information							=	DIA_MAtteo_HelpMeNow_Info;
	permanent							=	false;
	description							=	"No to jak? Mo�esz mi pom�c dosta� si� do g�rnego miasta?";
};

FUNC INT DIA_Matteo_HelpMeNow_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_HelpMeToOV))
	&& (Player_IsApprentice == APP_NONE)
	&& (other.guild == GIL_NONE)
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_HelpMeNow_Info()
{
	AI_Output (other, self, "DIA_Matteo_HelpMeNow_15_00"); //No to jak? Mo�esz mi pom�c dosta� si� do g�rnego miasta?
	B_Matteo_Preis();
};

//******************************************************************************************
//	LEHRLING als GILDE X
//******************************************************************************************
INSTANCE DIA_Matteo_LehrlingLater (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	3;
	condition							=	DIA_Matteo_LehrlingLater_Condition;
	information							=	DIA_MAtteo_LehrlingLater_Info;
	permanent							=	false;
	description							=	"Pom� mi zosta� czeladnikiem u jednego z mistrz�w!";
};

FUNC INT DIA_Matteo_LehrlingLater_Condition()
{
	if (Player_IsApprentice == APP_NONE)
	&& (other.guild != GIL_NONE)
	{
		return true;
	};
};

func VOID DIA_Matteo_LehrlingLater_Info()
{
	AI_Output (other, self, "DIA_Matteo_LehrlingLater_15_00"); //Pom� mi zosta� czeladnikiem u jednego z mistrz�w!
	B_Matteo_Preis();
};

//******************************************************************************************
//	PriceOfHelp (MISSION)
//******************************************************************************************
INSTANCE DIA_Matteo_PriceOfHelp (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	3;
	condition							=	DIA_Matteo_PriceOfHelp_Condition;
	information							=	DIA_MAtteo_PriceOfHelp_Info;
	permanent							=	false;
	description							=	"Co chcesz w zamian za pomoc?";
};

FUNC INT DIA_Matteo_PriceOfHelp_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_HelpMeNow))
	|| (Npc_KnowsInfo(other,DIA_Matteo_LehrlingLater))
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_PriceOfHelp_Info()
{
	AI_Output (other, self, "DIA_Matteo_PriceOfHelp_15_00"); //Co chcesz w zamian za pomoc?
	AI_Output (self, other, "DIA_Matteo_PriceOfHelp_09_01"); //100 sztuk z�ota.
	
	Info_ClearChoices(DIA_Matteo_PriceOfHelp);
	Info_AddChoice (DIA_Matteo_PriceOfHelp, "To cholernie du�o...", DIA_Matteo_PriceOfHelp_Wow);
	Info_AddChoice (DIA_Matteo_PriceOfHelp, "Ty pijawko!", DIA_Matteo_PriceOfHelp_Cutthroat);
};

func void B_Matteo_RegDichAb()
{
	AI_Output (self, other, "B_Matteo_RegDichAb_09_00"); //Spokojnie! Nie TWOJE z�oto mia�em na my�li.
	AI_Output (other, self, "B_Matteo_RegDichAb_15_01"); //Ale.
	AI_Output (self, other, "B_Matteo_RegDichAb_09_02"); //W�a�ciwie, chodzi mi o MOJE z�oto.
	AI_Output (self, other, "B_Matteo_RegDichAb_09_03"); //Gritta, bratanica stolarza, od dawna jest mi winna pieni�dze.
	AI_Output (self, other, "B_Matteo_RegDichAb_09_04"); //Ta ma�a lisica kr�ci si� po okolicy w nowych ciuszkach - a to znaczy, �e ma pieni�dze.
	AI_Output (self, other, "B_Matteo_RegDichAb_09_05"); //Wywlek�bym jej te pieni�dze z gard�a, ale Mistrz Thorben - stolarz - to bardzo wp�ywowy cz�owiek.
	AI_Output (self, other, "B_Matteo_RegDichAb_09_06"); //Za�atw mi te pieni�dze, to ci pomog�.
	
	QuestStep_MatteoGritta = SetQuestStatus (Quest_MatteoGritta, LOG_RUNNING, QuestStep_MatteoGritta);
	SetNoteEntry (Quest_MatteoGritta, LOG_MISSION, "Je�li Matteo dostanie od siostrzenicy stolarza Thorbena, Gritty, 100 sztuk z�ota, kt�re jest mu winna, pomo�e mi dosta� si� do g�rnego miasta.");
};

func void DIA_Matteo_PriceOfHelp_Cutthroat()
{
	AI_Output (other, self, "DIA_Matteo_PriceOfHelp_Cutthroat_15_00"); //Ty pijawko!
	B_Matteo_RegDichAb();
	Info_ClearChoices(DIA_Matteo_PriceOfHelp);
};

func void DIA_Matteo_PriceOfHelp_Wow()
{
	AI_Output (other, self, "DIA_Matteo_PriceOfHelp_Wow_15_00"); //To cholernie du�o...
	B_Matteo_RegDichAb();
	Info_ClearChoices(DIA_Matteo_PriceOfHelp);
};

//******************************************************************************************
//	WoGritta
//******************************************************************************************
INSTANCE DIA_Matteo_WoGritta (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	2;
	condition							=	DIA_Matteo_WoGritta_Condition;
	information							=	DIA_MAtteo_WoGritta_Info;
	permanent							=	false;
	description							=	"Gdzie znajd� t� Gritt�?";
};

FUNC INT DIA_Matteo_WoGritta_Condition()
{
	if (QuestStep_MatteoGritta == LOG_RUNNING)
	&& (Gritta.aivar[AIV_TalkedToPlayer] == false)
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_WoGritta_Info()
{
	AI_Output (other, self, "DIA_Matteo_WoGritta_15_00"); //Gdzie znajd� t� Gritt�?
	AI_Output (self, other, "DIA_Matteo_WoGritta_09_01"); //Tak jak powiedzia�em, to siostrzenica stolarza. Jego dom stoi przy tej ulicy. To ostatni budynek po prawej stronie przed ku�ni�.
};

//******************************************************************************************
//	GoldRunning
//******************************************************************************************
INSTANCE DIA_Matteo_GoldRunning (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	500;
	condition							=	DIA_Matteo_GoldRunning_Condition;
	information							=	DIA_MAtteo_GoldRunning_Info;
	permanent							=	true;
	description							=	"Oto twoje 100 sztuk z�ota!";
};

FUNC INT DIA_Matteo_GoldRunning_Condition()
{
	if (QuestStep_MatteoGritta == LOG_RUNNING)
	&& (Npc_KnowsInfo(other,DIA_Gritta_WantsMoney) || Npc_IsDead(Gritta))
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_GoldRunning_Info()
{	
	AI_Output (other, self, "DIA_Matteo_GoldRunning_15_00"); //Oto twoje 100 sztuk z�ota!
	
	//EXIT IF...
	
	if (Npc_IsDead(Gritta))
	{
		AI_Output (self, other, "DIA_Matteo_GoldRunning_09_01"); //Na tym z�ocie jest krew Gritty! Nie kaza�em ci jej zabija�!
		AI_Output (self, other, "DIA_Matteo_GoldRunning_09_02"); //Nie chc� mie� z tym nic wsp�lnego. Mo�esz zapomnie� o naszej umowie. Nigdy wi�cej nie pr�buj ze mn� rozmawia�.
		QuestStep_MatteoGritta = LOG_FAILED;
		B_CheckLog();
		AI_StopProcessInfos(self);
		return;
	};
	
	// FUNC
	if (B_GiveInvItems(other,self,itmi_gold,100))
	{
		if (Npc_HasItems(Gritta,itmi_gold) < 100)
		{
			AI_Output (self, other, "DIA_Matteo_GoldRunning_09_03"); //I co? Robi�a jakie� problemy?
			AI_Output (other, self, "DIA_Matteo_GoldRunning_15_04"); //Nic, o czym warto wspomina�.
			AI_Output (self, other, "DIA_Matteo_GoldRunning_09_05"); //�wietnie! Dotrzyma�e� swojej cz�ci umowy.
		}
		else
		{
			AI_Output (self, other, "DIA_Matteo_GoldRunning_09_06"); //Chcesz za ni� zap�aci�? Hmmm - wola�bym, �eby� to z niej wycisn��!
			AI_Output (self, other, "DIA_Matteo_GoldRunning_09_07"); //Mimo to 100 sztuk z�ota, to ci�gle 100 sztuk z�ota.
			AI_Output (self, other, "DIA_Matteo_GoldRunning_09_08"); //Dotrzyma�e� swojej cz�ci umowy.
		};
		
		QuestStep_MatteoGritta = SetQuestStatus (Quest_MatteoGritta, LOG_SUCCESS, QuestStep_MatteoGritta);
		B_GivePlayerXP(XP_BONUS_1);
	}
	else
	{
		AI_Output (self, other, "DIA_Matteo_GoldRunning_09_09"); //Liczenie nie jest twoj� najmocniejsz� stron�, co?
	};
};

//******************************************************************************************
//	Stimme abgeben
//******************************************************************************************

var int DIA_Matteo_Zustimmung_perm;

//******************************************************************************************
instance DIA_Matteo_Zustimmung (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	4;
	condition							=	DIA_Matteo_Zustimmung_Condition;
	information							=	DIA_MAtteo_Zustimmung_Info;
	permanent							=	true;
	description							=	"Pom� mi zosta� czeladnikiem u jednego z mistrz�w!";
};

FUNC INT DIA_Matteo_Zustimmung_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_HowCanYouHelp))
	&& ((QuestStep_MatteoGritta == LOG_RUNNING) || (QuestStep_MatteoGritta == LOG_SUCCESS))
	&& (Player_IsApprentice == APP_NONE)
	&& (DIA_Matteo_Zustimmung_perm == false)
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_Zustimmung_Info()
{
	AI_Output (other, self, "DIA_Matteo_Zustimmung_15_00"); //Pom� mi zosta� czeladnikiem u jednego z mistrz�w!
	
	if (QuestStep_MatteoGritta == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Matteo_Zustimmung_09_01"); //Nie martw si�. Dotrzymam umowy.
		AI_Output (self, other, "DIA_Matteo_Zustimmung_09_02"); //Inni mistrzowie us�ysz� o tobie same dobre rzeczy.
		
		SetNoteEntry (Quest_CityWork, LOG_MISSION, "Je�li zechc� zosta� czeladnikiem, Matteo udzieli mi swojego poparcia.");
		B_GivePlayerXP(XP_BONUS_1);
		DIA_Matteo_Zustimmung_perm = true;
	}
	else //LOG_RUNNING
	{
		AI_Output (self, other, "DIA_Matteo_Zustimmung_09_03"); //Nie wszystko na raz. Najpierw wywi�� si� z umowy i przynie� mi z�oto!
	};
};

//******************************************************************************************
//	HowCanYouHelp
//******************************************************************************************
INSTANCE DIA_Matteo_HowCanYouHelp (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	4;
	condition							=	DIA_Matteo_HowCanYouHelp_Condition;
	information							=	DIA_MAtteo_HowCanYouHelp_Info;
	permanent							=	false;
	description							=	"Na czym DOK�ADNIE ma polega� twoja pomoc?";
};

FUNC INT DIA_Matteo_HowCanYouHelp_Condition()
{
	if ((Npc_KnowsInfo(other,DIA_Matteo_HelpMeNow))
	|| (Npc_KnowsInfo(other,DIA_Matteo_LehrlingLater)))
	&& (Player_IsApprentice == APP_NONE)
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_HowCanYouHelp_Info()
{
	AI_Output (other, self, "DIA_Matteo_HowCanYouHelp_15_00"); //Na czym DOK�ADNIE ma polega� twoja pomoc?
	AI_Output (self, other, "DIA_Matteo_HowCanYouHelp_09_01"); //To do�� proste. Wykorzystam swoje wp�ywy, �eby jeden z mistrz�w przyj�� ci� na czeladnika.
	if (other.guild == GIL_NONE)
	{
		AI_Output (self, other, "DIA_Matteo_HowCanYouHelp_09_02"); //A wtedy praktycznie rzecz bior�c, b�dziesz obywatelem miasta i g�rna jego cz�� stanie przed tob� otworem. Poza tym b�dziesz m�g� co� zarobi�.
	};
	
	QuestStep_CityWork = SetQuestStatus (Quest_CityWork, LOG_RUNNING, QuestStep_CityWork);
	SetNoteEntry (Quest_CityWork, LOG_MISSION, "Matteo mo�e mi pom�c zosta� czeladnikiem u jednego z mistrz�w.");
};

//******************************************************************************************
//	WoAlsLehrling
//******************************************************************************************
INSTANCE DIA_Matteo_WoAlsLehrling (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	4;
	condition							=	DIA_Matteo_WoAlsLehrling_Condition;
	information							=	DIA_MAtteo_WoAlsLehrling_Info;
	permanent							=	false;
	description							=	"Kto w takim razie mo�e przyj�� mnie na czeladnika?";
};

FUNC INT DIA_Matteo_WoAlsLehrling_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_HowCanYouHelp))
	&& (Player_IsApprentice == APP_NONE)
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_WoAlsLehrling_Info()
{
	AI_Output (other, self, "DIA_Matteo_WoAlsLehrling_15_00"); //Kto w takim razie mo�e przyj�� mnie na czeladnika?
	AI_Output (self, other, "DIA_Matteo_WoAlsLehrling_09_01"); //Mo�e to by� kt�rykolwiek z mistrz�w mieszkaj�cych przy g��wnej ulicy.
	AI_Output (self, other, "DIA_Matteo_WoAlsLehrling_09_02"); //Harad kowal, Bosper �uczarz, Thorben stolarz albo Constantino alchemik.
	AI_Output (self, other, "DIA_Matteo_WoAlsLehrling_09_03"); //Jeden z nich musi ci� przyj��.
	AI_Output (self, other, "DIA_Matteo_WoAlsLehrling_09_04"); //Wa�ne jednak, �eby zgodzili si� na to pozostali mistrzowie. W Khorinis panuje taki zwyczaj.
	
	QuestStep_CityWork = SetQuestStatus (Quest_CityWork, LOG_RUNNING, QuestStep_CityWork);
	SetNoteEntry (Quest_CityWork, LOG_MISSION, "Mog� zosta� czeladnikiem u �uczarza Bospera, kowala Harada, stolarza Thorbena lub alchemika Constantina.");
	SetNoteEntry (Quest_CityWork, LOG_MISSION, "Zanim zostan� czeladnikiem, musz� zyska� poparcie pozosta�ych mistrz�w.");
};

//******************************************************************************************
//	WieZustimmung
//******************************************************************************************
INSTANCE DIA_Matteo_WieZustimmung (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	5;
	condition							=	DIA_Matteo_WieZustimmung_Condition;
	information							=	DIA_MAtteo_WieZustimmung_Info;
	permanent							=	false;
	description							=	"Jak uzyskam zgod� pozosta�ych mistrz�w?";
};

FUNC INT DIA_Matteo_WieZustimmung_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_WoAlsLehrling) || Npc_KnowsInfo(other,DIA_Matteo_WarumNichtBeiDir))
	&& (Player_IsApprentice == APP_NONE)
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_WieZustimmung_Info()
{
	AI_Output (other, self, "DIA_Matteo_WieZustimmung_15_00"); //Jak uzyskam zgod� pozosta�ych mistrz�w?
	AI_Output (self, other, "DIA_Matteo_WieZustimmung_09_01"); //Musisz ich do tego przekona�. Id� z nimi porozmawia�.
	AI_Output (self, other, "DIA_Matteo_WieZustimmung_09_02"); //Wystarczy jednak, �eby� mia� przeciw sobie wi�cej ni� jednego z nich, a nie b�dziesz mia� szans! Wi�c lepiej si� zachowuj!
	
	SetNoteEntry (Quest_CityWork, LOG_MISSION, "Aby zyska� poparcie pozosta�ych mistrz�w, musz� dowie�� swojej warto�ci.");
};

//******************************************************************************************
//	WarumNichtBeiDir
//******************************************************************************************
INSTANCE DIA_Matteo_WarumNichtBeiDir (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	6;
	condition							=	DIA_Matteo_WarumNichtBeiDir_Condition;
	information							=	DIA_MAtteo_WarumNichtBeiDir_Info;
	permanent							=	false;
	description							=	"A dlaczego TY mnie nie we�miesz na czeladnika?";
};

FUNC INT DIA_Matteo_WarumNichtBeiDir_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_HowCanYouHelp))
	&& (Player_IsApprentice == APP_NONE)
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_WarumNichtBeiDir_Info()
{
	AI_Output (other, self, "DIA_Matteo_WarumNichtBeiDir_15_00"); //A dlaczego TY mnie nie we�miesz na czeladnika?
	AI_Output (self, other, "DIA_Matteo_WarumNichtBeiDir_09_01"); //Ja nie mam nic przeciwko, ale inni mistrzowie nie zgadzaj� si�.
	AI_Output (self, other, "DIA_Matteo_WarumNichtBeiDir_09_02"); //Ostatnio przyj��em innego czeladnika.
};

//******************************************************************************************
//	Andere M�glichkeie
//******************************************************************************************
INSTANCE DIA_Matteo_OtherWay (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	6;
	condition							=	DIA_Matteo_OtherWay_Condition;
	information							=	DIA_MAtteo_OtherWay_Info;
	permanent							=	false;
	description							=	"Czy jest jaki� inny spos�b, �eby dosta� si� do g�rnego miasta?";
};

FUNC INT DIA_Matteo_OtherWay_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Matteo_HowCanYouHelp))
	&& (Mil_305_schonmalreingelassen == false)
	&& (Player_IsApprentice == APP_NONE)
	&& (other.guild == GIL_NONE)
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_OtherWay_Info()
{
	AI_Output (other, self, "DIA_Matteo_OtherWay_15_00"); //Czy jest jaki� inny spos�b, �eby dosta� si� do g�rnego miasta?
	AI_Output (self, other, "DIA_Matteo_OtherWay_09_01"); //Mo�e... dam ci zna�, jak co� wymy�l�.
};

//******************************************************************************************
//	Minenanteil
//******************************************************************************************
INSTANCE DIA_Matteo_Minenanteil (C_INFO)
{
	npc									=	VLK_416_Matteo;
	nr									=	3;
	condition							=	DIA_Matteo_Minenanteil_Condition;
	information							=	DIA_MAtteo_Minenanteil_Info;
	permanent							=	false;
	description							=	"W�r�d rzeczy na sprzeda� zauwa�y�em udzia�y w kopalni.";
};

FUNC INT DIA_Matteo_Minenanteil_Condition()
{
	if (other.guild == GIL_KDF)
	&& (QuestStep_FakeMineDocs == LOG_RUNNING)
	&& (Npc_KnowsInfo(other,DIA_Matteo_SellWhat))
	{
		return true;
	};
};

FUNC VOID DIA_Matteo_Minenanteil_Info()
{
	AI_Output (other, self, "DIA_Matteo_Minenanteil_15_00"); //W�r�d rzeczy na sprzeda� zauwa�y�em udzia�y w kopalni.
	AI_Output (self, other, "DIA_Matteo_Minenanteil_09_01"); //Udzia�y w kopalni? Eeee. Sk�d si� wzi�y? Nie mam poj�cia, sk�d je mam. Naprawd�, Panie.
	B_GivePlayerXP(XP_BONUS_1);
};
