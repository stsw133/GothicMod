///******************************************************************************************
instance BAU_970_Orlan (Npc_Default)
{
	/// ------ General ------
	name								=	"Orlan";
	guild								=	GIL_NONE;
	id									=	970;
	voice								=	5;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_Story]					=	STORY_IsRanger;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_1h_Vlk_Dagger);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_B, "Hum_Head_Fatbald", Face_B_Normal_Sharky, Teeth_Normal, ItAr_BAU_H_02);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_970;
};

func void Rtn_Start_970()
{
	TA_Stand_WP	(08,00, 22,00, "NW_TAVERNE_IN_04");
	TA_Stand_WP	(22,00, 08,00, "NW_TAVERNE_IN_04");
};
func void Rtn_Wettkampf_970()
{
	TA_Stand_WP	(08,00, 22,00, "NW_TAVERNE");
	TA_Stand_WP	(22,00, 08,00, "NW_TAVERNE");
};
func void Rtn_RangerMeeting_970()
{
	TA_RangerMeeting	(08,00, 22,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_RangerMeeting	(22,00, 08,00, "NW_TAVERNE_IN_RANGERMEETING");
};
func void Rtn_Parking_970()
{
	TA_Stand_Guarding	(08,00, 22,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_Stand_Guarding	(22,00, 08,00, "NW_TAVERNE_IN_RANGERMEETING");
};
