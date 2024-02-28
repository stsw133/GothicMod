//************************************************************
//		  					EXIT
//************************************************************
INSTANCE DIA_Addon_Henry_EXIT(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 999;
	condition	= DIA_Addon_Henry_EXIT_Condition;
	information	= DIA_Addon_Henry_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_END;
};                       
FUNC INT DIA_Addon_Henry_EXIT_Condition()
{
	return TRUE;
};
func VOID DIA_Addon_Henry_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};

// -----------------------------------------------------------
	func void B_Henry_Gold (var int gold)
	{
		if (gold == 500)
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Gold500_04_00"); //500 sztuk z?ta.
		}
		else if (gold == 400)
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Gold400_04_00"); //400 sztuk z?ta.
		}
		else if (gold == 300)
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Gold300_04_00"); //300 sztuk z?ta.
		}
		else if (gold == 200)
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Gold200_04_00"); //200 sztuk z?ta.
		}
		else if (gold == 100)
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Gold100_04_00"); //100 sztuk z?ta.
		}
		else
		{
			B_Say_Gold (self, other, gold);
		};
		
	};

// ************************************************************
// 				  	Guard_Passage - First Warn
// ************************************************************
// ------------------------------------------------------------
const string PIR_1354_Checkpoint = "ADW_PIRATECAMP_WAY_02";	
// ------------------------------------------------------------
instance DIA_Addon_Henry_Hello(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 5;
	condition	= DIA_Addon_Henry_Hello_Condition;
	information	= DIA_Addon_Henry_Hello_Info;
	permanent	= TRUE;
	important 	= TRUE;
};                       
FUNC INT DIA_Addon_Henry_Hello_Condition()
{
	if (Npc_GetDistToWP(other, PIR_1354_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self, 5);
		return FALSE;
	};
	
	if (self.aivar[AIV_Guardpassage_Status]			== GP_NONE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)	== TRUE)
	&& (Npc_RefuseTalk(self) 						== FALSE)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Addon_Henry_Hello_Info()
{	
	AI_Output (self ,other,"DIA_Addon_Henry_Hello_04_00"); //St?, kto idzie?
	AI_Output (self ,other,"DIA_Addon_Henry_Hello_04_01"); //Sw? czy wr??
	
	Info_ClearChoices (DIA_Addon_Henry_Hello);
	Info_AddChoice (DIA_Addon_Henry_Hello,"Wr?!",DIA_Addon_Henry_Hello_Feind);
	Info_AddChoice (DIA_Addon_Henry_Hello,"Sw?!",DIA_Addon_Henry_Hello_Freund);
};
var int Henry_SC_Frech;
FUNC VOID DIA_Addon_Henry_Hello_Feind()
{
	AI_Output (other,self ,"DIA_Addon_Henry_Hello_Feind_15_00"); //Wr?!
	AI_Output (self ,other,"DIA_Addon_Henry_Hello_Feind_04_01"); //Spryciarz... Chcesz, ?bym ci porachowa?ko?i?
	AI_Output (self ,other,"DIA_Addon_Henry_Hello_Feind_04_02"); //M?, co masz do powiedzenia, albo odejd?
	
	Henry_SC_Frech = TRUE;

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP (other,Pir_1354_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;	
	
	Info_ClearChoices (DIA_Addon_Henry_Hello);
};

FUNC VOID DIA_Addon_Henry_Hello_Freund()
{
	AI_Output (other,self ,"DIA_Addon_Henry_Hello_Freund_15_00"); //Sw?!
	AI_Output (self ,other,"DIA_Addon_Henry_Hello_Freund_04_01"); //Ka?y tak mo? powiedzie? Nie znam ci? Czego tutaj szukasz?
	
	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP (other,Pir_1354_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;	
	
	Info_ClearChoices (DIA_Addon_Henry_Hello);
};

// ************************************************************
// 				  	Guard_Passage - Second Warn
// ************************************************************
instance DIA_Addon_Henry_SecondWarn (C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 2;
	condition	= DIA_Addon_Henry_SecondWarn_Condition;
	information	= DIA_Addon_Henry_SecondWarn_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       
FUNC INT DIA_Addon_Henry_SecondWarn_Condition()
{
	if (self.aivar[AIV_Guardpassage_Status]			== GP_FirstWarnGiven					)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)	== TRUE									)
	&& (Npc_GetDistToWP(other,pir_1354_Checkpoint)	<  (other.aivar[AIV_LastDistToWP]-50)	)
	{
		return TRUE;
	};
};
func void DIA_Addon_henry_SecondWarn_Info()
{
	AI_Output (self, other,"DIA_Addon_Henry_SecondWarn_04_00"); //Jeszcze jeden krok i rzuc?ci?rekinom na po?rcie!

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP (other,Pir_1354_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_SecondWarnGiven;	
	
	AI_StopProcessInfos	(self);
};

// ************************************************************
// 				  	Guard_Passage - Attack
// ************************************************************
instance DIA_Addon_Henry_Attack (C_INFO)
{
	npc			= Pir_1354_Addon_Henry;
	nr			= 3;
	condition	= DIA_Addon_Henry_Attack_Condition;
	information	= DIA_Addon_Henry_Attack_Info;
	permanent	= TRUE;
	important	= TRUE;
};                       
func INT DIA_Addon_Henry_Attack_Condition()
{
	if (self.aivar[AIV_Guardpassage_Status]			== GP_SecondWarnGiven					)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp)	== TRUE									)
	&& (Npc_GetDistToWP(other,Pir_1354_Checkpoint)	<  (other.aivar[AIV_LastDistToWP]-50)	)
	{
		return TRUE;
	};
};
func void DIA_Addon_Henry_Attack_Info()
{
	other.aivar[AIV_LastDistToWP] 			= 0;
	self.aivar[AIV_Guardpassage_Status]	= GP_NONE;						//Sam tego chcia??
	
	AI_Output (self, other,"DIA_Addon_Henry_Attack_04_00"); //Du hast es so gewollt ... 
	
	AI_StopProcessInfos	(self);
	B_Attack (self, other, AR_GuardStopsIntruder, 0); 
};



