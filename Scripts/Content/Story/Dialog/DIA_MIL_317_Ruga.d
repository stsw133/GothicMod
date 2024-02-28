///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Ruga_EXIT   (C_INFO)
{
	npc         = Mil_317_Ruga;
	nr          = 999;
	condition   = DIA_Ruga_EXIT_Condition;
	information = DIA_Ruga_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};

FUNC INT DIA_Ruga_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Ruga_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Ruga_Hallo		(C_INFO)
{
	npc		 	 = 	Mil_317_Ruga;
	nr			 =  2;
	condition	 = 	DIA_Ruga_Hallo_Condition;
	information	 = 	DIA_Ruga_Hallo_Info;
	permanent    =  FALSE;
	important	 = 	TRUE;
};

func int DIA_Ruga_Hallo_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	{
		return TRUE;
	};
};
func void DIA_Ruga_Hallo_Info ()
{
	AI_Output (other, self, "DIA_Ruga_Hallo_15_00"); //Co tu robisz?
	AI_Output (self, other, "DIA_Ruga_Hallo_11_01"); //Pr�buj� pokaza� ch�opakom, jak w�a�ciwie trzyma� kusz�, i pomagam im nabra� troch� zr�czno�ci.
	
	Log_CreateTopic (Topic_CityTeacher, LOG_NOTE);
	B_LogEntry (Topic_CityTeacher, "Ruga, stra�nik miejski, pomo�e mi w trenowaniu zr�czno�ci i nauczy mnie pos�ugiwa� si� kusz�, jednak tylko pod warunkiem, �e zostan� s�ug� Kr�la.");
};
///////////////////////////////////////////////////////////////////////
//	Info Train
///////////////////////////////////////////////////////////////////////
instance DIA_Ruga_Train		(C_INFO)
{
	npc			 = 	Mil_317_Ruga;
	nr			 = 	5;
	condition	 = 	DIA_Ruga_Train_Condition;
	information	 = 	DIA_Ruga_Train_Info;
	permanent	 = 	TRUE;
	description	 = 	"Mo�esz mnie przeszkoli�?";
};

func int DIA_Ruga_Train_Condition ()
{
	if ((self.aivar[AIV_CanOffer] & OFFER_Teaching) == 0)
	{
		return true;
	};
};
func void DIA_Ruga_Train_Info ()
{
	AI_Output (other, self, "DIA_Ruga_Train_15_00"); //Czy m�g�by� mnie trenowa�?
	
	if (hero.guild == GIL_MIL)
	|| (hero.guild == GIL_PAL)
	|| (hero.guild == GIL_KDF)
	{
		AI_Output (self, other, "DIA_Ruga_Train_11_01"); //Jasne. Je�li masz ju� troch� do�wiadczenia, ch�tnie ci pomog�.
		AI_Output (self, other, "DIA_Ruga_Train_11_02"); //Zawsze pami�taj, zwi�zek mi�dzy zr�czno�ci� a walk� na dystans jest r�wnie wielki jak zwi�zek kuszy i be�tu...
		AI_Output (other, self, "DIA_Ruga_Train_15_03"); //...Jedno nie istnieje bez drugiego, rozumiem.
	
		self.aivar[AIV_CanOffer] = self.aivar[AIV_CanOffer] | OFFER_Teaching;
	}
	else if ((hero.guild == GIL_SLD)
	|| 		 (hero.guild == GIL_DJG))
	{
		AI_Output (self, other, "DIA_Ruga_Train_11_04"); //Zejd� mi z oczu, najemniku.
		AI_StopProcessInfos (self);
	}
	else 
	{	 
		AI_Output (self, other, "DIA_Ruga_Train_11_05"); //Nie, trenuj� tylko osoby b�d�ce na s�u�bie u Kr�la. Nikogo wi�cej.
		AI_Output (self, other, "DIA_Ruga_Train_11_06"); //Zawsze jednak przyda si� nam kto� taki jak ty. Je�li wi�c chcesz zaci�gn�� si� do stra�y, porozmawiaj z Lordem Andre.
	};     
};
