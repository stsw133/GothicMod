
// ************************************************************
// 	  				   EXIT 
// ************************************************************

INSTANCE DIA_Gorn_DI_KAP5_EXIT(C_INFO)
{
	npc			= PC_Fighter_DI;
	nr			= 999;
	condition	= DIA_Gorn_DI_KAP5_EXIT_Condition;
	information	= DIA_Gorn_DI_KAP5_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Gorn_DI_KAP5_EXIT_Condition()
{
	return true;
};
FUNC VOID DIA_Gorn_DI_KAP5_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 	  	  Hallo
// ************************************************************

INSTANCE DIA_Gorn_DI_Hallo (C_INFO)
{
	npc			= PC_Fighter_DI;
	nr			= 2;
	condition	= DIA_Gorn_DI_Hallo_Condition;
	information	= DIA_Gorn_DI_Hallo_Info;
	permanent	 = 	true;

	description = "Wszystko w porz�dku?";
};                       

FUNC INT DIA_Gorn_DI_Hallo_Condition()
{
	if (Npc_IsDead(UndeadDragon)== false)
	{
		return true;
	};
};

FUNC VOID DIA_Gorn_DI_Hallo_Info()
{	
	AI_Output (other,self ,"DIA_Gorn_DI_Hallo_15_00"); //Wszystko w porz�dku?

	if (ORkSturmDI == false)
		{
			AI_Output (self ,other,"DIA_Gorn_DI_Hallo_12_01"); //Jak na razie. Wiesz, �e mam ochot� na dobr� rozr�b�!
		}
	else
		{
			AI_Output (self ,other,"DIA_Gorn_DI_Hallo_12_02"); //Gdyby� spotka� wi�cej tych ork�w, przy�lij ich koniecznie do mnie. Dopiero si� rozgrzewam.
		};
};

 
//**************************************
//			Ich will trainieren
//**************************************

INSTANCE DIA_Gorn_DI_Teach(C_INFO)
{
	npc			= PC_Fighter_DI;
	nr			= 10;
	condition	= DIA_Gorn_DI_Teach_Condition;
	information	= DIA_Gorn_DI_Teach_Info;
	permanent	= false;
	
	description = "Chc� troch� potrenowa�.";
};                       

FUNC INT DIA_Gorn_DI_Teach_Condition()
{
	if (Npc_IsDead(UndeadDragon)== false)
	{
		return true;
	};
};
 
FUNC VOID DIA_Gorn_DI_Teach_Info()
{	
	AI_Output (other, self , 	"DIA_Gorn_DI_Teach_15_00"); //Chc� troch� potrenowa�.
	AI_Output (self, other, 	"DIA_Gorn_DI_Teach_12_01"); //Fakt. Przyda ci si�.
	self.aivar[AIV_CanTeach] = true;
};

///////////////////////////////////////////////////////////////////////
//	Info UndeadDragonDead
///////////////////////////////////////////////////////////////////////
instance DIA_Gorn_DI_UndeadDragonDead		(C_INFO)
{
	npc			 = 	PC_Fighter_DI;
	nr			 = 	2;
	condition	 = 	DIA_Gorn_DI_UndeadDragonDead_Condition;
	information	 = 	DIA_Gorn_DI_UndeadDragonDead_Info;
	permanent	 = 	true;
	
	description = 	"Zosta�e� na statku?";
};

func int DIA_Gorn_DI_UndeadDragonDead_Condition ()
{	
	if (Npc_IsDead(UndeadDragon))
	{
		return true;
	};
};

var int DIA_Gorn_DI_UndeadDragonDead_OneTime;
func void DIA_Gorn_DI_UndeadDragonDead_Info ()
{
	AI_Output			(other ,self, "DIA_Gorn_DI_UndeadDragonDead_15_00"); //Zosta�e� na statku?
	AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_01"); //Jasne. Pomy�l, co by by�o, gdyby� go nie zasta� po powrocie!

	if (DIA_Gorn_DI_UndeadDragonDead_OneTime == false)
		{
			if (hero.guild == GIL_DJG)
			{
				AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_02"); //Co b�dzie dalej?
				AI_Output			(other ,self, "DIA_Gorn_DI_UndeadDragonDead_15_03"); //Pewnie nic. Zamierzam wr�ci� do domu.
				AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_04"); //Do domu? Czyli dok�d? Nie wiedzia�em, �e masz co� takiego jak dom.
				AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_05"); //Mam lepsz� propozycj�: poszukajmy jakie� tawerny i ur�nijmy si� do nieprzytomno�ci.
				AI_Output			(other ,self, "DIA_Gorn_DI_UndeadDragonDead_15_06"); //Hmmm. Mo�e...
				AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_07"); //No, ch�opie, wyluzuj! Ju� po wszystkim!
			};
			DIA_Gorn_DI_UndeadDragonDead_OneTime = true;
		};
	
	if (Npc_KnowsInfo(other, DIA_Biff_DI_plunder))
			{
				AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_08"); //Kto� musi da� zna� Biffowi albo zgnije na tej wyspie.

				if (Npc_IsDead(Biff_DI)== false)
					{
						AI_Output			(other ,self, "DIA_Gorn_DI_UndeadDragonDead_15_09"); //Spokojnie. B�dzie na czas.
					};
			};			
	
	AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_10"); //Nie mamy tu ju� nic do roboty. Ka� kapitanowi podnosi� kotwic�.
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine	(self,"Start");
};