// ************************************************************
// ***														***
// 						Ich will ins Lager
// ***														***
// ************************************************************
// ------------------------------------------------------------
var int Henry_Zoll_WhatFor;
// ------------------------------------------------------------
// 		  				Ich will da rein	   
// ------------------------------------------------------------
INSTANCE DIA_Addon_Henry_WantEnter(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 1;
	condition	= DIA_Addon_Henry_WantEnter_Condition;
	information	= DIA_Addon_Henry_WantEnter_Info;
	permanent	= FALSE;
	description	= "Ich will da rein.";
};                       
FUNC INT DIA_Addon_Henry_WantEnter_Condition()
{
	if (self.aivar[AIV_GuardPassage_Status] != GP_PassGate)
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Addon_Henry_WantEnter_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_WantEnter_15_00"); //Chc?wej?!
	AI_Output (self ,other,"DIA_Addon_Henry_WantEnter_04_01"); //Naprawd? To ci?b?zie kosztowa?..

	B_Henry_Gold (500);

	if (Henry_Zoll_WhatFor == FALSE)
	{
		AI_Output (other,self ,"DIA_Addon_Henry_WantEnter_15_02"); //Niby czemu?
		AI_Output (self ,other,"DIA_Addon_Henry_WantEnter_04_03"); //Musisz wszystko komplikowa?
		AI_Output (self ,other,"DIA_Addon_Henry_WantEnter_04_04"); //W tym obozie jest wiele rzeczy, kt?e mog?ci?zainteresowa?
		Henry_Zoll_WhatFor = TRUE;
	};
		 
	var C_Item itm; itm = Npc_GetEquippedArmor(other);
	
	if	((Hlp_IsItem(itm, ITAR_MAG_L))
	||	 (Hlp_IsItem(itm, ITAR_MAG_M))
	||	 (Hlp_IsItem(itm, ITAR_MAG_H))
	||   (Hlp_IsItem(itm, ITAR_Ranger_L))
	||   (Hlp_IsItem(itm, ITAR_Ranger_H))
	||	 (Hlp_IsItem(itm, ITAR_MIL_L))
	||	 (Hlp_IsItem(itm, ITAR_MIL_M))
	||	 (Hlp_IsItem(itm, ITAR_MIL_H)))
	{
		AI_Output (self ,other,"DIA_Addon_Henry_WantEnter_04_07"); //A ty wygl?asz na kogo? kto ma pieni?ze.
		AI_Output (self ,other,"DIA_Addon_Henry_WantEnter_04_08"); //Nie zedr?przecie?z ciebie ostatniej koszuli. Zobaczysz, op?ci ci si?
		AI_Output (self ,other,"DIA_Addon_Henry_WantEnter_04_09"); //No, chyba ? ten str? ukrad??
	}
	else
	{
		AI_Output (self ,other,"DIA_Addon_Henry_WantEnter_04_10"); //Masz przy sobie pieni?ze, prawda?
	};
};

// ------------------------------------------------------------
// 							500 zahlen!
// ------------------------------------------------------------
func void B_Henry_NoJoin()
{	
	AI_Output (self, other, "DIA_Addon_Henry_Add_04_00"); //Je?i chcesz do nas do?czy? to mam dla ciebie z? wiadomo?, ch?pcze.
	AI_Output (self, other, "DIA_Addon_Henry_Add_04_01"); //Kapitan wyp?n? w rejs, a tylko on decyduje, kogo przyjmie si?do za?gi.
	AI_Output (self, other, "DIA_Addon_Henry_Add_04_02"); //Ale mo?sz tu zosta?do jego powrotu.
	AI_Output (self, other, "DIA_Addon_Henry_Add_04_03"); //Je?i nie b?ziesz sprawia?k?pot?, rzecz jasna.
};
// ------------------------------------------------------------



instance DIA_Addon_Henry_Einigen2		(C_INFO)
{
	npc		 	= PIR_1354_Addon_Henry;
	nr		 	= 2;
	condition	= DIA_Addon_Henry_Einigen2_Condition;
	information	= DIA_Addon_Henry_Einigen2_Info;

	description	= "Oto twoje 500 sztuk z?ta.";
};
func int DIA_Addon_Henry_Einigen2_Condition ()
{
	if (self.aivar[AIV_GuardPassage_Status] != GP_PassGate)
	&& (Npc_KnowsInfo (other, DIA_Addon_Henry_WantEnter))
	&& (!Npc_KnowsInfo (other, DIA_Addon_Henry_Einigen))
	&& (Npc_HasItems (other,ItMi_Gold) >= 500)
	{
		return TRUE;
	};
};
func void DIA_Addon_Henry_Einigen2_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Einigen2_15_00"); //Oto twoje 500 sztuk z?ta.
	B_GiveInvItems (other, self, ItMi_Gold, 500);		
	AI_Output (self, other, "DIA_Addon_Henry_Einigen2_04_01"); //Wspaniale. Witamy w naszym skromnym obozie.
	B_Henry_NoJoin();
	
	self.aivar[AIV_GuardPassage_Status] = GP_PassGate;
};

