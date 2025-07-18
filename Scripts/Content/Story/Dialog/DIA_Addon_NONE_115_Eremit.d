// ********************************************************
// 							EXIT 
// ********************************************************
INSTANCE DIA_Addon_Eremit_EXIT   (C_INFO)
{
	npc         = NONE_ADDON_115_Eremit;
	nr          = 999;
	condition   = DIA_Addon_Eremit_EXIT_Condition;
	information = DIA_Addon_Eremit_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};
func INT DIA_Addon_Eremit_EXIT_Condition()
{
	return TRUE;
};
FUNC VOID DIA_Addon_Eremit_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

// ********************************************************
// 							Hallo 
// ********************************************************
instance DIA_Addon_Eremit_Hello (C_INFO)
{
	npc		 	= NONE_ADDON_115_Eremit;
	nr		 	= 1;
	condition	= DIA_Addon_Eremit_Hello_Condition;
	information	= DIA_Addon_Eremit_Hello_Info;

	important	= TRUE;
};
func int DIA_Addon_Eremit_Hello_Condition ()
{
	if (Npc_IsInState (self, ZS_Talk))
	&& (self.aivar[AIV_TalkedToPlayer] == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Addon_Eremit_Hello_Info ()
{
	AI_Output (other, self, "DIA_Addon_Eremit_Add_15_00"); //Co tutaj robisz?
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_00"); //Co ja tutaj robi�?! Do diab�a! Co TY tutaj robisz?
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_01"); //Osiedli�em si� w najbardziej odosobnionej cz�ci wyspy, poniewa� potrzebowa�em troch� spokoju!
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_02"); //Wojna domowa, nachalni bandyci, hordy ork�w u progu mego domu...
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_03"); //To nie dla mnie. Ju� nie. Mia�em do�� tego ca�ego szale�stwa.
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_04"); //Jest tu troch� ork�w, ale wcale nie tak du�o.
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_05"); //A innych ludzi � chwa�a niech b�dzie Innosowi � ani widu, ani s�ychu. A� do dzisiaj!
};

// ********************************************************
// 					Suche Steintafeln
// ********************************************************
instance DIA_Addon_Eremit_SeekTafeln (C_INFO)
{
	npc		 	= NONE_ADDON_115_Eremit;
	nr		 	= 2;
	condition	= DIA_Addon_Eremit_SeekTafeln_Condition;
	information	= DIA_Addon_Eremit_SeekTafeln_Info;

	description	= "Szukam kamiennych tabliczek.";
};
func int DIA_Addon_Eremit_SeekTafeln_Condition ()
{
	return TRUE;
};
func void DIA_Addon_Eremit_SeekTafeln_Info ()
{
	AI_Output (other, self, "DIA_Addon_Eremit_Add_15_02"); //Szukam kamiennych tabliczek. Nie znalaz�e� mo�e jakich�?
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_06"); //No c�, znalaz�em... Ale nie oddam ci!
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_07"); //To jedyne, co mam tu do czytania.
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_08"); //Nie rozumiem jeszcze wszystkiego, ale potrafi� rozszyfrowa� wi�kszo�� z nich.
};

// ********************************************************
// 				Wegen Steintafeln - TEACH
// ********************************************************
var int Eremit_Teach_Once;
// --------------------------------------------------------
instance DIA_Addon_Eremit_Teach (C_INFO)
{
	npc		 	= NONE_ADDON_115_Eremit;
	nr		 	= 3;
	condition	= DIA_Addon_Eremit_Teach_Condition;
	information	= DIA_Addon_Eremit_Teach_Info;
	permanent 	= TRUE;
	description = "Je�li chodzi o te kamienne tablice...";
};
func int DIA_Addon_Eremit_Teach_Condition ()
{
	if (Npc_KnowsInfo(other, DIA_Addon_Eremit_SeekTafeln))
	&& (!Eremit_Teach_Once)
	&& (Npc_GetTalentSkill(other, NPC_TALENT_LANGUAGE) == false)
	{
		return TRUE;
	};
};
func void DIA_Addon_Eremit_Teach_Info ()
{
	AI_Output (other, self, "DIA_Addon_Eremit_Add_15_03"); //Je�li chodzi o te kamienne tablice...
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_25"); //Mam ci pokaza�, jak je odczytywa�?
	if (MIS_Eremit_Klamotten != LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_26"); //Ale nie oddam ci moich! Musisz za�atwi� sobie w�asne.
	};

	Info_ClearChoices (DIA_Addon_Eremit_Teach);
	Info_AddChoice (DIA_Addon_Eremit_Teach, DIALOG_BACK, DIA_Addon_Eremit_Teach_No);
	if (Npc_GetTalentSkill(other, NPC_TALENT_LANGUAGE) == false)
	{
		Info_AddChoice (DIA_Addon_Eremit_Teach, B_BuildLearnString(PRINT_LearnLanguage , B_GetLearnCostTalent(other, NPC_TALENT_LANGUAGE, 1), GOLD_PER_LP),DIA_Addon_Eremit_Teach_Yes);
	};
};

func void DIA_Addon_Eremit_Teach_No()
{
	Info_ClearChoices(DIA_Addon_Eremit_Teach);
};

func void DIA_Addon_Eremit_Teach_Yes()
{
	if (B_TeachTalent(self, other, NPC_TALENT_LANGUAGE, 1, GOLD_PER_LP))
	{
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_27"); //To naprawd� bardzo proste. 'G' oznacza 'O', 'T' oznacza 'H', a 'I' to 'C'.
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_28"); //Kiedy to opanujesz, reszta przyjdzie z �atwo�ci�...
		Eremit_Teach_Once = TRUE;
	};
};

// ********************************************************
// 					Klamotten geben
// ********************************************************
instance DIA_Addon_Eremit_Klamotten (C_INFO)
{
	npc		 	= NONE_ADDON_115_Eremit;
	nr		 	= 4;
	condition	= DIA_Addon_Eremit_Klamotten_Condition;
	information	= DIA_Addon_Eremit_Klamotten_Info;
	permanent 	= TRUE;
	description = "Mam dla ciebie jakie� ubranie...";
};
func int DIA_Addon_Eremit_Klamotten_Condition ()
{
	if (MIS_Eremit_Klamotten == LOG_RUNNING)
	{
		return TRUE;
	};
};
func void DIA_Addon_Eremit_Klamotten_Info ()
{
	AI_Output (other, self, "DIA_Addon_Eremit_Add_15_01"); //Mam dla ciebie jakie� ubranie...
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_19"); //Serio? Dawaj! Zobaczymy, czy pasuje.
	
	Info_ClearChoices (DIA_Addon_Eremit_Klamotten);
	Info_AddChoice (DIA_Addon_Eremit_Klamotten, DIALOG_BACK, DIA_Addon_Eremit_Klamotten_BACK);
	if (Npc_HasItems (other, ITAR_PIR_L) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj lekk� zbroj� pirat�w", DIA_Addon_Eremit_Klamotten_PIR_L);
	};
	if (Npc_HasItems (other, ITAR_PIR_M) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj �redni� zbroj� pirat�w", DIA_Addon_Eremit_Klamotten_PIR_M);
	};
	if (Npc_HasItems (other, ITAR_PIR_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj zbroj� kapitana pirat�w", DIA_Addon_Eremit_Klamotten_PIR_H);
	};
	//if (Npc_HasItems (other, ITAR_GRD_H) > 0)
	//{
	//	Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj ci�k� zbroj� stra�nika", DIA_Addon_Eremit_Klamotten_Thorus);
	//};
	//if (Npc_HasItems (other, ITAR_EBR_M) > 0)
	//{
	//	Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj pancerz magnata", DIA_Addon_Eremit_Klamotten_OreBaron);
	//};
	//if (Npc_HasItems (other, ITAR_GRD_M) > 0)
	//{
	//	Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj �redni� zbroj� stra�nika", DIA_Addon_Eremit_Klamotten_Bloodwyn);
	//};
	//if (Npc_HasItems (other, ITAR_RVN_H) > 0)
	//{
	//	Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj ci�ki pancerz Kruka", DIA_Addon_Eremit_Klamotten_Raven);
	//};
	if (Npc_HasItems (other, ITAR_Ranger_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj zbroj� Wodnego Kr�gu", DIA_Addon_Eremit_Klamotten_Ranger_H);
	};
	if (Npc_HasItems (other, ITAR_Ranger_L) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj pancerz Wodnego Kr�gu", DIA_Addon_Eremit_Klamotten_Ranger_L);
	};
	if (Npc_HasItems (other, ITAR_MAG_A) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj szat� Maga Wody", DIA_Addon_Eremit_Klamotten_KDW_H);
	};
	if (Npc_HasItems (other, ITAR_VLK_H_04) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj tunik� gubernatora", DIA_Addon_Eremit_Klamotten_Governor);
	};
	if (Npc_HasItems (other, ITAR_JUDGE) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj s�dziowsk� tog�", DIA_Addon_Eremit_Klamotten_Judge);
	};
	if (Npc_HasItems (other, ITAR_SMITH) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj fartuch kowalski", DIA_Addon_Eremit_Klamotten_Smith);
	};
	if (Npc_HasItems (other, ITAR_BARKEEPER) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj fartuch obszarnika", DIA_Addon_Eremit_Klamotten_Barkeeper);
	};
	if (Npc_HasItems (other, ITAR_VLK_L_00) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj str�j mieszczanina I", DIA_Addon_Eremit_Klamotten_VLK_L);
	};
	if (Npc_HasItems (other, ITAR_VLK_L_01) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj str�j mieszczanina II", DIA_Addon_Eremit_Klamotten_VLK_M);
	};
	if (Npc_HasItems (other, ITAR_VLK_L_02) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj str�j mieszczanina III", DIA_Addon_Eremit_Klamotten_VLK_H);
	};
	/*
	if (Npc_HasItems (other, ITAR_MIL_L) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Leichte Milizr�stung geben", DIA_Addon_Eremit_Klamotten_MIL_L);
	};
	if (Npc_HasItems (other, ITAR_MIL_M) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Mittlere Milizr�stung geben", DIA_Addon_Eremit_Klamotten_MIL_M);
	};
	if (Npc_HasItems (other, ITAR_PAL_M) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Mittlere Paladinr�stung geben", DIA_Addon_Eremit_Klamotten_PAL_M);
	};
	if (Npc_HasItems (other, ITAR_PAL_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Schwere Paladinr�stung geben", DIA_Addon_Eremit_Klamotten_PAL_H);
	};
	*/
	if (Npc_HasItems (other, ITAR_Skeleton) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj podniszczon� zbroj� paladyna", DIA_Addon_Eremit_Klamotten_PAL_SKEL);
	};
	if (Npc_HasItems (other, ITAR_BAU_L_00) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj lekki str�j farmera", DIA_Addon_Eremit_Klamotten_BAU_L);
	};
	if (Npc_HasItems (other, ITAR_BAU_L_01) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj �redni str�j farmera", DIA_Addon_Eremit_Klamotten_BAU_M);
	};
	/*
	if (Npc_HasItems (other, ITAR_SLD_L) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Leichte S�ldnerr�stung geben", DIA_Addon_Eremit_Klamotten_SLD_L);
	};
	if (Npc_HasItems (other, ITAR_SLD_M) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Mittlere S�ldnerr�stung geben", DIA_Addon_Eremit_Klamotten_SLD_M);
	};
	if (Npc_HasItems (other, ITAR_SLD_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Schwere S�ldnerr�stung geben", DIA_Addon_Eremit_Klamotten_SLD_H);
	};
	*/
	if (Npc_HasItems (other, ITAR_Crawler) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj zbroj� z pancerzy pe�zaczy", DIA_Addon_Eremit_Klamotten_DJG_Crawler);
	};
	/*
	if (Npc_HasItems (other, ITAR_DJG_L) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Leichte Drachenj�gerr�stung geben", DIA_Addon_Eremit_Klamotten_DJG_L);
	};
	if (Npc_HasItems (other, ITAR_DJG_M) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Mittlere Drachenj�gerr�stung geben", DIA_Addon_Eremit_Klamotten_DJG_M);
	};
	if (Npc_HasItems (other, ITAR_DJG_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Schwere Drachenj�gerr�stung geben", DIA_Addon_Eremit_Klamotten_DJG_H);
	};
	if (Npc_HasItems (other, ITAR_NOV_L) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Novizenrobe geben", DIA_Addon_Eremit_Klamotten_Nov_L);
	};
	if (Npc_HasItems (other, ITAR_MAG_L) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj lekk� szat� maga", DIA_Addon_Eremit_Klamotten_KdF_L);
	};
	if (Npc_HasItems (other, ITAR_MAG_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj ci�k� szat� maga", DIA_Addon_Eremit_Klamotten_KdF_H);
	};
	*/
	if (Npc_HasItems (other, ITAR_Leather_L) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj sk�rzany pancerz", DIA_Addon_Eremit_Klamotten_Leather);
	};
	if (Npc_HasItems (other, ITAR_BDT_L) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj lekki pancerz bandyty", DIA_Addon_Eremit_Klamotten_BDT_L);
	};
	if (Npc_HasItems (other, ITAR_BDT_M) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj �redni pancerz bandyty", DIA_Addon_Eremit_Klamotten_BDT_M);
	};
	if (Npc_HasItems (other, ITAR_BDT_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj ci�ki pancerz bandyty", DIA_Addon_Eremit_Klamotten_BDT_H);
	};
	if (Npc_HasItems (other, ITAR_RVN_L) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj lekki pancerz kruka", DIA_Addon_Eremit_Klamotten_RVN_L);
	};
	if (Npc_HasItems (other, ITAR_RVN_M) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj �redni pancerz kruka", DIA_Addon_Eremit_Klamotten_RVN_M);
	};
	if (Npc_HasItems (other, ITAR_RVN_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj ci�ki pancerz kruka", DIA_Addon_Eremit_Klamotten_RVN_H);
	};
	if (Npc_HasItems (other, ITAR_MAG_B) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj szat� mrocznych sztuk", DIA_Addon_Eremit_Klamotten_Xardas);
	};
	if (Npc_HasItems (other, ITAR_SLN_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj zbroj� nowicjusza �ni�cego", DIA_Addon_Eremit_Klamotten_Lester);
	};
	if (Npc_HasItems (other, ITAR_STT_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj zbroj� cienia", DIA_Addon_Eremit_Klamotten_Diego);
	};
	if (Npc_HasItems (other, ITAR_SLT_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj ci�k� zbroj� stra�nika �wi�tynnego", DIA_Addon_Eremit_Klamotten_CorAngar);
	};
	if (Npc_HasItems (other, ITAR_Prisoner_L) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj lekkie spodnie kopacza", DIA_Addon_Eremit_Klamotten_Prisoner_L);
	};
	if (Npc_HasItems (other, ITAR_Prisoner_H) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj ci�kie spodnie kopacza", DIA_Addon_Eremit_Klamotten_Prisoner_H);
	};
	if (Npc_HasItems (other, ITAR_Dementor) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj szat� poszukiwacza", DIA_Addon_Eremit_Klamotten_Dementor);
	};
};
// -------------------------------------------------------------
	func void B_Eremit_Tatsache()
	{
		AI_EquipBestArmor (self);
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_20"); //Jak ula�!
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_21"); //Hmm, jak m�g�bym si� odwdzi�czy�? Ca�e z�oto odda�em piratowi za transport.
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_22"); //Mog� ci da� par� starych kamiennych tablic.
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_23"); //Masz, we� je. Zawsze mog� znale�� wi�cej.
		
		B_GiveInvItems (self, other, ItWr_StonePlate_04, 1);
		B_GiveInvItems (self, other, ItWr_StonePlateCommon_Addon, 1);
		
		MIS_Eremit_Klamotten = LOG_SUCCESS;
		B_GivePlayerExp(200);
		
		Info_ClearChoices (DIA_Addon_Eremit_Klamotten);
	};
// -------------------------------------------------------------

func void DIA_Addon_Eremit_Klamotten_BACK()
{
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_24"); //�wietnie. Najpierw robisz mi nadziej�, a potem...
	Info_ClearChoices (DIA_Addon_Eremit_Klamotten);
};
func void DIA_Addon_Eremit_Klamotten_PIR_L()
{
	B_GiveInvItems (other, self, ITAR_PIR_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_PIR_M()
{
	B_GiveInvItems (other, self, ITAR_PIR_M, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_PIR_H()
{
	B_GiveInvItems (other, self, ITAR_PIR_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Thorus()
{
	B_GiveInvItems (other, self, ITAR_GRD_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_OreBaron()
{
	B_GiveInvItems (other, self, ITAR_EBR_M, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Bloodwyn()
{
	B_GiveInvItems (other, self, ITAR_GRD_M, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Raven()
{
	B_GiveInvItems (other, self, ITAR_RVN_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Ranger_L()
{
	B_GiveInvItems (other, self, ITAR_Ranger_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Ranger_H()
{
	B_GiveInvItems (other, self, ITAR_Ranger_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_KDW_H()
{
	B_GiveInvItems (other, self, ITAR_Mag_A, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Governor()
{
	B_GiveInvItems (other, self, ITAR_VLK_H_04, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Judge()
{
	B_GiveInvItems (other, self, ITAR_JUDGE, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Smith()
{
	B_GiveInvItems (other, self, ITAR_SMITH, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Barkeeper()
{
	B_GiveInvItems (other, self, ITAR_BARKEEPER, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_VLK_L()
{
	B_GiveInvItems (other, self, ITAR_VLK_L_00, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_VLK_M()
{
	B_GiveInvItems (other, self, ITAR_VLK_L_01, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_VLK_H()
{
	B_GiveInvItems (other, self, ITAR_VLK_L_02, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_MIL_L()
{
	B_GiveInvItems (other, self, ITAR_MIL_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_MIL_M()
{
	B_GiveInvItems (other, self, ITAR_MIL_M, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_PAL_M()
{
	B_GiveInvItems (other, self, ITAR_PAL_M, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_PAL_H()
{
	B_GiveInvItems (other, self, ITAR_PAL_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_PAL_SKEL()
{
	B_GiveInvItems (other, self, ITAR_Skeleton, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_BAU_L()
{
	B_GiveInvItems (other, self, ITAR_BAU_L_00, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_BAU_M()
{
	B_GiveInvItems (other, self, ITAR_BAU_L_01, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_SLD_L()
{
	B_GiveInvItems (other, self, ITAR_SLD_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_SLD_M()
{
	B_GiveInvItems (other, self, ITAR_SLD_M, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_SLD_H()
{
	B_GiveInvItems (other, self, ITAR_SLD_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_DJG_Crawler()
{
	B_GiveInvItems (other, self, ITAR_Crawler, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_DJG_L()
{
	B_GiveInvItems (other, self, ITAR_DJG_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_DJG_M()
{
	B_GiveInvItems (other, self, ITAR_DJG_M, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_DJG_H()
{
	B_GiveInvItems (other, self, ITAR_DJG_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Nov_L()
{
	B_GiveInvItems (other, self, ITAR_NOV_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_KdF_L()
{
	B_GiveInvItems (other, self, ITAR_MAG_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_KdF_H()
{
	B_GiveInvItems (other, self, ITAR_MAG_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Leather()
{
	B_GiveInvItems (other, self, ITAR_Leather_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_BDT_L()
{
	B_GiveInvItems (other, self, ITAR_BDT_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_BDT_M()
{
	B_GiveInvItems (other, self, ITAR_BDT_M, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_BDT_H()
{
	B_GiveInvItems (other, self, ITAR_BDT_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_RVN_L()
{
	B_GiveInvItems (other, self, ITAR_RVN_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_RVN_M()
{
	B_GiveInvItems (other, self, ITAR_RVN_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_RVN_H()
{
	B_GiveInvItems (other, self, ITAR_RVN_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Xardas()
{
	B_GiveInvItems (other, self, ITAR_MAG_B, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Lester()
{
	B_GiveInvItems (other, self, ITAR_SLN_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Diego()
{
	B_GiveInvItems (other, self, ITAR_STT_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_CorAngar()
{
	B_GiveInvItems (other, self, ITAR_SLT_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Prisoner_L()
{
	B_GiveInvItems (other, self, ITAR_Prisoner_L, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Prisoner_H()
{
	B_GiveInvItems (other, self, ITAR_Prisoner_H, 1);
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Dementor()
{
	B_GiveInvItems (other, self, ITAR_Dementor, 1);
	B_Eremit_Tatsache();
};



// ********************************************************
// 							PERM
// ********************************************************
instance DIA_Addon_Eremit_PERM (C_INFO)
{
	npc		 	= NONE_ADDON_115_Eremit;
	nr		 	= 99;
	condition	= DIA_Addon_Eremit_PERM_Condition;
	information	= DIA_Addon_Eremit_PERM_Info;
	permanent 	= TRUE;
	description = "No i? Jak si� �yje jako wyrzutek?";
};
func int DIA_Addon_Eremit_PERM_Condition ()
{
	return TRUE;
};
func void DIA_Addon_Eremit_PERM_Info ()
{
	AI_Output (other, self, "DIA_Addon_Eremit_Add_15_04"); //No i? Jak si� �yje jako wyrzutek?
	
	if (MIS_Eremit_Klamotten == FALSE)
	{
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_09"); //Wszystko zrobi�em sam. Moj� bro�, narz�dzia, sza�as, po prostu wszystko.
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_10"); //A przyby�em tu, nie maj�c nic opr�cz dobrego humoru.
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_11"); //Jednak czasami...
		AI_Output (other, self, "DIA_Addon_Eremit_Doppelt_15_01"); //Tak?
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_12"); //Czasami �a�uj�, �e nie wzi��em �adnych ubra�.
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_13"); //Nie mam poj�cia o tkactwie czy wyprawianiu sk�r...
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_14"); //A noce w tej cz�ci wyspy nie s� szczeg�lnie ciep�e.
		MIS_Eremit_Klamotten = LOG_RUNNING;
	}
	else 
	{
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_15"); //Jako� sobie radz�.
		if (MIS_Eremit_Klamotten == LOG_SUCCESS)
		{
			AI_Output (self, other, "DIA_Addon_Eremit_Add_04_18"); //Maj�c te ubrania, przetrwam zim�! A p�niej... zobaczymy...
		}
		else
		{
			AI_Output (self, other, "DIA_Addon_Eremit_Add_04_16"); //W ka�dym razie i tak jest tu lepiej ni� w Khorinis!
			AI_Output (self, other, "DIA_Addon_Eremit_Add_04_17"); //Nawet mimo braku ubra�.
		};
	};
};	
	


