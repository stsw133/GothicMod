//******************************************************************************************
instance BDT_1013_Bandit_L (Npc_Default)
{
	// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	1013;
	voice 								=	1;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars ------
	aivar[AIV_EnemyOverride]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 6);
	B_SetFightSkills (self, FightTalent_Weak);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItem (self, ItWr_Poster_MIS);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Homer, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine						=	RTN_Start_1013;
};

FUNC VOID RTN_Start_1013()
{
	TA_Stand_ArmsCrossed	(00,00,12,00, "NW_XARDAS_STAIRS_01");
	TA_Stand_ArmsCrossed	(12,00,00,00, "NW_XARDAS_STAIRS_01");
};
FUNC VOID RTN_Ambush_1013()
{
	TA_Guide_Player	(00,00,12,00, "NW_XARDAS_BANDITS_RIGHT");
	TA_Guide_Player	(12,00,00,00, "NW_XARDAS_BANDITS_RIGHT");
};
FUNC VOID RTN_AWAY_1013()
{
	TA_Sit_Campfire	(00,00,12,00, "NW_XARDAS_GOBBO_02");
	TA_Sit_Campfire	(12,00,00,00, "NW_XARDAS_GOBBO_02");
};
func VOID RTN_AWAY2_1013()
{
	TA_FleeToWP	(00,00,12,00, "NW_XARDAS_MONSTER_INSERT_01");
	TA_FleeToWP	(12,00,00,00, "NW_XARDAS_MONSTER_INSERT_01");
};
