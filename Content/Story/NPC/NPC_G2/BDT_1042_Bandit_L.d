///******************************************************************************************
instance BDT_1042_Bandit_L (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	1042;
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
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_FatBald", Face_Normal02, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, -1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1042;
};

func void Rtn_Start_1042()
{
	TA_Saw	(00,00,12,00, "NW_CASTLEMINE_PATH_HUT_02");
	TA_Saw	(12,00,00,00, "NW_CASTLEMINE_PATH_HUT_02");
};
