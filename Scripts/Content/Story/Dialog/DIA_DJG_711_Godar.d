
//*********************************************************************
//	Info EXIT 
//*********************************************************************
INSTANCE DIA_Godar_EXIT   (C_INFO)
{
	npc         = DJG_711_Godar;
	nr          = 999;
	condition   = DIA_Godar_EXIT_Condition;
	information = DIA_Godar_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};

FUNC INT DIA_Godar_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Godar_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//*********************************************************************
//	Info Hello 
//*********************************************************************
INSTANCE DIA_Godar_Hello   (C_INFO)
{
	npc         = DJG_711_Godar;
	nr          = 4;
	condition   = DIA_Godar_Hello_Condition;
	information = DIA_Godar_Hello_Info;
	permanent   = FALSE;
	important 	= TRUE;
};

FUNC INT DIA_Godar_Hello_Condition()
{
	IF (Npc_IsInState (self,ZS_TALK))
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Godar_Hello_Info()
{
	AI_Output (self ,other,"DIA_Godar_Hello_13_00"); //Hê? Co?
};

//*********************************************************************
//	Wo kommt ihr überhaupt her? 
//*********************************************************************
INSTANCE DIA_Godar_ComeFrom   (C_INFO)
{
	npc         = DJG_711_Godar;
	nr          = 4;
	condition   = DIA_Godar_ComeFrom_Condition;
	information = DIA_Godar_ComeFrom_Info;
	permanent   = FALSE;
	description	= "Sk¹d pochodzisz?";
};

FUNC INT DIA_Godar_ComeFrom_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Godar_ComeFrom_Info()
{
	AI_Output (other,self ,"DIA_Godar_ComeFrom_15_00"); //Sk¹d pochodzisz?
	AI_Output (self ,other,"DIA_Godar_ComeFrom_13_01"); //Pochodzimy z... Eeem, z miasta.
	
	Info_ClearChoices (DIA_Godar_ComeFrom);
	Info_AddChoice (DIA_Godar_ComeFrom,"Jesteœcie bandytami!",DIA_Godar_ComeFrom_Bandits);
	Info_AddChoice (DIA_Godar_ComeFrom,"Dlaczego nigdy wczeœniej nie widzia³em ciê w mieœcie?",DIA_Godar_ComeFrom_NotCity);
	Info_AddChoice (DIA_Godar_ComeFrom,"Rozumiem. Z miasta.",DIA_Godar_ComeFrom_Understand);
};

FUNC VOID DIA_Godar_ComeFrom_Bandits ()
{
	AI_Output (other,self ,"DIA_Godar_ComeFrom_Bandits_15_00"); //Jesteœcie bandytami!
	AI_Output (self ,other,"DIA_Godar_ComeFrom_Bandits_13_01"); //Ostro¿nie! ¯ebyœ siê nie zad³awi³!
	
	Info_ClearChoices (DIA_Godar_ComeFrom);
	Info_AddChoice (DIA_Godar_ComeFrom,"Spokojnie, nie doniosê na ciebie.",DIA_Godar_ComeFrom_Bandits_KeepCalm);
	Info_AddChoice (DIA_Godar_ComeFrom,"Nie przestraszysz mnie.",DIA_Godar_ComeFrom_Bandits_NoFear);
};

FUNC VOID DIA_Godar_ComeFrom_Bandits_KeepCalm ()
{
	AI_Output (other,self ,"DIA_Godar_ComeFrom_Bandits_KeepCalm_15_00"); //Spokojnie, nie doniosê na ciebie.
	AI_Output (self ,other,"DIA_Godar_ComeFrom_Bandits_KeepCalm_13_01"); //Mam nadziejê, dla twojego w³asnego dobra. Inaczej zginiesz.
	
	Info_ClearChoices (DIA_Godar_ComeFrom);
};

FUNC VOID DIA_Godar_ComeFrom_Bandits_NoFear ()
{
	AI_Output (other,self ,"DIA_Godar_ComeFrom_Bandits_NoFear_15_00"); //Nie przestraszysz mnie.
	AI_Output (self ,other,"DIA_Godar_ComeFrom_Bandits_NoFear_13_01"); //To siê jeszcze oka¿e.
	
	AI_StopProcessInfos (self);
	B_Attack (self,other,AR_NONE, 1);
};

FUNC VOID DIA_Godar_ComeFrom_NotCity ()
{
	AI_Output (other,self ,"DIA_Godar_ComeFrom_NotCity_15_00"); //Nigdy wczeœniej nie widzia³em ciê w mieœcie.
	AI_Output (self ,other,"DIA_Godar_ComeFrom_NotCity_13_01"); //Nie znoszê, jak ktoœ za bardzo siê interesuje cudzymi sprawami.
	
	Info_ClearChoices (DIA_Godar_ComeFrom);
	Info_AddChoice (DIA_Godar_ComeFrom,"Nie.",DIA_Godar_ComeFrom_NotCity_CutThroat);
	Info_AddChoice (DIA_Godar_ComeFrom,"Ach tak, z miasta.",DIA_Godar_ComeFrom_NotCity_Forget);
};

FUNC VOID DIA_Godar_ComeFrom_NotCity_Forget ()
{
	AI_Output (other,self ,"DIA_Godar_ComeFrom_NotCity_Forget_15_00"); //Ach tak, z miasta.
	AI_Output (self ,other,"DIA_Godar_ComeFrom_NotCity_Forget_13_01"); //W³aœnie tak.

	Info_ClearChoices (DIA_Godar_ComeFrom);
};

FUNC VOID DIA_Godar_ComeFrom_NotCity_CutThroat ()
{
	AI_Output (other,self ,"DIA_Godar_ComeFrom_NotCity_CutThroat_15_00"); //Nie.
	AI_Output (self ,other,"DIA_Godar_ComeFrom_NotCity_CutThroat_13_01"); //Wiêc bêdê musia³ spuœciæ wam lanie.
	
	AI_StopProcessInfos (self);
	B_Attack (self,other,AR_NONE, 1);
};

FUNC VOID DIA_Godar_ComeFrom_Understand ()
{
	AI_Output (other,self ,"DIA_Godar_ComeFrom_Understand_15_00"); //Rozumiem. Z miasta.
	AI_Output (self ,other,"DIA_Godar_ComeFrom_Understand_13_01"); //No widzisz!
	AI_Output (self ,other,"DIA_Godar_ComeFrom_Understand_13_02"); //Masz, ³yknij sobie.
	
	CreateInvItems (self,ItFo_Beer,1);
	B_GiveInvItems (self,other,ItFo_Beer,1);
	B_UseItem (other,ItFo_Beer);
	Info_ClearChoices (DIA_Godar_ComeFrom);
};

//*********************************************************************
//	Was macht ihr hier? 
//*********************************************************************
INSTANCE DIA_Godar_Plan   (C_INFO)
{
	npc         = DJG_711_Godar;
	nr          = 5;
	condition   = DIA_Godar_Plan_Condition;
	information = DIA_Godar_Plan_Info;
	permanent   = FALSE;
	description	= "Co tu porabiasz?";
};

FUNC INT DIA_Godar_Plan_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Godar_Plan_Info()
{
	AI_Output (other,self ,"DIA_Godar_Plan_15_00"); //Co tu porabiasz?
	AI_Output (self ,other,"DIA_Godar_Plan_13_01"); //S³yszeliœmy o polowaniu na smoki. Wiêc spakowaliœmy nasz dobytek i czym prêdzej tu przybyliœmy.
	AI_Output (self ,other,"DIA_Godar_Plan_13_02"); //Ale jeœli mam byæ szczery, to smoki nic mnie nie obchodz¹. Chcê tylko zarobiæ.
	AI_Output (self ,other,"DIA_Godar_Plan_13_03"); //Smoki maj¹ z³oto, prawda?
	AI_Output (other,self ,"DIA_Godar_Plan_15_04"); //Z pewnoœci¹.
};

//*********************************************************************
//	Wisst ihr was über die Drachen? 
//*********************************************************************
INSTANCE DIA_Godar_DragonLore   (C_INFO)
{
	npc         = DJG_711_Godar;
	nr          = 5;
	condition   = DIA_Godar_DragonLore_Condition;
	information = DIA_Godar_DragonLore_Info;
	permanent   = FALSE;
	description	= "Co wiesz na temat smoków?";
};

FUNC INT DIA_Godar_DragonLore_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Godar_Plan))
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Godar_DragonLore_Info()
{
	AI_Output (other,self ,"DIA_Godar_DragonLore_15_00"); //Co wiesz na temat smoków?
	AI_Output (self ,other,"DIA_Godar_DragonLore_13_01"); //Znam jedynie bajki, opowiadane dzieciom.
	AI_Output (self ,other,"DIA_Godar_DragonLore_13_02"); //Wiesz, dziewice, z³oto, zianie ogniem, te sprawy.
};

