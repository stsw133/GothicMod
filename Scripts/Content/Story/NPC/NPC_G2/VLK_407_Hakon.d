///******************************************************************************************
instance VLK_407_Hakon (Npc_Default)
{
	/// ------ General ------
	name								=	"Hakon";
	guild								=	GIL_VLK;
	id									=	407;
	voice								=	12;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_ShortSword2);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_NormalBart20, Teeth_Normal, ItAr_VLK_L_14);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_407;
};

func void Rtn_Start_407()
{
	TA_Stand_ArmsCrossed	(05,10, 19,50, "NW_CITY_HAKON");
	TA_Smoke_Waterpipe		(19,50, 00,10, "NW_CITY_RAUCH_02");
	TA_Sleep				(00,10, 05,10, "NW_CITY_HOTEL_BED_04");
};
