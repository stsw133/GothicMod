///******************************************************************************************
instance VLK_430_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild								=	GIL_VLK;
	id									=	430;
	voice								=	17;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe8", FaceBabe_N_Lilo, Teeth_Pretty, ItAr_Babe_VLK_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_430;
};

func void Rtn_Start_430()
{
	TA_Smalltalk	(05,07, 12,07, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Cook_Stove	(12,07, 16,00, "NW_CITY_HABOUR_POOR_AREA_HUT_04_BED_01");
	TA_Smalltalk	(16,07, 19,07, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Sweep_FP		(19,07, 22,07, "NW_CITY_HABOUR_POOR_AREA_HUT_04_IN_B");
	TA_Smalltalk	(22,07, 00,07, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Sleep		(00,07, 05,07, "NW_CITY_HABOUR_POOR_AREA_HUT_04_BED_01");
};