// ------------------------------------------------------------
// 								Einigen
// ------------------------------------------------------------
instance DIA_Addon_Henry_Einigen		(C_INFO)
{
	npc		 	= PIR_1354_Addon_Henry;
	nr		 	= 3;
	condition	= DIA_Addon_Henry_Einigen_Condition;
	information	= DIA_Addon_Henry_Einigen_Info;

	description	= "Mo? si?potargujemy?";
};

func int DIA_Addon_Henry_Einigen_Condition ()
{
	if (self.aivar[AIV_GuardPassage_Status] != GP_PassGate)
	&& (Npc_KnowsInfo (other, DIA_Addon_Henry_WantEnter))
	{
		return TRUE;
	};
};

func void DIA_Addon_Henry_Einigen_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Einigen_15_00"); //Mo? si?potargujemy?
	AI_Output (self, other, "DIA_Addon_Henry_Einigen_04_01"); //C?, daj mi jaki?pow?, dla kt?ego mia?ym opu?i?cen?
};

// ------------------------------------------------------------
// 		  			Grund 1 - Fleisch f? Morgan
// ------------------------------------------------------------
INSTANCE DIA_Addon_Henry_MeatForMorgan(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 4;
	condition	= DIA_Addon_Henry_MeatForMorgan_Condition;
	information	= DIA_Addon_Henry_MeatForMorgan_Info;
	permanent	= FALSE;
	description	= "Mam mi?o dla Morgana.";
};                       
FUNC INT DIA_Addon_Henry_MeatForMorgan_Condition()
{
	if  (self.aivar[AIV_GuardPassage_Status] != GP_PassGate)
	&&  (Npc_KnowsInfo (other, DIA_Addon_Henry_Einigen))
	&& 	(MIS_AlligatorJack_BringMeat == LOG_RUNNING)
	&&	(Npc_HasItems (other,ItFoMuttonRaw) >= 1)
	{
		return TRUE;
	};
};

FUNC VOID DIA_Addon_Henry_MeatForMorgan_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_MeatForMorgan_15_00"); //Mam mi?o dla Morgana.
	AI_Output (self ,other,"DIA_Addon_Henry_MeatForMorgan_04_01"); //Aha. A kto ci?przysy??
	AI_Output (other,self ,"DIA_Addon_Henry_MeatForMorgan_15_02"); //Jack Aligator. M?i, ? Morgan czeka na dostaw?
	AI_Output (self ,other,"DIA_Addon_Henry_MeatForMorgan_04_03"); //Tak, tak.. Jakby sam nie m??si?ruszy?.. 
};

// ------------------------------------------------------------
// 		  			Grund 2 - Holz von Malcom
// ------------------------------------------------------------
instance DIA_Addon_Henry_Malcom		(C_INFO)
{
	npc		 	= PIR_1354_Addon_Henry;
	nr		 	= 5;
	condition	= DIA_Addon_Henry_Malcom_Condition;
	information	= DIA_Addon_Henry_Malcom_Info;

	description	= "Malcolm mnie przysy?.";
};
func int DIA_Addon_Henry_Malcom_Condition ()
{
	if  (self.aivar[AIV_GuardPassage_Status] != GP_PassGate)
	&&  (Npc_KnowsInfo (other, DIA_Addon_Henry_Einigen))
	&&  (MalcomBotschaft == TRUE)
	{
		return TRUE;
	};
};
func void DIA_Addon_Henry_Malcom_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Malcom_15_00"); //Malcolm mnie przysy?. M?i? ? na drewno przyjdzie troch?poczeka?
	AI_Output (self, other, "DIA_Addon_Henry_Malcom_04_01"); //Tak, tak... Powinienem by?wiedzie? Jak zwykle, b?ziemy czeka?ca? wieki.

	B_MalcomExident();
};

// ------------------------------------------------------------
// 		  			Grund 3 - Paket f? Skip
// ------------------------------------------------------------
instance DIA_Addon_Henry_BaltramPack		(C_INFO)
{
	npc		 	= PIR_1354_Addon_Henry;
	nr		 	= 6;
	condition	= DIA_Addon_Henry_BaltramPack_Condition;
	information	= DIA_Addon_Henry_BaltramPack_Info;

	description	= "Mam przesy??dla Skipa.";
};
func int DIA_Addon_Henry_BaltramPack_Condition ()
{
	if (self.aivar[AIV_GuardPassage_Status] != GP_PassGate)
	&& (Npc_KnowsInfo (other, DIA_Addon_Henry_Einigen))
	&& (Npc_HasItems (other,ItMi_SkipPaket))
	{
		return TRUE;
	};
};
func void DIA_Addon_Henry_BaltramPack_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_BaltramPack_15_00"); //Mam przesy??dla Skipa. Jest w ?odku?
	AI_Output (self, other, "DIA_Addon_Henry_BaltramPack_04_01"); //Tak, jest w ?odku. Co?jeszcze?
};

