///******************************************************************************************
instance VLK_466_Gernod (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_BUERGER;
	guild								=	GIL_VLK;
	id									=	466;
	voice								=	1;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 40);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Weak_Ulbert, Teeth_Normal, ItAr_Vlk_L_06);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_466;
};

func void Rtn_Start_466()
{
	TA_Sit_Bench		(06,05, 15,00, "NW_CITY_HABOUR_POOR_AREA_HUT_03_B");
	TA_Stand_Drinking	(15,00, 18,00, "NW_CITY_HABOUR_POOR_AREA_HUT_03_B");
	TA_Sit_Bench		(18,00, 21,00, "NW_CITY_HABOUR_POOR_AREA_HUT_03_B");
	TA_Stand_Drinking	(21,00, 01,10, "NW_CITY_HABOUR_POOR_AREA_HUT_03_B");
	TA_Sleep			(01,10, 06,05, "NW_CITY_HABOUR_POOR_AREA_HUT_05_BED_01");
};
