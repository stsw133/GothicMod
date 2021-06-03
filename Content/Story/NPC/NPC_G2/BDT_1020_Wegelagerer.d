///******************************************************************************************
instance BDT_1020_Bandit_L (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Bandit;
	guild 								=	GIL_BDT;
	id 									=	1020;
	voice 								=	6;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_EnemyOverride]			=	true;
	aivar[AIV_DropDeadAndKill]			=	true;

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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_FatBald", Face_Mud, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	TA_Guard_Passage	(00,00,12,00, "NW_TROLLAREA_PATH_47");
	TA_Guard_Passage	(12,00,00,00, "NW_TROLLAREA_PATH_47");
};
