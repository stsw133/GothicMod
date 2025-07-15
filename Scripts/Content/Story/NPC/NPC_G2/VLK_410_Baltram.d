///******************************************************************************************
instance VLK_410_Baltram (Npc_Default)
{
	/// ------ General ------
	name								=	"Baltram";
	guild								=	GIL_VLK;
	id									=	410;
	voice								=	1;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_IsRanger;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_ShortSword2);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_N_Weak_Markus_Kark, Teeth_Normal, ItAr_VLK_L_13);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_410;
};

func void Rtn_Start_410()
{
	TA_Stand_ArmsCrossed	(05,05, 20,05, "NW_CITY_ZURIS");
	TA_Smalltalk			(20,05, 00,05, "NW_CITY_BEER_05");
	TA_Sleep				(00,05, 05,05, "NW_CITY_HOTEL_BED_02");
};