// ------------------------------------------------------------
// 						ICH WILL JETZT REIN
// ------------------------------------------------------------
var int Henry_Amount;
// ------------------------------------------------------------
instance DIA_Addon_Henry_Tribut		(C_INFO)
{
	npc		 	= PIR_1354_Addon_Henry;
	nr		 	= 7;
	condition	= DIA_Addon_Henry_Tribut_Condition;
	information	= DIA_Addon_Henry_Tribut_Info;
	permanent	= TRUE;
	description = "Wpu? mnie.";
};
func int DIA_Addon_Henry_Tribut_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Henry_Einigen))
	&& (self.aivar[AIV_GuardPassage_Status] != GP_PassGate)		
	{
		return TRUE;
	};
};
func void DIA_Addon_Henry_Tribut_Info ()
{
	Henry_Amount = 500;

	AI_Output	(other, self, "DIA_Addon_Henry_Tribut_15_00"); //Wpu? mnie.
	
	AI_Output	(self, other, "DIA_Addon_Henry_Tribut_04_01"); //Hmm...

	if (Npc_KnowsInfo (other, DIA_Addon_Henry_Malcom))
	{
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_04_02"); //Przynios??mi wiadomo? od drwali.
		Henry_Amount = (Henry_Amount - 100);
	};	

	if (Npc_KnowsInfo (other, DIA_Addon_Henry_MeatForMorgan))
	{
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_04_03"); //Jeste?pomocnikiem Jacka Aligatora i masz mi?o dla Morgana.
		Henry_Amount = (Henry_Amount - 100);
	};
	
	if (Npc_KnowsInfo (other, DIA_Addon_Henry_BaltramPack))
	{
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_04_04"); //Masz paczk?dla Skipa.
		Henry_Amount = (Henry_Amount - 100);
	};

	if (MIS_Henry_FreeBDTTower == LOG_SUCCESS)
	{
		if (Henry_Amount < 500) //schon was anderes gesagt
		{
			AI_Output	(self, other, "DIA_Addon_Henry_Tribut_Add_04_00"); //A co najciekawsze...
		};
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_Add_04_01"); //Uda? ci si?pokona?tych bandzior? z wie?.
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_Add_04_02"); //Nie my?a?m, ? uda ci si?tego dokona?
		Henry_Amount = (Henry_Amount - 200);
	};

	if (Henry_Amount <= 0)
	{
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_Add_04_03"); //Wiesz, co ci powiem? Wchod?za darmo...
		
		//patch M.F. 
		self.aivar[AIV_GuardPassage_Status] = GP_PassGate; 
		Info_ClearChoices	(DIA_Addon_Henry_Tribut);
	}
	else
	{
		B_Henry_Gold (Henry_Amount);   

		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_04_05"); //...albo odejd?

		Info_ClearChoices	(DIA_Addon_Henry_Tribut);
		Info_AddChoice	(DIA_Addon_Henry_Tribut, "To zbyt wiele.", DIA_Addon_Henry_Tribut_nein );

		if (Npc_HasItems (other,ItMi_Gold) >= Henry_Amount)
		{
			Info_AddChoice	(DIA_Addon_Henry_Tribut, "Dobrze. Tu jest twoje z?to.", DIA_Addon_Henry_Tribut_ja );
		};
	};
};
func void DIA_Addon_Henry_Tribut_ja ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Tribut_ja_15_00"); //Dobrze. Tu jest twoje z?to.
	B_GiveInvItems (other, self, ItMi_Gold, Henry_Amount);		
	AI_Output (self, other, "DIA_Addon_Henry_Tribut_ja_04_01"); //Dzi?i. Witamy w naszych skromnych progach.
	B_Henry_NoJoin();
	
	Info_ClearChoices	(DIA_Addon_Henry_Tribut);
	self.aivar[AIV_GuardPassage_Status] = GP_PassGate; 
};
func void DIA_Addon_Henry_Tribut_nein ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Tribut_nein_15_00"); //To zbyt wiele.
	if (Henry_Amount < 500)
	{
		AI_Output (self, other, "DIA_Addon_Henry_Tribut_nein_04_03"); //No co ty? I tak ju?spu?i?m z ceny.
	}
	else
	{
		AI_Output (self, other, "DIA_Addon_Henry_Tribut_nein_04_04"); //Daj mi spok?, co?
	};
	
	Info_ClearChoices	(DIA_Addon_Henry_Tribut);
};



// ************************************************************
// ***														***
// 				Palisade - Banditen - Turmbanditen
// ***														***
// ************************************************************
// ------------------------------------------------------------
// 		  				Hallo 2 	(Was machst du)	   
// ------------------------------------------------------------
INSTANCE DIA_Addon_Henry_Palisade(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 11;
	condition	= DIA_Addon_Henry_Palisade_Condition;
	information	= DIA_Addon_Henry_Palisade_Info;
	permanent	= FALSE;
	description	= "Co robisz?";
};                       
FUNC INT DIA_Addon_Henry_Palisade_Condition()
{
	if (GregIsBack == FALSE)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Addon_Henry_Palisade_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Palisade_15_00"); //Co robisz?
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_04_01"); //A na co to wygl?a? Nadzoruj?budow?palisady, ?by te lenie zrobi? to na czas.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_04_02"); //Je?i tego nie doko?zymy, to kapitan Greg da nam popali?
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_04_03"); //Pilnuj?te? aby nikt niepowo?ny tu nie wszed?
};