//*********************************************************************
//	Wo wollt ihr hin?
//*********************************************************************
INSTANCE DIA_Godar_Destination   (C_INFO)
{
	npc         = DJG_711_Godar;
	nr          = 5;
	condition   = DIA_Godar_Destination_Condition;
	information = DIA_Godar_Destination_Info;
	permanent   = FALSE;
	description	= "Dok¹d zamierzasz siê teraz udaæ?";
};

FUNC INT DIA_Godar_Destination_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Godar_Plan))
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Godar_Destination_Info()
{
	AI_Output (other,self ,"DIA_Godar_Destination_15_00"); //Dok¹d zamierzasz siê teraz udaæ?
	AI_Output (self ,other,"DIA_Godar_Destination_13_01"); //Nie mam pojêcia. Ci¹gle siê jeszcze zastanawiamy.
	
	if ((hero.guild != GIL_MIL) && (hero.guild != GIL_PAL))
		{
			AI_Output (other,self ,"DIA_Godar_Destination_15_02"); //Móg³byœ udaæ siê do zamku.
			AI_Output (self ,other,"DIA_Godar_Destination_13_03"); //Za nic w œwiecie. Nie do paladynów.
			AI_Output (self ,other,"DIA_Godar_Destination_13_04"); //Nie zamierzam wyl¹dowaæ z powrotem w wiêzieniu. Ju¿ raz tam by³em, i wystarczy.
		};
};

