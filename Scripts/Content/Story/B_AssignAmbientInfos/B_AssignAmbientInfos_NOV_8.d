///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_NOV_8_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************

var int Feger3_Permanent;

///******************************************************************************************
/// Fegen
///******************************************************************************************
instance DIA_NOV_8_Fegen (C_Info)
{
	nr									=	2;
	condition							=	DIA_NOV_8_Fegen_Condition;
	information							=	DIA_NOV_8_Fegen_Info;
	permanent							=	true;
	description							=	"Potrzebujê pomocy w sprz¹taniu sal nowicjuszy.";
};
func int DIA_NOV_8_Fegen_Condition()
{
	if (Kapitel == 7)
	&& (MIS_KlosterArbeit == LOG_RUNNING)
	&& (NOV_Helfer < 4)
	{
		return true;
	};
};
func void DIA_NOV_8_Fegen_Info()
{
	AI_Output (other, self, "DIA_NOV_8_Fegen_15_00"); //Potrzebujê pomocy w sprz¹taniu sal nowicjuszy.
	
	if (Hlp_GetinstanceID(Feger3) == Hlp_GetinstanceID(self))
	{
		if (!Feger3_Permanent)
		{
			AI_Output (self, other, "DIA_NOV_8_Fegen_08_01"); //NieŸle, ledwoœ przyszed³, a oni ju¿ zapêdzili ciê do sprz¹tania?
			AI_Output (self, other, "DIA_NOV_8_Fegen_08_02"); //Nie martw siê, ze mn¹ by³o dok³adnie tak samo. Dlatego w³aœnie ci pomogê. G³upio by wygl¹da³o, gdybyœmy sobie nie poradzili.
			
			NOV_Helfer += 1;
			Feger3_Permanent = true;
			B_GivePlayerExp(50);
			
			AI_StopProcessInfos (self);
			Npc_ExchangeRoutine (self, "FEGEN");
			
			B_LogEntry (Topic_ParlanFegen, "Znalaz³em nowicjusza, który zechcia³ mi pomóc w sprz¹taniu komnat.");
		}
		else
		{
			AI_Output (self, other, "DIA_NOV_8_Fegen_08_03"); //Bracie, wiem dok³adnie, o czym mówisz. Powiedzia³em ci ju¿, ¿e pomogê. Przecie¿ robiê to ca³y czas.
		};
	};
	
	if (Hlp_GetinstanceID(Feger3) != Hlp_GetinstanceID(self))
	{
		AI_Output (self, other, "DIA_NOV_8_Fegen_08_04"); //Zrozum, zrobi³bym to, ale jestem naprawdê zajêty.
	};
};

///******************************************************************************************
/// Wurst
///******************************************************************************************
instance DIA_NOV_8_Wurst (C_Info)
{
	nr									=	3;
	condition							=	DIA_NOV_8_Wurst_Condition;
	information							=	DIA_NOV_8_Wurst_Info;
	permanent							=	true;
	description							=	"Co powiesz na pyszn¹ barani¹ kie³basê?";
};
func int DIA_NOV_8_Wurst_Condition()
{
	if (Kapitel == 7)
	&& (MIS_GoraxEssen == LOG_RUNNING)
	&& (Npc_HasItems(self, ItFo_SchafsWurst) == 0)
	&& (Npc_HasItems(other, ItFo_SchafsWurst) >= 1)
	{
		return true;
	};
};
func void DIA_NOV_8_Wurst_Info()
{	
	AI_Output (other, self, "DIA_NOV_8_Wurst_15_00"); //Co powiesz na pyszn¹ barani¹ kie³basê?
	AI_Output (self, other, "DIA_NOV_8_Wurst_08_01"); //Nie odmówiê. Dziêki, tego w³aœnie by³o mi potrzeba.
	
	B_GiveInvItems (other, self, ItFo_SchafsWurst, 1);
	Wurst_Gegeben += 1;
	Npc_RemoveInvItem (self, ItFo_SchafsWurst);
	
	CreateInvItem (self, ItFo_Sausage);
	B_UseItem (self, ItFo_Sausage);
	
	var string NovizeLeft; NovizeLeft = IntToString(13 - Wurst_Gegeben);
	var string NovizeText; NovizeText = ConcatStrings(NovizeLeft, PRINT_NovizenLeft);
	AI_PrintScreen (NovizeText, -1, YPOS_GOLDGIVEN, FONT_ScreenSmall, 2);
};

