///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Borka_EXIT   (C_INFO)
{
	npc         = VLK_434_Borka;
	nr          = 999;
	condition   = DIA_Borka_EXIT_Condition;
	information = DIA_Borka_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_Borka_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Borka_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info PISSOF
///////////////////////////////////////////////////////////////////////
instance DIA_Borka_PISSOFF		(C_INFO)
{
	npc			 = 	VLK_434_Borka;
	condition	 = 	DIA_Borka_PISSOFF_Condition;
	information	 = 	DIA_Borka_PISSOFF_Info;
	important	 = 	true;
	permanent	 =  false;
};
func int DIA_Borka_PISSOFF_Condition ()
{
	if (Knows_Borka_Dealer != true)
	&& (Npc_GetDistToNpc(self, other) <= ZivilAnquatschDist)
	{
		return true;
	};
};
func void DIA_Borka_PISSOFF_Info ()
{
	AI_Output (self, other,"DIA_Borka_PISSOFF_11_00");  //Ej, ty! Gdzie idziesz? Niewa�ne, co zamierzasz - zd��ysz zrobi� to p�niej.
	AI_Output (self, other,"DIA_Borka_PISSOFF_11_01");  //Stoisz przed klejnotem Khorinis - CZERWON� LATARNI�. To najcudowniejszy zamtuz w ca�ej Myrtanie, do diaska!
	AI_Output (self, other,"DIA_Borka_PISSOFF_11_02");  //Zawijaj� tu �eglarze z najdalszych kra�c�w �wiata, tylko po to, �eby sp�dzi� kilka nocy pod Czerwon� Latarni�.
	AI_Output (self, other,"DIA_Borka_PISSOFF_11_03");  //A teraz ty masz okazj� - nie, zaszczyt - sp�dzi� noc z Nadi�, najbardziej nami�tnym kwiatem stworzonym przez bog�w!
	AI_Output (self, other,"DIA_Borka_PISSOFF_11_04");  //Wejd�, a zaznasz czego�, o czym inni nawet nie �nili!
	
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info TROUBLE
///////////////////////////////////////////////////////////////////////
instance DIA_Borka_TROUBLE		(C_INFO)
{
	npc			 = 	VLK_434_Borka;
	nr 			 =  3;
	condition	 = 	DIA_Borka_TROUBLE_Condition;
	information	 = 	DIA_Borka_TROUBLE_Info;
	permanent	 =  true;
	important	 =  true;
};

func int DIA_Borka_TROUBLE_Condition ()
{	
	if Npc_IsInState (self, ZS_Talk)
	&& (MIS_Andre_REDLIGHT != LOG_RUNNING) 
	&& (Npc_IsDead (Nadja) == false) 
	&& (Npc_GetDistToWP (self, "NW_CITY_HABOUR_PUFF_ENTRANCE") <= 500)
	{	
		return true;
	};
};
func void DIA_Borka_TROUBLE_Info ()
{
	AI_Output (self, other, "DIA_Borka_TROUBLE_11_00"); //Dlaczego tam tak stoisz? Wejd� i spotkaj si� z nasz� nami�tn� Nadi�.
	AI_Output (self, other, "DIA_Borka_TROUBLE_11_01"); //Ta rozpalona kr�lowa nocy nada nowe znaczenie twojemu �yciu!
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info Smoke
///////////////////////////////////////////////////////////////////////
instance DIA_Borka_Smoke		(C_INFO)
{
	npc			 = 	VLK_434_Borka;
	nr 			 =  3;
	condition	 = 	DIA_Borka_Smoke_Condition;
	information	 = 	DIA_Borka_Smoke_Info;
	permanent	 =  true;
	description	 =  "Nie wiesz, gdzie m�g�bym kupi� troch� ziela?";
};

func int DIA_Borka_Smoke_Condition ()
{	
	if  (MIS_Andre_REDLIGHT == LOG_RUNNING) 
	&&  (Knows_Borka_Dealer == false)
	{	
		return true;
	};
};
func void DIA_Borka_Smoke_Info ()
{
	AI_Output (other, self, "DIA_Borka_Smoke_15_00"); //Nie wiesz, gdzie m�g�bym kupi� troch� ziela?
	AI_Output (self, other, "DIA_Borka_Smoke_11_01"); //Nie. Zje�d�aj!
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info BUYHERB
///////////////////////////////////////////////////////////////////////
instance DIA_Borka_BUYHERB		(C_INFO)
{
	npc			 = 	VLK_434_Borka;
	nr			 = 	2;
	condition	 = 	DIA_Borka_BUYHERB_Condition;
	information	 = 	DIA_Borka_BUYHERB_Info;
	permanent 	 =  true;
	description	 = 	"S�ysza�em, �e sprzedajesz ziele.";
};
func int DIA_Borka_BUYHERB_Condition ()
{
	if (Knows_Borka_Dealer == true)
	&& (MIS_Andre_REDLIGHT == LOG_RUNNING) 
	&& (Borka_Deal == false)
	&& (Undercover_Failed == false)
	{
		return true;
	};
};
func void DIA_Borka_BUYHERB_Info ()
{
	var C_ITEM heroArmor; heroArmor = Npc_GetEquippedArmor(other);
	
	AI_Output (other, self, "DIA_Borka_BUYHERB_15_00"); //S�ysza�em, �e sprzedajesz ziele.
	
	if (Hlp_IsItem (heroArmor, ItAR_MIl_L) == true)
	|| (Hlp_IsItem (heroArmor, ItAR_MIl_M) == true)
	|| (Hlp_IsItem (heroArmor, ItAR_MIl_H) == true)
	|| (Hlp_IsItem (heroArmor, ItAR_MIl_N) == true)
	{
		AI_Output (self, other, "DIA_Borka_BUYHERB_11_01"); //Przepraszam, panie Stra�niku. To jaka� pomy�ka. Ja nic nie wiem o zielu.
	}
	else
	{
		AI_Output (self, other, "DIA_Borka_BUYHERB_11_02"); //Kto tak powiedzia�?
	
		Info_ClearChoices 	(DIA_Borka_BUYHERB);
		Info_AddChoice		(DIA_Borka_BUYHERB,"To nieistotne.",DIA_Borka_BUYHERB_Egal);
		Info_AddChoice		(DIA_Borka_BUYHERB,"Tak m�wi Nadja.",DIA_Borka_BUYHERB_Nadja);
	};
};
FUNC VOID DIA_Borka_BUYHERB_Egal ()
{
	AI_Output	(other, self, "DIA_Borka_BUYHERB_Egal_15_00"); //To nieistotne.
	AI_Output	(self, other, "DIA_Borka_BUYHERB_Egal_11_01"); //Chc� si� po prostu upewni�, kto ci� przys�a�.
	
	Info_ClearChoices 	(DIA_Borka_BUYHERB);
	Info_AddChoice		(DIA_Borka_BUYHERB,"Tak m�wi Nadja.",DIA_Borka_BUYHERB_Nadja);
	Info_AddChoice		(DIA_Borka_BUYHERB,"No to chcesz dobi� targu, czy nie?",DIA_Borka_BUYHERB_Deal);
};
FUNC VOID DIA_Borka_BUYHERB_NADJA ()
{
	AI_Output (other, self, "DIA_Borka_BUYHERB_NADJA_15_00"); //Tak m�wi Nadja.
	AI_Output (self, other, "DIA_Borka_BUYHERB_NADJA_11_01"); //No prosz�, ma�y ptaszek za�piewa�. Wiesz co, nie powiniene� wierzy� we wszystko, co ta dziewka wygaduje.
	
	Nadja_Victim = true; 
	Undercover_Failed = true;
	Info_ClearChoices 	(DIA_Borka_BUYHERB);
};
FUNC VOID DIA_Borka_BUYHERB_Deal ()
{
	AI_Output (other, self, "DIA_Borka_BUYHERB_Deal_15_00"); //No to chcesz dobi� targu, czy nie?
	AI_PlayAni (self, "T_SEARCH");
	AI_Output (self, other, "DIA_Borka_BUYHERB_Deal_11_01"); //...w porz�dku... dogadajmy si�. Ty dajesz mi 50 sztuk z�ota, wtedy ja ci daj� ziele. Bez targowania si�.
	Info_ClearChoices 	(DIA_Borka_BUYHERB);
	Borka_Deal = true;
};	
///////////////////////////////////////////////////////////////////////
//	Info SECOND_CHANCE
///////////////////////////////////////////////////////////////////////
instance DIA_Borka_SECOND_CHANCE		(C_INFO)
{
	npc			 = 	VLK_434_Borka;
	nr			 = 	2;
	condition	 = 	DIA_Borka_SECOND_CHANCE_Condition;
	information	 = 	DIA_Borka_SECOND_CHANCE_Info;
	permanent	 =  true;  	
	description	 = 	"Dogadajmy si� (zap�a� 50 sztuk z�ota).";
};
func int DIA_Borka_SECOND_CHANCE_Condition ()
{	
	var C_ITEM heroArmor; heroArmor = Npc_GetEquippedArmor(other);
	
	if 	(Borka_Deal == true)
	&&  (Npc_HasItems (other, ItmI_Gold) >= 50)
	&&  (Hlp_IsItem (heroArmor, ItAR_MIl_L) == false)
	&&  (Hlp_IsItem (heroArmor, ItAR_MIl_M) == false)
	&&  (Hlp_IsItem (heroArmor, ItAR_MIl_H) == false)
	&&  (Hlp_IsItem (heroArmor, ItAR_MIl_N) == false)
	{
		return true;
	};
};
func void DIA_Borka_SECOND_CHANCE_Info ()
{
	AI_Output (other, self, "DIA_Borka_SECOND_CHANCE_15_00"); //Dobijmy targu. Tu mam z�oto.
	B_GiveInvItems (hero, self, ItMi_Gold, 50);
	AI_Output (self, other, "DIA_Borka_SECOND_CHANCE_11_01"); //W porz�dku...
	AI_PlayAni (self, "T_SEARCH");
	AI_Output (self, other, "DIA_Borka_SECOND_CHANCE_11_02"); //...oto �wie�a soczysta �odyga ziela.
	B_GiveInvItems (self, hero, ItMi_Joint, 1);
	Borka_Deal = 2;
	AI_StopProcessInfos (self);
};
