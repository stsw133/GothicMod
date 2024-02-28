///******************************************************************************************
instance VLK_460_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BUERGER;
	guild 								=	GIL_VLK;
	id 									=	460;
	voice 								=	8;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetFightSkills (self, FightTalent_Medium-10);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_VLK_DAGGER);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_Normal09, 0, ITAR_Vlk_L_01);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_460;
};

func void Rtn_Start_460()
{
	TA_Smalltalk		(05,35,11,30, "NW_CITY_HABOUR_05");
	TA_Stand_Drinking	(11,30,13,35, "NW_CITY_HABOUR_03");
	TA_Smalltalk		(13,35,17,30, "NW_CITY_HABOUR_03");
    TA_Stand_Drinking	(17,30,23,30, "NW_CITY_HABOUR_TAVERN01_01");
    TA_Sleep			(23,30,05,35, "NW_CITY_HABOUR_POOR_AREA_HUT_01_BED_02");
};