// ------------------------------------------------------------
// 		  				Palisade + Turmbanditen
// ------------------------------------------------------------
INSTANCE DIA_Addon_Henry_Palisade_WhatFor(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 12;
	condition	= DIA_Addon_Henry_Palisade_WhatFor_Condition;
	information	= DIA_Addon_Henry_Palisade_WhatFor_Info;
	permanent	= FALSE;
	description	= "Po co stawiacie t?palisad?";
};                       
FUNC INT DIA_Addon_Henry_Palisade_WhatFor_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Addon_Henry_Palisade))
	{
		return TRUE;
	};	
};
func VOID DIA_Addon_Henry_Palisade_WhatFor_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Palisade_WhatFor_15_00"); //Po co stawiacie t?palisad?
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_WhatFor_04_10"); //Cho?y po to, ?by utrudni??cie bandytom!
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_WhatFor_04_02"); //Te sukinkoty podchodz?coraz bli?j. Zupe?ie jak rekiny okr?aj?e rozbitka na pe?ym morzu.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_WhatFor_04_11"); //Kilku z nich zaszy? si?w wie? na po?dniu.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_WhatFor_04_12"); //Ale s?z? ? to tylko zwiad.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_WhatFor_04_03"); //Tak wi?, je?i w ko?u zaatakuj? b?ziemy przygotowani.

	Log_CreateTopic (TOPIC_Addon_BanditsTower,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_Addon_BanditsTower,LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_BanditsTower,"W wie? na po?dniu od obozu pirat? siedzi grupa bandyt?.");

};

// ------------------------------------------------------------
// 		  				Turmbanditen Report
// ------------------------------------------------------------
func void B_Henry_WhereIsTower()
{	
	AI_Output (other,self ,"DIA_Addon_Francis_BanditsDead_15_08"); //Gdzie jest ta wie??
	AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_07"); //Je?i wyruszysz st? i b?ziesz trzyma?si?prawej strony...
	AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_08"); //...to po pewnym czasie powiniene?zobaczy?wie? na ma?m klifie.
};
// ------------------------------------------------------------
INSTANCE DIA_Addon_Henry_Turmbanditen(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 13;
	condition	= DIA_Addon_Henry_Turmbanditen_WhatFor_Condition;
	information	= DIA_Addon_Henry_Turmbanditen_WhatFor_Info;
	permanent	= TRUE;
	description	= "Je?i chodzi o tych bandyt? z wie?...";
};                       
FUNC INT DIA_Addon_Henry_Turmbanditen_WhatFor_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Henry_Palisade_WhatFor))
	&& (MIS_Henry_FreeBDTTower != LOG_SUCCESS)
	{
		return TRUE;
	};	
};
func VOID DIA_Addon_Henry_Turmbanditen_WhatFor_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Turmbanditen_15_00"); //Je?i chodzi o tych bandyt? z wie?...
	
	if (C_TowerBanditsDead() == TRUE)
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_01"); //Tak?
		AI_Output (other,self ,"DIA_Addon_Francis_BanditsDead_15_01"); //Ju?nie b??sprawia?k?pot?.
		if (MIS_Henry_FreeBDTTower == LOG_RUNNING)
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_02"); //Wspaniale! Jeden problem z g?wy.
		}
		else //auf eigene Faust
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_03"); //Pokona??ich w pojedynk? Panowie, czapki z g?w!
			AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_04"); //Kto wie, mo? kiedy?b?ziesz prawdziwym piratem!
		};
		//-----------------------------------------			
		SawPirate.aivar[AIV_PARTYMEMBER] = FALSE;
		Npc_ExchangeRoutine	(SawPirate,"START");
		HammerPirate.aivar[AIV_PARTYMEMBER] = FALSE;
		Npc_ExchangeRoutine	(HammerPirate,"START");
		//-----------------------------------------	
		MIS_Henry_FreeBDTTower = LOG_SUCCESS;
		
		B_LogEntry (TOPIC_Addon_BanditsTower,"Bandyci w wie? nie ?j?");
		
		B_GivePlayerExp(200);
	}
	else if (MIS_Henry_FreeBDTTower == LOG_RUNNING)
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_07"); //Co teraz?
		B_Henry_WhereIsTower();
	}
	else
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_05"); //Tylko nie my?, ?by p?? tam samemu!
		AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_06"); //P?niej wy??tam dw?h ch?pak? z mojej grupy aborda?wej. Oni poradz?sobie z bandytami.
		Knows_HenrysEntertrupp = TRUE;
	};
};

// ------------------------------------------------------------
// 		  			Warum Krieg mit Banditen
// ------------------------------------------------------------
INSTANCE DIA_Addon_Henry_Palisade_Bandits(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 14;
	condition	= DIA_Addon_Henry_Palisade_Bandits_Condition;
	information	= DIA_Addon_Henry_Palisade_Bandits_Info;
	permanent	= FALSE;
	description	= "Dlaczego zostali?ie zaatakowani przez bandyt??";
};                       
FUNC INT DIA_Addon_Henry_Palisade_Bandits_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Addon_Henry_Palisade_WhatFor))
	{
		return TRUE;
	};	
};
func VOID DIA_Addon_Henry_Palisade_Bandits_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Palisade_Bandits_15_00"); //Dlaczego zostali?ie zaatakowani przez bandyt??
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_04"); //A jak s?zisz? Wojujemy z nimi od jakiego?czasu.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_05"); //Na pocz?ku wszystko by? w porz?ku. Przywie?i?y ich tutaj, a oni odeszli w g?b bagien i nie niepokoili nas wi?ej.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_06"); //Niestety, p?niej zacz?i napada?na ka?ego, kto nie nale??do ich bandy.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_07"); //Nie mam poj?ia, co za demony ich op?a?!
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_08"); //My?? ? chc?zabra?nasze ?dzie, bo to chyba jedyny spos?, by si?st? wyrwa?
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_09"); //Porozmawiaj ze Skipem. By?w ich obozie i omal nie przyp?ci?tego ?ciem.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_10"); //To bardzo ciekawa historia!
	if (self.aivar[AIV_GuardPassage_Status] != GP_PassGate)
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_11"); //Niestety, nie b?ziesz m??jej wys?cha? bo nie zap?ci??myta.
		Henry_Zoll_WhatFor = TRUE;
	};
};



