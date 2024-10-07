///******************************************************************************************
instance BDT_1076_Addon_Bandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild								=	GIL_BDT;
	id									=	1076;
	voice								=	13;
	npctype								=	NPCTYPE_TAL_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 90);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Mace_L_04);
	EquipItem (self, ItRw_Bow_M_02);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_NormalBart06, Teeth_Normal, ItAr_BDT_M);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1076;
};

func void Rtn_Start_1076()
{
	TA_Smalltalk		(06,00, 12,00, "BL_SMALLTALK_01");
	TA_Cook_Cauldron	(12,00, 22,00, "ADW_PATH_TO_BL_COOK");
	TA_Stand_Eating		(22,00, 06,00, "BL_FIGHT_04");
};
