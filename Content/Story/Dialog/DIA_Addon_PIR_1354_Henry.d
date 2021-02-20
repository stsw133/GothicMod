//************************************************************
//		  					EXIT
//************************************************************
INSTANCE DIA_Addon_Henry_EXIT(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 999;
	condition	= DIA_Addon_Henry_EXIT_Condition;
	information	= DIA_Addon_Henry_EXIT_Info;
	permanent	= true;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Addon_Henry_EXIT_Condition()
{
	return true;
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
			AI_Output (self ,other,"DIA_Addon_Henry_Gold500_04_00"); //500 sztuk z?ota.
		}
		else if (gold == 400)
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Gold400_04_00"); //400 sztuk z?ota.
		}
		else if (gold == 300)
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Gold300_04_00"); //300 sztuk z?ota.
		}
		else if (gold == 200)
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Gold200_04_00"); //200 sztuk z?ota.
		}
		else if (gold == 100)
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Gold100_04_00"); //100 sztuk z?ota.
		}
		else
		{
			B_Say_Gold (self, other, gold);
		};
		
	};
// -----------------------------------------------------------

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
	permanent	= true;
	important 	= true;
};                       
FUNC INT DIA_Addon_Henry_Hello_Condition()
{
	if (Npc_GetDistToWP(other, PIR_1354_Checkpoint) <= 700) //NICHT von hinten!
	{
		Npc_SetRefuseTalk(self, 5);
		return false;
	};
	
	if (self.aivar[AIV_Guardpassage_Status] == GP_NONE)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == true)
	&& (Npc_RefuseTalk(self) == false)
	{
		return true;
	};
};

FUNC VOID DIA_Addon_Henry_Hello_Info()
{	
	AI_Output (self ,other,"DIA_Addon_Henry_Hello_04_00"); //St?j, kto idzie?
	AI_Output (self ,other,"DIA_Addon_Henry_Hello_04_01"); //Sw?j czy wr?g?
	
	Info_ClearChoices (DIA_Addon_Henry_Hello);
	Info_AddChoice (DIA_Addon_Henry_Hello,"Wróg!",DIA_Addon_Henry_Hello_Feind);
	Info_AddChoice (DIA_Addon_Henry_Hello,"Swój!",DIA_Addon_Henry_Hello_Freund);
};
var int Henry_SC_Frech;
FUNC VOID DIA_Addon_Henry_Hello_Feind()
{
	AI_Output (other,self ,"DIA_Addon_Henry_Hello_Feind_15_00"); //Wr?g!
	AI_Output (self ,other,"DIA_Addon_Henry_Hello_Feind_04_01"); //Spryciarz... Chcesz, ?ebym ci porachowa? ko?ci?
	AI_Output (self ,other,"DIA_Addon_Henry_Hello_Feind_04_02"); //M?w, co masz do powiedzenia, albo odejd?.
	
	Henry_SC_Frech = true;

	other.aivar[AIV_LastDistToWP] 		= Npc_GetDistToWP (other,Pir_1354_Checkpoint);
	self.aivar[AIV_Guardpassage_Status]	= GP_FirstWarnGiven;	
	
	Info_ClearChoices (DIA_Addon_Henry_Hello);
};

