///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Girion_EXIT   (C_INFO)
{
	npc         = PAL_207_Girion;
	nr          = 999;
	condition   = DIA_Girion_EXIT_Condition;
	information = DIA_Girion_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Girion_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Girion_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info Hallo 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Girion_Hallo   (C_INFO)
{
	npc         = PAL_207_Girion;
	nr          = 2;
	condition   = DIA_Girion_Hallo_Condition;
	information = DIA_Girion_Hallo_Info;
	permanent   = false;
	important   = true;
};
FUNC INT DIA_Girion_Hallo_Condition()
{	
	if Npc_IsInState (self, ZS_Talk) 
	&& (MIS_ShipIsFree == false)
	{
		return true;
	};
};
FUNC VOID DIA_Girion_Hallo_Info()
{
	AI_Output (self, other, "DIA_Girion_Hallo_08_00"); //Jestem Girion, mistrz walki broni� obur�czn� i kr�lewski paladyn. Czemu mnie niepokoisz?
};
///////////////////////////////////////////////////////////////////////
//	Can You Teach Me?
///////////////////////////////////////////////////////////////////////
instance DIA_Girion_CanTeach		(C_INFO)
{
	npc			 = 	PAL_207_Girion;
	nr			 = 	5;
	condition	 = 	DIA_Girion_CanTeach_Condition;
	information	 = 	DIA_Girion_CanTeach_Info;
	PERMANENT 	 =  true;
	description	 = 	"Czy mo�esz mnie wyszkoli�?";
};
func int DIA_Girion_CanTeach_Condition ()
{	
	if (self.aivar[AIV_CanTeach] < true)
	{
		return true;
	};
};
func void DIA_Girion_CanTeach_Info ()
{
	AI_Output (other, self, "DIA_Girion_CanTeach_15_00"); //Czy mo�esz mnie wyszkoli�?
	
	if (hero.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Girion_CanTeach_08_01"); //Wybieraj�c najszlachetniejsz� ze wszystkich sztuk walk, post�pi�e� jak prawdziwy wojownik Innosa.
		AI_Output (self, other, "DIA_Girion_CanTeach_08_02"); //Udziel� ci kilku wskaz�wek. Daj mi zna�, kiedy b�dziesz got�w do treningu.
		
		self.aivar[AIV_CanTeach] = true;
		B_LogEntry (TOPIC_CityTeacher,"Paladyn Girion mo�e mnie nauczy�, jak walczy� or�em dwur�cznym.");
	}
	else
	{
		AI_Output (self, other, "DIA_Girion_CanTeach_08_03"); //Je�li chcesz si� uczy�, musisz znale�� sobie mentora poza naszym zakonem.
		AI_Output (self, other, "DIA_Girion_CanTeach_08_04"); //Jestem wojownikiem, nie nauczycielem.
	};
};

//#####################################################################
//##
//##
//##							KAPITEL 5
//##
//##
//#####################################################################

///////////////////////////////////////////////////////////////////////
//	Info CatchPlayerStolenShip
///////////////////////////////////////////////////////////////////////
instance DIA_Girion_CATCHPLAYERSTOLENSHIP		(C_INFO)
{
	npc		 = 	PAL_207_Girion;
	nr		 = 	5;
	condition	 = 	DIA_Girion_CATCHPLAYERSTOLENSHIP_Condition;
	information	 = 	DIA_Girion_CATCHPLAYERSTOLENSHIP_Info;
	important	 = 	true;
};

func int DIA_Girion_CATCHPLAYERSTOLENSHIP_Condition ()
{
	if (Kapitel >= 11)
	&& (MIS_ShipIsFree == true) 
	&& (Npc_GetDistToWP(self,"NW_CITY_WAY_TO_SHIP_25")<1000) //Joly: ist nur hier, wenn SC die Wachen �berredet hat, ihm das Schiff zu geben.
	{
		return true;
	};
};

func void DIA_Girion_CATCHPLAYERSTOLENSHIP_Info ()
{
	AI_Output			(self, other, "DIA_Girion_CATCHPLAYERSTOLENSHIP_08_00"); //Hej! Mo�esz mi powiedzie�, co tutaj robisz?

	Info_ClearChoices	(DIA_Girion_CATCHPLAYERSTOLENSHIP);
	Info_AddChoice	(DIA_Girion_CATCHPLAYERSTOLENSHIP, "Nie wiem, o czym m�wisz.", DIA_Girion_CATCHPLAYERSTOLENSHIP_no );
	Info_AddChoice	(DIA_Girion_CATCHPLAYERSTOLENSHIP, "Zejd� mi z drogi albo b�d� zmuszony ci� zabi�.", DIA_Girion_CATCHPLAYERSTOLENSHIP_weg );
	Info_AddChoice	(DIA_Girion_CATCHPLAYERSTOLENSHIP, "Potrzebuj� okr�tu.", DIA_Girion_CATCHPLAYERSTOLENSHIP_ship );
};

func void DIA_Girion_CATCHPLAYERSTOLENSHIP_no ()
{
	AI_Output			(other, self, "DIA_Girion_CATCHPLAYERSTOLENSHIP_no_15_00"); //Nie wiem, o czym m�wisz.
	AI_Output			(self, other, "DIA_Girion_CATCHPLAYERSTOLENSHIP_no_08_01"); //M�wi� o tym, co wykombinowa�e� ze stra�� okr�tow�. Podejrzana sprawa.

	if (hero.guild == GIL_KDF)
	{
		AI_Output			(self, other, "DIA_Girion_CATCHPLAYERSTOLENSHIP_no_08_02"); //Je�li nawet jeste� magiem, nie ufam ci.
	};
};
var int Girion_WantstoKillSC;
func void DIA_Girion_CATCHPLAYERSTOLENSHIP_weg ()
{
	AI_Output			(other, self, "DIA_Girion_CATCHPLAYERSTOLENSHIP_weg_15_00"); //Zejd� mi z drogi albo b�d� zmuszony ci� zabi�.
	AI_Output			(self, other, "DIA_Girion_CATCHPLAYERSTOLENSHIP_weg_08_01"); //Mo�esz by� wystarczaj�co sprytny, aby poradzi� sobie ze stra�� okr�tow�, ale ze mn� nie p�jdzie ci tak �atwo, ch�opcze.
	if (hero.guild == GIL_PAL)
	{
		AI_Output			(self, other, "DIA_Girion_CATCHPLAYERSTOLENSHIP_weg_08_02"); //Je�li nawet jeste� jednym z nas, nie daje ci to prawa do kradzie�y kr�lewskiej w�asno�ci. Gi�, przekl�ty zdrajco.
	};
	AI_StopProcessInfos (self);
	B_Attack (self, other, AR_NONE, 1);
	Girion_WantstoKillSC = true;
};

func void B_GirionStayOnShip()
{
	AI_Output			(self, other, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_08_09"); //Kiedy sko�czymy interesy, statek wr�ci do mnie. Czy to jasne?
};

func void DIA_Girion_CATCHPLAYERSTOLENSHIP_ship ()
{
	AI_Output			(other, self, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_15_00"); //Potrzebuj� statku. Wi�c go sobie wezm�.
	
	if ((hero.guild == GIL_PAL) || (hero.guild == GIL_KDF))
	{
		AI_Output			(self, other, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_08_01"); //Nie mo�esz tego zrobi�. Transport rudy...
	}
	else
	{
		AI_Output			(self, other, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_08_02"); //Jak �miesz, ty �mierdz�cy skur...
	};
	
	AI_Output			(other, self, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_15_03"); //W G�rniczej Dolinie jest zbyt ma�o rudy, aby zaspokoi� kr�lewskie wymagania. By�em tam. Z�o�a si� wyczerpa�y. Misja Hagena to jedna wielka farsa.
	AI_Output			(other, self, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_15_04"); //Prawdziwe zagro�enie stanowi pewna niewielka przybrze�na wysepka, ca�kiem niedaleko st�d. Pop�yn� tam i po�o�� wszystkiemu kres.
	AI_Output			(other, self, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_15_05"); //Albo si� do mnie przy��czysz, albo zrobi� z tob� porz�dek raz na zawsze. Wyb�r nale�y do ciebie.
	AI_Output			(self, other, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_08_06"); //Hmmm. Wygl�da na to, �e nie mam wyboru.
	AI_Output			(other, self, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_15_07"); //Dok�adnie tak.
	AI_Output			(self, other, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_08_08"); //A zatem dobrze. Przy��cz� si� do ciebie, ale tylko pod jednym warunkiem.

	B_GirionStayOnShip();

	AI_Output			(other, self, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_15_10"); //Jako� to prze�yj�.
	AI_Output			(self, other, "DIA_Girion_CATCHPLAYERSTOLENSHIP_ship_08_11"); //A zatem r�b, co masz do zrobienia. Poczekam tutaj na ciebie.
	
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine	(self,"Ship");
	crewmember_Count += 1;
	Girion_IsOnBoard = LOG_SUCCESS;
};

///////////////////////////////////////////////////////////////////////
//	Info Verrat 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Girion_Verrat   (C_INFO)
{
	npc         = PAL_207_Girion;
	nr          = 2;
	condition   = DIA_Girion_Verrat_Condition;
	information = DIA_Girion_Verrat_Info;
	important	 = 	true;
	permanent	 = 	true;

};

FUNC INT DIA_Girion_Verrat_Condition()
{
	if (Girion_WantstoKillSC == true)
		{
				return true;
		};
};

FUNC VOID DIA_Girion_Verrat_Info()
{
	AI_Output			(self, other, "DIA_Girion_Verrat_08_00"); //Zdrajca!
	AI_StopProcessInfos (self);
	B_Attack (self, other, AR_NONE, 1);
};


///////////////////////////////////////////////////////////////////////
//	Info OnShip 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Girion_OnShip   (C_INFO)
{
	npc         = PAL_207_Girion;
	nr          = 2;
	condition   = DIA_Girion_OnShip_Condition;
	information = DIA_Girion_OnShip_Info;
	important	 = 	true;
	permanent	 = 	true;

};

FUNC INT DIA_Girion_OnShip_Condition()
{
	if (Npc_IsInState (self,ZS_Talk))
	&& (Girion_IsOnBoard == LOG_SUCCESS)
		{
			return true;
		};	
};

FUNC VOID DIA_Girion_OnShip_Info()
{
	B_GirionStayOnShip();
	AI_StopProcessInfos (self);
};
