///******************************************************************************************
instance Mil_350_Addon_Martin (Npc_Default)
{
	/// ------ General ------
	name								=	"Martin";
	guild								=	GIL_NONE;
	id									=	350;
	voice								=	7;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_IsRanger;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 30);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Mil_Sword);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_P, "Hum_Head_Thief", Face_P_OldMan_Gravo, Teeth_Normal, ItAr_MIL_L);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_350;
};

func void Rtn_PreStart_350()
{
	TA_Study_WP	(04,00, 23,00, "NW_CITY_PALCAMP_15");
	TA_Study_WP	(23,00, 04,00, "NW_CITY_PALCAMP_15");
};
func void Rtn_Start_350()
{
	TA_Study_WP		(04,00, 23,00, "NW_CITY_PALCAMP_15");
	TA_Sit_Chair	(23,00, 04,00, "NW_CITY_HABOUR_TAVERN01_04");
};
func void Rtn_PreRangerMeeting_350()
{
	TA_RangerMeeting	(05,00, 20,00, "NW_TAVERNE_07");
	TA_RangerMeeting	(20,00, 05,00, "NW_TAVERNE_07");
};
func void Rtn_RangerMeeting_350()
{
	TA_RangerMeeting	(05,00, 20,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_RangerMeeting	(20,00, 05,00, "NW_TAVERNE_IN_RANGERMEETING");
};
func void Rtn_Parking_350()
{
	TA_Stand_Guarding	(05,00, 20,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_Stand_Guarding	(20,00, 05,00, "NW_TAVERNE_IN_RANGERMEETING");
};
