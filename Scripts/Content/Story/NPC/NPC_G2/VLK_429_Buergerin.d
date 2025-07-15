///******************************************************************************************
instance VLK_429_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild								=	GIL_VLK;
	id									=	429;
	voice								=	16;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Vlk_Dagger);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe4", FaceBabe_N_VlkBlonde, Teeth_Pretty, ItAr_Babe_VLK_L_00);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_429;
};

func void Rtn_Start_429()
{
	TA_Smalltalk	(05,05, 12,05, "NW_CITY_HABOUR_POOR_AREA_PATH_06");
	TA_Stomp_Herb	(12,05, 22,05, "NW_CITY_HABOUR_POOR_AREA_PATH_08_A");
	TA_Smalltalk	(22,05, 00,05, "NW_CITY_HABOUR_POOR_AREA_PATH_07");
	TA_Sleep		(00,05, 05,05, "NW_CITY_HABOUR_HUT_03_BED_01");
};