// ************************************************************
// ***														***
// 							Entertrupp
// ***														***
// ************************************************************
// ------------------------------------------------------------
// 		  		Ich will in deinen Entertrupp
// ------------------------------------------------------------
var int Henry_EnterCrewMember;
// ------------------------------------------------------------
instance DIA_Addon_Henry_Entercrew(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 31;
	condition	= DIA_Addon_Henry_Entercrew_Condition;
	information	= DIA_Addon_Henry_Entercrew_Info;
	permanent	= TRUE;
	description	= "Chc?do?czy?do waszej grupy aborda?wej.";
};                       
FUNC INT DIA_Addon_Henry_Entercrew_Condition()
{
	if (Knows_HenrysEntertrupp == TRUE)
	&& (Henry_EnterCrewMember == FALSE)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Addon_Henry_Entercrew_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Entercrew_15_00"); //Chc?do?czy?do waszej grupy aborda?wej.
	
	if (self.aivar[AIV_GuardPassage_Status] != GP_PassGate)
	{
		AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_00"); //Tym si?nie wykpisz, ch?pcze!
		AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_01"); //Najpierw musimy ustali? czy w og?e zas?gujesz na wpuszczenie ci?do obozu!
		Henry_Zoll_WhatFor = TRUE;
	}
	else
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Entercrew_04_06"); //Witam w mojej grupie!
		AI_Output (self ,other,"DIA_Addon_Henry_Entercrew_04_07"); //Przyda nam si?dodatkowe rami? kiedy b?ziemy walczy?z bandytami.
		if (MIS_Henry_FreeBDTTower == LOG_SUCCESS)
		{
			AI_Output (self, other, "DIA_Addon_Henry_Entercrew_Add_04_02"); //Hmm... Jak powiedzia?m, we?jednego z ch?pc? i wykurz bandzior? z wie?.
			AI_Output (self, other, "DIA_Addon_Henry_Entercrew_Add_04_03"); //Ale ju?to zrobi??
		}
		else 
		{
			if (Npc_IsDead(SawPirate))
			&& (Npc_IsDead(HammerPirate))
			{
				AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_04"); //Obaj moi ludzie nie ?j? Wygl?a na to, ? b?ziesz musia?p?? tam sam.
				AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_05"); //Pozb??si?bandyt? z wie?!
				
				B_LogEntry (TOPIC_Addon_BanditsTower,"Henry chce, ?bym usun? bandyt? z wie?. Nie mo? jednak da?mi ?dnego wsparcia.");
			}
			else
			{
				AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_06"); //We?jednego z moich ch?pc? i pozb??si?bandyt? z wie?.
				Henry_GetPartyMember = TRUE;
			
				B_LogEntry (TOPIC_Addon_BanditsTower,"Henry chce, ?bym usun? bandyt? z wie?. Mog?zabra?ze sob?jednego z jego ch?pak?.");
			};

			B_Henry_WhereIsTower();
			
			AI_Output (other,self ,"DIA_Addon_Henry_Entercrew_15_09"); //Tak jest!
	
			MIS_Henry_FreeBDTTower = LOG_RUNNING;
		};
		Henry_EnterCrewMember = TRUE;
	};
};

// ------------------------------------------------------------
// 						Dann geh zu Owen
// ------------------------------------------------------------
instance DIA_Addon_Henry_Owen		(C_INFO)
{
	npc		 	= PIR_1354_Addon_Henry;
	nr		 	= 32;
	condition	= DIA_Addon_Henry_Owen_Condition;
	information	= DIA_Addon_Henry_Owen_Info;

	description	= "Mog?wam jeszcze jako?pom??";
};
func int DIA_Addon_Henry_Owen_Condition ()
{
	if (MIS_Henry_FreeBDTTower == LOG_SUCCESS)
	&& (Henry_EnterCrewMember == TRUE)
	&& (!Npc_IsDead (Malcom))
	{
		return TRUE;
	};
};
func void DIA_Addon_Henry_Owen_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Owen_15_01"); //Mog?wam jeszcze jako?pom??
	AI_Output (self, other, "DIA_Addon_Henry_Owen_04_01"); //Od wielu dni czekamy na drewno potrzebne do budowy palisady.
	AI_Output (self, other, "DIA_Addon_Henry_Owen_04_05"); //Malcolm i Owen powinni byli dostarczy?je ju?dawno temu.
	if (!Npc_KnowsInfo (other, DIA_Addon_Henry_Malcom))
	{
		AI_Output (self, other, "DIA_Addon_Henry_Owen_04_06"); //Ob? drwali nie jest zbyt daleko - nad jeziorem le?cym w kotlinie na po?dniowym wschodzie.
	}
	else
	{
		AI_Output (self, other, "DIA_Addon_Henry_Owen_04_07"); //Malcolm powiedzia? ? dostawa si?op?ni, ale my ju?czekamy ca? wieki!
	};
	
	AI_Output (self, other, "DIA_Addon_Henry_Owen_04_08"); //Powiedz im, ? czekamy na drewno!
	AI_Output (self, other, "DIA_Addon_Henry_Owen_04_09"); //Nie, czekaj... Powiedz to Owenowi. Malcolm jest ma? wiarygodny.
	
	
	B_MalcomExident();
	
	MIS_Henry_HolOwen = LOG_RUNNING;

	Log_CreateTopic (TOPIC_Addon_HolOwen,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_Addon_HolOwen,LOG_RUNNING);
	B_LogEntry	(TOPIC_Addon_HolOwen,"Henry czeka przy palisadzie na drewno. Mam powiadomi?o tym Owena, kt?y razem z Malcolmem przebywa w kotlinie.");  
};

