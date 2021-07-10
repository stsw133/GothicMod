///******************************************************************************************
instance BDT_1076_Addon_Bandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	1076;
	voice 								=	13;
	npctype								=	NPCTYPE_TAL_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1H_Mace_L_04);
	EquipItem (self, ItRw_Bow_M_02);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal33, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1076;
};

func void Rtn_Start_1076()
{
 	TA_Smalltalk		(06,00,12,00, "BL_SMALLTALK_01");
	TA_Cook_Cauldron	(12,00,22,00, "ADW_PATH_TO_BL_COOK");
	TA_Stand_Eating		(22,00,06,00, "BL_FIGHT_04");
};
