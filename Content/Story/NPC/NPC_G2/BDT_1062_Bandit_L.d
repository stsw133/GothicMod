///******************************************************************************************
instance BDT_1062_Bandit_L (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	1062;
	voice 								=	10;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ AI vars ------
	aivar[AIV_EnemyOverride]			=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Normal39, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1062;
};	 

func void RTn_Start_1062()
{
	TA_Sit_Campfire	(00,00,12,00, "NW_CASTLEMINE_TOWER_CAMPFIRE_04");
	TA_Sit_Campfire	(12,00,00,00, "NW_CASTLEMINE_TOWER_CAMPFIRE_04");
};
