// ************************************************************
// 			  				   EXIT 
// ************************************************************

INSTANCE DIA_PC_Thief_DI_EXIT(C_INFO)
{
	npc			= PC_Thief_DI;
	nr			= 999;
	condition	= DIA_PC_Thief_DI_EXIT_Condition;
	information	= DIA_PC_Thief_DI_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_PC_Thief_DI_EXIT_Condition()
{
	return true;
};
 
FUNC VOID DIA_PC_Thief_DI_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 	  	  Hallo
// ************************************************************

INSTANCE DIA_PC_Thief_DI_Hallo (C_INFO)
{
	npc			= PC_Thief_DI;
	nr			= 5;
	condition	= DIA_PC_Thief_DI_Hallo_Condition;
	information	= DIA_PC_Thief_DI_Hallo_Info;

	description = "No i jeste�my.";
};                       
FUNC INT DIA_PC_Thief_DI_Hallo_Condition()
{
	if (Npc_IsDead(UndeadDragon) == false)
	{
		return true;
	};
};
FUNC VOID DIA_PC_Thief_DI_Hallo_Info()
{	
	AI_Output (other,self ,"DIA_PC_Thief_DI_Hallo_15_00"); //No i jeste�my.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_01"); //Ta wyspa le�y bli�ej Khorinis, ni� my�la�em.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_02"); //Nawet nie wiedzia�em o jej istnieniu. Oczywi�cie, teraz par� spraw sta�o si� jasnych.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_03"); //Zawsze by�em ciekaw, w jaki spos�b orkowie tak szybko otrzymuj� zapasy.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_04"); //Nic dziwnego, skoro mieli tutaj taki posterunek.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_05"); //Po drodze do wn�trza wyspy natkniesz si� pewnie na par� pu�apek.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_06"); //Gdyby� nie m�g� sobie poradzi�, wr�� tutaj do mnie. Mo�e b�d� m�g� ci pom�c.
};

// ************************************************************
// 	  	  RAT
// ************************************************************

INSTANCE DIA_PC_Thief_DI_RAT (C_INFO)
{
	npc			= PC_Thief_DI;
	nr			= 5;
	condition	= DIA_PC_Thief_DI_RAT_Condition;
	information	= DIA_PC_Thief_DI_RAT_Info;
	permanent	 = 	true;

	description = "Potrzebuj� twojej rady.";
};     
                  
FUNC INT DIA_PC_Thief_DI_RAT_Condition()
{
	if (Npc_IsDead(UndeadDragon) == false)
	&& (Npc_KnowsInfo(other, DIA_PC_Thief_DI_Hallo))
		{
				return true;
		};
};

var int DIA_PC_Thief_DI_RAT_OneTime;
var int DIA_PC_Thief_DI_RAT_OneTime2;
FUNC VOID DIA_PC_Thief_DI_RAT_Info()
{	
	AI_Output (other,self ,"DIA_PC_Thief_DI_RAT_15_00"); //Potrzebuj� twojej rady.
	
	if (Npc_IsDead(OrkElite_AntiPaladinOrkOberst_DI))
	&& (EVT_ORKOBERST_SWITCH_FOUND == false)
	{
		AI_Output (other,self ,"DIA_PC_Thief_DI_RAT_15_01"); //Tam na g�rze znajduje si� kwatera orkowego pu�kownika. Nie widzia�em �adnej drogi, kt�ra prowadzi�aby dalej w g��b wyspy.
		AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_02"); //Orkowie to cwane bestie. Zwykle ich nie doceniamy. Zak�adam, �e maj� tam jakie� tajne przej�cie. Poszukaj na �cianach ukrytych prze��cznik�w.
		AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_03"); //Tylko pami�taj, �e zwykle u�ywa si� ich w odpowiedniej kolejno�ci.
	}
	else if	(Npc_IsDead(FireDragonIsland))
	&& (EVT_DIBRIDGE_OPENED == false)
	{
		AI_Output (other,self ,"DIA_PC_Thief_DI_RAT_15_04"); //Stoczy�em walk� ze smokiem i dotar�em na skraj otch�ani ze zwodzonym mostem. Most zosta� jednak podniesiony i nie mog� przej�� na drug� stron�.
		AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_05"); //Hmmm... A pr�bowa�e� ju� �uku albo kuszy? Mo�e mechanizm mo�na uruchomi� celnym strza�em?
	}
	else if	(Npc_IsDead(Skeleton_Lord_Archol))
	&& ((Npc_KnowsInfo(other, DIA_Schwarzmagier_HELLO)) == false)
	{
		AI_Output (other,self ,"DIA_PC_Thief_DI_RAT_15_06"); //Przysz�o mi walczy� z o�ywie�cami i ich skomplikowanymi pu�apkami.
		AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_07"); //Przykro mi, ale w sprawie o�ywie�c�w nie mog� ci pom�c. Musisz sobie poradzi� sam.
	}
	else
	{
		AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_08"); //Wr��, gdyby� potrzebowa� pomocy w sprawie troch� bli�szej mojemu fachowi.
		
		 if (ORkSturmDI == true)
		 && (DIA_PC_Thief_DI_RAT_OneTime2 == false)
			{
				AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_09"); //I jeszcze co�! Wola�bym, �eby� nie �ci�ga� do statku wszystkich w��cz�cych si� po okolicy bestii. Mam nadziej�, �e nie przyjdzie nam tu odpiera� kolejnego ataku ork�w.
				B_GivePlayerXP(XP_Ambient);
				DIA_PC_Thief_DI_RAT_OneTime2 = true;
			};	
	};
};

///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Diego_DI_TRADE		(C_INFO)
{
	npc		 = 	PC_Thief_DI;
	nr          = 12;
	condition	 = 	DIA_Diego_DI_TRADE_Condition;
	information	 = 	DIA_Diego_DI_TRADE_Info;
	permanent	 = 	true;
	trade		 = 	true;

	description	 = 	"Potrzebuj� amunicji.";
};

func int DIA_Diego_DI_TRADE_Condition ()
{
	if (Npc_IsDead(UndeadDragon) == false)
		{
				return true;
		};
};

func void DIA_Diego_DI_TRADE_Info ()
{
	AI_Output			(other, self, "DIA_Diego_DI_TRADE_15_00"); //Potrzebuj� amunicji.
	B_GiveTradeInv (self);

	//Joly: Mc ArrowBolt
	//////////////////////////////////////////////////////////////////////////////////////
	Npc_RemoveInvItems	(self, ItRw_Bolt, Npc_HasItems (self,ItRw_Bolt) );
	CreateInvItems 	(self, ItRw_Bolt, 300 );
	
	Npc_RemoveInvItems	(self, ItRw_Arrow, Npc_HasItems (self,ItRw_Arrow) );
	CreateInvItems 	(self, ItRw_Arrow, 300 );
	//////////////////////////////////////////////////////////////////////////////////////

	AI_Output			(self, other, "DIA_Diego_DI_TRADE_11_01"); //Chyba b�d� m�g� ci pom�c.
};

// ************************************************************
// 	  	  Training
// ************************************************************

INSTANCE DIA_PC_Thief_DI_Training_Talente (C_INFO)
{
	npc			= PC_Thief_DI;
	nr			= 10;
	condition	= DIA_PC_Thief_DI_Training_Talente_Condition;
	information	= DIA_PC_Thief_DI_Training_Talente_Info;
	permanent	 = 	false;
	description = "Naucz mnie czego�.";
};                       
FUNC INT DIA_PC_Thief_DI_Training_Talente_Condition()
{
	if (Npc_IsDead(UndeadDragon) == false)
	&& (Npc_KnowsInfo(other, DIA_PC_Thief_DI_Hallo))
	{
		return true;
	};
};

FUNC VOID DIA_PC_Thief_DI_Training_Talente_Info()
{	
	AI_Output (other,self ,"DIA_PC_Thief_DI_Training_15_00"); //Naucz mnie czego�.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Training_11_01"); //A czego potrzebujesz?
	self.aivar[AIV_CanTeach] = true;
};

// ************************************************************
// 	  	  UndeadDragonDead
// ************************************************************

INSTANCE DIA_PC_Thief_DI_UndeadDragonDead (C_INFO)
{
	npc			= PC_Thief_DI;
	nr			= 5;
	condition	= DIA_PC_Thief_DI_UndeadDragonDead_Condition;
	information	= DIA_PC_Thief_DI_UndeadDragonDead_Info;
	permanent	 = 	true;

	description = "Ju� po wszystkim. Mo�emy si� st�d wynosi�.";
};                       
FUNC INT DIA_PC_Thief_DI_UndeadDragonDead_Condition()
{
	if (Npc_IsDead(UndeadDragon))
	{
		return true;
	};
};
var int DIA_PC_Thief_DI_UndeadDragonDead_OneTime;
FUNC VOID DIA_PC_Thief_DI_UndeadDragonDead_Info()
{	
	AI_Output (other,self ,"DIA_PC_Thief_DI_UndeadDragonDead_15_00"); //Ju� po wszystkim. Mo�emy si� st�d wynosi�.

	if ((Npc_GetDistToWP(self,"WP_UNDEAD_MIDDLE_01")<4000) )
	{
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_01"); //No, popatrzcie tylko. Nigdy w �yciu czego� takiego nie widzia�em.
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_02"); //Jak do diaska uda�o ci si� przez to przej��?
		AI_Output (other,self ,"DIA_PC_Thief_DI_UndeadDragonDead_15_03"); //Pewnie mia�em szcz�cie.
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_04"); //Skoro tak twierdzisz.
	}
	else
	{
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_05"); //Dobrze.
	};

	if (DIA_PC_Thief_DI_UndeadDragonDead_OneTime == false )
	{
		AI_Output (other,self ,"DIA_PC_Thief_DI_UndeadDragonDead_15_06"); //Co zamierzasz robi� dalej?
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_07"); //Dobre pytanie. Na pocz�tek chyba wr�c� do Khorinis.
		if (Diebesgilde_Verraten == true)
		|| (MIS_Andre_GuildOfThieves == LOG_SUCCESS)
		{
			AI_Output (self ,other,"DIA_DiegoDI_Add_11_00"); //Nie ma tam ju� gildii z�odziei, a to otwiera pewne ciekawe mo�liwo�ci.
		};
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_09"); //Hmmm... A mo�e po prostu przejm� interes Bromora? W tym fachu zawsze s� jakie� pieni�dze. Uczciwe pieni�dze.
		DIA_PC_Thief_DI_UndeadDragonDead_OneTime = true;
	};

	AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_10"); //Id� do kapitana i wyno�my si� st�d wreszcie.
	AI_StopProcessInfos (self);

	if ( Lares_IsOnBoard != LOG_SUCCESS) 
			{
				Npc_ExchangeRoutine	(self, "SittingShipDI");
			}
			else
			{
				Npc_ExchangeRoutine	(self,"Start");		
			};
};
