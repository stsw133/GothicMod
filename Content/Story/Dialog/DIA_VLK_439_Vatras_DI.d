///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Vatras_DI_EXIT   (C_INFO)
{
	npc         = VLK_439_Vatras_DI;
	nr          = 999;
	condition   = DIA_Vatras_DI_EXIT_Condition;
	information = DIA_Vatras_DI_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Vatras_DI_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Vatras_DI_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info HEAL
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_DI_HEAL		(C_INFO)
{
	npc			 = 	VLK_439_Vatras_DI;
	nr          = 	99;	
	condition	 = 	DIA_Vatras_DI_HEAL_Condition;
	information	 = 	DIA_Vatras_DI_HEAL_Info;
	permanent	 = 	true;
	description	 = 	"Ulecz moje rany.";
};

func int DIA_Vatras_DI_HEAL_Condition ()
{	
	if  (Npc_IsDead(UndeadDragon) == false)
	{
		return true;
	};
};

func void DIA_Vatras_DI_HEAL_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_DI_HEAL_15_00"); //Ulecz moje rany.
	
	if hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX]
	{
		AI_Output			(self, other, "DIA_Vatras_DI_HEAL_05_01"); //Adanosie, pob�ogos�aw to cia�o i uwolnij je od ran, by mog�o przywr�ci� r�wnowag� temu �wiatu!
		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		PrintScreen (PRINT_FullyHealed, - 1, - 1, FONT_Screen, 2);   
	}
	else 
	{	
		AI_Output			(self, other, "DIA_Vatras_DI_HEAL_05_02"); //Nie jeste� ranny.
	};	
};
 
///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_DI_TRADE		(C_INFO)
{
	npc		 = 	VLK_439_Vatras_DI;
	nr          = 12;
	condition	 = 	DIA_Vatras_DI_TRADE_Condition;
	information	 = 	DIA_Vatras_DI_TRADE_Info;
	permanent	 = 	true;
	trade		 = 	true;
	description	 = 	"Masz co� na sprzeda�?";
};

func int DIA_Vatras_DI_TRADE_Condition ()
{
	if (Npc_IsDead(UndeadDragon) == false)
		{
				return true;
		};
};

func void DIA_Vatras_DI_TRADE_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_DI_TRADE_15_00"); //Masz co� na sprzeda�?
	B_GiveTradeInv (self);
	AI_Output			(self, other, "DIA_Vatras_DI_TRADE_05_01"); //A czego potrzebujesz?
};

///////////////////////////////////////////////////////////////////////
//	Info Obsession
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_DI_OBSESSION		(C_INFO)
{
	npc		 = 	VLK_439_Vatras_DI;
	nr		 = 	35;
	condition	 = 	DIA_Vatras_DI_OBSESSION_Condition;
	information	 = 	DIA_Vatras_DI_OBSESSION_Info;
	permanent	 = 	true;
	description	 = 	"Pom� mi! Jestem op�tany!";
};

func int DIA_Vatras_DI_OBSESSION_Condition ()
{
	if (SC_IsObsessed == true)
	&&  (Npc_IsDead(UndeadDragon) == false)
		{
				return true;
		};
};
var int DIA_Vatras_DI_OBSESSION_Info_OneTime;
func void DIA_Vatras_DI_OBSESSION_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_DI_OBSESSION_15_00"); //Pom� mi! Jestem op�tany!

	if (Got_HealObsession_Day<=(Wld_GetDay()-2))  
		{
			if (DIA_Vatras_DI_OBSESSION_Info_OneTime <= 1)//2 mal
			{
				CreateInvItems 	(self, ItPo_HealObsession_MIS, 1 );
				DIA_Vatras_DI_OBSESSION_Info_OneTime += 1;
			};
		
			if (Npc_HasItems (self,ItPo_HealObsession_MIS))
			{
				AI_Output			(self, other, "DIA_Vatras_DI_OBSESSION_05_01"); //We� t� Mikstur� Wyzwolenia. Pyrokar da� mi kilka swoich magicznych eliksir�w.
				AI_Output			(self, other, "DIA_Vatras_DI_OBSESSION_05_02"); //Pami�taj jednak, �e mog� ci pom�c tylko ograniczon� liczb� razy.
				B_GiveInvItems (self, other, ItPo_HealObsession_MIS, 1);
				Got_HealObsession_Day = Wld_GetDay(); 
			}
			else
			{
				AI_Output			(self, other, "DIA_Vatras_DI_OBSESSION_05_03"); //Zapasy Pyrokara ju� si� wyczerpa�y. Przykro mi, przyjacielu. Nie mog� ci ju� pom�c.
			};
		}
		else
		{
			AI_Output			(self, other, "DIA_Vatras_DI_OBSESSION_05_04"); //Nie mog� ci poda� kolejnej dawki po tak kr�tkim czasie od za�ycia poprzedniej. Wr�� do mnie p�niej, przyjacielu.
		};
};

