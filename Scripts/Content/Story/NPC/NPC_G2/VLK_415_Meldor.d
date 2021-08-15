///******************************************************************************************
instance VLK_415_Meldor (Npc_Default)
{
	/// ------ General ------
	name								=	"Meldor";
	guild 								=	GIL_VLK;
	id 									=	415;
	voice 								=	7;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_NORMAL;

	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_FatBald", Face_Normal05, 0, ITAR_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0.8);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_415;
};

func void Rtn_PreStart_415()
{
	TA_Smoke_Joint	(05,05,23,55, "NW_CITY_HABOUR_POOR_AREA_PATH_20");
    TA_Sleep		(23,55,05,05, "NW_CITY_HABOUR_HUT_04_BED_02");
};
func void Rtn_Start_415()
{
	TA_Smoke_Joint	(05,05,12,35, "NW_CITY_HABOUR_POOR_AREA_PATH_20");
	TA_Smalltalk	(12,35,16,05, "NW_CITY_HABOUR_HUT_08");
    TA_Smoke_Joint	(16,05,18,05, "NW_CITY_HABOUR_POOR_AREA_PATH_20");
    TA_Stand_Eating	(18,05,19,55, "NW_CITY_PATH_HABOUR_03");
    TA_Smoke_Joint	(19,55,23,55, "NW_CITY_HABOUR_POOR_AREA_PATH_20");
    TA_Sleep		(23,55,05,05, "NW_CITY_HABOUR_HUT_04_BED_02");
};