// ------------------------------------------------------------
// 						Owen2 Report
// ------------------------------------------------------------
func void B_Addon_Henry_MalcomsDead()
{	
	AI_Output (self, other, "DIA_Addon_Henry_Owen2_Add_04_00"); //Co si?dzieje z Malcolmem?
	AI_Output (other, self, "DIA_Addon_Henry_Owen2_Add_15_01"); //Nie ?je.
	AI_Output (self, other, "DIA_Addon_Henry_Owen2_Add_04_02"); //Mia?nielichego pecha, co?
		
};
// ------------------------------------------------------------
instance DIA_Addon_Henry_Owen2		(C_INFO)
{
	npc		 	= 	PIR_1354_Addon_Henry;
	nr		 	= 	33;
	condition	= 	DIA_Addon_Henry_Owen2_Condition;
	information	= 	DIA_Addon_Henry_Owen2_Info;
	permanent	= 	TRUE;
	description	= 	"Je?i chodzi o drwala Owena...";
};
func int DIA_Addon_Henry_Owen2_Condition ()
{
	if (MIS_Henry_HolOwen == LOG_RUNNING)
	{
		return TRUE;
	};
};
func void DIA_Addon_Henry_Owen2_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Owen2_15_00"); //Je?i chodzi o drwala Owena...
	
	if ((Npc_IsDead(PIR_1367_Addon_Owen)) == TRUE)
	{
		AI_Output (other, self, "DIA_Addon_Henry_Owen2_15_01"); //Nie ?je...
		AI_Output (self, other, "DIA_Addon_Henry_Owen2_04_02"); //Szlag by to trafi? Teraz b??musia?wys??kogo?innego.
		AI_Output (self, other, "DIA_Addon_Henry_Owen2_04_03"); //Chyba ju?pora, ?by Morgan ruszy?ty?k i pozby?si?tych stwor?.
		B_Addon_Henry_MalcomsDead();
		//AI_Output (self, other, "DIA_Addon_Henry_Owen2_Add_04_01"); //Was? Er auch? Verdammte Mistviecher!
		MIS_Henry_HolOwen = LOG_OBSOLETE;
	
		B_LogEntry	(TOPIC_Addon_HolOwen,"Owen i Malcom nie ?j?");	
		Log_SetTopicStatus (TOPIC_Addon_HolOwen,LOG_OBSOLETE);
	  
	}
	else if (Owen_ComesToHenry == TRUE)
	{
		AI_Output (other, self, "DIA_Addon_Henry_Owen2_15_03"); //Owen dostarczy drewno.
		AI_Output (self, other, "DIA_Addon_Henry_Owen2_04_04"); //Doskonale. Czas ju?najwy?zy.
		B_Addon_Henry_MalcomsDead();
		AI_Output (self, other, "DIA_Addon_Henry_Owen2_04_05"); //Oto twoja nagroda.
		B_GiveInvItems (self, other, ItMi_Gold, 200);
		B_StartOtherRoutine	(PIR_1367_Addon_Owen,"PostStart");
		
		
		B_LogEntry	(TOPIC_Addon_HolOwen,"Owen dostarczy drewno Henry'emu.");
		
		MIS_Henry_HolOwen = LOG_SUCCESS;
		
		B_GivePlayerExp(300);
	}
	else
	{
		AI_Output (other, self, "DIA_Addon_Henry_Owen2_15_06"); //Gdzie jest ten ob??
		AI_Output (self, other, "DIA_Addon_Henry_Owen2_04_07"); //Kawa?k na po?dniowy wsch?, nieopodal kotliny.
	};
};

