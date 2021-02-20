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
	AI_Output (other, self, "DIA_Rod_Hello_15_00"); //Co s³ychaæ?
	if (other.guild != GIL_SLD)
	{
		AI_Output (self, other, "DIA_Rod_Hello_06_01"); //Czego ode mnie chcesz, miêczaku?
	
			if (other.guild == GIL_KDF)
			{
				AI_Output (self, other, "DIA_Rod_Hello_06_02"); //Nie znaleŸli ci milutkiego pokoiku w klasztorze?
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
	description	= "Czy móg³byœ mnie nauczyæ, jak walczyæ broni¹ dwurêczn¹?"; 
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
	AI_Output (other, self, "DIA_Rod_WannaLearn_15_00"); //Czy móg³byœ mnie nauczyæ, jak walczyæ broni¹ dwurêczn¹?
		
	if (Rod_WetteGewonnen == true)
	|| (self.aivar[AIV_DefeatedByPlayer] == DBP_Defeated)
	{
		AI_Output (self, other, "DIA_Rod_WannaLearn_06_01"); //Jestem niezgorszym wojownikiem, co nie znaczy - dobrym nauczycielem.
		AI_Output (self, other, "DIA_Rod_WannaLearn_06_02"); //Chocia¿ pewnie móg³bym ci pokazaæ podstawy walki t¹ broni¹.
		
		if (Npc_HasItems (self, ItMw_2h_Rod) == 0)
		{
			AI_Output (self, other, "DIA_Rod_WannaLearn_06_03"); //Pod warunkiem, oczywiœcie, ¿e mi zwrócisz mój miecz.
		}
		else
		{
			self.aivar[AIV_CanTeach] = true;
		};
	}
	else
	{
		AI_Output (self, other, "DIA_Rod_WannaLearn_06_04"); //Pos³uchaj ch³opcze. Potrzeba wiele si³y, by w ogóle udŸwign¹æ broñ dwurêczn¹.
		AI_Output (self, other, "DIA_Rod_WannaLearn_06_05"); //Skocz ch³opcze lepiej na pastwisko i pobaw siê w ciuciubabkê z owieczkami!
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
	description	= "Chcê siê przy³¹czyæ do najemników. Masz coœ przeciwko temu?"; 
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
	AI_Output (other, self, "DIA_Rod_WannaJoin_15_00"); //Chcê siê przy³¹czyæ do najemników. Masz coœ przeciwko temu?
	
	if (Npc_HasItems (self, ItMw_2h_Rod) == 0)
	{
		AI_Output (self, other, "DIA_Rod_WannaJoin_06_01"); //Mo¿e najpierw oddasz mi miecz, co?
	}
	else if (self.aivar[AIV_DefeatedByPlayer] == DBP_Defeated)
	|| 		(Rod_WetteGewonnen == true)
	{
		if (self.aivar[AIV_DefeatedByPlayer] == DBP_Defeated)
		{	
			AI_Output (self, other, "DIA_Rod_WannaJoin_06_02"); //W porz¹dku, nie chowam urazy.
			AI_Output (self, other, "DIA_Rod_WannaJoin_06_03"); //Dobrze walczysz, a to jest najwa¿niejsze.
			AI_Output (self, other, "DIA_Rod_WannaJoin_06_04"); //Bójki miêdzy przyjació³mi to tutaj normalka. Przyzwyczaisz siê.
		}
		else //WetteGewonnen
		{
			AI_Output (self, other, "DIA_Rod_WannaJoin_06_05"); //No proszê, masz ju¿ ca³kiem przyzwoity miecz. Reszty te¿ siê nauczysz.
		};
		
		AI_Output (self, other, "DIA_Rod_WannaJoin_06_06"); //Jeœli o mnie chodzi, nie ma sprawy.
		B_LogEntry (TOPIC_SLDRespekt,"Rod poprze mnie, jeœli zechcê siê przy³¹czyæ do najemników.");
	}
	else
	{
		AI_Output (self, other, "DIA_Rod_WannaJoin_06_07"); //Nie mamy tu miejsca dla miêczaków.
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
	description	= "Chyba przyda³aby ci siê lekcja dobrych manier, co?"; 
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
	AI_Output (other, self, "DIA_Rod_Duell_15_00"); //Chyba przyda³aby ci siê lekcja dobrych manier, co?
	if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_NONE)
	{
		AI_Output (self, other, "DIA_Rod_Duell_06_01"); //Dalej, spróbuj!
	}
	else
	{
		AI_Output (self, other, "DIA_Rod_Duell_06_02"); //Chyba nigdy siê nie nauczysz!
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
	AI_Output (self, other, "DIA_Rod_StarkGenug_06_01"); //Nonsens! Nie uniós³byœ nawet przyzwoitego miecza, takiego jak choæby mój.
	
	Log_CreateTopic (Topic_RodWette,LOG_MISSION);
	Log_SetTopicStatus (Topic_RodWette,LOG_RUNNING);
	B_LogEntry (Topic_RodWette,"Najemnik Rod twierdzi, ¿e nie zdo³am udŸwign¹æ jego miecza.");
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
	description	= "Powiedzia³em, ¿e JESTEM dostatecznie silny."; 
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
	AI_Output (other, self, "DIA_Rod_BINStarkGenug_15_00"); //Powiedzia³em, ¿e JESTEM dostatecznie silny.
	AI_Output (self, other, "DIA_Rod_BINStarkGenug_06_01"); //Jesteœ rozbrajaj¹cy. Zaryzykujesz zak³adzik?
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
	description	= "Za³o¿ê siê, ¿e spokojnie dam sobie radê z twoim mieczem!"; 
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
	AI_Output (other, self, "DIA_Rod_Wette_15_00"); //Za³o¿ê siê, ¿e spokojnie dam sobie radê z twoim mieczem!
	AI_Output (self, other, "DIA_Rod_Wette_06_01"); //Naprawdê? Hmmm... Ile chcesz przegraæ?
	AI_Output (self, other, "DIA_Rod_Wette_06_02"); //No có¿, wygl¹dasz raczej na biednego durnia. Powiedzmy - 30 sztuk z³ota! Masz chocia¿ tyle?
		
	Info_ClearChoices (DIA_Rod_Wette);
	Info_AddChoice (DIA_Rod_Wette, "Nie.", DIA_Rod_Wette_No);
	Info_AddChoice (DIA_Rod_Wette, "Jasne.", DIA_Rod_Wette_Yes);
	
	B_LogEntry (Topic_RodWette,"Rod gotów jest za³o¿yæ siê o 30 sztuk z³ota, ¿e nie udŸwignê jego miecza.");
};

func void DIA_Rod_Wette_No()
{
	AI_Output (other, self, "DIA_Rod_Wette_No_15_00"); //Nie.
	AI_Output (self, other, "DIA_Rod_Wette_No_06_01"); //Ach, odejdŸ.
	
	Info_ClearChoices (DIA_Rod_Wette);
};
	
func void DIA_Rod_Wette_Yes()
{
	AI_Output (other, self, "DIA_Rod_Wette_Yes_15_00"); //Jasne.
	AI_Output (self, other, "DIA_Rod_Wette_Yes_06_01"); //Niech no spojrzê...
	
	if (B_GiveInvItems (other,self, itmi_gold, 30))
	{
		Rod_WetteAngenommen = true;
			
		AI_Output (other, self, "DIA_Rod_Wette_Yes_15_02"); //Proszê!
		AI_Output (self, other, "DIA_Rod_Wette_Yes_06_03"); //W porz¹dku, zobaczmy, na co ciê staæ...
		
		B_GiveInvItems (self, other, ItMw_2h_Rod, 1);
		
		if (other.attribute[ATR_STRENGTH] >= 40)	//30
		&& (other.attribute[ATR_DEXTERITY] >= 20)
		{
			AI_UnequipWeapons 		(other);
			AI_EquipBestMeleeWeapon	(other);
			AI_ReadyMeleeWeapon		(other);
							
			AI_Output (other, self, "DIA_Rod_Wette_Yes_15_04");//Choæby na to?!
			AI_Output (self, other, "DIA_Rod_Wette_Yes_06_05");//No có¿, wygl¹da na to, ¿e wygra³eœ.
			AI_Output (self, other, "DIA_Rod_Wette_Yes_06_06");//Kto by przypuszcza³. Naprawdê nie wygl¹dasz mi na kogoœ, kto mia³by tyle krzepy.
			AI_Output (self, other, "DIA_Rod_Wette_Yes_06_07");//Wygl¹da na to, ¿e w³aœnie straci³em 30 sztuk z³ota. Oto pieni¹dze.
			B_GiveInvItems (self, other, itmi_gold, 60);
			Rod_WetteGewonnen = true;
			B_GivePlayerXP(XP_BONUS_1);
		}
		else
		{
			AI_Output (other, self, "DIA_Rod_Wette_Yes_15_08"); //Nie udŸwignê tej broni!
			AI_Output (self, other, "DIA_Rod_Wette_Yes_06_09");//To w³aœnie próbujê ci uœwiadomiæ!
		};
		
		AI_Output (self, other, "DIA_Rod_Wette_Yes_06_10");//A teraz oddaj miecz.
		
		Info_ClearChoices (DIA_Rod_Wette);
		
		Info_AddChoice (DIA_Rod_Wette, "Raczej nie...", DIA_Rod_Wette_KeepIt);
		Info_AddChoice (DIA_Rod_Wette, "Proszê!", DIA_Rod_Wette_GiveBack);
	}
	else
	{
		AI_Output (other, self, "DIA_Rod_Wette_Yes_15_11"); //Chwileczkê, gdzie¿ ja go po³o¿y³em...
		AI_Output (self, other, "DIA_Rod_Wette_Yes_06_12"); //Hmmm... Wróæ, kiedy bêdziesz mia³ pieni¹dze na zak³ad.
		
		Info_ClearChoices (DIA_Rod_Wette);
	};
};

func void DIA_Rod_Wette_GiveBack()
{
	AI_RemoveWeapon (other);
	AI_Output (other, self, "DIA_Rod_Wette_GiveBack_15_00"); //Proszê!
	Info_ClearChoices (DIA_Rod_Wette);
	Info_AddChoice (DIA_Rod_Wette, "(Oddaj miecz)", DIA_Rod_Wette_GiveBack2);
};

func void DIA_Rod_Wette_GiveBack2()
{
	B_GiveInvItems (other, self, ItMw_2h_Rod, 1);		
	if (Rod_WetteGewonnen == false)
	{
		AI_Output (self, other, "DIA_Rod_Wette_GiveBack_06_01"); //Mimo wszystko jesteœ miêczak i tyle.
	};
	Info_ClearChoices (DIA_Rod_Wette);
};

func void DIA_Rod_Wette_KeepIt()
{
	AI_Output (other, self, "DIA_Rod_Wette_KeepIt_15_00"); //Raczej nie...
	AI_Output (self, other, "DIA_Rod_Wette_KeepIt_06_01"); //S³ucham?
	AI_Output (other, self, "DIA_Rod_Wette_KeepIt_15_02"); //Chyba zatrzymam go na jakiœ czas.
	AI_Output (self, other, "DIA_Rod_Wette_KeepIt_06_03"); //Zaczekaj no, skurczybyku!
	
	Info_ClearChoices (DIA_Rod_Wette);
	AI_StopProcessInfos (self);
	B_Attack (self, other, AR_NONE, 1); 
};


// ************************************************************
// 			  				Schwert zurück
// ************************************************************
var int Rod_SchwertXPGiven;

instance DIA_Rod_GiveItBack (C_INFO)
{
	npc			= Sld_804_Rod;
	nr			= 7;
	condition	= DIA_Rod_GiveItBack_Condition;
	information	= DIA_Rod_GiveItBack_Info;
	permanent	= true;
	description	= "Proszê, oto twój miecz!"; 
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
	
	AI_Output (other, self, "DIA_Rod_GiveItBack_15_00"); //Proszê, oto twój miecz!
	AI_Output (self, other, "DIA_Rod_GiveItBack_06_01"); //Czas najwy¿szy!
	
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
	description	= "Co s³ychaæ?"; 
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
				AI_Output (self, other, "DIA_Rod_PERM_06_01"); //Nie twoja sprawa, koleœ.
				Rod_SchwachGesagt = true;
			}
			else
			{
				AI_Output (self, other, "DIA_Rod_PERM_06_02"); //Ciekawe czy pozwol¹ ci siê przy³¹czyæ.
			};
		}
		else if (other.guild == GIL_SLD)
		|| 		(other.guild == GIL_DJG)
		{
			AI_Output (self, other, "DIA_Rod_PERM_06_03"); //Jesteœ teraz jednym z nas, ch³opcze. Chyba siê jakoœ dogadamy.
		}
		else
		{
			AI_Output (self, other, "DIA_Rod_PERM_06_04"); //Nie ma tu dla ciebie miejsca. IdŸ siê lepiej powa³êsaæ gdzie indziej.
		};
	}

	if (Kapitel >= 9)
	{
		AI_Output (self, other, "DIA_Rod_PERM_06_05"); //Jeœli opowieœci o smokach s¹ prawdziwe, powinniœmy zebraæ paru ludzi i pokazaæ tym bestiom, gdzie ich miejsce!
	};

	//### ab Kap 4 in OW ###
};