//*********************************************************************
//	Was ist mit den Orks?
//*********************************************************************
INSTANCE DIA_Godar_Orks   (C_INFO)
{
	npc         = DJG_711_Godar;
	nr          = 5;
	condition   = DIA_Godar_Orks_Condition;
	information = DIA_Godar_Orks_Info;
	permanent   = FALSE;
	description	= "A co z orkami?";
};

FUNC INT DIA_Godar_Orks_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Godar_Destination))
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Godar_Orks_Info()
{
	AI_Output (other,self ,"DIA_Godar_Orks_15_00"); //A co z orkami?
	AI_Output (self ,other,"DIA_Godar_Orks_13_01"); //Ca³y zamek jest otoczony.
	AI_Output (self ,other,"DIA_Godar_Orks_13_02"); //Próba przedarcia siê to szaleñstwo. Wdaj siê w walkê, a ju¿ po tobie.
	AI_Output (self ,other,"DIA_Godar_Orks_13_03"); //Nikt siê tam nie przedostanie.
	AI_Output (other,self ,"DIA_Godar_Orks_15_04"); //Doprawdy?
};

//*********************************************************************
//	Weswegen warst du im Knast?
//*********************************************************************
INSTANCE DIA_Godar_Prison   (C_INFO)
{
	npc         = DJG_711_Godar;
	nr          = 5;
	condition   = DIA_Godar_Prison_Condition;
	information = DIA_Godar_Prison_Info;
	permanent   = FALSE;
	description	= "Za co siedzia³eœ w wiêzieniu?";
};

