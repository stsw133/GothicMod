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
		AI_Output			(self, other, "DIA_Vatras_DI_HEAL_05_01"); //Adanosie, pob³ogos³aw to cia³o i uwolnij je od ran, by mog³o przywróciæ równowagê temu œwiatu!
		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		PrintScreen (PRINT_FullyHealed, - 1, - 1, FONT_Screen, 2);   
	}
	else 
	{	
		AI_Output			(self, other, "DIA_Vatras_DI_HEAL_05_02"); //Nie jesteœ ranny.
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
	description	 = 	"Masz coœ na sprzeda¿?";
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
	AI_Output			(other, self, "DIA_Vatras_DI_TRADE_15_00"); //Masz coœ na sprzeda¿?
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
	description	 = 	"Pomó¿ mi! Jestem opêtany!";
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
	AI_Output			(other, self, "DIA_Vatras_DI_OBSESSION_15_00"); //Pomó¿ mi! Jestem opêtany!

	if (Got_HealObsession_Day<=(Wld_GetDay()-2))  
		{
			if (DIA_Vatras_DI_OBSESSION_Info_OneTime <= 1)//2 mal
			{
				CreateInvItems 	(self, ItPo_HealObsession_MIS, 1 );
				DIA_Vatras_DI_OBSESSION_Info_OneTime += 1;
			};
		
			if (Npc_HasItems (self,ItPo_HealObsession_MIS))
			{
				AI_Output			(self, other, "DIA_Vatras_DI_OBSESSION_05_01"); //WeŸ tê Miksturê Wyzwolenia. Pyrokar da³ mi kilka swoich magicznych eliksirów.
				AI_Output			(self, other, "DIA_Vatras_DI_OBSESSION_05_02"); //Pamiêtaj jednak, ¿e mogê ci pomóc tylko ograniczon¹ liczbê razy.
				B_GiveInvItems (self, other, ItPo_HealObsession_MIS, 1);
				Got_HealObsession_Day = Wld_GetDay(); 
			}
			else
			{
				AI_Output			(self, other, "DIA_Vatras_DI_OBSESSION_05_03"); //Zapasy Pyrokara ju¿ siê wyczerpa³y. Przykro mi, przyjacielu. Nie mogê ci ju¿ pomóc.
			};
		}
		else
		{
			AI_Output			(self, other, "DIA_Vatras_DI_OBSESSION_05_04"); //Nie mogê ci podaæ kolejnej dawki po tak krótkim czasie od za¿ycia poprzedniej. Wróæ do mnie póŸniej, przyjacielu.
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
	description	 = 	"Masz dla mnie jakieœ rady?";
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
	AI_Output			(other, self, "DIA_Vatras_DI_RAT_15_00"); //Masz dla mnie jakieœ rady?
	AI_Output			(self, other, "DIA_Vatras_DI_RAT_05_01"); //Trzymaj siê z dala od Poszukiwaczy. Pamiêtaj, ¿e ich spojrzenie mo¿e siê okazaæ zabójcze tak daleko od klasztoru.

	if (Npc_HasItems (other,ItAm_ProtDementor))
	{
		AI_Output			(other, self, "DIA_Vatras_DI_RAT_15_02"); //Nie obawiaj siê, mam amulet przywo³ywania dusz.
	};

	AI_Output			(self, other, "DIA_Vatras_DI_RAT_05_03"); //Gdyby mimo to coœ ci siê sta³o, wróæ do mnie. Spróbujê ci jakoœ pomóc.
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
	description	 = 	"Znalaz³em tego zdrajcê, Pedra.";
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
	AI_Output			(other, self, "DIA_Vatras_DI_PEDROTOT_15_00"); //Znalaz³em tego zdrajcê, Pedra.
	B_GivePlayerXP(XP_Ambient);
	
	if (MIS_Gorax_KillPedro == LOG_SUCCESS)
	&& (Npc_IsDead(Pedro_DI)) 
	{
		AI_Output			(other, self, "DIA_Vatras_DI_PEDROTOT_15_01"); //Ju¿ nie ¿yje.
		AI_Output			(self, other, "DIA_Vatras_DI_PEDROTOT_05_02"); //Rozczarowa³eœ mnie. Myœla³em, ¿e jesteœ inny.
		AI_Output			(other, self, "DIA_Vatras_DI_PEDROTOT_15_03"); //Jak to?
		AI_Output			(self, other, "DIA_Vatras_DI_PEDROTOT_05_04"); //Wiem o twej niecnej umowie z Serpentesem. Nie zdajesz sobie nawet sprawy, jak straszliwie siê na tobie zawiod³em.
		DIA_Vatras_DI_PEDROTOT_VatrasSucked = true;
		AI_StopProcessInfos (self);
	}
	else
	{
		AI_Output			(self, other, "DIA_Vatras_DI_PEDROTOT_05_05"); //Zatem przyprowadŸ go tutaj, na statek. Oddamy go w rêce odpowiednich w³adz w Khorinis.

		if (Npc_IsDead(Pedro_DI)) 
		{
			AI_Output			(other, self, "DIA_Vatras_DI_PEDROTOT_15_06"); //Na to ju¿ trochê za póŸno. Nie ¿yje.
			AI_Output			(self, other, "DIA_Vatras_DI_PEDROTOT_05_07"); //Och, wielka szkoda. Bêdê siê modli³ za jego biedn¹ duszê.
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
	AI_Output			(self, other, "DIA_Vatras_DI_VatrasSucked_05_00"); //ZejdŸ mi z oczu, morderco. Na moj¹ pomoc nie masz co liczyæ.
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
	AI_Output			(self, other, "DIA_Vatras_DI_Talente_05_01"); //Zrobiê, co w mojej mocy.
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
	description	 = 	"Mam tutaj Almanach Opêtanych.";
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
	AI_Output			(other, self, "DIA_Vatras_DI_DementorObsessionBook_15_00"); //Mam tutaj Almanach Opêtanych.
	if (DIA_Vatras_DI_DementorObsessionBook_OneTime == false)
	{
		AI_Output			(self, other, "DIA_Vatras_DI_DementorObsessionBook_05_01"); //Hmmm... Jeœli siê st¹d wydostaniemy, zabiorê go do klasztoru, do Pyrokara.
		
		DIA_Vatras_DI_DementorObsessionBook_OneTime = true;
	}
	else
	{
		AI_Output			(self, other, "DIA_Vatras_DI_DementorObsessionBook_05_02"); //Znalaz³eœ ich wiêcej? Przynieœ mi wszystkie, które zdo³asz znaleŸæ!
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
	description	 = 	"Zwyciê¿y³em!";
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
	AI_Output			(other, self, "DIA_Vatras_DI_UndeadDragonDead_15_00"); //Zwyciê¿y³em!

	if (DIA_Vatras_DI_UndeadDragonDead_OneTime == false)
	{
		AI_Output			(self, other, "DIA_Vatras_DI_UndeadDragonDead_05_01"); //Wiem, czujê to!
		AI_Output			(self, other, "DIA_Vatras_DI_UndeadDragonDead_05_02"); //Zada³eœ Beliarowi straszliwy cios, po którym szybko siê nie otrz¹œnie.
	
		if (hero.guild == GIL_DJG)
		{
			AI_Output (other, self, "DIA_Vatras_DI_UndeadDragonDead_15_03"); //Mogê wreszcie odpocz¹æ, czy te¿ wy, magowie, macie dla mnie kolejnego trupa w szafie, którego nale¿y wypêdziæ z tego œwiata?
		}
		else
		{
			AI_Output (self, other, "DIA_Vatras_DI_UndeadDragonDead_05_04"); //Nie zapominaj, ¿e by³ to zaledwie epizod w odwiecznej walce Dobra ze Z³em.
		};
		
		AI_Output			(self, other, "DIA_Vatras_DI_UndeadDragonDead_05_05"); //Z³o zawsze znajdzie jakiœ sposób, by wkroczyæ do tego œwiata. Ta wojna nigdy siê nie skoñczy.
		
		if (hero.guild == GIL_PAL)
		{
			AI_Output (self, other, "DIA_Vatras_DI_UndeadDragonDead_05_06"); //Jako orêdownik Dobra powinieneœ o tym wiedzieæ.
		};
		
		AI_Output (self, other, "DIA_Vatras_Add_05_15"); //Tylko Adanos stoi miêdzy zwaœnionymi bogami, by zapewniæ równowagê si³.
		AI_Output (other, self, "DIA_Vatras_Add_15_16"); //Zamiast tego móg³ mi nieco pomóc.
		AI_Output (self, other, "DIA_Vatras_Add_05_17"); //Ale¿ tak w³aœnie zrobi³. Mo¿esz byæ tego pewien.
		
		DIA_Vatras_DI_UndeadDragonDead_OneTime = true;
	};

	AI_Output (self, other, "DIA_Vatras_DI_UndeadDragonDead_05_09"); //Powiedz kapitanowi, by podnosi³ kotwicê. Ta cisza i spokój mog¹ byæ tylko z³udne.
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
