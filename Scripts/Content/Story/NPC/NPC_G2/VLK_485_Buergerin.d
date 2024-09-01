///******************************************************************************************
instance VLK_485_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild								=	GIL_VLK;
	id									=	485;
	voice								=	16;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 15);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_BabeHair", FaceBabe_N_HairAndCloth, Teeth_Pretty, ItAr_Babe_VLK_L_00);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_485;
};

func void Rtn_Start_485()
{
	TA_Sit_Bench		(05,10, 10,10, "NW_CITY_HABOUR_BENCH_02");
	TA_Stand_Sweeping	(10,10, 12,10, "NW_CITY_HABOUR_POOR_AREA_HUT_05_IN");
	TA_Stomp_Herb		(12,10, 16,05, "NW_CITY_HABOUR_POOR_AREA_PATH_06_B");
	TA_Smalltalk		(16,05, 19,05, "NW_CITY_HABOUR_POOR_AREA_PATH_06");
	TA_Sit_Bench		(19,05, 22,55, "NW_CITY_HABOUR_BENCH_02");
	TA_Sleep			(22,55, 05,10, "NW_CITY_HABOUR_POOR_AREA_HUT_05_BED_01");
};
