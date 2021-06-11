// ************************************************************
// 	  				   EXIT 
// ************************************************************

INSTANCE DIA_Milten_DI_EXIT(C_INFO)
{
	npc			= PC_Mage_DI;
	nr			= 999;
	condition	= DIA_Milten_DI_EXIT_Condition;
	information	= DIA_Milten_DI_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};      
                 
FUNC INT DIA_Milten_DI_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Milten_DI_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

//*************************************************************
//Hello!
//*************************************************************

INSTANCE DIA_Milten_DI_Hello(C_INFO)
{
	npc			= PC_Mage_DI;
	nr			= 3;
	condition	= DIA_Milten_DI_Hello_Condition;
	information	= DIA_Milten_DI_Hello_Info;

	description = "Zupe³nie jak za dawnych czasów.";

};                       

FUNC INT DIA_Milten_DI_Hello_Condition()
{
	if (Npc_IsDead(UndeadDragon) == FALSE)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Milten_DI_Hello_Info()
{	
		AI_Output (other,self ,"DIA_Milten_DI_Hello_15_00"); //Zupe³nie jak za dawnych czasów.
		AI_Output (self ,other,"DIA_Milten_DI_Hello_03_01"); //Œwiête s³owa. Ciekawe, czy i tym razem ci siê uda...
		AI_Output (other,self ,"DIA_Milten_DI_Hello_15_02"); //Co takiego?
		AI_Output (self ,other,"DIA_Milten_DI_Hello_03_03"); //Uratowaæ swój ty³ek, gdy wokó³ rozpêta siê prawdziwe piek³o.
	
};	
 
///////////////////////////////////////////////////////////////////////
//	Info Trade
///////////////////////////////////////////////////////////////////////
instance DIA_Milten_DI_TRADE		(C_INFO)
{
	npc		 = 	PC_Mage_DI;
	nr          = 12;
	condition	 = 	DIA_Milten_DI_TRADE_Condition;
	information	 = 	DIA_Milten_DI_TRADE_Info;
	permanent	 = 	TRUE;
	trade		 = 	TRUE;

	description	 = 	"Nie masz paru mikstur na sprzeda¿?";
};

func int DIA_Milten_DI_TRADE_Condition ()
{
	if (Npc_IsDead(UndeadDragon) == FALSE)
	&& (Npc_KnowsInfo(other, DIA_Milten_DI_Hello))
		{
				return TRUE;
		};
};

func void DIA_Milten_DI_TRADE_Info ()
{
	AI_Output			(other, self, "DIA_Milten_DI_TRADE_15_00"); //Nie masz paru mikstur na sprzeda¿?
	B_GiveTradeInv (self);
	//Joly: Mc ManaHealth
	//////////////////////////////////////////////////////////////////////////////////////
	Npc_RemoveInvItems	(self, ItPo_Health_02, Npc_HasItems (self,ItPo_Health_02) );
	CreateInvItems 	(self, ItPo_Health_02,15  );
	
	Npc_RemoveInvItems	(self, ItPo_Mana_02, Npc_HasItems (self,ItPo_Mana_02) );
	CreateInvItems 	(self, ItPo_Mana_02, 15 );
	//////////////////////////////////////////////////////////////////////////////////////
	
	
	
	AI_Output			(self, other, "DIA_Milten_DI_TRADE_03_01"); //Trochê zapasów jeszcze mi zosta³o.
};
//*************************************************************
//Rat!
//*************************************************************

INSTANCE DIA_Milten_DI_Rat(C_INFO)
{
	npc			= PC_Mage_DI;
	nr			= 3;
	condition	= DIA_Milten_DI_Rat_Condition;
	information	= DIA_Milten_DI_Rat_Info;

	description = "Masz dla mnie jakieœ rady?";

};                       
FUNC INT DIA_Milten_DI_Rat_Condition()
{
	if (Npc_KnowsInfo(other, DIA_Milten_DI_Hello))
	&& (Npc_IsDead(UndeadDragon) == FALSE)
		{
				return TRUE;
		};
};

FUNC VOID DIA_Milten_DI_Rat_Info()
{	
	AI_Output (other,self ,"DIA_Milten_DI_Rat_15_00"); //Masz dla mnie jakieœ rady?
	AI_Output (self ,other,"DIA_Milten_DI_Rat_03_01"); //Hmmm... To mi³o, ¿e pytasz o radê w³aœnie mnie. Przyznam, ¿e jedna rzecz nie daje mi od pewnego czasu spokoju.
	AI_Output (self, other, "DIA_Milten_DI_Rat_03_02"); //Masz ze sob¹ Oko Innosa?
	
	Info_ClearChoices	(DIA_Milten_DI_Rat);

	if (SC_InnosEyeVergessen_DI == TRUE)
	{
		Info_AddChoice	(DIA_Milten_DI_Rat, "Nie.", DIA_Milten_DI_Rat_nein );
	}
	else
	{
		Info_AddChoice	(DIA_Milten_DI_Rat, "Oczywiœcie.", DIA_Milten_DI_Rat_ja );
	};
};	

func void DIA_Milten_DI_Rat_nein ()
{
	AI_Output			(other, self, "DIA_Milten_DI_Rat_nein_15_00"); //Nie.
	AI_Output			(self, other, "DIA_Milten_DI_Rat_nein_03_01"); //Jak mo¿na byæ tak... A co zamierzasz zrobiæ, gdy natkniesz siê na jakiegoœ smoka?
	AI_Output			(self, other, "DIA_Milten_DI_Rat_nein_03_02"); //Widzê, ¿e nie zm¹drza³eœ od naszego ostatniego spotkania. Mamy tutaj nawet pracowniê alchemiczn¹, w której mo¿na by nape³niæ amulet energi¹!
	AI_Output			(self, other, "DIA_Milten_DI_Rat_nein_03_03"); //Co ty sobie wyobra¿asz?! Ech, mam nadziejê, ¿e twoja g³upota nie bêdzie nas zbyt drogo kosztowaæ.
	Info_ClearChoices	(DIA_Milten_DI_Rat);
};

func void DIA_Milten_DI_Rat_ja ()
{
	AI_Output			(other, self, "DIA_Milten_DI_Rat_ja_15_00"); //Oczywiœcie, ¿e tak!
	AI_Output			(self, other, "DIA_Milten_DI_Rat_ja_03_01"); //Wybacz, g³upie pytanie. Robiê siê trochê nerwowy.
 	B_GivePlayerXP (XP_Ambient);
 	Info_ClearChoices	(DIA_Milten_DI_Rat);

};

///////////////////////////////////////////////////////////////////////
//	Info PEDROTOT
///////////////////////////////////////////////////////////////////////
instance DIA_Milten_DI_PEDROTOT		(C_INFO)
{
	npc			 = 	PC_Mage_DI;
	nr          = 	3;	
	condition	 = 	DIA_Milten_DI_PEDROTOT_Condition;
	information	 = 	DIA_Milten_DI_PEDROTOT_Info;

	description	 = 	"Spotka³em Pedra.";
};

func int DIA_Milten_DI_PEDROTOT_Condition ()
{	
	if (Npc_KnowsInfo(other, DIA_Pedro_DI_YOU))
		{
				return TRUE;
		};
};

func void DIA_Milten_DI_PEDROTOT_Info ()
{
	AI_Output			(other, self, "DIA_Milten_DI_PEDROTOT_15_00"); //Spotka³em Pedra.
	AI_Output			(self, other, "DIA_Milten_DI_PEDROTOT_03_01"); //Co?! Gdzie?! Tu, na wyspie? Niech go szlag. Ten cz³owiek jest niesamowity.
	AI_Output			(self, other, "DIA_Milten_DI_PEDROTOT_03_02"); //Nie przypuszcza³em, ¿e taka z niego twarda sztuka.
	B_GivePlayerXP (XP_Ambient);

	if (Npc_IsDead(Pedro_DI))
	{
		AI_Output			(other, self, "DIA_Milten_DI_PEDROTOT_15_03"); //Ju¿ nie ¿yje.
		AI_Output			(self, other, "DIA_Milten_DI_PEDROTOT_03_04"); //Tak? Trudno, pokój jego duszy. Nie powiem, ¿eby mi go brakowa³o, ale chêtnie zamieni³bym z nim s³owo.
	}
	else
	{
		AI_Output			(self, other, "DIA_Milten_DI_PEDROTOT_03_05"); //Mam z nim niewyrównane rachunki.
	};
};

///////////////////////////////////////////////////////////////////////
//	Info DementorObsessionBook
///////////////////////////////////////////////////////////////////////
instance DIA_Milten_DI_DementorObsessionBook		(C_INFO)
{
	npc			 = 	PC_Mage_DI;
	nr          = 	99;	
	condition	 = 	DIA_Milten_DI_DementorObsessionBook_Condition;
	information	 = 	DIA_Milten_DI_DementorObsessionBook_Info;

	description	 = 	"Co mo¿esz mi powiedzieæ na temat tego almanachu opêtanych?";
};

func int DIA_Milten_DI_DementorObsessionBook_Condition ()
{	
	if  (Npc_HasItems (other,ITWR_DementorObsessionBook_MIS))
		{
				return TRUE;
		};
};

func void DIA_Milten_DI_DementorObsessionBook_Info ()
{
	AI_Output			(other, self, "DIA_Milten_DI_DementorObsessionBook_15_00"); //Co mo¿esz mi powiedzieæ na temat tego almanachu opêtanych?
	AI_Output			(self, other, "DIA_Milten_DI_DementorObsessionBook_03_01"); //W takich sprawach ekspertem jest Pyrokar.
	AI_Output			(self, other, "DIA_Milten_DI_DementorObsessionBook_03_02"); //Przykro mi, ale zbyt ma³o wiem na ten temat.
	B_GivePlayerXP (XP_Ambient);
};

///////////////////////////////////////////////////////////////////////
//	Info DragonEgg
///////////////////////////////////////////////////////////////////////
instance DIA_Milten_DI_DragonEgg		(C_INFO)
{
	npc			 = 	PC_Mage_DI;
	nr          = 	99;	
	condition	 = 	DIA_Milten_DI_DragonEgg_Condition;
	information	 = 	DIA_Milten_DI_DragonEgg_Info;

	description	 = 	"Co mo¿esz mi powiedzieæ o smoczych jajach?";
};

func int DIA_Milten_DI_DragonEgg_Condition ()
{	
	if  (Npc_HasItems (other,ItAt_DragonEgg_MIS))
		{
				return TRUE;
		};
};

func void DIA_Milten_DI_DragonEgg_Info ()
{
	AI_Output			(other, self, "DIA_Milten_DI_DragonEgg_15_00"); //Co mo¿esz mi powiedzieæ o smoczych jajach?
	AI_Output			(self, other, "DIA_Milten_DI_DragonEgg_03_01"); //Niewiele. S³ysza³em, ¿e pewnemu alchemikowi uda³o siê pozyskaæ z nich potê¿n¹ miksturê.
	AI_Output			(self, other, "DIA_Milten_DI_DragonEgg_03_02"); //Ale nie znam szczegó³ów ani - tym bardziej - receptury.
	B_GivePlayerXP (XP_Ambient);
};

//*************************************************************
//	UndeadDragonDead
//*************************************************************

INSTANCE DIA_Milten_DI_UndeadDragonDead (C_INFO)
{
	npc			= PC_Mage_DI;
	nr			= 31;
	condition	= DIA_Milten_DI_UndeadDragonDead_Condition;
	information	= DIA_Milten_DI_UndeadDragonDead_Info;
	permanent	= TRUE;

	description = "To ju¿ koniec.";

};
                       
FUNC INT DIA_Milten_DI_UndeadDragonDead_Condition()
{
	if (Npc_IsDead(UndeadDragon))
	{
		return TRUE;
	};
};

var int DIA_Milten_DI_UndeadDragonDead_OneTime;
FUNC VOID DIA_Milten_DI_UndeadDragonDead_Info()
{	
		AI_Output (other,self ,"DIA_Milten_DI_UndeadDragonDead_15_00"); //Œwietnie! Œwi¹tynia straci³a teraz swoj¹ moc!
		
		if (DIA_Milten_DI_UndeadDragonDead_OneTime == FALSE)
		{
			AI_Output (self ,other,"DIA_Milten_DI_UndeadDragonDead_03_01"); //Powiesz mi, jak ty to robisz?
			AI_Output (other,self ,"DIA_Milten_DI_UndeadDragonDead_15_02"); //Cholera, sam nie wiem!
			AI_Output (self ,other,"DIA_Milten_DI_UndeadDragonDead_03_03"); //Czy my nigdy nie zaznamy spokoju? Innos œwiadkiem - zas³u¿yliœmy na odpoczynek.
			
			if (hero.guild == GIL_KDF)
				{
					AI_Output (other,self ,"DIA_Milten_DI_UndeadDragonDead_15_04"); //Co zamierzasz teraz robiæ?
					AI_Output (self ,other,"DIA_Milten_DI_UndeadDragonDead_03_05"); //Zastanawia³em siê nad za³o¿eniem w³asnej akademii, w której naucza³bym naszej wiary. Ale kto wie, co przyniesie przysz³oœæ?
					AI_Output (self ,other,"DIA_Milten_DI_UndeadDragonDead_03_06"); //Nigdy nie ¿a³owa³em, ¿e zosta³em Magiem Ognia. A ty?
					AI_Output (other,self ,"DIA_Milten_DI_UndeadDragonDead_15_07"); //Nie jestem taki pewien.
					AI_Output (self ,other,"DIA_Milten_DI_UndeadDragonDead_03_08"); //Powœci¹gliwy jak zwykle. Uratowa³eœ œwiat od niechybnej zguby! To chyba jest jakiœ powód do radoœci?
					AI_Output (other,self ,"DIA_Milten_DI_UndeadDragonDead_15_09"); //Hmmm... Mo¿e.
				};		

			AI_Output (self ,other,"DIA_Milten_DI_UndeadDragonDead_03_10"); //A niech ciê, marudo. Myœlê, ¿e na pocz¹tek przyda ci siê trochê snu.
			DIA_Milten_DI_UndeadDragonDead_OneTime = TRUE;
		};
		
		AI_Output (self ,other,"DIA_Milten_DI_UndeadDragonDead_03_11"); //IdŸ do kapitana i ka¿ mu podnosiæ kotwicê.

	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine	(self,"Start");
};	
