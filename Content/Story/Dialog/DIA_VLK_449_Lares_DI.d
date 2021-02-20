// ************************************************************
// 			  				   EXIT 
// ************************************************************

INSTANCE DIA_Lares_DI_EXIT(C_INFO)
{
	npc			= VLK_449_Lares_DI;
	nr			= 999;
	condition	= DIA_Lares_DI_EXIT_Condition;
	information	= DIA_Lares_DI_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_Lares_DI_EXIT_Condition()
{
	return true;
};
 
FUNC VOID DIA_Lares_DI_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 	  	  Hallo
// ************************************************************

INSTANCE DIA_Lares_DI_Hallo (C_INFO)
{
	npc			= VLK_449_Lares_DI;
	nr			= 2;
	condition	= DIA_Lares_DI_Hallo_Condition;
	information	= DIA_Lares_DI_Hallo_Info;
	permanent	 = 	true;

	description = "Co s�ycha�?";
};                       
FUNC INT DIA_Lares_DI_Hallo_Condition()
{
	if (Npc_IsDead(UndeadDragon) == false)
	{
		return true;
	};
};
FUNC VOID DIA_Lares_DI_Hallo_Info()
{	
	AI_Output (other,self ,"DIA_Lares_DI_Hallo_15_00"); //Jak idzie?

	if (ORkSturmDI == true)
	{
		AI_Output (self ,other,"DIA_Lares_DI_Hallo_09_01"); //Po�piesz si�. Orkowie na pewno wr�c�.
	}
	else
	{
		AI_Output (self ,other,"DIA_Lares_DI_Hallo_09_02"); //Ta grota rzeczywi�cie jest straszna.
	};
};

// ************************************************************
// 	  	  Training
// ************************************************************

INSTANCE DIA_Lares_DI_Training (C_INFO)
{
	npc			= VLK_449_Lares_DI;
	nr			= 10;
	condition	= DIA_Lares_DI_Training_Condition;
	information	= DIA_Lares_DI_Training_Info;
	permanent	 = 	false;
	description = "Naucz mnie tego, co potrafisz.";
};                       
FUNC INT DIA_Lares_DI_Training_Condition()
{
	if (Npc_IsDead(UndeadDragon) == false)
	{
		return true;
	};
};

FUNC VOID DIA_Lares_DI_Training_Info()
{	
	AI_Output (other,self ,"DIA_Lares_DI_Training_15_00"); //Naucz mnie tego, co potrafisz.
	AI_Output (self ,other,"DIA_Lares_DI_Training_09_01"); //�aden problem.
	self.aivar[AIV_CanTeach] = true;
};

// ************************************************************
// 	  	  UndeadDragonDead
// ************************************************************

INSTANCE DIA_Lares_DI_UndeadDragonDead (C_INFO)
{
	npc			= VLK_449_Lares_DI;
	nr			= 5;
	condition	= DIA_Lares_DI_UndeadDragonDead_Condition;
	information	= DIA_Lares_DI_UndeadDragonDead_Info;
	permanent	 = 	true;

	description = "Wygl�dasz, jakby� niezbyt si� tym przejmowa�.";
};                       
FUNC INT DIA_Lares_DI_UndeadDragonDead_Condition()
{
	if (Npc_IsDead(UndeadDragon))
	{
		return true;
	};
};

var int DIA_Lares_DI_UndeadDragonDead_OneTime;
FUNC VOID DIA_Lares_DI_UndeadDragonDead_Info()
{	
	AI_Output (other,self ,"DIA_Lares_DI_UndeadDragonDead_15_00"); //Wygl�dasz, jakby� niezbyt si� tym przejmowa�.
	AI_Output (self ,other,"DIA_Lares_DI_UndeadDragonDead_09_01"); //Ech, no wiesz. My�la�em, �e ci si� uda.

	if (DIA_Lares_DI_UndeadDragonDead_OneTime == false )
	{
		AI_Output (other,self ,"DIA_Lares_DI_UndeadDragonDead_15_02"); //Co zamierzasz teraz zrobi�?
		AI_Output (self ,other,"DIA_Lares_DI_UndeadDragonDead_09_03"); //Nie mam poj�cia. Na razie b�d� si� chyba trzyma� ciebie.
		
		DIA_Lares_DI_UndeadDragonDead_OneTime = true;
	};
	AI_StopProcessInfos (self);
};
