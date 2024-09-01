///******************************************************************************************
instance VLK_487_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buergerin;
	guild								=	GIL_VLK;
	id									=	487;
	voice								=	17;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe1", FaceBabe_N_Anne, Teeth_Pretty, ItAr_Babe_VLK_L_03);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_487;
};

func void Rtn_Start_487()
{
	TA_Stomp_Herb	(05,00, 08,00, "NW_CITY_PATH_HABOUR_04_STOMPER");
	TA_Smalltalk	(08,00, 12,00, "NW_CITY_PATH_HABOUR_04_01");
	TA_Cook_Stove	(12,00, 12,30, "NW_CITY_PATH_HABOUR_04_01");
	TA_Smalltalk	(12,30, 16,00, "NW_CITY_PATH_HABOUR_04_01");
	TA_Stomp_Herb	(16,00, 19,30, "NW_CITY_PATH_HABOUR_04_STOMPER");
	TA_Cook_Stove	(19,30, 22,00, "NW_CITY_HABOUR_HUT_04_IN");
	TA_Sleep		(22,00, 05,00, "NW_CITY_HABOUR_HUT_04_BED_01");
};
