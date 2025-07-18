///******************************************************************************************
instance BDT_1078_Addon_Bandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild								=	GIL_BDT;
	id									=	1078;
	voice								=	13;
	npctype								=	NPCTYPE_TAL_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 60);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1H_Mace_L_01);
	EquipItem (self, ItRw0_Bow_M_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_N_Richter, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, -0.75);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1078;
};

func void Rtn_Start_1078()
{
	TA_Sit_Campfire		(20,00, 12,05, "ADW_BANDIT_VP1_08_B");
	TA_Stand_Guarding	(12,05, 20,00, "ADW_BANDIT_VP1_07_B");
};
