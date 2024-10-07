///******************************************************************************************
instance VLK_486_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buergerin;
	guild								=	GIL_VLK;
	id									=	486;
	voice								=	17;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 35);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe8", FaceBabe_N_Lilo, Teeth_Pretty, ItAr_Babe_VLK_L_01);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_486;
};

func void Rtn_Start_486()
{
	TA_Stand_ArmsCrossed	(05,30, 06,00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Smalltalk			(06,00, 08,00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_ArmsCrossed	(08,00, 09,00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Smalltalk			(09,00, 11,00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_ArmsCrossed	(11,00, 12,00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Smalltalk			(12,00, 14,00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_ArmsCrossed	(14,00, 15,00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Smalltalk			(15,00, 17,00, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Stand_ArmsCrossed	(17,00, 17,30, "NW_CITY_MERCHANT_PATH_36_B");
	TA_Cook_Stove			(17,30, 20,00, "NW_CITY_ZURIS_FRAU_COOK");
	TA_Sit_Chair			(20,00, 23,30, "NW_CITY_MERCHANT_HUT_02_IN_02");
	TA_Sleep				(23,30, 05,30, "NW_CITY_BED_ZURIS_FRAU");
};
