///******************************************************************************************
instance VLK_442_Arbeiter (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Arbeiter;
	guild								=	GIL_VLK;
	id									=	442;
	voice								=	6;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ AI vars ------
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_VLK_Axe);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart_Senyan, Teeth_Normal, ItAr_BAU_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Tired.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_442;
};

func void Rtn_Start_442()
{
	TA_Repair_Hut	(05,00, 19,00, "NW_CITY_HABOUR_WERFT_ENTRY");
	TA_Smalltalk	(19,00, 05,00, "NW_CITY_PATH_HABOUR_01");
};
