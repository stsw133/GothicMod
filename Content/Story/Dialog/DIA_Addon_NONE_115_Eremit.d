// ********************************************************
// 							EXIT 
// ********************************************************
INSTANCE DIA_Addon_Eremit_EXIT   (C_INFO)
{
	npc         = NONE_ADDON_115_Eremit;
	nr          = 999;
	condition   = DIA_Addon_Eremit_EXIT_Condition;
	information = DIA_Addon_Eremit_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
func INT DIA_Addon_Eremit_EXIT_Condition()
{
	return true;
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

	important	= true;
};
func int DIA_Addon_Eremit_Hello_Condition ()
{
	if (Npc_IsInState (self, ZS_Talk))
	&& (self.aivar[AIV_TalkedToPlayer] == false)
	{
		return true;
	};
};
func void DIA_Addon_Eremit_Hello_Info ()
{
	AI_Output (other, self, "DIA_Addon_Eremit_Add_15_00"); //Co tutaj robisz?
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_00"); //Co ja tutaj robiê?! Do diab³a! Co TY tutaj robisz?
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_01"); //Osiedli³em siê w najbardziej odosobnionej czêœci wyspy, poniewa¿ potrzebowa³em trochê spokoju!
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_02"); //Wojna domowa, nachalni bandyci, hordy orków u progu mego domu...
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_03"); //To nie dla mnie. Ju¿ nie. Mia³em doœæ tego ca³ego szaleñstwa.
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_04"); //Jest tu trochê orków, ale wcale nie tak du¿o.
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_05"); //A innych ludzi – chwa³a niech bêdzie Innosowi – ani widu, ani s³ychu. A¿ do dzisiaj!
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
	return true;
};
func void DIA_Addon_Eremit_SeekTafeln_Info ()
{
	AI_Output (other, self, "DIA_Addon_Eremit_Add_15_02"); //Szukam kamiennych tabliczek. Nie znalaz³eœ mo¿e jakichœ?
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_06"); //No có¿, znalaz³em... Ale nie oddam ci!
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_07"); //To jedyne, co mam tu do czytania.
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_08"); //Nie rozumiem jeszcze wszystkiego, ale potrafiê rozszyfrowaæ wiêkszoœæ z nich.
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
	permanent 	= true;
	description = "Mam dla ciebie jakieœ ubranie...";
};
func int DIA_Addon_Eremit_Klamotten_Condition ()
{
	if (MIS_Eremit_Klamotten == LOG_RUNNING)
	{
		return true;
	};
};
func void DIA_Addon_Eremit_Klamotten_Info ()
{
	AI_Output (other, self, "DIA_Addon_Eremit_Add_15_01"); //Mam dla ciebie jakieœ ubranie...
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_19"); //Serio? Dawaj! Zobaczymy, czy pasuje.
	
	Info_ClearChoices (DIA_Addon_Eremit_Klamotten);
	Info_AddChoice (DIA_Addon_Eremit_Klamotten, DIALOG_BACK, DIA_Addon_Eremit_Klamotten_BACK);

	if (Npc_HasItems (other, ITAR_SMITH) > 0)
	|| (Npc_HasItems (other, ITAR_ALCHEMIST) > 0)
	|| (Npc_HasItems (other, ITAR_SCYTHER) > 0)
	|| (Npc_HasItems (other, ITAR_BARKEEPER) > 0)
	|| (Npc_HasItems (other, ITAR_HUNTER) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj fartuch rzemieœlnika", DIA_Addon_Eremit_Klamotten_Craftsman);
	};
	if (Npc_HasItems (other, ITAR_VLK_L_00) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_01) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_02) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_03) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_04) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_05) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_06) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_07) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_08) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_09) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_10) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_11) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_12) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_13) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_14) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_L_15) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj strój mieszczanina", DIA_Addon_Eremit_Klamotten_VLK_L);
	};
	if (Npc_HasItems (other, ITAR_VLK_H_00) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_01) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_02) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_03) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_04) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_05) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_06) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_07) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_08) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_09) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_10) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_11) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_12) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_13) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_14) > 0)
	|| (Npc_HasItems (other, ITAR_VLK_H_15) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj strój bogatego mieszczanina", DIA_Addon_Eremit_Klamotten_VLK_H);
	};
	if (Npc_HasItems (other, ITAR_BAU_00) > 0)
	|| (Npc_HasItems (other, ITAR_BAU_01) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj strój farmera", DIA_Addon_Eremit_Klamotten_BAU);
	};
	if (Npc_HasItems (other, ITAR_Leather_L) > 0)
	|| (Npc_HasItems (other, ITAR_Leather_T) > 0)
	|| (Npc_HasItems (other, ITAR_Leather_S) > 0)
	|| (Npc_HasItems (other, ITAR_Leather_H) > 0)
	|| (Npc_HasItems (other, ITAR_Leather_B) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj skórzany pancerz", DIA_Addon_Eremit_Klamotten_Leather);
	};
	if (Npc_HasItems (other, ITAR_Dementor) > 0)
	{
		Info_AddChoice (DIA_Addon_Eremit_Klamotten, "Daj szatê poszukiwacza (!)", DIA_Addon_Eremit_Klamotten_Dementor);
	};
};

	func void B_Eremit_Tatsache()
	{
		AI_EquipBestArmor (self);
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_20"); //Jak ula³!
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_21"); //Hmm, jak móg³bym siê odwdziêczyæ? Ca³e z³oto odda³em piratowi za transport.
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_22"); //Mogê ci daæ parê starych kamiennych tablic.
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_23"); //Masz, weŸ je. Zawsze mogê znaleŸæ wiêcej.
		
//		B_GiveInvItems (self,other,ItWr_DexStonePlate3_Addon,1);
		B_GiveInvItems (self,other,ItWr_StonePlateCommon_Addon ,1);     
		
		MIS_Eremit_Klamotten = LOG_SUCCESS;
		B_GivePlayerXP (200);
		
		Info_ClearChoices (DIA_Addon_Eremit_Klamotten);
	};