FUNC VOID DIA_Addon_Henry_Hello_Freund()
{
	AI_Output (other,self ,"DIA_Addon_Henry_Hello_Freund_15_00"); //Sw?j!
	AI_Output (self ,other,"DIA_Addon_Henry_Hello_Freund_04_01"); //Ka?dy tak mo?e powiedzie?. Nie znam ci?. Czego tutaj szukasz?
	
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
	permanent	= true;
	important	= true;
};                       
FUNC INT DIA_Addon_Henry_SecondWarn_Condition()
{
	if (self.aivar[AIV_Guardpassage_Status] == GP_FirstWarnGiven)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == true)
	&& (Npc_GetDistToWP(other,pir_1354_Checkpoint) < (other.aivar[AIV_LastDistToWP]-50))
	{
		return true;
	};
};
func void DIA_Addon_henry_SecondWarn_Info()
{
	AI_Output (self, other,"DIA_Addon_Henry_SecondWarn_04_00"); //Jeszcze jeden krok i rzuc? ci? rekinom na po?arcie!

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
	permanent	= true;
	important	= true;
};                       
func INT DIA_Addon_Henry_Attack_Condition()
{
	if (self.aivar[AIV_Guardpassage_Status] == GP_SecondWarnGiven)
	&& (Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == true)
	&& (Npc_GetDistToWP(other,Pir_1354_Checkpoint) < (other.aivar[AIV_LastDistToWP]-50))
	{
		return true;
	};
};
func void DIA_Addon_Henry_Attack_Info()
{
	other.aivar[AIV_LastDistToWP] 			= 0;
	self.aivar[AIV_Guardpassage_Status]		= GP_NONE;						//Sam tego chcia?e?.
	
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
	permanent	= false;
	description	= "Chc? wej??.";
};
FUNC INT DIA_Addon_Henry_WantEnter_Condition()
{
	if (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	{
		return true;
	};	
};

FUNC VOID DIA_Addon_Henry_WantEnter_Info()
{	
	AI_Output (other, self, "DIA_Addon_Henry_WantEnter_15_00"); //Chc? wej??.
	AI_Output (self, other, "DIA_Addon_Henry_WantEnter_04_01"); //Naprawd?? To ci? b?dzie kosztowa?.

	B_Henry_Gold (500);

	if (Henry_Zoll_WhatFor == false)
	{
		AI_Output (other, self, "DIA_Addon_Henry_WantEnter_15_02"); //Niby czemu?
		AI_Output (self, other, "DIA_Addon_Henry_WantEnter_04_03"); //Musisz wszystko komplikowa??
		AI_Output (self, other, "DIA_Addon_Henry_WantEnter_04_04"); //W tym obozie jest wiele rzeczy, kt?re mog? ci? zainteresowa?.
		Henry_Zoll_WhatFor = true;
	};

	AI_Output (self, other, "DIA_Addon_Henry_WantEnter_04_08"); //Nie zedr? przecie? z ciebie ostatniej koszuli. Zobaczysz, op?aci ci si?.
	AI_Output (self, other, "DIA_Addon_Henry_WantEnter_04_10"); //Masz przy sobie pieni?dze, prawda?
};

// ------------------------------------------------------------
// 							500 zahlen!
// ------------------------------------------------------------
func void B_Henry_NoJoin()
{	
	AI_Output (self, other, "DIA_Addon_Henry_Add_04_00"); //Je?li chcesz do nas do??czy? to mam dla ciebie z?? wiadomo?? ch?opcze.
	AI_Output (self, other, "DIA_Addon_Henry_Add_04_01"); //Kapitan wyp?yn?? w rejs, a tylko on decyduje, kogo przyjmie si? do za?ogi.
	AI_Output (self, other, "DIA_Addon_Henry_Add_04_02"); //Ale mo?esz tu zosta? do jego powrotu.
	AI_Output (self, other, "DIA_Addon_Henry_Add_04_03"); //Je?li nie b?dziesz sprawia? k?opot?w, rzecz jasna.
};
// ------------------------------------------------------------



instance DIA_Addon_Henry_Einigen2		(C_INFO)
{
	npc		 	= PIR_1354_Addon_Henry;
	nr		 	= 2;
	condition	= DIA_Addon_Henry_Einigen2_Condition;
	information	= DIA_Addon_Henry_Einigen2_Info;

	description	= "Oto twoje 500 sztuk z?ota.";
};
func int DIA_Addon_Henry_Einigen2_Condition ()
{
	if (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	&& (Npc_KnowsInfo (other, DIA_Addon_Henry_WantEnter))
	&& (!Npc_KnowsInfo (other, DIA_Addon_Henry_Einigen))
	&& (Npc_HasItems (other,ItMi_Gold) >= 500)
	{
		return true;
	};
};
func void DIA_Addon_Henry_Einigen2_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Einigen2_15_00"); //Oto twoje 500 sztuk z?ota.
	B_GiveInvItems (other, self, ItMi_Gold, 500);		
	AI_Output (self, other, "DIA_Addon_Henry_Einigen2_04_01"); //Wspaniale. Witamy w naszym skromnym obozie.
	B_Henry_NoJoin();
	
	self.aivar[AIV_Guardpassage_Status] = GP_PassGate;
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

	description	= "Mo?e si? potargujemy?";
};

func int DIA_Addon_Henry_Einigen_Condition ()
{
	if (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	&& (Npc_KnowsInfo (other, DIA_Addon_Henry_WantEnter))
	{
		return true;
	};
};

func void DIA_Addon_Henry_Einigen_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Einigen_15_00"); //Mo?e si? potargujemy?
	AI_Output (self, other, "DIA_Addon_Henry_Einigen_04_01"); //C?, daj mi jaki? pow?d, dla kt?rego mia?bym opu?ci? cen?.
};

// ------------------------------------------------------------
// 		  			Grund 1 - Fleisch für Morgan
// ------------------------------------------------------------
INSTANCE DIA_Addon_Henry_MeatForMorgan(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 4;
	condition	= DIA_Addon_Henry_MeatForMorgan_Condition;
	information	= DIA_Addon_Henry_MeatForMorgan_Info;
	permanent	= false;
	description	= "Mam mi?so dla Morgana.";
};                       
FUNC INT DIA_Addon_Henry_MeatForMorgan_Condition()
{
	if  (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	&&  (Npc_KnowsInfo (other, DIA_Addon_Henry_Einigen))
	&& 	(MIS_AlligatorJack_BringMeat == LOG_RUNNING)
	&&	(Npc_HasItems (other,ItFoMuttonRaw) >= 1)
	{
		return true;
	};
};

FUNC VOID DIA_Addon_Henry_MeatForMorgan_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_MeatForMorgan_15_00"); //Mam mi?so dla Morgana.
	AI_Output (self ,other,"DIA_Addon_Henry_MeatForMorgan_04_01"); //Aha. A kto ci? przysy?a?
	AI_Output (other,self ,"DIA_Addon_Henry_MeatForMorgan_15_02"); //Jack Aligator. M?wi, ?e Morgan czeka na dostaw?.
	AI_Output (self ,other,"DIA_Addon_Henry_MeatForMorgan_04_03"); //Tak, tak... Jakby sam nie m?g? si? ruszy?... 
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

	description	= "Malcolm mnie przysy?a.";
};
func int DIA_Addon_Henry_Malcom_Condition ()
{
	if  (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	&&  (Npc_KnowsInfo (other, DIA_Addon_Henry_Einigen))
	&&  (MalcomBotschaft == true)
	{
		return true;
	};
};
func void DIA_Addon_Henry_Malcom_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Malcom_15_00"); //Malcolm mnie przysy?a. M?wi, ?e na drewno przyjdzie troch? poczeka?.
	AI_Output (self, other, "DIA_Addon_Henry_Malcom_04_01"); //Tak, tak... Powinienem by? wiedzie?. Jak zwykle, b?dziemy czeka? wieki.

	B_MalcomExident();
};

// ------------------------------------------------------------
// 		  			Grund 3 - Paket für Skip
// ------------------------------------------------------------
instance DIA_Addon_Henry_BaltramPack		(C_INFO)
{
	npc		 	= PIR_1354_Addon_Henry;
	nr		 	= 6;
	condition	= DIA_Addon_Henry_BaltramPack_Condition;
	information	= DIA_Addon_Henry_BaltramPack_Info;

	description	= "Mam przesy?k? dla Skipa.";
};
func int DIA_Addon_Henry_BaltramPack_Condition ()
{
	if (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	&& (Npc_KnowsInfo (other, DIA_Addon_Henry_Einigen))
	&& (Npc_HasItems(other,ItMi_SkipPaket))
	{
		return true;
	};
};
func void DIA_Addon_Henry_BaltramPack_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_BaltramPack_15_00"); //Mam przesy?k? dla Skipa. Jest w ?rodku?
	AI_Output (self, other, "DIA_Addon_Henry_BaltramPack_04_01"); //Tak, jest w ?rodku. Co? jeszcze?
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
	permanent	= true;
	description = "Wpu?? mnie.";
};
func int DIA_Addon_Henry_Tribut_Condition ()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Henry_Einigen))
	&& (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)		
	{
		return true;
	};
};
func void DIA_Addon_Henry_Tribut_Info ()
{
	Henry_Amount = 500;

	AI_Output	(other, self, "DIA_Addon_Henry_Tribut_15_00"); //Wpu?? mnie.
	
	AI_Output	(self, other, "DIA_Addon_Henry_Tribut_04_01"); //Hmm...

	if (Npc_KnowsInfo (other, DIA_Addon_Henry_Malcom))
	{
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_04_02"); //Przynios?e? mi wiadomo?? od drwali.
		Henry_Amount = (Henry_Amount - 100);
	};	

	if (Npc_KnowsInfo (other, DIA_Addon_Henry_MeatForMorgan))
	{
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_04_03"); //Jeste? pomocnikiem Jacka Aligatora i masz mi?so dla Morgana.
		Henry_Amount = (Henry_Amount - 100);
	};
	
	if (Npc_KnowsInfo (other, DIA_Addon_Henry_BaltramPack))
	{
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_04_04"); //Masz paczk? dla Skipa.
		Henry_Amount = (Henry_Amount - 100);
	};

	if (MIS_Henry_FreeBDTTower == LOG_SUCCESS)
	{
		if (Henry_Amount < 500) //schon was anderes gesagt
		{
			AI_Output	(self, other, "DIA_Addon_Henry_Tribut_Add_04_00"); //A co najciekawsze...
		};
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_Add_04_01"); //Uda?o ci si? pokona? tych bandzior?w z wie?y.
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_Add_04_02"); //Nie my?la?em, ?e uda ci si? tego dokona?.
		Henry_Amount = (Henry_Amount - 200);
	};

	if (Henry_Amount <= 0)
	{
		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_Add_04_03"); //Wiesz, co ci powiem? Wchod? za darmo...
		
		//patch M.F. 
		self.aivar[AIV_Guardpassage_Status] = GP_PassGate; 
		Info_ClearChoices	(DIA_Addon_Henry_Tribut);
	}
	else
	{
		B_Henry_Gold (Henry_Amount);   

		AI_Output	(self, other, "DIA_Addon_Henry_Tribut_04_05"); //...albo odejd?.

		Info_ClearChoices	(DIA_Addon_Henry_Tribut);
		Info_AddChoice	(DIA_Addon_Henry_Tribut, "To zbyt wiele.", DIA_Addon_Henry_Tribut_nein );

		if (Npc_HasItems (other,ItMi_Gold) >= Henry_Amount)
		{
			Info_AddChoice	(DIA_Addon_Henry_Tribut, "Dobrze. Tu jest twoje z?oto.", DIA_Addon_Henry_Tribut_ja );
		};
	};
};
func void DIA_Addon_Henry_Tribut_ja ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Tribut_ja_15_00"); //Dobrze. Tu jest twoje z?oto.
	B_GiveInvItems (other, self, ItMi_Gold, Henry_Amount);		
	AI_Output (self, other, "DIA_Addon_Henry_Tribut_ja_04_01"); //Dzi?ki. Witamy w naszych skromnych progach.
	B_Henry_NoJoin();
	
	Info_ClearChoices	(DIA_Addon_Henry_Tribut);
	self.aivar[AIV_Guardpassage_Status] = GP_PassGate; 
};
func void DIA_Addon_Henry_Tribut_nein ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Tribut_nein_15_00"); //To zbyt wiele.
	if (Henry_Amount < 500)
	{
		AI_Output (self, other, "DIA_Addon_Henry_Tribut_nein_04_03"); //No co ty? I tak ju? spu?ci?em z ceny.
	}
	else
	{
		AI_Output (self, other, "DIA_Addon_Henry_Tribut_nein_04_04"); //Daj mi spok?j, co?
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
	permanent	= false;
	description	= "Co robisz?";
};                       
FUNC INT DIA_Addon_Henry_Palisade_Condition()
{
	if (GregIsBack == false)
	{
		return true;
	};	
};
FUNC VOID DIA_Addon_Henry_Palisade_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Palisade_15_00"); //Co robisz?
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_04_01"); //A na co to wygl?da? Nadzoruj? budow? palisady, ?eby te lenie zrobi?y to na czas.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_04_02"); //Je?li tego nie doko?czymy, to kapitan Greg da nam popali?.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_04_03"); //Pilnuj? te? aby nikt niepowo?any tu nie wszed?.
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
	permanent	= false;
	description	= "Po co stawiacie t? palisad?";
};                       
FUNC INT DIA_Addon_Henry_Palisade_WhatFor_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Addon_Henry_Palisade))
	{
		return true;
	};	
};
func VOID DIA_Addon_Henry_Palisade_WhatFor_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Palisade_WhatFor_15_00"); //Po co stawiacie t? palisad??
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_WhatFor_04_10"); //Choæby po to, ¿eby utrudni?¿ycie bandytom!
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_WhatFor_04_02"); //Te sukinkoty podchodz?coraz bli¿ej. Zupe³nie jak rekiny okr¹¿aj¹ce rozbitka na pe³nym morzu.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_WhatFor_04_11"); //Kilku z nich zaszy³o si?w wie¿y na po³udniu.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_WhatFor_04_12"); //Ale s¹dz? ¿e to tylko zwiad.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_WhatFor_04_03"); //Tak wiêc, jeœli w koñcu zaatakuj? bêdziemy przygotowani.

	Log_CreateTopic (TOPIC_Addon_BanditsTower,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_Addon_BanditsTower,LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_BanditsTower,"W wie¿y na po³udniu od obozu piratów siedzi grupa bandytów.");

};

