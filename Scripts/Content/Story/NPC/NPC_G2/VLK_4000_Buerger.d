///******************************************************************************************
instance VLK_4000_Buerger (Npc_Default)
{
	/// ------ General ------
	name								=	NAME_Buerger;
	guild								=	GIL_VLK;
	id									=	4000;
	voice								=	6;
	npctype								=	NPCTYPE_AMBIENT;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Mace);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_NormalBart21, Teeth_Normal, ItAr_Vlk_L_02);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4000;
};

func void Rtn_Start_4000()
{
	TA_Sleep		(22,00, 08,00, "NW_CITY_UPTOWN_HUT_05_BED_01");
	TA_Smalltalk	(08,00, 12,00, "NW_CITY_UPTOWN_HUT_04_ENTRY");
	TA_Sit_Bench	(12,00, 15,00, "NW_CITY_GUARD_01");
	TA_Smalltalk	(15,00, 18,00, "NW_CITY_UPTOWN_HUT_04_ENTRY");
	TA_Sit_Bench	(18,00, 20,00, "NW_CITY_GUARD_01");
	TA_Sit_Bench	(20,00, 22,00, "NW_CITY_UPTOWN_PATH_27");
};
