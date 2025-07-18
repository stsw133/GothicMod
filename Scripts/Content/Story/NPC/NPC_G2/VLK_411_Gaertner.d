///******************************************************************************************
instance VLK_411_Gaertner (Npc_Default)
{
	/// ------ General ------
	name								=	"Ogrodnik";
	guild								=	GIL_VLK;
	id									=	411;
	voice								=	9;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_AddFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1h_Bau_Mace);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Psionic", Face_N_NormalBart_Graham, Teeth_Normal, ItAr_BAU_L_01);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_411;
};

func void Rtn_Start_411()
{
	TA_Rake_FP		(06,30, 08,30, "NW_CITY_CITYHALL_04");
	TA_Rake_FP		(08,30, 10,30, "NW_CITY_CITYHALL_10");
	TA_Rake_FP		(10,30, 12,30, "NW_CITY_CITYHALL_12");
	TA_Rake_FP		(12,30, 14,30, "NW_CITY_CITYHALL_07");
	TA_Rake_FP		(14,30, 16,30, "NW_CITY_CITYHALL_10");
	TA_Rake_FP		(16,30, 18,30, "NW_CITY_CITYHALL_12");
	TA_Rake_FP		(18,30, 20,30, "NW_CITY_CITYHALL_07");
	TA_Rake_FP		(20,30, 22,00, "NW_CITY_CITYHALL_04");
	
	TA_Sit_Campfire	(22,00, 06,30, "NW_CITY_CITYHALL_04_B");
};