// ------------------------------------------------------------
// 		  				Turmbanditen Report
// ------------------------------------------------------------
func void B_Henry_WhereIsTower()
{	
	AI_Output (other,self ,"DIA_Addon_Francis_BanditsDead_15_08"); //Gdzie jest ta wie¿a?
	AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_07"); //Jeœli wyruszysz st¹d i bêdziesz trzyma?si?prawej strony...
	AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_08"); //...to po pewnym czasie powiniene?zobaczy?wie¿ê na ma³ym klifie.
};
// ------------------------------------------------------------
INSTANCE DIA_Addon_Henry_Turmbanditen(C_INFO)
{
	npc			= PIR_1354_Addon_Henry;
	nr			= 13;
	condition	= DIA_Addon_Henry_Turmbanditen_WhatFor_Condition;
	information	= DIA_Addon_Henry_Turmbanditen_WhatFor_Info;
	permanent	= true;
	description	= "Jeœli chodzi o tych bandytów z wie¿y...";
};                       
FUNC INT DIA_Addon_Henry_Turmbanditen_WhatFor_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Henry_Palisade_WhatFor))
	&& (MIS_Henry_FreeBDTTower != LOG_SUCCESS)
	{
		return true;
	};	
};
func VOID DIA_Addon_Henry_Turmbanditen_WhatFor_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Turmbanditen_15_00"); //Jeœli chodzi o tych bandytów z wie¿y...
	
	if (C_TowerBanditsDead() == true)
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_01"); //Tak?
		AI_Output (other,self ,"DIA_Addon_Francis_BanditsDead_15_01"); //Ju?nie bêd?sprawia?k³opotów.
		if (MIS_Henry_FreeBDTTower == LOG_RUNNING)
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_02"); //Wspaniale! Jeden problem z g³owy.
		}
		else //auf eigene Faust
		{
			AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_03"); //Pokona³e?ich w pojedynk? Panowie, czapki z g³ów!
			AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_04"); //Kto wie, mo¿e kiedy?bêdziesz prawdziwym piratem!
		};
		//-----------------------------------------			
		SawPirate.aivar[AIV_PARTYMEMBER] = false;
		Npc_ExchangeRoutine	(SawPirate,"START");
		HammerPirate.aivar[AIV_PARTYMEMBER] = false;
		Npc_ExchangeRoutine	(HammerPirate,"START");
		//-----------------------------------------	
		MIS_Henry_FreeBDTTower = LOG_SUCCESS;
		
		B_LogEntry (TOPIC_Addon_BanditsTower,"Bandyci w wie¿y nie ¿yj?");
		
		B_GivePlayerXP(XP_BONUS_2);
	}
	else if (MIS_Henry_FreeBDTTower == LOG_RUNNING)
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_07"); //Co teraz?
		B_Henry_WhereIsTower();
	}
	else
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_05"); //Tylko nie myœl, ¿eby pójœæ tam samemu!
		AI_Output (self ,other,"DIA_Addon_Henry_Turmbanditen_04_06"); //P?niej wyœl?tam dwóch ch³opaków z mojej grupy aborda¿owej. Oni poradz?sobie z bandytami.
		Knows_HenrysEntertrupp = true;
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
	permanent	= false;
	description	= "Dlaczego zostaliœcie zaatakowani przez bandytów?";
};                       
FUNC INT DIA_Addon_Henry_Palisade_Bandits_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Addon_Henry_Palisade_WhatFor))
	{
		return true;
	};	
};
func VOID DIA_Addon_Henry_Palisade_Bandits_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Palisade_Bandits_15_00"); //Dlaczego zostaliœcie zaatakowani przez bandytów?
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_04"); //A jak s¹dzisz? Wojujemy z nimi od jakiego?czasu.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_05"); //Na pocz¹tku wszystko by³o w porz¹dku. PrzywieŸliœmy ich tutaj, a oni odeszli w g³¹b bagien i nie niepokoili nas wiêcej.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_06"); //Niestety, p?niej zaczêli napada?na ka¿dego, kto nie nale¿a?do ich bandy.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_07"); //Nie mam pojêcia, co za demony ich opêta³y!
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_08"); //Myœl? ¿e chc?zabra?nasze ³odzie, bo to chyba jedyny sposób, by si?st¹d wyrwa?
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_09"); //Porozmawiaj ze Skipem. By?w ich obozie i omal nie przyp³aci?tego ¿yciem.
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_10"); //To bardzo ciekawa historia!
	if (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Bandits_04_11"); //Niestety, nie bêdziesz móg?jej wys³ucha? bo nie zap³aci³e?myta.
		Henry_Zoll_WhatFor = true;
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
	permanent	= true;
	description	= "Chc?do³¹czy?do waszej grupy aborda¿owej.";
};                       
FUNC INT DIA_Addon_Henry_Entercrew_Condition()
{
	if (Knows_HenrysEntertrupp == true)
	&& (Henry_EnterCrewMember == false)
	{
		return true;
	};	
};
FUNC VOID DIA_Addon_Henry_Entercrew_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Entercrew_15_00"); //Chc?do³¹czy?do waszej grupy aborda¿owej.
	
	if (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	{
		AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_00"); //Tym si?nie wykpisz, ch³opcze!
		AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_01"); //Najpierw musimy ustali? czy w ogóle zas³ugujesz na wpuszczenie ci?do obozu!
		Henry_Zoll_WhatFor = true;
	}
	else
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Entercrew_04_06"); //Witam w mojej grupie!
		AI_Output (self ,other,"DIA_Addon_Henry_Entercrew_04_07"); //Przyda nam si?dodatkowe rami? kiedy bêdziemy walczy?z bandytami.
		if (MIS_Henry_FreeBDTTower == LOG_SUCCESS)
		{
			AI_Output (self, other, "DIA_Addon_Henry_Entercrew_Add_04_02"); //Hmm... Jak powiedzia³em, we?jednego z ch³opców i wykurz bandziorów z wie¿y.
			AI_Output (self, other, "DIA_Addon_Henry_Entercrew_Add_04_03"); //Ale ju?to zrobi³e?
		}
		else 
		{
			if (Npc_IsDead(SawPirate))
			&& (Npc_IsDead(HammerPirate))
			{
				AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_04"); //Obaj moi ludzie nie ¿yj? Wygl¹da na to, ¿e bêdziesz musia?pójœæ tam sam.
				AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_05"); //Pozb¹d?si?bandytów z wie¿y!
				
				B_LogEntry (TOPIC_Addon_BanditsTower,"Henry chce, ¿ebym usun¹³ bandytów z wie¿y. Nie mo¿e jednak da?mi ¿adnego wsparcia.");
			}
			else
			{
				AI_Output (self ,other, "DIA_Addon_Henry_Entercrew_Add_04_06"); //We?jednego z moich ch³opców i pozb¹d?si?bandytów z wie¿y.
				Henry_GetPartyMember = true;
			
				B_LogEntry (TOPIC_Addon_BanditsTower,"Henry chce, ¿ebym usun¹³ bandytów z wie¿y. Mog?zabra?ze sob?jednego z jego ch³opaków.");
			};

			B_Henry_WhereIsTower();
			
			AI_Output (other,self ,"DIA_Addon_Henry_Entercrew_15_09"); //Tak jest!
	
			MIS_Henry_FreeBDTTower = LOG_RUNNING;
		};
		Henry_EnterCrewMember = true;
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

	description	= "Mog?wam jeszcze jako?pomóc?";
};
func int DIA_Addon_Henry_Owen_Condition ()
{
	if (MIS_Henry_FreeBDTTower == LOG_SUCCESS)
	&& (Henry_EnterCrewMember == true)
	&& (!Npc_IsDead (Malcom))
	{
		return true;
	};
};
func void DIA_Addon_Henry_Owen_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Owen_15_01"); //Mog?wam jeszcze jako?pomóc?
	AI_Output (self, other, "DIA_Addon_Henry_Owen_04_01"); //Od wielu dni czekamy na drewno potrzebne do budowy palisady.
	AI_Output (self, other, "DIA_Addon_Henry_Owen_04_05"); //Malcolm i Owen powinni byli dostarczy?je ju?dawno temu.
	if (!Npc_KnowsInfo (other, DIA_Addon_Henry_Malcom))
	{
		AI_Output (self, other, "DIA_Addon_Henry_Owen_04_06"); //Obóz drwali nie jest zbyt daleko - nad jeziorem le¿¹cym w kotlinie na po³udniowym wschodzie.
	}
	else
	{
		AI_Output (self, other, "DIA_Addon_Henry_Owen_04_07"); //Malcolm powiedzia? ¿e dostawa si?op?ni, ale my ju?czekamy ca³e wieki!
	};
	
	AI_Output (self, other, "DIA_Addon_Henry_Owen_04_08"); //Powiedz im, ¿e czekamy na drewno!
	AI_Output (self, other, "DIA_Addon_Henry_Owen_04_09"); //Nie, czekaj... Powiedz to Owenowi. Malcolm jest ma³o wiarygodny.
	
	
	B_MalcomExident();
	
	MIS_Henry_HolOwen = LOG_RUNNING;

	Log_CreateTopic (TOPIC_Addon_HolOwen,LOG_MISSION);
	Log_SetTopicStatus (TOPIC_Addon_HolOwen,LOG_RUNNING);
	B_LogEntry	(TOPIC_Addon_HolOwen,"Henry czeka przy palisadzie na drewno. Mam powiadomi?o tym Owena, który razem z Malcolmem przebywa w kotlinie.");  
};