///////////////////////////////////////////////////////////////////////
//	Info RAT
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_DI_RAT		(C_INFO)
{
	npc			 = 	VLK_439_Vatras_DI;
	nr          = 	99;	
	condition	 = 	DIA_Vatras_DI_RAT_Condition;
	information	 = 	DIA_Vatras_DI_RAT_Info;
	description	 = 	"Masz dla mnie jakie� rady?";
};

func int DIA_Vatras_DI_RAT_Condition ()
{	
	if (Npc_IsDead(UndeadDragon) == false)
	&& (SC_IsObsessed == false)
		{
				return true;
		};
};
func void DIA_Vatras_DI_RAT_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_DI_RAT_15_00"); //Masz dla mnie jakie� rady?
	AI_Output			(self, other, "DIA_Vatras_DI_RAT_05_01"); //Trzymaj si� z dala od Poszukiwaczy. Pami�taj, �e ich spojrzenie mo�e si� okaza� zab�jcze tak daleko od klasztoru.

	if (Npc_HasItems (other,ItAm_ProtDementor))
	{
		AI_Output			(other, self, "DIA_Vatras_DI_RAT_15_02"); //Nie obawiaj si�, mam amulet przywo�ywania dusz.
	};

	AI_Output			(self, other, "DIA_Vatras_DI_RAT_05_03"); //Gdyby mimo to co� ci si� sta�o, wr�� do mnie. Spr�buj� ci jako� pom�c.
};

///////////////////////////////////////////////////////////////////////
//	Info PEDROTOT
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_DI_PEDROTOT		(C_INFO)
{
	npc			 = 	VLK_439_Vatras_DI;
	nr          = 	3;	
	condition	 = 	DIA_Vatras_DI_PEDROTOT_Condition;
	information	 = 	DIA_Vatras_DI_PEDROTOT_Info;
	description	 = 	"Znalaz�em tego zdrajc�, Pedra.";
};

func int DIA_Vatras_DI_PEDROTOT_Condition ()
{	
	if (Npc_KnowsInfo(other, DIA_Pedro_DI_YOU))
		{
				return true;
		};
};

var int DIA_Vatras_DI_PEDROTOT_VatrasSucked;
func void DIA_Vatras_DI_PEDROTOT_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_DI_PEDROTOT_15_00"); //Znalaz�em tego zdrajc�, Pedra.
	B_GivePlayerXP(XP_Ambient);
	
	if (MIS_Gorax_KillPedro == LOG_SUCCESS)
	&& (Npc_IsDead(Pedro_DI)) 
	{
		AI_Output			(other, self, "DIA_Vatras_DI_PEDROTOT_15_01"); //Ju� nie �yje.
		AI_Output			(self, other, "DIA_Vatras_DI_PEDROTOT_05_02"); //Rozczarowa�e� mnie. My�la�em, �e jeste� inny.
		AI_Output			(other, self, "DIA_Vatras_DI_PEDROTOT_15_03"); //Jak to?
		AI_Output			(self, other, "DIA_Vatras_DI_PEDROTOT_05_04"); //Wiem o twej niecnej umowie z Serpentesem. Nie zdajesz sobie nawet sprawy, jak straszliwie si� na tobie zawiod�em.
		DIA_Vatras_DI_PEDROTOT_VatrasSucked = true;
		AI_StopProcessInfos (self);
	}
	else
	{
		AI_Output			(self, other, "DIA_Vatras_DI_PEDROTOT_05_05"); //Zatem przyprowad� go tutaj, na statek. Oddamy go w r�ce odpowiednich w�adz w Khorinis.

		if (Npc_IsDead(Pedro_DI)) 
		{
			AI_Output			(other, self, "DIA_Vatras_DI_PEDROTOT_15_06"); //Na to ju� troch� za p�no. Nie �yje.
			AI_Output			(self, other, "DIA_Vatras_DI_PEDROTOT_05_07"); //Och, wielka szkoda. B�d� si� modli� za jego biedn� dusz�.
		}
		else
		{
			AI_StopProcessInfos (self);
		};
	};
};

