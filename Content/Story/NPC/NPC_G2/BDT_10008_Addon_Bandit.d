///******************************************************************************************
instance BDT_10008_Addon_Bandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	10008;
	voice 								=	1;
	npctype								=	NPCTYPE_BL_MAIN;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Strong-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_2H_OrcAxe_01);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_B, "Hum_Head_FatBald", Face_Normal02, 0, ITAR_Bandit);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10008;
};

func void Rtn_Start_10008()
{
    TA_Cook_Cauldron	(08,00,12,00, "BL_DOWN_CENTER_07");
    TA_Pee				(12,00,12,05, "BL_DOWN_CENTER_07_C");
	TA_Cook_Cauldron	(12,05,16,00, "BL_DOWN_CENTER_07");
    TA_Pee				(16,00,16,05, "BL_DOWN_CENTER_07_C");
    TA_Cook_Cauldron	(16,05,00,00, "BL_DOWN_CENTER_07");
    TA_Pee				(00,00,00,05, "BL_DOWN_CENTER_07_C");
	TA_Sit_Bench		(00,05,08,00, "BL_DOWN_RING_05");
};