// ------------------------------------------------------------
// 						Owen2 Report
// ------------------------------------------------------------
func void B_Addon_Henry_MalcomsDead()
{	
	AI_Output (self, other, "DIA_Addon_Henry_Owen2_Add_04_00"); //Co si?dzieje z Malcolmem?
	AI_Output (other, self, "DIA_Addon_Henry_Owen2_Add_15_01"); //Nie ¿yje.
	AI_Output (self, other, "DIA_Addon_Henry_Owen2_Add_04_02"); //Mia?nielichego pecha, co?
		
};
// ------------------------------------------------------------
instance DIA_Addon_Henry_Owen2		(C_INFO)
{
	npc		 	= 	PIR_1354_Addon_Henry;
	nr		 	= 	33;
	condition	= 	DIA_Addon_Henry_Owen2_Condition;
	information	= 	DIA_Addon_Henry_Owen2_Info;
	permanent	= 	true;
	description	= 	"Jeœli chodzi o drwala Owena...";
};
func int DIA_Addon_Henry_Owen2_Condition ()
{
	if (MIS_Henry_HolOwen == LOG_RUNNING)
	{
		return true;
	};
};
func void DIA_Addon_Henry_Owen2_Info ()
{
	AI_Output (other, self, "DIA_Addon_Henry_Owen2_15_00"); //Jeœli chodzi o drwala Owena...
	
	if ((Npc_IsDead(PIR_1367_Addon_Owen)) == true)
	{
		AI_Output (other, self, "DIA_Addon_Henry_Owen2_15_01"); //Nie ¿yje...
		AI_Output (self, other, "DIA_Addon_Henry_Owen2_04_02"); //Szlag by to trafi? Teraz bêd?musia?wys³a?kogo?innego.
		AI_Output (self, other, "DIA_Addon_Henry_Owen2_04_03"); //Chyba ju?pora, ¿eby Morgan ruszy?ty³ek i pozby?si?tych stworów.
		B_Addon_Henry_MalcomsDead();
		//AI_Output (self, other, "DIA_Addon_Henry_Owen2_Add_04_01"); //Was? Er auch? Verdammte Mistviecher!
		MIS_Henry_HolOwen = LOG_OBSOLETE;
	
		B_LogEntry	(TOPIC_Addon_HolOwen,"Owen i Malcom nie ¿yj?");	
		Log_SetTopicStatus (TOPIC_Addon_HolOwen,LOG_OBSOLETE);
	  
	}
	else if (Owen_ComesToHenry == true)
	{
		AI_Output (other, self, "DIA_Addon_Henry_Owen2_15_03"); //Owen dostarczy drewno.
		AI_Output (self, other, "DIA_Addon_Henry_Owen2_04_04"); //Doskonale. Czas ju?najwy¿szy.
		B_Addon_Henry_MalcomsDead();
		AI_Output (self, other, "DIA_Addon_Henry_Owen2_04_05"); //Oto twoja nagroda.
		B_GiveInvItems (self, other, ItMi_Gold, 200);
		B_StartOtherRoutine	(PIR_1367_Addon_Owen,"PostStart");
		
		
		B_LogEntry	(TOPIC_Addon_HolOwen,"Owen dostarczy drewno Henry'emu.");
		
		MIS_Henry_HolOwen = LOG_SUCCESS;
		
		B_GivePlayerXP(XP_BONUS_3);
	}
	else
	{
		AI_Output (other, self, "DIA_Addon_Henry_Owen2_15_06"); //Gdzie jest ten obóz?
		AI_Output (self, other, "DIA_Addon_Henry_Owen2_04_07"); //Kawa³ek na po³udniowy wschód, nieopodal kotliny.
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
	permanent	= true;
	description	= "Potrzebujesz pomocy?";
};                       
FUNC INT DIA_Addon_Henry_Palisade_CanHelp_Condition()
{
	if (MIS_Henry_HolOwen == LOG_SUCCESS)
	|| (MIS_Henry_HolOwen == LOG_OBSOLETE)
	{
		return true;
	};	
};
FUNC VOID DIA_Addon_Henry_Palisade_CanHelp_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Palisade_CanHelp_15_00"); //Potrzebujesz pomocy?
	if (Henry_PERM_Once == false)
	{
		AI_Output (self ,other,"DIA_Addon_Henry_Palisade_CanHelp_04_01"); //Masz jakie?doœwiadczenie w stawianiu palisad?
		AI_Output (other,self ,"DIA_Addon_Henry_Palisade_CanHelp_15_02"); //Niezbyt du¿e.
		AI_Output (self ,other,"DIA_Addon_Henry_Palisade_CanHelp_04_03"); //W takim razie nie mam dla ciebie ¿adnej pracy. Poszukaj sobie innego zajêcia.
		Henry_PERM_Once = true;
	};
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_CanHelp_04_04"); //Rób, co chcesz, tylko nie przeszkadzaj mi w pracy, jasne?
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
	permanent	= true;
	description	= "Mo¿esz mnie podszkoli?w walce?";
};                       
FUNC INT DIA_Addon_Henry_WhatTeach_Condition()
{
	if (Knows_HenrysEntertrupp == true)
	&& (self.aivar[AIV_CanTeach] == false)
	{
		return true;
	};	
};

