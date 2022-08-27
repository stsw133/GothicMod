///******************************************************************************************
instance VLK_429_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	429;
	voice 								=	16;
	npctype								=	NPCTYPE_AMBIENT;

	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 10);
	B_SetFightSkills (self, FightTalent_Initiate);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe4", FaceBabe_Normal03, Teeth_Pretty, ITAR_Babe_VLK_M_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_429;
};

func void Rtn_Start_429()
{
	TA_Smalltalk	(05,05,12,05, "NW_CITY_HABOUR_POOR_AREA_PATH_06");
    TA_Stomp_Herb	(12,05,22,05, "NW_CITY_HABOUR_POOR_AREA_PATH_08_A");
    TA_Smalltalk	(22,05,00,05, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
    TA_Sleep		(00,05,05,05, "NW_CITY_HABOUR_HUT_03_BED_01");
};
