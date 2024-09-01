///******************************************************************************************
instance VLK_481_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buerger;
	guild								=	GIL_VLK;
	id									=	474;
	voice								=	8;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Normal20, Teeth_Normal, ItAr_Vlk_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_481;
};

func void Rtn_Start_481()
{
	TA_Cook_Cauldron	(05,05, 12,05, "NW_CITY_PATH_HABOUR_13_C");
	TA_Smalltalk		(12,05, 15,55, "NW_CITY_HABOUR_SMALLTALK_02");
	TA_Cook_Cauldron	(15,55, 20,05, "NW_CITY_PATH_HABOUR_13_C");
	TA_Smalltalk		(20,05, 23,55, "NW_CITY_HABOUR_SMALLTALK_02");
	TA_Sleep			(23,55, 05,05, "NW_CITY_HABOUR_HUT_06_BED_02");
};
