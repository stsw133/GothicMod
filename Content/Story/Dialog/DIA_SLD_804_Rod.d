// ************************************************************
// 			  				   EXIT 
// ************************************************************

INSTANCE DIA_Rod_EXIT(C_INFO)
{
	npc			= Sld_804_Rod;
	nr			= 999;
	condition	= DIA_Rod_EXIT_Condition;
	information	= DIA_Rod_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_Rod_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Rod_EXIT_Info()
{	
	AI_EquipBestMeleeWeapon(self); 
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 			  					Hello 
// ************************************************************

instance DIA_Rod_Hello (C_INFO)
{
	npc			= Sld_804_Rod;
	nr			= 1;
	condition	= DIA_Rod_Hello_Condition;
	information	= DIA_Rod_Hello_Info;
	permanent	= false;
	description	= "Jak leci?"; 
};                       

FUNC INT DIA_Rod_Hello_Condition()
{
	return true;
};
 
FUNC VOID DIA_Rod_Hello_Info()
{	
	AI_Output (other, self, "DIA_Rod_Hello_15_00"); //Co s�ycha�?
	if (other.guild != GIL_SLD)
	{
		AI_Output (self, other, "DIA_Rod_Hello_06_01"); //Czego ode mnie chcesz, mi�czaku?
	
			if (other.guild == GIL_KDF)
			{
				AI_Output (self, other, "DIA_Rod_Hello_06_02"); //Nie znale�li ci milutkiego pokoiku w klasztorze?
			};	
	};
};

// ************************************************************
// 			  					WannaLearn 
// ************************************************************
var int Rod_SchwachGesagt;

instance DIA_Rod_WannaLearn (C_INFO)
{
	npc			= Sld_804_Rod;
	nr			= 2;
	condition	= DIA_Rod_WannaLearn_Condition;
	information	= DIA_Rod_WannaLearn_Info;
	permanent	= true;
	description	= "Czy m�g�by� mnie nauczy�, jak walczy� broni� dwur�czn�?"; 
};                       

FUNC INT DIA_Rod_WannaLearn_Condition()
{
	if (self.aivar[AIV_CanTeach] < true)
	{
		return true;
	};
};
 
FUNC VOID DIA_Rod_WannaLearn_Info()
{	
	AI_Output (other, self, "DIA_Rod_WannaLearn_15_00"); //Czy m�g�by� mnie nauczy�, jak walczy� broni� dwur�czn�?
		
	if (Rod_WetteGewonnen == true)
	|| (self.aivar[AIV_DefeatedByPlayer] == DBP_Defeated)
	{
		AI_Output (self, other, "DIA_Rod_WannaLearn_06_01"); //Jestem niezgorszym wojownikiem, co nie znaczy - dobrym nauczycielem.
		AI_Output (self, other, "DIA_Rod_WannaLearn_06_02"); //Chocia� pewnie m�g�bym ci pokaza� podstawy walki t� broni�.
		
		if (Npc_HasItems (self, ItMw_2h_Rod) == 0)
		{
			AI_Output (self, other, "DIA_Rod_WannaLearn_06_03"); //Pod warunkiem, oczywi�cie, �e mi zwr�cisz m�j miecz.
		}
		else
		{
			self.aivar[AIV_CanTeach] = true;
		};
	}
	else
	{
		AI_Output (self, other, "DIA_Rod_WannaLearn_06_04"); //Pos�uchaj ch�opcze. Potrzeba wiele si�y, by w og�le ud�wign�� bro� dwur�czn�.
		AI_Output (self, other, "DIA_Rod_WannaLearn_06_05"); //Skocz ch�opcze lepiej na pastwisko i pobaw si� w ciuciubabk� z owieczkami!
		Rod_SchwachGesagt = true;
	};
};

// ************************************************************
// 			  					WannaJoin 
// ************************************************************

instance DIA_Rod_WannaJoin (C_INFO)
{
	npc			= Sld_804_Rod;
	nr			= 4;
	condition	= DIA_Rod_WannaJoin_Condition;
	information	= DIA_Rod_WannaJoin_Info;
	permanent	= true;
	description	= "Chc� si� przy��czy� do najemnik�w. Masz co� przeciwko temu?"; 
};                       

FUNC INT DIA_Rod_WannaJoin_Condition()
{
	if (other.guild == GIL_NONE)
	{
		return true;
	};
};
 
FUNC VOID DIA_Rod_WannaJoin_Info()
{	
	AI_Output (other, self, "DIA_Rod_WannaJoin_15_00"); //Chc� si� przy��czy� do najemnik�w. Masz co� przeciwko temu?
	
	if (Npc_HasItems (self, ItMw_2h_Rod) == 0)
	{
		AI_Output (self, other, "DIA_Rod_WannaJoin_06_01"); //Mo�e najpierw oddasz mi miecz, co?
	}
	else if (self.aivar[AIV_DefeatedByPlayer] == DBP_Defeated)
	|| 		(Rod_WetteGewonnen == true)
	{
		if (self.aivar[AIV_DefeatedByPlayer] == DBP_Defeated)
		{	
			AI_Output (self, other, "DIA_Rod_WannaJoin_06_02"); //W porz�dku, nie chowam urazy.
			AI_Output (self, other, "DIA_Rod_WannaJoin_06_03"); //Dobrze walczysz, a to jest najwa�niejsze.
			AI_Output (self, other, "DIA_Rod_WannaJoin_06_04"); //B�jki mi�dzy przyjaci�mi to tutaj normalka. Przyzwyczaisz si�.
		}
		else //WetteGewonnen
		{
			AI_Output (self, other, "DIA_Rod_WannaJoin_06_05"); //No prosz�, masz ju� ca�kiem przyzwoity miecz. Reszty te� si� nauczysz.
		};
		
		AI_Output (self, other, "DIA_Rod_WannaJoin_06_06"); //Je�li o mnie chodzi, nie ma sprawy.
		B_LogEntry (TOPIC_SLDRespekt,"Rod poprze mnie, je�li zechc� si� przy��czy� do najemnik�w.");
	}
	else
	{
		AI_Output (self, other, "DIA_Rod_WannaJoin_06_07"); //Nie mamy tu miejsca dla mi�czak�w.
		Rod_SchwachGesagt = true;
	};
};

// ************************************************************
// 			  					Duell 
// ************************************************************

instance DIA_Rod_Duell (C_INFO)
{
	npc			= Sld_804_Rod;
	nr			= 6;
	condition	= DIA_Rod_Duell_Condition;
	information	= DIA_Rod_Duell_Info;
	permanent	= true;
	description	= "Chyba przyda�aby ci si� lekcja dobrych manier, co?"; 
};                       

FUNC INT DIA_Rod_Duell_Condition()
{
	if (self.aivar[AIV_DefeatedByPlayer] == DBP_NONE)
	{
		if (Rod_WetteGewonnen == false)
		&& (Rod_SchwachGesagt == true)
		{
			return true;
		};
	
		if (Mis_Jarvis_SldKO == LOG_RUNNING)
		{
			return true;
		};
	};
};
 
FUNC VOID DIA_Rod_Duell_Info()
{	
	AI_Output (other, self, "DIA_Rod_Duell_15_00"); //Chyba przyda�aby ci si� lekcja dobrych manier, co?
	if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_NONE)
	{
		AI_Output (self, other, "DIA_Rod_Duell_06_01"); //Dalej, spr�buj!
	}
	else
	{
		AI_Output (self, other, "DIA_Rod_Duell_06_02"); //Chyba nigdy si� nie nauczysz!
	};
	
	AI_StopProcessInfos(self);
	B_Attack (self, other,AR_NONE, 1);
};	

// ************************************************************
// 			  				StarkGenug 
// ************************************************************

instance DIA_Rod_StarkGenug (C_INFO)
{
	npc			= Sld_804_Rod;
	nr			= 5;
	condition	= DIA_Rod_StarkGenug_Condition;
	information	= DIA_Rod_StarkGenug_Info;
	permanent	= false;
	description	= "Jestem raczej silny!"; 
};                       

FUNC INT DIA_Rod_StarkGenug_Condition()
{
	if (self.aivar[AIV_DefeatedByPlayer] == DBP_NONE)
	&& (Rod_WetteGewonnen == false)
	&& (Rod_SchwachGesagt == true)
	{
		return true;
	};
};
 
FUNC VOID DIA_Rod_StarkGenug_Info()
{	
	AI_Output (other, self, "DIA_Rod_StarkGenug_15_00"); //Jestem raczej silny!
	AI_Output (self, other, "DIA_Rod_StarkGenug_06_01"); //Nonsens! Nie uni�s�by� nawet przyzwoitego miecza, takiego jak cho�by m�j.
	
	Log_CreateTopic (Topic_RodWette,LOG_MISSION);
	Log_SetTopicStatus (Topic_RodWette,LOG_RUNNING);
	B_LogEntry (Topic_RodWette,"Najemnik Rod twierdzi, �e nie zdo�am ud�wign�� jego miecza.");
};	
	
	
// ************************************************************
// 			  				BINStarkGenug 
// ************************************************************

instance DIA_Rod_BINStarkGenug (C_INFO)
{
	npc			= Sld_804_Rod;
	nr			= 5;
	condition	= DIA_Rod_BINStarkGenug_Condition;
	information	= DIA_Rod_BINStarkGenug_Info;
	permanent	= false;
	description	= "Powiedzia�em, �e JESTEM dostatecznie silny."; 
};                       

FUNC INT DIA_Rod_BINStarkGenug_Condition()
{
	if (self.aivar[AIV_DefeatedByPlayer] == DBP_NONE)
	&& (Rod_WetteGewonnen == false)
	&& (Npc_KnowsInfo (other, DIA_Rod_StarkGenug))
	{
		return true;
	};
};
 
FUNC VOID DIA_Rod_BINStarkGenug_Info()
{	
	AI_Output (other, self, "DIA_Rod_BINStarkGenug_15_00"); //Powiedzia�em, �e JESTEM dostatecznie silny.
	AI_Output (self, other, "DIA_Rod_BINStarkGenug_06_01"); //Jeste� rozbrajaj�cy. Zaryzykujesz zak�adzik?
};	
	

// ************************************************************
// 			  				Wette
// ************************************************************
var int Rod_WetteGewonnen;
var int Rod_WetteAngenommen;
//-------------------------

instance DIA_Rod_Wette (C_INFO)
{
	npc			= Sld_804_Rod;
	nr			= 5;
	condition	= DIA_Rod_Wette_Condition;
	information	= DIA_Rod_Wette_Info;
	permanent	= true;
	description	= "Za�o�� si�, �e spokojnie dam sobie rad� z twoim mieczem!"; 
};                       

FUNC INT DIA_Rod_Wette_Condition()
{
	if (self.aivar[AIV_DefeatedByPlayer] == DBP_NONE)
	&& (Rod_WetteGewonnen == false)
	&& (Npc_KnowsInfo (other, DIA_Rod_BINStarkGenug))
	&& (Npc_HasItems (self, ItMw_2h_Rod) > 0)
	&& (Rod_WetteAngenommen == false)
	{
		return true;
	};
};
 
FUNC VOID DIA_Rod_Wette_Info()
{	
	AI_Output (other, self, "DIA_Rod_Wette_15_00"); //Za�o�� si�, �e spokojnie dam sobie rad� z twoim mieczem!
	AI_Output (self, other, "DIA_Rod_Wette_06_01"); //Naprawd�? Hmmm... Ile chcesz przegra�?
	AI_Output (self, other, "DIA_Rod_Wette_06_02"); //No c�, wygl�dasz raczej na biednego durnia. Powiedzmy - 30 sztuk z�ota! Masz chocia� tyle?
		
	Info_ClearChoices (DIA_Rod_Wette);
	Info_AddChoice (DIA_Rod_Wette, "Nie.", DIA_Rod_Wette_No);
	Info_AddChoice (DIA_Rod_Wette, "Jasne.", DIA_Rod_Wette_Yes);
	
	B_LogEntry (Topic_RodWette,"Rod got�w jest za�o�y� si� o 30 sztuk z�ota, �e nie ud�wign� jego miecza.");
};

func void DIA_Rod_Wette_No()
{
	AI_Output (other, self, "DIA_Rod_Wette_No_15_00"); //Nie.
	AI_Output (self, other, "DIA_Rod_Wette_No_06_01"); //Ach, odejd�.
	
	Info_ClearChoices (DIA_Rod_Wette);
};
	
func void DIA_Rod_Wette_Yes()
{
	AI_Output (other, self, "DIA_Rod_Wette_Yes_15_00"); //Jasne.
	AI_Output (self, other, "DIA_Rod_Wette_Yes_06_01"); //Niech no spojrz�...
	
	if (B_GiveInvItems (other,self, itmi_gold, 30))
	{
		Rod_WetteAngenommen = true;
			
		AI_Output (other, self, "DIA_Rod_Wette_Yes_15_02"); //Prosz�!
		AI_Output (self, other, "DIA_Rod_Wette_Yes_06_03"); //W porz�dku, zobaczmy, na co ci� sta�...
		
		B_GiveInvItems (self, other, ItMw_2h_Rod, 1);
		
		if (other.attribute[ATR_STRENGTH] >= 40)	//30
		&& (other.attribute[ATR_DEXTERITY] >= 20)
		{
			AI_UnequipWeapons 		(other);
			AI_EquipBestMeleeWeapon	(other);
			AI_ReadyMeleeWeapon		(other);
							
			AI_Output (other, self, "DIA_Rod_Wette_Yes_15_04");//Cho�by na to?!
			AI_Output (self, other, "DIA_Rod_Wette_Yes_06_05");//No c�, wygl�da na to, �e wygra�e�.
			AI_Output (self, other, "DIA_Rod_Wette_Yes_06_06");//Kto by przypuszcza�. Naprawd� nie wygl�dasz mi na kogo�, kto mia�by tyle krzepy.
			AI_Output (self, other, "DIA_Rod_Wette_Yes_06_07");//Wygl�da na to, �e w�a�nie straci�em 30 sztuk z�ota. Oto pieni�dze.
			B_GiveInvItems (self, other, itmi_gold, 60);
			Rod_WetteGewonnen = true;
			B_GivePlayerXP(XP_BONUS_1);
		}
		else
		{
			AI_Output (other, self, "DIA_Rod_Wette_Yes_15_08"); //Nie ud�wign� tej broni!
			AI_Output (self, other, "DIA_Rod_Wette_Yes_06_09");//To w�a�nie pr�buj� ci u�wiadomi�!
		};
		
		AI_Output (self, other, "DIA_Rod_Wette_Yes_06_10");//A teraz oddaj miecz.
		
		Info_ClearChoices (DIA_Rod_Wette);
		
		Info_AddChoice (DIA_Rod_Wette, "Raczej nie...", DIA_Rod_Wette_KeepIt);
		Info_AddChoice (DIA_Rod_Wette, "Prosz�!", DIA_Rod_Wette_GiveBack);
	}
	else
	{
		AI_Output (other, self, "DIA_Rod_Wette_Yes_15_11"); //Chwileczk�, gdzie� ja go po�o�y�em...
		AI_Output (self, other, "DIA_Rod_Wette_Yes_06_12"); //Hmmm... Wr��, kiedy b�dziesz mia� pieni�dze na zak�ad.
		
		Info_ClearChoices (DIA_Rod_Wette);
	};
};

func void DIA_Rod_Wette_GiveBack()
{
	AI_RemoveWeapon (other);
	AI_Output (other, self, "DIA_Rod_Wette_GiveBack_15_00"); //Prosz�!
	Info_ClearChoices (DIA_Rod_Wette);
	Info_AddChoice (DIA_Rod_Wette, "(Oddaj miecz)", DIA_Rod_Wette_GiveBack2);
};

func void DIA_Rod_Wette_GiveBack2()
{
	B_GiveInvItems (other, self, ItMw_2h_Rod, 1);		
	if (Rod_WetteGewonnen == false)
	{
		AI_Output (self, other, "DIA_Rod_Wette_GiveBack_06_01"); //Mimo wszystko jeste� mi�czak i tyle.
	};
	Info_ClearChoices (DIA_Rod_Wette);
};

func void DIA_Rod_Wette_KeepIt()
{
	AI_Output (other, self, "DIA_Rod_Wette_KeepIt_15_00"); //Raczej nie...
	AI_Output (self, other, "DIA_Rod_Wette_KeepIt_06_01"); //S�ucham?
	AI_Output (other, self, "DIA_Rod_Wette_KeepIt_15_02"); //Chyba zatrzymam go na jaki� czas.
	AI_Output (self, other, "DIA_Rod_Wette_KeepIt_06_03"); //Zaczekaj no, skurczybyku!
	
	Info_ClearChoices (DIA_Rod_Wette);
	AI_StopProcessInfos (self);
	B_Attack (self, other, AR_NONE, 1); 
};


// ************************************************************
// 			  				Schwert zur�ck
// ************************************************************
var int Rod_SchwertXPGiven;

instance DIA_Rod_GiveItBack (C_INFO)
{
	npc			= Sld_804_Rod;
	nr			= 7;
	condition	= DIA_Rod_GiveItBack_Condition;
	information	= DIA_Rod_GiveItBack_Info;
	permanent	= true;
	description	= "Prosz�, oto tw�j miecz!"; 
};                       

FUNC INT DIA_Rod_GiveItBack_Condition()
{
	if (Npc_HasItems (other, ItMw_2h_Rod) > 0)
	{	
		return true;
	};
};
 
FUNC VOID DIA_Rod_GiveItBack_Info()
{	
	B_GiveInvItems (other, self, ItMw_2h_Rod, 1);
	
	AI_Output (other, self, "DIA_Rod_GiveItBack_15_00"); //Prosz�, oto tw�j miecz!
	AI_Output (self, other, "DIA_Rod_GiveItBack_06_01"); //Czas najwy�szy!
	
	if (Rod_SchwertXPGiven == false)
	{
		B_GivePlayerXP(XP_Ambient);
		Rod_SchwertXPGiven = true;
	};
};

// ************************************************************
// 			  					PERM
// ************************************************************

instance DIA_Rod_PERM (C_INFO)
{
	npc			= Sld_804_Rod;
	nr			= 1;
	condition	= DIA_Rod_PERM_Condition;
	information	= DIA_Rod_PERM_Info;
	permanent	= true;
	description	= "Co s�ycha�?"; 
};                       

FUNC INT DIA_Rod_PERM_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Rod_Hello))
	{	
		return true;
	};
};
 
