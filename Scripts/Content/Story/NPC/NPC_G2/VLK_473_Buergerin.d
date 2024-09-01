///******************************************************************************************
instance VLK_473_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buergerin;
	guild								=	GIL_VLK;
	id									=	473;
	voice								=	17;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetFightSkills (self, 35);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_Babe8", FaceBabe_N_Lilo, Teeth_Pretty, ItAr_Babe_VLK_L_03);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_473;
};

func void Rtn_Start_473()
{
	TA_Smalltalk		(05,05, 12,30, "NW_CITY_HABOUR_PUFF_02");
	TA_Smalltalk		(12,30, 18,05, "NW_CITY_WAY_TO_SHIP_01");
	TA_Stand_Sweeping	(18,05, 22,05, "NW_CITY_HABOUR_POOR_AREA_HUT_01_IN");
	TA_Sleep			(22,05, 05,05, "NW_CITY_HABOUR_POOR_AREA_HUT_01_BED_01");
};