FUNC INT DIA_Godar_Prison_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Godar_Destination))
	&& ((hero.guild != GIL_MIL) && (hero.guild != GIL_PAL))
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Godar_Prison_Info()
{
	AI_Output (other,self ,"DIA_Godar_Prison_15_00"); //Za co siedzia³eœ w wiêzieniu?

	if (hero.guild == GIL_KDF)
		{
			AI_Output (self ,other,"DIA_Godar_Prison_13_01"); //Akurat ci powiem. Niedoczekanie twoje.
			AI_Output (self ,other,"DIA_Godar_Prison_13_02"); //Wy, magowie, macie jakieœ konszachty z paladynami. Nic wiêcej nie powiem. Zapomnij o ca³ej sprawie.
		}
	else
		{		
			AI_Output (self ,other,"DIA_Godar_Prison_13_03"); //Zosta³em aresztowany za k³usownictwo. Za dwa nêdzne króliki!
			AI_Output (self ,other,"DIA_Godar_Prison_13_04"); //Dosta³em za to 10 lat.
			AI_Output (other,self ,"DIA_Godar_Prison_15_05"); //I to wszystko?
			AI_Output (self ,other,"DIA_Godar_Prison_13_06"); //No... nie, broni³em siê, kiedy mnie schwytali.
			AI_Output (other,self ,"DIA_Godar_Prison_15_07"); //I?
			AI_Output (self ,other,"DIA_Godar_Prison_13_08"); //Nic na to nie mog³em poradziæ, ten facet siê potkn¹³ i sam skrêci³ sobie kark. Naprawdê!
			
			Info_ClearChoices (DIA_Godar_Prison);
			Info_AddChoice (DIA_Godar_Prison,"Sk¹d ja to znam?",DIA_Godar_Prison_Court);
			Info_AddChoice (DIA_Godar_Prison,"Nie powinieneœ by³ pozwoliæ, aby ciê z³apali.",DIA_Godar_Prison_Pissoff);
		};
};

FUNC VOID DIA_Godar_Prison_Court ()
{
	AI_Output (other,self ,"DIA_Godar_Prison_Court_15_00"); //Brzmi znajomo.
	AI_Output (self ,other,"DIA_Godar_Prison_Court_13_01"); //Rozumiesz, o czym mówiê. Te bogate œwinie nie maj¹ w ogóle pojêcia o tym, jak jesteœmy traktowani.
	AI_Output (self ,other,"DIA_Godar_Prison_Court_13_02"); //W ogóle siê tym nie przejmuj¹.
	
	Info_ClearChoices (DIA_Godar_Prison);
	GodarLikesYou = TRUE;
};

FUNC VOID DIA_Godar_Prison_Pissoff ()
{
	AI_Output (other,self ,"DIA_Godar_Prison_Pissoff_15_00"); //Nie powinieneœ by³ pozwoliæ, aby ciê z³apali.
	AI_Output (self ,other,"DIA_Godar_Prison_Pissoff_13_01"); //Za³o¿ê siê, ¿e ty nigdy nie by³eœ w wiêzieniu, co?
	AI_Output (self ,other,"DIA_Godar_Prison_Pissoff_13_02"); //Pozwól wiêc, ¿e poka¿ê ci, co mo¿e ciê spotkaæ w pierdlu.
	
	AI_StopProcessInfos (self);
	B_Attack (self,other,AR_NONE, 1);
};

//*********************************************************************
//	Kannst du mir beibringen wie man jagt?
//*********************************************************************
INSTANCE DIA_Godar_Hunting   (C_INFO)
{
	npc         = DJG_711_Godar;
	nr          = 5;
	condition   = DIA_Godar_Hunting_Condition;
	information = DIA_Godar_Hunting_Info;
	permanent   = FALSE;
	description	= "Mo¿esz mnie nauczyæ polowaæ?";
};

