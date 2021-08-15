///******************************************************************************************
instance VLK_487_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buergerin;
	guild 								=	GIL_VLK;
	id 									=	487;
	voice 								=	17;
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
	B_SetNpcVisual		(self, RACE_HUMAN, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe1", FaceBabe_Normal11, Teeth_Pretty, ITAR_WD_M_05);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_Start_487;
};

func void Rtn_Start_487()
{
	TA_Stomp_Herb	(05,00,08,00, "NW_CITY_PATH_HABOUR_04_STOMPER");
	TA_Smalltalk	(08,00,12,00, "NW_CITY_PATH_HABOUR_04_01");
	TA_Cook_Stove	(12,00,12,30, "NW_CITY_PATH_HABOUR_04_01");
	TA_Smalltalk	(12,30,16,00, "NW_CITY_PATH_HABOUR_04_01");
	TA_Stomp_Herb	(16,00,19,30, "NW_CITY_PATH_HABOUR_04_STOMPER");
    TA_Cook_Stove	(19,30,22,00, "NW_CITY_HABOUR_HUT_04_IN");
    TA_Sleep		(22,00,05,00, "NW_CITY_HABOUR_HUT_04_BED_01");
};
