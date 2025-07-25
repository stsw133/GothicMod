///******************************************************************************************
instance VLK_496_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buergerin;
	guild								=	GIL_VLK;
	id									=	496;
	voice								=	17;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw0_1h_Vlk_Dagger);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe1", FaceBabe_N_OldBrown, Teeth_Pretty, ItAr_Babe_VLK_L_03);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_496;
};

func void Rtn_Start_496()
{
	TA_Smalltalk		(06,00, 07,00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Drinking	(07,00, 08,00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Smalltalk		(08,00, 10,00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Drinking	(10,00, 11,00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Smalltalk		(11,00, 13,00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Stand_Drinking	(13,00, 14,00, "NW_CITY_MERCHANT_PATH_28_D");
	TA_Smalltalk		(14,00, 16,00, "NW_CITY_MERCHANT_PATH_28_D");
	
	TA_Cook_Stove		(16,00, 17,00, "NW_CITY_UPTOWN_HUT_04_COOK");
	TA_Smalltalk		(17,00, 21,45, "NW_CITY_UPTOWN_PATH_15");
	TA_Cook_Stove		(21,45, 00,00, "NW_CITY_UPTOWN_HUT_04_COOK");
	TA_Sleep			(00,00, 04,30, "NW_CITY_LUTERO_BED_WEIB");
	TA_Sweep_FP			(04,30, 06,00, "NW_CITY_UPTOWN_HUT_04_01");
};
