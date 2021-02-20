
// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Sengrath_EXIT(C_INFO)
{
	npc			= PAL_267_Sengrath;
	nr			= 999;
	condition	= DIA_Sengrath_EXIT_Condition;
	information	= DIA_Sengrath_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_Sengrath_EXIT_Condition()
{
	return true;
};
 
FUNC VOID DIA_Sengrath_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 			  			Hallo
// ************************************************************
INSTANCE DIA_Sengrath_Hello (C_INFO)
{
	npc			= PAL_267_Sengrath;
	nr			= 2;
	condition	= DIA_Sengrath_Hello_Condition;
	information	= DIA_Sengrath_Hello_Info;
	permanent	= false;
	IMPORTANT 	= true;
};                       

FUNC INT DIA_Sengrath_Hello_Condition()
{
	return true;
};	 
FUNC VOID DIA_Sengrath_Hello_Info()
{	
	AI_Output (self ,other,"DIA_Sengrath_Hello_03_00"); //Wiedzia³em, wiedzia³em, ¿e komuœ siê uda!
	AI_Output (self ,other,"DIA_Sengrath_Hello_03_01"); //Przybywasz zza prze³êczy? W takim razie naszemu pos³añcowi uda³o siê przejœæ?
	AI_Output (other ,self,"DIA_Sengrath_Hello_15_02"); //Nie, wasz pos³aniec poleg³. Przybywam tu z rozkazu Lorda Hagena.
	AI_Output (self ,other,"DIA_Sengrath_Hello_03_03"); //Przeklêci orkowie...
	AI_Output (self ,other,"DIA_Sengrath_Hello_03_04"); //Kapitan Garond na pewno zechce z tob¹ porozmawiaæ. Znajdziesz go w wielkim budynku, chronionym przez dwóch stra¿ników.
};
// ************************************************************
// 			  	Equipment 
// ************************************************************
INSTANCE DIA_Sengrath_Equipment (C_INFO)
{
	npc			= PAL_267_Sengrath;
	nr			= 2;
	condition	= DIA_Sengrath_Equipment_Condition;
	information	= DIA_Sengrath_Equipment_Info;
	permanent	= false;
	description = "Czy mogê uzupe³niæ tu gdzieœ zapasy?";
};                       

FUNC INT DIA_Sengrath_Equipment_Condition()
{
	return true;
};	 
FUNC VOID DIA_Sengrath_Equipment_Info()
{	
	AI_Output (other ,self,"DIA_Sengrath_Equipment_15_00"); //Czy mogê uzupe³niæ tu gdzieœ zapasy?
	AI_Output (self ,other,"DIA_Sengrath_Equipment_03_01"); //Wydawaniem broni zajmuje siê Tandor. Pozosta³e sprawy to dzia³ka ochmistrza Engora.
	AI_Output (other ,self,"DIA_Sengrath_Equipment_15_02"); //A magiczne przedmioty?
	AI_Output (self ,other,"DIA_Sengrath_Equipment_03_03"); //Mamy trochê magicznych zwojów. Jeœli bêdziesz chcia³ kilka z nich, zg³oœ siê do mnie.
	
	Log_CreateTopic (TOPIC_Trader_OC,LOG_NOTE);
	B_LogEntry (TOPIC_Trader_OC,"Sengrath sprzedaje w zamku magiczne zwoje.");
};
// ************************************************************
// 			  	Lehrer
// ************************************************************
INSTANCE DIA_Sengrath_Perm (C_INFO)
{
	npc			= PAL_267_Sengrath;
	nr			= 2;
	condition	= DIA_Sengrath_Perm_Condition;
	information	= DIA_Sengrath_Perm_Info;
	permanent	= false;
	description = "Kto mo¿e mnie czegoœ tutaj nauczyæ?";
};                       

FUNC INT DIA_Sengrath_Perm_Condition()
{	
		return true;
};
FUNC VOID DIA_Sengrath_Perm_Info()
{	
	AI_Output (other ,self,"DIA_Sengrath_Perm_15_00"); //Kto mo¿e mnie czegoœ tutaj nauczyæ?
	
	if (other.guild == GIL_KDF)
	&& (Kapitel == 8)
	{
		AI_Output (self ,other,"DIA_Sengrath_Perm_03_01"); //Pogadaj z Miltenem - jest tu jedynym magiem.
	}
	else
	{
		AI_Output (self ,other,"DIA_Sengrath_Perm_03_02"); //Pomów z Kerolothem. To on trenuje ch³opców w walce mieczem, mo¿e i ciebie czegoœ nauczy.
		
		Log_CreateTopic (TOPIC_Teacher_OC,LOG_NOTE);
		B_LogEntry (TOPIC_Teacher_OC,"Keroloth udziela na zamku lekcji walki mieczem.");
	};
};
// ************************************************************
// 			Scrolls
// ************************************************************
INSTANCE DIA_Sengrath_Scrolls (C_INFO)
{
	npc			= PAL_267_Sengrath;
	nr			= 9;
	condition	= DIA_Sengrath_Scrolls_Condition;
	information	= DIA_Sengrath_Scrolls_Info;
	permanent	= true;
	trade		= true;
	description = "Poka¿ mi, jakie zwoje oferujesz.";
};                       

FUNC INT DIA_Sengrath_Scrolls_Condition()
{	
	if Npc_KnowsInfo (other,DIA_Sengrath_Equipment)
	{
		return true;
	};	 
};
FUNC VOID DIA_Sengrath_Scrolls_Info()
{	
	B_GiveTradeInv (self);
	AI_Output (other ,self,"DIA_Sengrath_Scrolls_15_00"); //Poka¿ mi, jakie zwoje oferujesz.
};
