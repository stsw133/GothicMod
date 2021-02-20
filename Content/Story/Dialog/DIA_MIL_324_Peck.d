///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Peck_EXIT   (C_INFO)
{
	npc         = Mil_324_Peck;
	nr          = 999;
	condition   = DIA_Peck_EXIT_Condition;
	information = DIA_Peck_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Peck_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Peck_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info HEY
///////////////////////////////////////////////////////////////////////
instance DIA_Peck_HEY		(C_INFO)
{
	npc			 = 	Mil_324_Peck;
	nr			 = 	2;
	condition	 = 	DIA_Peck_HEY_Condition;
	information	 = 	DIA_Peck_HEY_Info;
	permanent	 = 	true;
	description	 =  "Hej, co s³ychaæ?";
};
func int DIA_Peck_HEY_Condition ()
{	
	if (MIS_Andre_Peck != LOG_RUNNING)
	&& (Npc_GetDistToWP (self,"NW_CITY_HABOUR_PUFF_PECK") <= 500) 
	{
		return true;
	};
};
func void DIA_Peck_HEY_Info ()
{
	AI_Output (other, self, "DIA_Peck_HEY_15_00"); //Hej, co s³ychaæ?
	AI_Output (self, other, "DIA_Peck_HEY_12_01"); //Cz³owieku, jestem zajêty. Zostaw mnie w spokoju.
	
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info FOUND_PECK
///////////////////////////////////////////////////////////////////////
instance DIA_Peck_FOUND_PECK		(C_INFO)
{
	npc			 = 	Mil_324_Peck;
	nr			 = 	2;
	condition	 = 	DIA_Peck_FOUND_PECK_Condition;
	information	 = 	DIA_Peck_FOUND_PECK_Info;
	permanent 	 =  false;
	description	 =  "Hej, czas ju¿ ruszaæ w drogê.";
};

func int DIA_Peck_FOUND_PECK_Condition ()
{
	if (MIS_Andre_Peck == LOG_RUNNING)
	&& (Npc_GetDistToWP (self,"NW_CITY_HABOUR_PUFF_PECK") <= 500) 
	{
		return true;
	};
};
func void DIA_Peck_FOUND_PECK_Info ()
{
	AI_Output (other, self, "DIA_Peck_FOUND_PECK_15_00"); //Hej, czas ju¿ ruszaæ w drogê.
	AI_Output (self, other, "DIA_Peck_FOUND_PECK_12_01"); //Czego chcesz? Nie widzisz, ¿e jestem zajêty?
	AI_Output (other, self, "DIA_Peck_FOUND_PECK_15_02"); //Potrzebujê broni, wracaj wiêc do koszar.
	AI_Output (self, other, "DIA_Peck_FOUND_PECK_12_03"); //Do cholery, twoja broñ mo¿e poczekaæ.
	AI_Output (other, self, "DIA_Peck_FOUND_PECK_15_04"); //No dalej, Andre ju¿ siê za tob¹ stêskni³.
	AI_Output (self, other, "DIA_Peck_FOUND_PECK_12_05"); //Hmmm... cholera. W porz¹dku, ju¿ idê - ale kiedy zameldujesz siê u Andre, nie wspominaj, ¿e mnie tu widzia³eœ.
	
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine (self, "STORAGE");
	Npc_ExchangeRoutine (Vanja, "ALONE");
};
///////////////////////////////////////////////////////////////////////
//	Info WEAPON
///////////////////////////////////////////////////////////////////////
instance DIA_Peck_WEAPON		(C_INFO)
{
	npc			 = 	Mil_324_Peck;
	nr			 = 	2;
	condition	 = 	DIA_Peck_WEAPON_Condition;
	information	 = 	DIA_Peck_WEAPON_Info;
	permanent 	 =  true;
	description	 = 	"Potrzebujê broni.";
};
//------------------------------------
var int DIA_Peck_WEAPON_perm;
//------------------------------------
func int DIA_Peck_WEAPON_Condition ()
{	
	if Npc_KnowsInfo (other, DIA_Andre_FOUND_PECK)
	&& (Npc_GetDistToWP (self, "NW_CITY_ARMORY_PECK") <= 1000)
	&& (Kapitel < 9)
	&& (DIA_Peck_WEAPON_perm == false)
	{
		return true;
	};
};
func void DIA_Peck_WEAPON_Info ()
{
	AI_Output (other, self, "DIA_Peck_WEAPON_15_00"); //Potrzebujê broni.
	
	if (MIS_Andre_Peck == LOG_RUNNING)
	{
		AI_Output (self, other, "DIA_Peck_WEAPON_12_01"); //Najpierw zamelduj siê u Andre.
	}
	else	
	{
		if (MIS_Andre_Peck == LOG_OBSOLETE)
		{
			AI_Output (self, other, "DIA_Peck_WEAPON_12_02"); //Kogó¿ my tu mamy. To nasz nowy towarzysz. I szuka sobie miecza.
			AI_Output (self, other, "DIA_Peck_WEAPON_12_03"); //Nie powiedzia³eœ Andre, ¿e by³em w Czerwonej Latarni. Jesteœ w porz¹dku. Proszê, weŸ swój miecz.
			AI_Output (self ,other,"DIA_Peck_Add_12_00"); //To najlepszy, jaki mam.
			B_GiveInvItems 		(self, hero	, ItMw_Schwert1, 1); // edles Schwert 35
		}
		else if (MIS_Andre_Peck == LOG_SUCCESS) // ist schon korrekt, das SUCCESS gilt für Andre M.F.
		{
			AI_Output (self, other, "DIA_Peck_WEAPON_12_04"); //Pamiêtam ciê dok³adnie. Kto doniós³ Andre, ¿e by³em w Czerwonej Latarni, co?
			AI_Output (self, other, "DIA_Peck_WEAPON_12_05"); //A teraz chcesz jeszcze ode mnie miecz... dobra, dostaniesz go. Proszê, a teraz zejdŸ mi z oczu.
			
			B_GiveInvItems (self, hero, ItMw_1h_MISC_Sword,1);// rostiges Schwert
		};
		DIA_Peck_WEAPON_perm = true;
	AI_Output (self, other, "DIA_Peck_WEAPON_12_06"); //Jeœli ta broñ ci nie odpowiada, idŸ do kupców na placu targowym.
	};
	AI_StopProcessInfos (self);
};


// ***************
// B_Peck_LeckMich
// ***************

func void B_Peck_LeckMich()
{
	AI_Output (self ,other,"DIA_Peck_Add_12_07"); //Poca³uj mnie w ty³ek!
};


// *********************************************************
// 						zweite Waffe
// *********************************************************
instance DIA_Peck_WEAPON2		(C_INFO)
{
	npc			 = 	Mil_324_Peck;
	nr			 = 	2;
	condition	 = 	DIA_Peck_WEAPON2_Condition;
	information	 = 	DIA_Peck_WEAPON2_Info;
	permanent 	 =  true;
	description	 = 	"Masz dla mnie jak¹œ lepsz¹ broñ?";
};
//------------------------------------
var int DIA_Peck_WEAPON2_perm;
//------------------------------------
func int DIA_Peck_WEAPON2_Condition ()
{	
	if (other.guild == GIL_MIL)
	&& (Npc_GetDistToWP (self, "NW_CITY_ARMORY_PECK") <= 1000)
	&& (EnterOW_Kapitel2 == true)
	&& (DIA_Peck_WEAPON_perm == true)
	&& (DIA_Peck_WEAPON2_perm == false)
	{
		return true;
	};
};
func void DIA_Peck_WEAPON2_Info ()
{
	AI_Output (self ,other,"DIA_Peck_Add_15_01"); //Masz dla mnie jak¹œ lepsz¹ broñ?
	if (MIS_Andre_Peck == LOG_SUCCESS) //Peck verpetzt
	{	
		AI_Output (self ,other,"DIA_Peck_Add_12_06"); //Nie zapomnia³em o tym, ¿e donios³eœ na mnie Lordowi Andre.
		B_Peck_LeckMich();
	}
	else if (Kapitel < 9)
	{
		AI_Output (self ,other,"DIA_Peck_Add_12_02"); //W tej chwili nie...
	}
	else
	{
		AI_Output (self ,other,"DIA_Peck_Add_12_03"); //Dobrze, ¿e pytasz. Tak siê sk³ada, ¿e mamy tu kilka niez³ych ostrzy po najemnikach Onara.
		AI_Output (self ,other,"DIA_Peck_Add_12_04"); //Im ju¿ siê nie przydadz¹.
		AI_Output (self ,other,"DIA_Peck_Add_12_05"); //Proszê, bierz.
		B_GiveInvItems (self, other, ItMw_Rubinklinge, 1); //50
		
		DIA_Peck_WEAPON2_perm = true;
	};
};

///////////////////////////////////////////////////////////////////////
//	Info PERM
///////////////////////////////////////////////////////////////////////
instance DIA_Peck_PERM		(C_INFO)
{
	npc			 = 	Mil_324_Peck;
	nr			 = 	998;
	condition	 = 	DIA_Peck_PERM_Condition;
	information	 = 	DIA_Peck_PERM_Info;
	permanent	 =	true;
	description	 = 	"Wszystko w porz¹dku?";
};

func int DIA_Peck_PERM_Condition ()
{	
	if Npc_KnowsInfo (other, DIA_Peck_WEAPON)
	|| (other.guild != GIL_MIL)
	&& (Npc_GetDistToWP (self, "NW_CITY_ARMORY_PECK") <= 1000)
	{
		return true;
	};
};
func void DIA_Peck_PERM_Info ()
{
	AI_Output			(other, self, "DIA_Peck_PERM_15_00"); //Wszystko gra?
	
	if (MIS_Andre_Peck == LOG_SUCCESS) //Peck verpetzt
	{	
		B_Peck_LeckMich();
	}
	else if (Kapitel != 9)
	{
		AI_Output			(self, other, "DIA_Peck_PERM_12_01"); //Taa, a u ciebie?
	}
	else if (Kapitel == 9)
	{
		if (MIS_RescueBennet != LOG_SUCCESS)
		{
			if (hero.guild == GIL_MIL)
			|| (hero.guild == GIL_PAL)
			{
				AI_Output			(self, other, "DIA_Peck_PERM_12_02"); //Nie do koñca. Martwi¹ mnie najemnicy, a szczególnie pog³oska, ¿e chc¹ odbiæ swojego z wiêzienia.
				AI_Output			(self, other, "DIA_Peck_PERM_12_03"); //Nie mam zamiaru przeciwstawiaæ siê grupie doœwiadczonych wojowników.
			}
			else if (hero.guild == GIL_KDF)
			{
				AI_Output			(self, other, "DIA_Peck_PERM_12_04"); //Oczywiœcie. Mamy oczy szeroko otwarte. Magowie mog¹ spaæ spokojnie, wiêzieñ nie ma najmniejszej szansy ucieczki.
			}
			else //Sld oder DJG
			{
				AI_Output			(self, other, "DIA_Peck_PERM_12_05"); //Wiem, co planujesz, ale nie uda ci siê odbiæ wiêŸnia.
			};
		}	
		else
		{
			AI_Output			(self, other, "DIA_Peck_PERM_12_06"); //Cieszê siê, ¿e sprawa morderstwa zosta³a wyjaœniona.
			AI_Output			(other, self, "DIA_Peck_PERM_15_07"); //Dlaczego?
			AI_Output			(self, other, "DIA_Peck_PERM_12_08"); //Nie myœlisz chyba, ¿e najemnicy patrzyliby bezczynnie na to, jak wieszamy jednego z nich.
			AI_Output			(self, other, "DIA_Peck_PERM_12_09"); //W najgorszym wypadku mogliby nas zaatakowaæ. Nie chcê nawet myœleæ, co by siê wtedy dzia³o.
		};	
	};
};
