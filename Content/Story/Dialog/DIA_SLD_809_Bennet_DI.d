///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Bennet_DI_EXIT   (C_INFO)
{
	npc         = SLD_809_Bennet_DI;
	nr          = 999;
	condition   = DIA_Bennet_DI_EXIT_Condition;
	information = DIA_Bennet_DI_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Bennet_DI_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Bennet_DI_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

// ************************************************************
// 			  				   Hallo 
// ************************************************************
INSTANCE DIA_Bennet_DI_Hello (C_INFO)
{
	npc			= SLD_809_Bennet_DI;
	nr			= 10;
	condition	= DIA_Bennet_DI_Hello_Condition;
	information	= DIA_Bennet_DI_Hello_Info;
	permanent	 = 	true;

	description = "Jak ci si� powodzi?";
};    
                   
FUNC INT DIA_Bennet_DI_Hello_Condition()
{	
	if (Npc_IsDead(UndeadDragon)  == false)
	{
		return true;
	};
};

FUNC VOID DIA_Bennet_DI_Hello_Info()
{	
	AI_Output	(other ,self,"DIA_Bennet_DI_Hello_15_00");	//Jak ci si� powodzi?

	if (ORkSturmDI == false)
	{
		AI_Output	(self ,other,"DIA_Bennet_DI_Hello_06_01");	//Ku�nia na statku jest troch� przerdzewia�a. To przez s�on� wod�. Ci�ko tu b�dzie zrobi� co� porz�dnego. Ale poza tym...
	}
	else
	{
		AI_Output	(self ,other,"DIA_Bennet_DI_Hello_06_02");	//Tak, zak�adaj�c, �e orkowie nie wr�c�.
	};
};
  
///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Bennet_DI_TRADE		(C_INFO)
{
	npc		 = 	SLD_809_Bennet_DI;
	nr          = 7;
	condition	 = 	DIA_Bennet_DI_TRADE_Condition;
	information	 = 	DIA_Bennet_DI_TRADE_Info;
	permanent	 = 	true;
	trade		 = 	true;

	description	 = 	"Jak� bro� mo�esz mi sprzeda�?";
};

func int DIA_Bennet_DI_TRADE_Condition ()
{
	if (Npc_IsDead(UndeadDragon) == false)
		{
				return true;
		};
};

func void DIA_Bennet_DI_TRADE_Info ()
{
	AI_Output			(other, self, "DIA_Bennet_DI_TRADE_15_00"); //Jak� bro� mo�esz mi sprzeda�?
	B_GiveTradeInv (self);
	AI_Output			(self, other, "DIA_Bennet_DI_TRADE_06_01"); //Tylko najlepsz�. Przecie� wiesz.
};
  
///////////////////////////////////////////////////////////////////////
//	Info Smith
///////////////////////////////////////////////////////////////////////
instance DIA_Bennet_DI_Smith		(C_INFO)
{
	npc		 = 	SLD_809_Bennet_DI;
	nr          = 7;
	condition	 = 	DIA_Bennet_DI_Smith_Condition;
	information	 = 	DIA_Bennet_DI_Smith_Info;
	permanent	 = 	true;
	description	 = 	"Nauczysz mnie swojego rzemios�a?";
};

func int DIA_Bennet_DI_Smith_Condition ()
{
	if (self.aivar[AIV_CanTeach] < true)
	&& (Npc_IsDead(UndeadDragon) == false)
	{
		return true;
	};
};

func void DIA_Bennet_DI_Smith_Info ()
{
	AI_Output			(other, self, "DIA_Bennet_DI_Smith_15_00"); //Nauczysz mnie swojego rzemios�a?
	AI_Output			(self, other, "DIA_Bennet_DI_Smith_06_01"); //Zale�y, co chcesz zrobi�.
	self.aivar[AIV_CanTeach] = true;
};

///////////////////////////////////////////////////////////////////////
//	Info DragonEgg
///////////////////////////////////////////////////////////////////////
instance DIA_Bennet_DI_DragonEgg		(C_INFO)
{
	npc			 = 	SLD_809_Bennet_DI;
	nr          = 	99;	
	condition	 = 	DIA_Bennet_DI_DragonEgg_Condition;
	information	 = 	DIA_Bennet_DI_DragonEgg_Info;

	description	 = 	"Mam smocze jajo.";
};

func int DIA_Bennet_DI_DragonEgg_Condition ()
{	
	if  (Npc_HasItems (other,ItAt_DragonEgg_MIS))
		{
				return true;
		};
};

func void DIA_Bennet_DI_DragonEgg_Info ()
{
	AI_Output			(other, self, "DIA_Bennet_DI_DragonEgg_15_00"); //Mam smocze jajo.
	AI_Output			(self, other, "DIA_Bennet_DI_DragonEgg_06_01"); //No i co?
	AI_Output			(other, self, "DIA_Bennet_DI_DragonEgg_15_02"); //Nooo... My�la�em...
	AI_Output			(self, other, "DIA_Bennet_DI_DragonEgg_06_03"); //Wiem, co sobie my�la�e�. Zapomnij o tym i zatrzymaj je. Nie chc� go.
	B_GivePlayerXP(XP_Ambient);
};
	
///////////////////////////////////////////////////////////////////////
//	Info UndeadDragonDead
///////////////////////////////////////////////////////////////////////
instance DIA_Bennet_DI_UndeadDragonDead		(C_INFO)
{
	npc		 = 	SLD_809_Bennet_DI;
	nr          = 7;
	condition	 = 	DIA_Bennet_DI_UndeadDragonDead_Condition;
	information	 = 	DIA_Bennet_DI_UndeadDragonDead_Info;
	permanent	 = 	true;

	description	 = 	"Zrobili�my wszystko, co by�o trzeba.";
};

func int DIA_Bennet_DI_UndeadDragonDead_Condition ()
{
	if (Npc_IsDead(UndeadDragon))
		{
				return true;
		};
};

func void DIA_Bennet_DI_UndeadDragonDead_Info ()
{
	AI_Output			(other, self, "DIA_Bennet_DI_UndeadDragonDead_15_00"); //Zrobili�my wszystko, co by�o trzeba.
	AI_Output			(self, other, "DIA_Bennet_DI_UndeadDragonDead_06_01"); //Ciesz� si�. Mia�em ju� do�� tej starej ku�ni. Chc� znowu stan�� na pewnym gruncie.
	AI_StopProcessInfos (self);
};
