///******************************************************************************************
instance VLK_459_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BUERGER;
	guild 								=	GIL_VLK;
	id 									=	459;
	voice 								=	1;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_Mace);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Bald", Face_Normal15, 0, ITAR_Vlk_L_00);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_459;
};

func void Rtn_Start_459()
{
	TA_Smalltalk		(05,30,11,35, "NW_CITY_HABOUR_06");
	TA_Stand_Drinking	(11,35,13,30, "NW_CITY_HABOUR_TAVERN01_01");
	TA_Smalltalk		(13,30,17,35, "NW_CITY_HABOUR_04");
	TA_Stand_Drinking	(17,35,19,10, "NW_CITY_HABOUR_TAVERN01_01");
	TA_Smalltalk		(19,10,00,00, "NW_CITY_HABOUR_TAVERN01_06");
	TA_Stand_Drinking	(00,00,02,00, "NW_CITY_HABOUR_TAVERN01_01");
    TA_Sleep			(02,00,05,30, "NW_CITY_HABOUR_POOR_AREA_HUT_07_BED_02");
};
