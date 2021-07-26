///******************************************************************************************
instance BDT_10016_Addon_Bandit (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BANDIT;
	guild 								=	GIL_BDT;
	id 									=	10016;
	voice 								=	1;
	npctype								=	NPCTYPE_TAL_AMBIENT;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Sld_Sword);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Fighter", Face_Fingers, 0, ITAR_BANDIT);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_10016;
};

func void Rtn_Start_10016()
{
	TA_Sit_Chair	(02,00,10,00, "ADW_SENAT_CAVE_CHAIR");
	TA_Sit_Chair	(10,00,02,00, "ADW_SENAT_CAVE_CHAIR");
};
func void Rtn_Stand_10016()
{
	TA_Stand_WP	(02,00,10,00, "ADW_SENAT_CAVE_CHAIR");
	TA_Stand_WP	(10,00,02,00, "ADW_SENAT_CAVE_CHAIR");
};