///////////////////////////////////////////////////////////////////////
//	Info VatrasSucked
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_DI_VatrasSucked		(C_INFO)
{
	npc			 = 	VLK_439_Vatras_DI;
	nr          = 	1;	
	condition	 = 	DIA_Vatras_DI_VatrasSucked_Condition;
	information	 = 	DIA_Vatras_DI_VatrasSucked_Info;
	important	 = 	true;
	permanent	 = 	true;
};

func int DIA_Vatras_DI_VatrasSucked_Condition ()
{	
	if (Npc_IsInState (self,ZS_Talk))
	&& (DIA_Vatras_DI_PEDROTOT_VatrasSucked == true)
		{
			return true;
		};	
};

func void DIA_Vatras_DI_VatrasSucked_Info ()
{
	AI_Output			(self, other, "DIA_Vatras_DI_VatrasSucked_05_00"); //Zejd� mi z oczu, morderco. Na moj� pomoc nie masz co liczy�.
	AI_StopProcessInfos (self);
};


//***************************************************************************
//	Talente
//***************************************************************************
INSTANCE DIA_Vatras_DI_Talente (C_INFO)
{
	npc				= VLK_439_Vatras_DI;
	condition		= DIA_Vatras_DI_Talente_Condition;
	information		= DIA_Vatras_DI_Talente_Info;
	permanent		= false;
	description		= "Naucz mnie tego, co potrafisz."; 
};

FUNC INT DIA_Vatras_DI_Talente_Condition()
{		
	if (Npc_IsDead(UndeadDragon) == false)
		{
				return true;
		};
};
FUNC VOID DIA_Vatras_DI_Talente_Info ()
{	
	AI_Output			(other, self, "DIA_Vatras_DI_Talente_15_00"); //Naucz mnie tego, co potrafisz.
	AI_Output			(self, other, "DIA_Vatras_DI_Talente_05_01"); //Zrobi�, co w mojej mocy.
	self.aivar[AIV_CanTeach] = true;
};

///////////////////////////////////////////////////////////////////////
//	Info DementorObsessionBook
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_DI_DementorObsessionBook		(C_INFO)
{
	npc			 = 	VLK_439_Vatras_DI;
	nr          = 	99;	
	condition	 = 	DIA_Vatras_DI_DementorObsessionBook_Condition;
	information	 = 	DIA_Vatras_DI_DementorObsessionBook_Info;
	permanent	 = 	true;
	description	 = 	"Mam tutaj Almanach Op�tanych.";
};

func int DIA_Vatras_DI_DementorObsessionBook_Condition ()
{	
	if  (Npc_HasItems (other,ITWR_DementorObsessionBook_MIS))
		{
				return true;
		};
};

var int DIA_Vatras_DI_DementorObsessionBook_OneTime;
func void DIA_Vatras_DI_DementorObsessionBook_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_DI_DementorObsessionBook_15_00"); //Mam tutaj Almanach Op�tanych.
	if (DIA_Vatras_DI_DementorObsessionBook_OneTime == false)
	{
		AI_Output			(self, other, "DIA_Vatras_DI_DementorObsessionBook_05_01"); //Hmmm... Je�li si� st�d wydostaniemy, zabior� go do klasztoru, do Pyrokara.
		
		DIA_Vatras_DI_DementorObsessionBook_OneTime = true;
	}
	else
	{
		AI_Output			(self, other, "DIA_Vatras_DI_DementorObsessionBook_05_02"); //Znalaz�e� ich wi�cej? Przynie� mi wszystkie, kt�re zdo�asz znale��!
	};
	B_GiveInvItems (other, self, ITWR_DementorObsessionBook_MIS,1);
	B_GivePlayerXP(XP_Ambient);
};
	
///////////////////////////////////////////////////////////////////////
//	Info UndeadDragonDead
///////////////////////////////////////////////////////////////////////
instance DIA_Vatras_DI_UndeadDragonDead		(C_INFO)
{
	npc			 = 	VLK_439_Vatras_DI;
	nr          = 	99;	
	condition	 = 	DIA_Vatras_DI_UndeadDragonDead_Condition;
	information	 = 	DIA_Vatras_DI_UndeadDragonDead_Info;
	permanent	 = 	true;
	description	 = 	"Zwyci�y�em!";
};