///******************************************************************************************
/// JOIN
///******************************************************************************************
instance DIA_NOV_8_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_NOV_8_JOIN_Condition;
	information							=	DIA_NOV_8_JOIN_Info;
	permanent							=	true;
	description							=	"Co muszê zrobiæ, by zostaæ magiem?";
};                       
func int DIA_NOV_8_JOIN_Condition()
{
	if (hero.guild == GIL_NOV)
	{
		return true;
	};
};
func void DIA_NOV_8_JOIN_Info()
{
	AI_Output (other, self, "DIA_NOV_8_JOIN_15_00"); //Co muszê zrobiæ, by zostaæ magiem?
	AI_Output (self, other, "DIA_NOV_8_JOIN_08_01"); //Zostaniesz Wybrañcem Innosa jedynie wtedy, gdy tak¹ wolê wyra¿¹ Najwy¿si Magowie Ognia.
	AI_Output (self, other, "DIA_NOV_8_JOIN_08_02"); //Jako nowicjuszom nie wolno nam studiowaæ magii runicznej, zaœ stare manuskrypty mo¿emy przegl¹daæ jedynie za zgod¹ magów.
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_NOV_8_PEOPLE (C_Info)
{
	nr									=	5;
	condition							=	aTrue;
	information							=	DIA_NOV_8_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto sprawuje w³adzê w klasztorze?";
};
func void DIA_NOV_8_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_NOV_8_PEOPLE_15_00"); //Kto sprawuje w³adzê w klasztorze?
	AI_Output (self, other, "DIA_NOV_8_PEOPLE_08_01"); //Najwy¿sza Rada. W jej sk³ad wchodz¹ trzej najpotê¿niejsi magowie naszego zgromadzenia. To oni nadzoruj¹ dzia³ania klasztoru.
	AI_Output (self, other, "DIA_NOV_8_PEOPLE_08_02"); //Wszyscy Wybrañcy Innosa s¹ magami. Innos tchn¹³ w ka¿dego z nich cz¹stkê siebie, dziêki czemu mog¹ stanowiæ jego wolê tu, w œwiecie œmiertelników.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_NOV_8_LOCATION (C_Info)
{
	nr									=	6;
	condition							=	aTrue;
	information							=	DIA_NOV_8_LOCATION_Info;
	permanent							=	true;
	description							=	"Opowiedz mi coœ o tym klasztorze.";
};
func void DIA_NOV_8_LOCATION_Info()
{
	AI_Output (other, self, "DIA_NOV_8_LOCATION_15_00"); //Opowiedz mi coœ o tym klasztorze.
	AI_Output (self, other, "DIA_NOV_8_LOCATION_08_01"); //To staro¿ytna budowla. Pochodzi jeszcze z czasów przed Rhobarem Pierwszym.
	AI_Output (self, other, "DIA_NOV_8_LOCATION_08_02"); //Pod klasztorem znajduj¹ siê katakumby, rozci¹gaj¹ce siê do wnêtrza góry.
};

///******************************************************************************************
/// STANDARD
///******************************************************************************************
instance DIA_NOV_8_STANDARD (C_Info)
{
	nr									=	10;
	condition							=	aTrue;
	information							=	DIA_NOV_8_STANDARD_Info;
	permanent							=	true;
	description							=	"Czy masz jakieœ nowe informacje?";
};
func void DIA_NOV_8_STANDARD_Info()
{
	AI_Output (other, self, "DIA_NOV_8_STANDARD_15_00"); //Czy masz jakieœ nowe informacje?
	
	if (Kapitel == 7)
	{
		if (other.guild == GIL_KDF)
		{
			AI_Output (self,other,"DIA_NOV_8_STANDARD_08_01"); //Mo¿na by tak powiedzieæ. Od ponad stu lat ¿aden nowicjusz nie zosta³ tak szybko przyjêty do Krêgu Ognia.
			AI_Output (self,other,"DIA_NOV_8_STANDARD_08_02"); //Mam nadziejê, ¿e i mnie, pewnego dnia, spotka ten zaszczyt.
		}
		else
		{
			AI_Output (self,other,"DIA_NOV_8_STANDARD_08_03"); //Do Khorinis przyby³a niedawno grupa paladynów. Jeden jest tu, w klasztorze... Modli siê.
		};
	};
	if (Kapitel == 8)
	|| (Kapitel == 9)
	{
		if (Pedro_Traitor)
		&& (MIS_NovizenChase != LOG_SUCCESS)
		{
	 		AI_Output (self,other,"DIA_NOV_3_STANDARD_08_04"); //Wci¹¿ nie mogê uwierzyæ, ¿e jeden z nas zdradzi³ klasztor i zabra³ Oko Innosa.
			AI_Output (self,other,"DIA_NOV_3_STANDARD_08_05"); //Mieliœmy stworzyæ spo³ecznoœæ, byliœmy jednak zbyt s³abi. Dlatego w³aœnie Beliarowi uda³o siê przeci¹gn¹æ jednego z nas na œcie¿kê Z³a.
		}
		else if (MIS_NovizenChase == LOG_SUCCESS)
		{
			AI_Output (self,other,"DIA_NOV_3_STANDARD_08_06"); //Jedynie nieskalana wiara w Innosa pozwoli nam odzyskaæ Oko z r¹k wroga.
			AI_Output (self,other,"DIA_NOV_3_STANDARD_08_07"); //Twoja odwaga jest natchnieniem dla tych, którzy zatracili siê w rozpaczy, dziêki tobie mo¿e uda im siê przetrwaæ te mroczne chwile.
		}
		else
		{
			if (MIS_OLDWORLD == LOG_SUCCESS)
			{
				AI_Output (self,other,"DIA_NOV_8_STANDARD_08_08"); //S³ysza³em coœ tak¿e o smokach i armii Z³a. Niech Innos ma nas w swojej opiece.
			}
			else
			{
				AI_Output (self,other,"DIA_NOV_8_STANDARD_08_09"); //Sytuacja, w jakiej znaleŸli siê paladyni, bardzo zmartwi³a Radê. Od wielu ju¿ dni nie mamy ¿adnych informacji z Górniczej Doliny.
			};
		};
	};
	if (Kapitel == 10)
	{
		AI_Output (self,other,"DIA_NOV_8_STANDARD_08_10"); //Dziêkujê za to naszemu Panu. Dziêki Oku Innosa bêdziemy mogli pokonaæ smoki!
	};
	if (Kapitel >= 11)
	{
		AI_Output (self,other,"DIA_NOV_8_STANDARD_08_11"); //Tak. Pokonaliœmy smoki. Innos po raz kolejny pokaza³ nam, ¿e nie wolno traciæ nadziei.
		AI_Output (self,other,"DIA_NOV_8_STANDARD_08_12"); //Wci¹¿ jednak œwiat osnuwaj¹ cienie, a naszym celem jest nieœæ œwiat³o wszêdzie tam, gdzie s¹ potrzebuj¹cy.
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_NOV_8 (var C_Npc slf)
{
	DIA_NOV_8_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_NOV_8_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_NOV_8_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_NOV_8_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_NOV_8_STANDARD.npc				=	Hlp_GetinstanceID(slf);
	DIA_NOV_8_Fegen.npc					=	Hlp_GetinstanceID(slf);
	DIA_NOV_8_Wurst.npc					=	Hlp_GetinstanceID(slf);
};
