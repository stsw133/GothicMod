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

	description = "No i jesteœmy.";
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
	AI_Output (other,self ,"DIA_PC_Thief_DI_Hallo_15_00"); //No i jesteœmy.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_01"); //Ta wyspa le¿y bli¿ej Khorinis, ni¿ myœla³em.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_02"); //Nawet nie wiedzia³em o jej istnieniu. Oczywiœcie, teraz parê spraw sta³o siê jasnych.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_03"); //Zawsze by³em ciekaw, w jaki sposób orkowie tak szybko otrzymuj¹ zapasy.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_04"); //Nic dziwnego, skoro mieli tutaj taki posterunek.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_05"); //Po drodze do wnêtrza wyspy natkniesz siê pewnie na parê pu³apek.
	AI_Output (self ,other,"DIA_PC_Thief_DI_Hallo_11_06"); //Gdybyœ nie móg³ sobie poradziæ, wróæ tutaj do mnie. Mo¿e bêdê móg³ ci pomóc.
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

	description = "Potrzebujê twojej rady.";
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
	AI_Output (other,self ,"DIA_PC_Thief_DI_RAT_15_00"); //Potrzebujê twojej rady.
	
	if (Npc_IsDead(OrkElite_AntiPaladinOrkOberst_DI))
	&& (EVT_ORKOBERST_SWITCH_FOUND == false)
	{
		AI_Output (other,self ,"DIA_PC_Thief_DI_RAT_15_01"); //Tam na górze znajduje siê kwatera orkowego pu³kownika. Nie widzia³em ¿adnej drogi, która prowadzi³aby dalej w g³¹b wyspy.
		AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_02"); //Orkowie to cwane bestie. Zwykle ich nie doceniamy. Zak³adam, ¿e maj¹ tam jakieœ tajne przejœcie. Poszukaj na œcianach ukrytych prze³¹czników.
		AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_03"); //Tylko pamiêtaj, ¿e zwykle u¿ywa siê ich w odpowiedniej kolejnoœci.
	}
	else if	(Npc_IsDead(FireDragonIsland))
	&& (EVT_DIBRIDGE_OPENED == false)
	{
		AI_Output (other,self ,"DIA_PC_Thief_DI_RAT_15_04"); //Stoczy³em walkê ze smokiem i dotar³em na skraj otch³ani ze zwodzonym mostem. Most zosta³ jednak podniesiony i nie mogê przejœæ na drug¹ stronê.
		AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_05"); //Hmmm... A próbowa³eœ ju¿ ³uku albo kuszy? Mo¿e mechanizm mo¿na uruchomiæ celnym strza³em?
	}
	else if	(Npc_IsDead(Skeleton_Lord_Archol))
	&& ((Npc_KnowsInfo(other, DIA_Schwarzmagier_HELLO)) == false)
	{
		AI_Output (other,self ,"DIA_PC_Thief_DI_RAT_15_06"); //Przysz³o mi walczyæ z o¿ywieñcami i ich skomplikowanymi pu³apkami.
		AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_07"); //Przykro mi, ale w sprawie o¿ywieñców nie mogê ci pomóc. Musisz sobie poradziæ sam.
	}
	else
	{
		AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_08"); //Wróæ, gdybyœ potrzebowa³ pomocy w sprawie trochê bli¿szej mojemu fachowi.
		
		 if (ORkSturmDI == true)
		 && (DIA_PC_Thief_DI_RAT_OneTime2 == false)
			{
				AI_Output (self ,other,"DIA_PC_Thief_DI_RAT_11_09"); //I jeszcze coœ! Wola³bym, ¿ebyœ nie œci¹ga³ do statku wszystkich w³ócz¹cych siê po okolicy bestii. Mam nadziejê, ¿e nie przyjdzie nam tu odpieraæ kolejnego ataku orków.
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

	description	 = 	"Potrzebujê amunicji.";
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
	AI_Output			(other, self, "DIA_Diego_DI_TRADE_15_00"); //Potrzebujê amunicji.
	B_GiveTradeInv (self);

	//Joly: Mc ArrowBolt
	//////////////////////////////////////////////////////////////////////////////////////
	Npc_RemoveInvItems	(self, ItRw_Bolt, Npc_HasItems (self,ItRw_Bolt) );
	CreateInvItems 	(self, ItRw_Bolt, 300 );
	
	Npc_RemoveInvItems	(self, ItRw_Arrow, Npc_HasItems (self,ItRw_Arrow) );
	CreateInvItems 	(self, ItRw_Arrow, 300 );
	//////////////////////////////////////////////////////////////////////////////////////

	AI_Output			(self, other, "DIA_Diego_DI_TRADE_11_01"); //Chyba bêdê móg³ ci pomóc.
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
	description = "Naucz mnie czegoœ.";
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
	AI_Output (other,self ,"DIA_PC_Thief_DI_Training_15_00"); //Naucz mnie czegoœ.
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

	description = "Ju¿ po wszystkim. Mo¿emy siê st¹d wynosiæ.";
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
	AI_Output (other,self ,"DIA_PC_Thief_DI_UndeadDragonDead_15_00"); //Ju¿ po wszystkim. Mo¿emy siê st¹d wynosiæ.

	if ((Npc_GetDistToWP(self,"WP_UNDEAD_MIDDLE_01")<4000) )
	{
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_01"); //No, popatrzcie tylko. Nigdy w ¿yciu czegoœ takiego nie widzia³em.
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_02"); //Jak do diaska uda³o ci siê przez to przejœæ?
		AI_Output (other,self ,"DIA_PC_Thief_DI_UndeadDragonDead_15_03"); //Pewnie mia³em szczêœcie.
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_04"); //Skoro tak twierdzisz.
	}
	else
	{
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_05"); //Dobrze.
	};

	if (DIA_PC_Thief_DI_UndeadDragonDead_OneTime == false )
	{
		AI_Output (other,self ,"DIA_PC_Thief_DI_UndeadDragonDead_15_06"); //Co zamierzasz robiæ dalej?
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_07"); //Dobre pytanie. Na pocz¹tek chyba wrócê do Khorinis.
		if (Diebesgilde_Verraten == true)
		|| (MIS_Andre_GuildOfThieves == LOG_SUCCESS)
		{
			AI_Output (self ,other,"DIA_DiegoDI_Add_11_00"); //Nie ma tam ju¿ gildii z³odziei, a to otwiera pewne ciekawe mo¿liwoœci.
		};
		AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_09"); //Hmmm... A mo¿e po prostu przejmê interes Bromora? W tym fachu zawsze s¹ jakieœ pieni¹dze. Uczciwe pieni¹dze.
		DIA_PC_Thief_DI_UndeadDragonDead_OneTime = true;
	};

	AI_Output (self ,other,"DIA_PC_Thief_DI_UndeadDragonDead_11_10"); //IdŸ do kapitana i wynoœmy siê st¹d wreszcie.
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