FUNC VOID DIA_Addon_Henry_WhatTeach_Info()
{	
	AI_Output (other, self, "DIA_Addon_Henry_WhatTeach_Add_15_00"); //Mo¿esz mnie podszkoli?w walce?
	if (self.aivar[AIV_Guardpassage_Status] != GP_PassGate)
	{
		AI_Output (self ,other,"DIA_Addon_Henry_WhatTeach_Add_04_01"); //Najpierw obowi¹zek, potem przyjemnoœæ. Zrób co?po¿ytecznego, to ci?naucz?walczy?
		AI_Output (self ,other,"DIA_Addon_Henry_WhatTeach_Add_04_02"); //Wszystko jest wliczone w cen?
		Henry_Zoll_WhatFor = true;
	}
	else
	{
		AI_Output (self ,other,"DIA_Addon_Henry_WhatTeach_Add_04_03"); //Pewnie, czemu nie?
		self.aivar[AIV_CanTeach] = true;
		
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
	permanent	= false;
	description	= "Greg jest twoim szefem?";
};                       
FUNC INT DIA_Addon_Henry_Palisade_Train_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Addon_Henry_Palisade))
	&& (GregIsBack == false)
	{
		return true;
	};	
};
func VOID DIA_Addon_Henry_Palisade_Train_Info()
{	
	AI_Output (other,self ,"DIA_Addon_Henry_Palisade_Train_15_00"); //Greg jest twoim szefem?
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_01"); //Zgadza si? Ale dla ciebie to jest Kapitan Greg. Rozumiemy si?
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_02"); //To wielki cz³owiek. Kiedy go spotkasz, nawet nie myœl, by zrobi?co?g³upiego. Nie spodoba ci si?jego reakcja na takie zachowanie.
	
	if (PIR_1300_Addon_Greg_NW.aivar[AIV_TalkedToPlayer] == true)
	{
		AI_Output (other,self ,"DIA_Addon_Henry_Palisade_Train_15_03"); //Ju?z nim rozmawia³em.
		AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_04"); //W takim razie wiesz, o czym mówi?  
	};

	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_05"); //Niestety, nie ma go w tej chwili w obozie. 
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_06"); //Jego zastêpc?jest Francis. 
	AI_Output (self ,other,"DIA_Addon_Henry_Palisade_Train_04_07"); //Ca³ymi dniami siedzi przed chat?Grega i gapi si?na nas jak sroka w gnat.
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
	permanent	= false;
	important 	= true;
};                       
FUNC INT DIA_Addon_Henry_YourOwnTrupp_Condition()
{
	if (MIS_Addon_Greg_ClearCanyon == LOG_RUNNING)
	{
		return true;
	};	
};
func VOID DIA_Addon_Henry_YourOwnTrupp_Info()
{	
	AI_Output (self ,other,"DIA_Addon_Henry_Add_04_04"); //Kapitan powierzy?ci dowództwo nad grup?uderzeniow?
	AI_Output (self ,other,"DIA_Addon_Henry_Add_04_05"); //Ch³opakom przyda si?troch?pracy!
	AI_StopProcessInfos (self);
};
