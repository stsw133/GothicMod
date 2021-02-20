//******************************************************************************************
instance VLK_430_Buergerin (Npc_Default)
{
	// ------ General ------
	name								=	Name_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	430;
	voice 								=	17;
	flags       						=	0;
	npctype								=	NPCTYPE_AMBIENT;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Babe8", FaceBabe_Normal09, Teeth_Pretty, ITAR_WD_M_05);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_430;
};

FUNC VOID Rtn_Start_430()
{
	TA_Smalltalk	(05,07,12,07, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Cook_Stove	(12,07,16,00, "NW_CITY_HABOUR_POOR_AREA_HUT_04_BED_01");
	TA_Smalltalk	(16,07,19,07, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Sweep_FP		(19,07,22,07, "NW_CITY_HABOUR_POOR_AREA_HUT_04_IN_B");
	TA_Smalltalk	(22,07,00,07, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
    TA_Sleep		(00,07,05,07, "NW_CITY_HABOUR_POOR_AREA_HUT_04_BED_01");
};
