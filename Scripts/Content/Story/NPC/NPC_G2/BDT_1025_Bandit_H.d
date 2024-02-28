///******************************************************************************************
instance BDT_1025_Bandit_H (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	1025;
	voice 								=	9;
	npctype								=	NPCTYPE_MAIN;

	/// ------ Aivars ------
	aivar[AIV_EnemyOverride]			=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, FightTalent_Medium);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);
	EquipItem (self, ItRw_SLD_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Thief", Face_Normal03, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1025;
};

func void Rtn_Start_1025()
{
	TA_Stand_Guarding	(08,00,22,00, "NW_FOREST_CAVE1_02");
    TA_Stand_Guarding	(22,00,08,00, "NW_FOREST_CAVE1_02");
};
