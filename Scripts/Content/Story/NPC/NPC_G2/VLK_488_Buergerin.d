///******************************************************************************************
instance VLK_488_Buergerin (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buergerin;
	guild								=	GIL_VLK;
	id									=	488;
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
	NpcFn_SetVisual		(self, FEMALE, BodyTex_Default, BodySkin_N, "Hum_Head_BabeHair", FaceBabe_N_HairAndCloth, Teeth_Pretty, ItAr_Babe_BAU_H_00);
	Mdl_ApplyOverlayMds	(self, "Humans_Babe.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_488;
};

func void Rtn_Start_488()
{
	TA_Cook_Stove	(05,00, 08,00, "NW_CITY_HABOUR_HUT_08_IN_B");
	TA_Smalltalk	(08,00, 12,00, "NW_CITY_PATH_HABOUR_04");
	TA_Stand_Eating	(12,00, 14,00, "NW_CITY_PATH_HABOUR_03");
	TA_Sweep_FP		(14,00, 16,00, "NW_CITY_HABOUR_HUT_08_IN_B");
	TA_Stand_Eating	(16,00, 18,00, "NW_CITY_PATH_HABOUR_03");
	TA_Cook_Stove	(18,00, 20,00, "NW_CITY_HABOUR_HUT_08_IN_B");
	TA_Sweep_FP		(20,00, 00,00, "NW_CITY_HABOUR_HUT_08_IN_B");
	TA_Sleep		(00,00, 05,00, "NW_CITY_HABOUR_HUT_08_BED_01");
};