func void DIA_Addon_Eremit_Klamotten_BACK()
{
	AI_Output (self, other, "DIA_Addon_Eremit_Add_04_24"); //Œwietnie. Najpierw robisz mi nadziejê, a potem...
	Info_ClearChoices (DIA_Addon_Eremit_Klamotten);
};
func void DIA_Addon_Eremit_Klamotten_CRAFTSMAN()
{
	if (Npc_HasItems (other, ITAR_SMITH) > 0)
	{	B_GiveInvItems (other, self, ITAR_SMITH, 1);		}
	else if (Npc_HasItems (other, ITAR_ALCHEMIST) > 0)
	{	B_GiveInvItems (other, self, ITAR_ALCHEMIST, 1);	}
	else if (Npc_HasItems (other, ITAR_SCYTHER) > 0)
	{	B_GiveInvItems (other, self, ITAR_SCYTHER, 1);		}
	else if (Npc_HasItems (other, ITAR_BARKEEPER) > 0)
	{	B_GiveInvItems (other, self, ITAR_BARKEEPER, 1);	}
	else if (Npc_HasItems (other, ITAR_HUNTER) > 0)
	{	B_GiveInvItems (other, self, ITAR_HUNTER, 1);		};
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_VLK_L()
{
	if (Npc_HasItems (other, ITAR_VLK_L_00) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_00, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_01) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_01, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_02) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_02, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_03) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_03, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_04) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_04, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_05) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_05, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_06) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_06, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_07) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_07, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_08) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_08, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_09) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_09, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_10) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_10, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_11) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_11, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_12) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_12, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_13) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_13, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_14) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_14, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_L_15) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_L_15, 1);	};
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_VLK_H()
{
	if (Npc_HasItems (other, ITAR_VLK_H_00) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_00, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_01) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_01, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_02) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_02, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_03) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_03, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_04) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_04, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_05) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_05, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_06) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_06, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_07) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_07, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_08) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_08, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_09) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_h_09, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_10) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_10, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_11) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_11, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_12) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_12, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_13) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_13, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_14) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_14, 1);	}
	else if (Npc_HasItems (other, ITAR_VLK_H_15) > 0)
	{	B_GiveInvItems (other, self, ITAR_VLK_H_15, 1);	};
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_BAU()
{
	if (Npc_HasItems (other, ITAR_BAU_00) > 0)
	{	B_GiveInvItems (other, self, ITAR_BAU_00, 1);	}
	else if (Npc_HasItems (other, ITAR_BAU_01) > 0)
	{	B_GiveInvItems (other, self, ITAR_BAU_01, 1);	};
	B_Eremit_Tatsache();
};
func void DIA_Addon_Eremit_Klamotten_Leather()
{
	if (Npc_HasItems (other, ITAR_LEATHER_L) > 0)
	{	B_GiveInvItems (other, self, ITAR_LEATHER_L, 1);	}
	else if (Npc_HasItems (other, ITAR_Leather_T) > 0)
	{	B_GiveInvItems (other, self, ITAR_Leather_T, 1);	}
	else if (Npc_HasItems (other, ITAR_Leather_S) > 0)
	{	B_GiveInvItems (other, self, ITAR_Leather_S, 1);	}
	else if (Npc_HasItems (other, ITAR_Leather_H) > 0)
	{	B_GiveInvItems (other, self, ITAR_Leather_H, 1);	}
	else if (Npc_HasItems (other, ITAR_Leather_B) > 0)
	{	B_GiveInvItems (other, self, ITAR_Leather_B, 1);	};
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
	permanent 	= true;
	description = "No i? Jak siê ¿yje jako wyrzutek?";
};
func int DIA_Addon_Eremit_PERM_Condition ()
{
	return true;
};
func void DIA_Addon_Eremit_PERM_Info ()
{
	AI_Output (other, self, "DIA_Addon_Eremit_Add_15_04"); //No i? Jak siê ¿yje jako wyrzutek?
	
	if (MIS_Eremit_Klamotten == false)
	{
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_09"); //Wszystko zrobi³em sam. Moj¹ broñ, narzêdzia, sza³as, po prostu wszystko.
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_10"); //A przyby³em tu, nie maj¹c nic oprócz dobrego humoru.
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_11"); //Jednak czasami...
		AI_Output (other, self, "DIA_Addon_Eremit_Doppelt_15_01"); //Tak?
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_12"); //Czasami ¿a³ujê, ¿e nie wzi¹³em ¿adnych ubrañ.
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_13"); //Nie mam pojêcia o tkactwie czy wyprawianiu skór...
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_14"); //A noce w tej czêœci wyspy nie s¹ szczególnie ciep³e.
		MIS_Eremit_Klamotten = LOG_RUNNING;
	}
	else 
	{
		AI_Output (self, other, "DIA_Addon_Eremit_Add_04_15"); //Jakoœ sobie radzê.
		if (MIS_Eremit_Klamotten == LOG_SUCCESS)
		{
			AI_Output (self, other, "DIA_Addon_Eremit_Add_04_18"); //Maj¹c te ubrania, przetrwam zimê! A póŸniej... zobaczymy...
		}
		else
		{
			AI_Output (self, other, "DIA_Addon_Eremit_Add_04_16"); //W ka¿dym razie i tak jest tu lepiej ni¿ w Khorinis!
			AI_Output (self, other, "DIA_Addon_Eremit_Add_04_17"); //Nawet mimo braku ubrañ.
		};
	};
};	
