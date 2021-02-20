// ************************************************************
// 	  				   EXIT 
// ************************************************************

INSTANCE DIA_Torlof_DI_KAP3_EXIT(C_INFO)
{
	npc			= SLD_801_Torlof_DI;
	nr			= 999;
	condition	= DIA_Torlof_DI_KAP3_EXIT_Condition;
	information	= DIA_Torlof_DI_KAP3_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Torlof_DI_KAP3_EXIT_Condition()
{
	return true;
};
FUNC VOID DIA_Torlof_DI_KAP3_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//*********************************************************************
//	Info Hallo 
//*********************************************************************
INSTANCE DIA_Torlof_DI_Hallo   (C_INFO)
{
	npc         = SLD_801_Torlof_DI;
	nr          = 4;
	condition   = DIA_Torlof_DI_Hallo_Condition;
	information = DIA_Torlof_DI_Hallo_Info;
	permanent	 = 	true;
	description = "Wszystko w porz¹dku?";
};

FUNC INT DIA_Torlof_DI_Hallo_Condition()
{
	if (Npc_IsDead(UndeadDragon) == false)
	{
		return true;
	};
};

FUNC VOID DIA_Torlof_DI_Hallo_Info()
{
	AI_Output (other,self ,"DIA_Torlof_DI_Hallo_15_00"); //Wszystko w porz¹dku?

	if (ORkSturmDI == false)
	{
		AI_Output (self ,other,"DIA_Torlof_DI_Hallo_01_01"); //Jak na razie... Ale to siê mo¿e szybko zmieniæ. Uwa¿aj na siebie.
	}
	else
	{
		AI_Output (self ,other,"DIA_Torlof_DI_Hallo_01_02"); //Jeœli ci przeklêci orkowie bêd¹ siê trzymaæ z dala, wszystko bêdzie w porz¹dku.
		B_StartOtherRoutine	(Torlof_DI,"Start");
	};
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info UndeadDragonDead
///////////////////////////////////////////////////////////////////////
instance DIA_Torlof_DI_UndeadDragonDead		(C_INFO)
{
	npc			 = 	SLD_801_Torlof_DI;
	nr			 = 	4;
	condition	 = 	DIA_Torlof_DI_UndeadDragonDead_Condition;
	information	 = 	DIA_Torlof_DI_UndeadDragonDead_Info;
	permanent	 = 	true;
	description = 	"Wróg zosta³ pokonany.";
};

func int DIA_Torlof_DI_UndeadDragonDead_Condition ()
{	
	if (Npc_IsDead(UndeadDragon))
	{
		return true;
	};
};
func void DIA_Torlof_DI_UndeadDragonDead_Info ()
{
	AI_Output			(other ,self, "DIA_Torlof_DI_UndeadDragonDead_15_00"); //Wróg zosta³ pokonany.
	AI_Output			(self ,other, "DIA_Torlof_DI_UndeadDragonDead_01_01"); //Wcale mnie to nie dziwi. To jak? Mo¿emy ju¿ odbijaæ od brzegu?

	Info_ClearChoices	(DIA_Torlof_DI_UndeadDragonDead);
	Info_AddChoice	(DIA_Torlof_DI_UndeadDragonDead, "Muszê jeszcze coœ za³atwiæ.", DIA_Torlof_DI_UndeadDragonDead_moment );
	Info_AddChoice	(DIA_Torlof_DI_UndeadDragonDead, "Tak, to ju¿ koniec. ChodŸmy.", DIA_Torlof_DI_UndeadDragonDead_over );
};
func void DIA_Torlof_DI_UndeadDragonDead_moment ()
{
	AI_Output			(other, self, "DIA_Torlof_DI_UndeadDragonDead_moment_15_00"); //Muszê jeszcze coœ za³atwiæ.
	AI_Output			(self, other, "DIA_Torlof_DI_UndeadDragonDead_moment_01_01"); //No to siê poœpiesz!
	AI_StopProcessInfos (self);
};

func void DIA_Torlof_DI_UndeadDragonDead_over ()
{
	AI_StopProcessInfos (self);
	B_Extro_Avi ();
};