FUNC VOID DIA_Rod_PERM_Info()
{	
	AI_Output (other, self, "DIA_Rod_PERM_15_00"); //Jak leci?
	
	if (Kapitel <= 8)	
	{
		if (other.guild == GIL_NONE)
		{
			if (self.aivar[AIV_DefeatedByPlayer] == DBP_NONE)
			&& (Rod_WetteGewonnen == false)
			{
				AI_Output (self, other, "DIA_Rod_PERM_06_01"); //Nie twoja sprawa, kole�.
				Rod_SchwachGesagt = true;
			}
			else
			{
				AI_Output (self, other, "DIA_Rod_PERM_06_02"); //Ciekawe czy pozwol� ci si� przy��czy�.
			};
		}
		else if (other.guild == GIL_SLD)
		|| 		(other.guild == GIL_DJG)
		{
			AI_Output (self, other, "DIA_Rod_PERM_06_03"); //Jeste� teraz jednym z nas, ch�opcze. Chyba si� jako� dogadamy.
		}
		else
		{
			AI_Output (self, other, "DIA_Rod_PERM_06_04"); //Nie ma tu dla ciebie miejsca. Id� si� lepiej powa��sa� gdzie indziej.
		};
	}

	if (Kapitel >= 9)
	{
		AI_Output (self, other, "DIA_Rod_PERM_06_05"); //Je�li opowie�ci o smokach s� prawdziwe, powinni�my zebra� paru ludzi i pokaza� tym bestiom, gdzie ich miejsce!
	};

	//### ab Kap 4 in OW ###
};
