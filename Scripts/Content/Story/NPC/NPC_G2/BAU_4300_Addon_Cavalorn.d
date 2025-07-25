///******************************************************************************************
instance BAU_4300_Addon_Cavalorn (Npc_Default)
{
	/// ------ General ------
	name								=	"Cavalorn";
	guild								=	GIL_NONE;
	id									=	4300;
	voice								=	8;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_IsRanger;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_ShortSword2);
	EquipItem (self, ItRw0_Bow_M_01);
	CreateInvItem (self, ITAR_Leather_L);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Psionic", Face_B_Cavalorn, Teeth_Normal, ItAr_Ranger_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_4300;
};

func void Rtn_Start_4300()
{
	TA_Stand_Eating	(05,00, 20,00, "NW_XARDAS_GOBBO_01");
	TA_Stand_Eating	(20,00, 05,00, "NW_XARDAS_GOBBO_01");
};
func void Rtn_KillBandits_4300()
{
	TA_RunToWP	(05,00, 20,00, "NW_XARDAS_BANDITS_LEFT");
	TA_RunToWP	(20,00, 05,00, "NW_XARDAS_BANDITS_LEFT");
};
func void Rtn_OrnamentSteinring_4300()
{
	TA_Stand_WP	(05,00, 20,00, "NW_LITTLESTONEHENDGE");
	TA_Stand_WP	(20,00, 05,00, "NW_LITTLESTONEHENDGE");
};
func void Rtn_PreRangerMeeting_4300()
{
	TA_RangerMeeting	(05,00, 20,00, "NW_TAVERNE_06");
	TA_RangerMeeting	(20,00, 05,00, "NW_TAVERNE_06");
};
func void Rtn_RangerMeeting_4300()
{
	TA_RangerMeeting	(05,00, 20,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_RangerMeeting	(20,00, 05,00, "NW_TAVERNE_IN_RANGERMEETING");
};
func void Rtn_Parking_4300()
{
	TA_Stand_ArmsCrossed	(05,00, 20,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_Stand_ArmsCrossed	(20,00, 05,00, "NW_TAVERNE_IN_RANGERMEETING");
};
func void Rtn_Stadt_4300()
{
	TA_Sit_Bench	(05,00, 20,00, "NW_CITY_MERCHANT_PATH_15");
	TA_Sit_Bench	(20,00, 05,00, "NW_CITY_MERCHANT_PATH_15");
};