FUNC INT DIA_Godar_Hunting_Condition()
{
	if (Npc_KnowsInfo (other,DIA_Godar_Prison))
	&& ((hero.guild != GIL_MIL) && (hero.guild != GIL_PAL) && (hero.guild != GIL_KDF))
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Godar_Hunting_Info()
{
	AI_Output (other,self ,"DIA_Godar_Hunting_15_00"); //Mo¿esz mnie nauczyæ polowaæ?
	if (GodarLikesYou == FALSE)
	{
		AI_Output (self ,other,"DIA_Godar_Hunting_13_01"); //Chyba nie mówisz powa¿nie, co? Spadaj st¹d!
		AI_StopProcessInfos (self);
	}
	else
	{
		AI_Output (self ,other,"DIA_Godar_Hunting_13_03"); //Zwierzê to znacznie wiêcej ni¿ tylko miêso. Jeœli sprzedasz jego skórê lub pazury, mo¿esz na tym sporo zarobiæ.
		AI_Output (self ,other,"DIA_Godar_Hunting_13_04"); //Ju¿ siê nie mogê doczekaæ, a¿ dorwê jakiegoœ smoka.
		
		Godar_TeachAnimalTrophy = TRUE;
	};	
};

//*********************************************************************
// 	Dragonstuff
//*********************************************************************
INSTANCE DIA_Godar_Dragonstuff   (C_INFO)
{
	npc         = DJG_711_Godar;
	nr          = 5;
	condition   = DIA_Godar_Dragonstuff_Condition;
	information = DIA_Godar_Dragonstuff_Info;
	permanent   = TRUE;
	description	= "Poka¿ mi, jak siê patroszy smoka.";
};
var int Godar_TeachDragonStuff;
FUNC INT DIA_Godar_Dragonstuff_Condition()
{
	if (Godar_TeachAnimalTrophy == TRUE)
	&& ((hero.guild != GIL_MIL) && (hero.guild != GIL_PAL))
	&& (Godar_TeachDragonStuff == FALSE)
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Godar_Dragonstuff_Info()
{
	AI_Output (other,self ,"DIA_Godar_Dragonstuff_15_00"); //Poka¿ mi, jak siê patroszy smoka.
	
	AI_Output (self,other ,"DIA_Godar_Dragonstuff_13_01"); //¯ebyœ móg³ zgarn¹æ ca³¹ kasê dla siebie, co?
	
	AI_Output (self,other ,"DIA_Godar_Dragonstuff_13_02"); //No dobrze, ale to ciê bêdzie kosztowa³o 1000 sztuk z³ota.

	Info_ClearChoices	(DIA_Godar_Dragonstuff);	
	Info_AddChoice	(DIA_Godar_Dragonstuff, "Ta wiedza nie jest dla mnie tyle warta.", DIA_Godar_Dragonstuff_nein );
	Info_AddChoice	(DIA_Godar_Dragonstuff, "W porz¹dku.", DIA_Godar_Dragonstuff_fair );

};
func void DIA_Godar_Dragonstuff_fair ()
{
	AI_Output			(other, self, "DIA_Godar_Dragonstuff_fair_15_00"); //W porz¹dku.

		if (B_GiveInvItems (other, self, ItMi_Gold,1000))
		{
			Godar_TeachDragonStuff = TRUE;
			self.aivar[AIV_CanOffer] = self.aivar[AIV_CanOffer] | OFFER_Teaching;
		}
		else
		{
			AI_Output			(self, other, "DIA_Godar_Dragonstuff_fair_13_01"); //Nie do koñca. Najpierw przynieœ mi pieni¹dze.
		};
	Info_ClearChoices	(DIA_Godar_Dragonstuff);	
};

func void DIA_Godar_Dragonstuff_nein ()
{
	AI_Output			(other, self, "DIA_Godar_Dragonstuff_nein_15_00"); //Ta wiedza nie jest dla mnie tyle warta.
	AI_Output			(self, other, "DIA_Godar_Dragonstuff_nein_13_01"); //Bardzo proszê.
	Info_ClearChoices	(DIA_Godar_Dragonstuff);	

};

//*********************************************************************
//	AllDragonsDead 
//*********************************************************************
INSTANCE DIA_Godar_AllDragonsDead   (C_INFO)
{
	npc         = DJG_711_Godar;
	nr          = 5;
	condition   = DIA_Godar_AllDragonsDead_Condition;
	information = DIA_Godar_AllDragonsDead_Info;
	permanent   = FALSE;
	description	= "Zabi³em wszystkie smoki.";
				
};

FUNC INT DIA_Godar_AllDragonsDead_Condition()
{
	if (MIS_AllDragonsDead == TRUE)
	{
		return TRUE;
	};	
};

FUNC VOID DIA_Godar_AllDragonsDead_Info()
{
	AI_Output	(other,self ,"DIA_Godar_AllDragonsDead_15_00"); //Zabi³em wszystkie smoki.
	AI_Output 	(self ,other,"DIA_Godar_AllDragonsDead_13_01"); //I co z tego? Tu w dolinie jest ich ca³y czas pod dostatkiem.
};