func int DIA_Vatras_DI_UndeadDragonDead_Condition ()
{	
	if  (Npc_IsDead(UndeadDragon))
		{
				return true;
		};
};

var int DIA_Vatras_DI_UndeadDragonDead_OneTime;
func void DIA_Vatras_DI_UndeadDragonDead_Info ()
{
	AI_Output			(other, self, "DIA_Vatras_DI_UndeadDragonDead_15_00"); //Zwyci�y�em!

	if (DIA_Vatras_DI_UndeadDragonDead_OneTime == false)
	{
		AI_Output			(self, other, "DIA_Vatras_DI_UndeadDragonDead_05_01"); //Wiem, czuj� to!
		AI_Output			(self, other, "DIA_Vatras_DI_UndeadDragonDead_05_02"); //Zada�e� Beliarowi straszliwy cios, po kt�rym szybko si� nie otrz��nie.
	
		if (hero.guild == GIL_DJG)
		{
			AI_Output (other, self, "DIA_Vatras_DI_UndeadDragonDead_15_03"); //Mog� wreszcie odpocz��, czy te� wy, magowie, macie dla mnie kolejnego trupa w szafie, kt�rego nale�y wyp�dzi� z tego �wiata?
		}
		else
		{
			AI_Output (self, other, "DIA_Vatras_DI_UndeadDragonDead_05_04"); //Nie zapominaj, �e by� to zaledwie epizod w odwiecznej walce Dobra ze Z�em.
		};
		
		AI_Output			(self, other, "DIA_Vatras_DI_UndeadDragonDead_05_05"); //Z�o zawsze znajdzie jaki� spos�b, by wkroczy� do tego �wiata. Ta wojna nigdy si� nie sko�czy.
		
		if (hero.guild == GIL_PAL)
		{
			AI_Output (self, other, "DIA_Vatras_DI_UndeadDragonDead_05_06"); //Jako or�downik Dobra powiniene� o tym wiedzie�.
		};
		
		AI_Output (self, other, "DIA_Vatras_Add_05_15"); //Tylko Adanos stoi mi�dzy zwa�nionymi bogami, by zapewni� r�wnowag� si�.
		AI_Output (other, self, "DIA_Vatras_Add_15_16"); //Zamiast tego m�g� mi nieco pom�c.
		AI_Output (self, other, "DIA_Vatras_Add_05_17"); //Ale� tak w�a�nie zrobi�. Mo�esz by� tego pewien.
		
		DIA_Vatras_DI_UndeadDragonDead_OneTime = true;
	};

	AI_Output (self, other, "DIA_Vatras_DI_UndeadDragonDead_05_09"); //Powiedz kapitanowi, by podnosi� kotwic�. Ta cisza i spok�j mog� by� tylko z�udne.
};
 
///////////////////////////////////////////////////////////////////////
//	Info PISSOFFFOREVVER_DI
///////////////////////////////////////////////////////////////////////
instance DIA_Addon_Vatras_PISSOFFFOREVVER_DI		(C_INFO)
{
	npc		 = 	VLK_439_Vatras_DI;
	nr		 = 	1;
	condition	 = 	DIA_Addon_Vatras_PISSOFFFOREVVER_DI_Condition;
	information	 = 	DIA_Addon_Vatras_PISSOFFFOREVVER_DI_Info;
	important	 = 	true;
	permanent	 = 	true;
};

func int DIA_Addon_Vatras_PISSOFFFOREVVER_DI_Condition ()
{
	if 	(
		(VatrasPissedOffForever == true)
		|| (
			(MadKillerCount >= 7) 						//SC hat mehr als 6 unschuldige auf dem Gewissen.
			&& (VatrasMadKillerCount != MadKillerCount)	//die letzte Chance von Vatras nicht genutzt
			)
	 	)
		&& (Npc_IsInState (self,ZS_Talk))
			{
				return true;
			};	
};
var int DIA_Addon_Vatras_PISSOFFFOREVVER_DI_OneTime;
func void DIA_Addon_Vatras_PISSOFFFOREVVER_DI_Info ()
{
	if (DIA_Addon_Vatras_PISSOFFFOREVVER_DI_OneTime == false)
	{
		B_LastWarningVatras ();
		DIA_Addon_Vatras_PISSOFFFOREVVER_DI_OneTime = true;
	};
	B_VatrasPissedOff ();
	AI_StopProcessInfos (self);
};