// ************************************************************
// 		  						PERM
// ************************************************************
var int Henry_PERM_Once;
// ------------------------------------------------------------
instance DIA_Addon_Henry_Palisade_CanHelp(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 34;
	condition	= DIA_Addon_Henry_Palisade_CanHelp_Condition;
	information	= DIA_Addon_Henry_Palisade_CanHelp_Info;
	permanent	= TRUE;
	description	= "Potrzebujesz pomocy?";
};                       
FUNC INT DIA_Addon_Henry_Palisade_CanHelp_Condition()
{
	if (MIS_Henry_HolOwen == LOG_SUCCESS)
	|| (MIS_Henry_HolOwen == LOG_OBSOLETE)
	{
		return TRUE;
	};	
};
FUNC VOID DIA_Addon_Henry_Palisade_CanHelp_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Palisade_CanHelp_15_00"); //Potrzebujesz pomocy?
	if (Henry_PERM_Once == FALSE)
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Palisade_CanHelp_04_01"); //Masz jakie?do?iadczenie w stawianiu palisad?
		AI_Output (other,self ,"DIA_Addon_Henry_Palisade_CanHelp_15_02"); //Niezbyt du?.
		AI_Output (self ,other,"DIA_Addon_Henry_Palisade_CanHelp_04_03"); //W takim razie nie mam dla ciebie ?dnej pracy. Poszukaj sobie innego zaj?ia.
		Henry_PERM_Once = TRUE;
	};
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_CanHelp_04_04"); //R?, co chcesz, tylko nie przeszkadzaj mi w pracy, jasne?
};



// ************************************************************
// 							Teach 2h
// ************************************************************
// ------------------------------------------------------------
// 		  					Wanna Learn
// ------------------------------------------------------------
INSTANCE DIA_Addon_Henry_WhatTeach(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 21;
	condition	= DIA_Addon_Henry_WhatTeach_Condition;
	information	= DIA_Addon_Henry_WhatTeach_Info;
	permanent	= TRUE;
	description	= "Mo?sz mnie podszkoli?w walce?";
};                       
FUNC INT DIA_Addon_Henry_WhatTeach_Condition()
{
	if (Knows_HenrysEntertrupp == TRUE)
	&& ((self.aivar[AIV_CanOffer] & OFFER_Teaching) == 0)
	{
		return true;
	};	
};

FUNC VOID DIA_Addon_Henry_WhatTeach_Info()
{	
	AI_Output (other, self, "DIA_Addon_Henry_WhatTeach_Add_15_00"); //Mo?sz mnie podszkoli?w walce?
	if (self.aivar[AIV_GuardPassage_Status] != GP_PassGate)
	{
		AI_Output (self ,other,"DIA_Addon_Henry_WhatTeach_Add_04_01"); //Najpierw obowi?ek, potem przyjemno?. Zr? co?po?tecznego, to ci?naucz?walczy?
		AI_Output (self ,other,"DIA_Addon_Henry_WhatTeach_Add_04_02"); //Wszystko jest wliczone w cen?
		Henry_Zoll_WhatFor = TRUE;
	}
	else
	{
		AI_Output (self ,other,"DIA_Addon_Henry_WhatTeach_Add_04_03"); //Pewnie, czemu nie?
		self.aivar[AIV_CanOffer] = self.aivar[AIV_CanOffer] | OFFER_Teaching;
		
		Log_CreateTopic (Topic_Addon_PIR_Teacher,LOG_NOTE);
		B_LogEntry (Topic_Addon_PIR_Teacher,Log_Text_Addon_HenryTeach);
	};
};

// ************************************************************
// 		  						Greg
// ************************************************************
INSTANCE DIA_Addon_Henry_Palisade_Train(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 11;
	condition	= DIA_Addon_Henry_Palisade_Train_Condition;
	information	= DIA_Addon_Henry_Palisade_Train_Info;
	permanent	= FALSE;
	description	= "Greg jest twoim szefem?";
};                       
FUNC INT DIA_Addon_Henry_Palisade_Train_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Henry_Palisade))
	&& (GregIsBack == FALSE)
	{
		return TRUE;
	};	
};
func VOID DIA_Addon_Henry_Palisade_Train_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Palisade_Train_15_00"); //Greg jest twoim szefem?
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_01"); //Zgadza si? Ale dla ciebie to jest Kapitan Greg. Rozumiemy si?
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_02"); //To wielki cz?wiek. Kiedy go spotkasz, nawet nie my?, by zrobi?co?g?piego. Nie spodoba ci si?jego reakcja na takie zachowanie.
	
	if (PIR_1300_Addon_Greg_NW.aivar[AIV_TalkedToPlayer] == TRUE)
	{
		AI_Output (other,self ,"DIA_Addon_Henry_Palisade_Train_15_03"); //Ju?z nim rozmawia?m.
		AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_04"); //W takim razie wiesz, o czym m?i?  
	};

	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_05"); //Niestety, nie ma go w tej chwili w obozie. 
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_06"); //Jego zast?c?jest Francis. 
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_07"); //Ca?mi dniami siedzi przed chat?Grega i gapi si?na nas jak sroka w gnat.
};

// ************************************************************
// 		  				Dein eigener Entertrupp
// ************************************************************
INSTANCE DIA_Addon_Henry_YourOwnTrupp (C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 1;
	condition	= DIA_Addon_Henry_YourOwnTrupp_Condition;
	information	= DIA_Addon_Henry_YourOwnTrupp_Info;
	permanent	= FALSE;
	important 	= TRUE;
};                       
FUNC INT DIA_Addon_Henry_YourOwnTrupp_Condition()
{
	if (MIS_Addon_Greg_ClearCanyon == LOG_RUNNING)
	{
		return TRUE;
	};	
};
func VOID DIA_Addon_Henry_YourOwnTrupp_Info()
{	
	AI_Output (self ,other,"DIA_Addon_Henry_Add_04_04"); //Kapitan powierzy?ci dow?ztwo nad grup?uderzeniow?
	AI_Output (self ,other,"DIA_Addon_Henry_Add_04_05"); //Ch?pakom przyda si?troch?pracy!
	AI_StopProcessInfos (self);
};
