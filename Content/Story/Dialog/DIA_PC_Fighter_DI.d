
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

	description = "Wszystko w porz¹dku?";
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
	AI_Output (other,self ,"DIA_Gorn_DI_Hallo_15_00"); //Wszystko w porz¹dku?

	if (ORkSturmDI == false)
		{
			AI_Output (self ,other,"DIA_Gorn_DI_Hallo_12_01"); //Jak na razie. Wiesz, ¿e mam ochotê na dobr¹ rozróbê!
		}
	else
		{
			AI_Output (self ,other,"DIA_Gorn_DI_Hallo_12_02"); //Gdybyœ spotka³ wiêcej tych orków, przyœlij ich koniecznie do mnie. Dopiero siê rozgrzewam.
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
	
	description = "Chcê trochê potrenowaæ.";
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
	AI_Output (other, self , 	"DIA_Gorn_DI_Teach_15_00"); //Chcê trochê potrenowaæ.
	AI_Output (self, other, 	"DIA_Gorn_DI_Teach_12_01"); //Fakt. Przyda ci siê.
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
	
	description = 	"Zosta³eœ na statku?";
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
	AI_Output			(other ,self, "DIA_Gorn_DI_UndeadDragonDead_15_00"); //Zosta³eœ na statku?
	AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_01"); //Jasne. Pomyœl, co by by³o, gdybyœ go nie zasta³ po powrocie!

	if (DIA_Gorn_DI_UndeadDragonDead_OneTime == false)
		{
			if (hero.guild == GIL_DJG)
			{
				AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_02"); //Co bêdzie dalej?
				AI_Output			(other ,self, "DIA_Gorn_DI_UndeadDragonDead_15_03"); //Pewnie nic. Zamierzam wróciæ do domu.
				AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_04"); //Do domu? Czyli dok¹d? Nie wiedzia³em, ¿e masz coœ takiego jak dom.
				AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_05"); //Mam lepsz¹ propozycjê: poszukajmy jakieœ tawerny i ur¿nijmy siê do nieprzytomnoœci.
				AI_Output			(other ,self, "DIA_Gorn_DI_UndeadDragonDead_15_06"); //Hmmm. Mo¿e...
				AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_07"); //No, ch³opie, wyluzuj! Ju¿ po wszystkim!
			};
			DIA_Gorn_DI_UndeadDragonDead_OneTime = true;
		};
	
	if (Npc_KnowsInfo(other, DIA_Biff_DI_plunder))
			{
				AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_08"); //Ktoœ musi daæ znaæ Biffowi albo zgnije na tej wyspie.

				if (Npc_IsDead(Biff_DI)== false)
					{
						AI_Output			(other ,self, "DIA_Gorn_DI_UndeadDragonDead_15_09"); //Spokojnie. Bêdzie na czas.
					};
			};			
	
	AI_Output			(self ,other, "DIA_Gorn_DI_UndeadDragonDead_12_10"); //Nie mamy tu ju¿ nic do roboty. Ka¿ kapitanowi podnosiæ kotwicê.
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine	(self,"Start");
};
