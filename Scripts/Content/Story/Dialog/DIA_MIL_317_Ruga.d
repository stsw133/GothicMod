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
	AI_Output (self, other, "DIA_Ruga_Hallo_11_01"); //Próbujê pokazaæ ch³opakom, jak w³aœciwie trzymaæ kuszê, i pomagam im nabraæ trochê zrêcznoœci.
	
	Log_CreateTopic (Topic_CityTeacher, LOG_NOTE);
	B_LogEntry (Topic_CityTeacher, "Ruga, stra¿nik miejski, pomo¿e mi w trenowaniu zrêcznoœci i nauczy mnie pos³ugiwaæ siê kusz¹, jednak tylko pod warunkiem, ¿e zostanê s³ug¹ Króla.");
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
	description	 = 	"Mo¿esz mnie przeszkoliæ?";
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
	AI_Output (other, self, "DIA_Ruga_Train_15_00"); //Czy móg³byœ mnie trenowaæ?
	
	if (hero.guild == GIL_MIL)
	|| (hero.guild == GIL_PAL)
	|| (hero.guild == GIL_KDF)
	{
		AI_Output (self, other, "DIA_Ruga_Train_11_01"); //Jasne. Jeœli masz ju¿ trochê doœwiadczenia, chêtnie ci pomogê.
		AI_Output (self, other, "DIA_Ruga_Train_11_02"); //Zawsze pamiêtaj, zwi¹zek miêdzy zrêcznoœci¹ a walk¹ na dystans jest równie wielki jak zwi¹zek kuszy i be³tu...
		AI_Output (other, self, "DIA_Ruga_Train_15_03"); //...Jedno nie istnieje bez drugiego, rozumiem.
	
		self.aivar[AIV_CanOffer] = self.aivar[AIV_CanOffer] | OFFER_Teaching;
	}
	else if ((hero.guild == GIL_SLD)
	|| 		 (hero.guild == GIL_DJG))
	{
		AI_Output (self, other, "DIA_Ruga_Train_11_04"); //ZejdŸ mi z oczu, najemniku.
		AI_StopProcessInfos (self);
	}
	else 
	{	 
		AI_Output (self, other, "DIA_Ruga_Train_11_05"); //Nie, trenujê tylko osoby bêd¹ce na s³u¿bie u Króla. Nikogo wiêcej.
		AI_Output (self, other, "DIA_Ruga_Train_11_06"); //Zawsze jednak przyda siê nam ktoœ taki jak ty. Jeœli wiêc chcesz zaci¹gn¹æ siê do stra¿y, porozmawiaj z Lordem Andre.
	};     
};
