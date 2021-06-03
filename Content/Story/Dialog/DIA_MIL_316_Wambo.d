// ************************************************************
// 			  				   EXIT 
// ************************************************************

INSTANCE DIA_Wambo_EXIT(C_INFO)
{
	npc			= Mil_316_Wambo;
	nr			= 999;
	condition	= DIA_Wambo_EXIT_Condition;
	information	= DIA_Wambo_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_Wambo_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Wambo_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//*************************************************************
//		Was machst du hier?
//*************************************************************
INSTANCE DIA_Wambo_Job(C_INFO)
{
	npc			= Mil_316_Wambo;
	nr			= 5;
	condition	= DIA_Wambo_Job_Condition;
	information	= DIA_Wambo_Job_Info;
	permanent	= FALSE;
	description = "Co tu porabiasz?";
};                       

FUNC INT DIA_Wambo_Job_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Wambo_Job_Info()
{	
	AI_Output (other,self ,"DIA_Wambo_Job_15_00"); //Co tu robisz?
	AI_Output (self ,other,"DIA_Wambo_Job_03_01"); //Pilnuj�, by nikt nie wchodzi� do dom�w.
	AI_Output (self ,other,"DIA_Wambo_Job_03_02"); //Bezpo�redni rozkaz Lorda Hagena. Niech ci nawet nie przychodzi do g�owy go �ama�!
};
//*************************************************************
//		Wie ist die Lage?
//*************************************************************
INSTANCE DIA_Wambo_Situation(C_INFO)
{
	npc			= Mil_316_Wambo;
	nr			= 10;
	condition	= DIA_Wambo_Situation_Condition;
	information	= DIA_Wambo_Situation_Info;
	permanent	= TRUE;
	description = "Jak leci?";
};                       

FUNC INT DIA_Wambo_Situation_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Wambo_Job))
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Wambo_Situation_Info()
{	
	AI_Output (other,self ,"DIA_Wambo_Situation_15_00"); //Jak si� maj� sprawy?
	AI_Output (self ,other,"DIA_Wambo_Situation_03_01"); //W tej chwili panuje spok�j.
};
//*************************************************************
//		Ramirez
//*************************************************************
INSTANCE DIA_Wambo_Ramirez(C_INFO)
{
	npc			= Mil_316_Wambo;
	nr			= 5;
	condition	= DIA_Wambo_Ramirez_Condition;
	information	= DIA_Wambo_Ramirez_Info;
	permanent	= FALSE;
	description = "Przychodz� od naszego wsp�lnego przyjaciela, Ramireza.";
};                       

FUNC INT DIA_Wambo_Ramirez_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Ramirez_Viertel))
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Wambo_Ramirez_Info()
{	
	AI_Output (other,self ,"DIA_Wambo_Ramirez_15_00"); //Przychodz� od naszego wsp�lnego przyjaciela, Ramireza.
	AI_Output (self ,other,"DIA_Wambo_Ramirez_03_01"); //Czy�by? Ramirez to n�dzny szczur. Nie jest moim przyjacielem. Niewa�ne. Przynios�e� co� dla mnie?
	AI_Output (other,self ,"DIA_Wambo_Ramirez_15_02"); //Zale�y, czego chcesz.
	AI_PlayAni (self, "T_SEARCH");
	AI_Output (self ,other,"DIA_Wambo_Ramirez_03_03"); //Dobra, powiem ci, o co chodzi. Ty p�acisz 250 sztuk z�ota, a ja zmyj� si� st�d w nocy.
	AI_Output (self ,other,"DIA_Wambo_Ramirez_03_04"); //Je�li jednak b�dziesz si� zbytnio rzuca� w oczy, a ja to zauwa��, z naszej umowy nici.
};
//*************************************************************
//	Deal
//*************************************************************
INSTANCE DIA_Wambo_Deal(C_INFO)
{
	npc			= Mil_316_Wambo;
	nr			= 5;
	condition	= DIA_Wambo_Deal_Condition;
	information	= DIA_Wambo_Deal_Info;
	permanent	= TRUE;
	description = "(Zap�a� 250 sztuk z�ota)";
};                       
//-----------------------------------
var int DIA_Wambo_Deal_permanent;
//-----------------------------------
FUNC INT DIA_Wambo_Deal_Condition()
{
	if Npc_KnowsInfo (other,DIA_Wambo_Ramirez)
	&& (DIA_Wambo_Deal_permanent == FALSE)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Wambo_Deal_Info()
{	
	AI_Output (other,self ,"DIA_Wambo_Deal_15_00"); //Mam dla ciebie pieni�dze...
	
	if B_GiveInvItems (other, self, ItMi_Gold, 250)
	{
		AI_Output (self ,other,"DIA_Wambo_Deal_03_01"); //W porz�dku, w nocy mnie tu nie b�dzie.
		AI_Output (self ,other,"DIA_Wambo_Deal_03_02"); //Pami�taj, �e nie wiem nawet, jak si� nazywasz.
		
		DIA_Wambo_Deal_permanent = TRUE;
		AI_StopProcessInfos (self);
		Npc_ExchangeRoutine (self, "DRINK");
	}
	else
	{
		AI_Output (other,self ,"DIA_Wambo_Deal_15_03"); //...ale akurat nie przy sobie.
		AI_Output (self ,other,"DIA_Wambo_Deal_03_04"); //Nie cierpi�, kiedy robi si� ze mnie durnia. Dawaj z�oto.
		AI_StopProcessInfos (self);
	};
};
