///******************************************************************************************
instance VLK_478_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	Name_Buergerin;
	guild								=	GIL_VLK;
	id									=	478;
	voice								=	17;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 15);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe1", FaceBabe_N_OldBrown, Teeth_Pretty, ItAr_Babe_VLK_L_00);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_478;
};

func void Rtn_Start_478()
{
	TA_Pick_FP		(05,00, 17,00, "NW_CITY_PICK_01");
	TA_Stomp_Herb	(17,00, 22,00, "NW_CITY_HABOUR_STOMPER_02");
	TA_Sleep		(22,00, 05,00, "NW_CITY_HABOUR_HUT_05_BED_02");
};
