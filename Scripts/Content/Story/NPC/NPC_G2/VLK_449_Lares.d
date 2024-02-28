///******************************************************************************************
instance VLK_449_Lares (Npc_Default)
{
	/// ------ General ------
	name								=	"Lares";
	guild 								=	GIL_NONE;
	id 									=	449;
	voice 								=	9;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;

	/// ------ AI vars ------
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor|IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_Story]					=	STORY_IsRanger;

	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, FightTalent_Initiate+5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	/// ------ Weapons ------
	EquipItem (self, ItMw_Schwert3);

	/// ------ Inventory ------
	CreateInvItem (self, ItMw_Schwert3);
	CreateInvItem (self, ItMi_OldCoin);
	CreateInvItems (self, ItMi_Gold, 100);
	CreateInvItems (self, ItPo_Health_02, 5);

	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_Lares, 0, ITAR_Vlk_L_03);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_449;
};

func void Rtn_PreStart_449()
{
	TA_Stand_Guarding	(08,00,20,00, "NW_CITY_HABOUR_02_B");
	TA_Stand_Guarding	(20,00,08,00, "NW_CITY_HABOUR_02_B");
}; 
func void Rtn_Start_449()
{
	TA_Stand_Guarding	(04,35,20,05, "NW_CITY_HABOUR_02_B");
    TA_Sit_Chair		(20,05,04,35, "NW_CITY_HABOUR_TAVERN01_08");
};
func void Rtn_Guide_449()
{
	TA_Guide_Player	(08,00,20,00, "NW_TAVERNE_BIGFARM_05");
	TA_Guide_Player	(20,00,08,00, "NW_TAVERNE_BIGFARM_05");
};
func void Rtn_GUIDEPORTALTEMPEL1_449()
{
	TA_Guide_Player	(08,00,20,00, "NW_CITY_TO_FOREST_11");
	TA_Guide_Player	(20,00,08,00, "NW_CITY_TO_FOREST_11");
};
func void Rtn_GUIDEPORTALTEMPEL2_449()
{
	TA_Guide_Player	(08,00,20,00, "NW_TAVERN_TO_FOREST_02");
	TA_Guide_Player	(20,00,08,00, "NW_TAVERN_TO_FOREST_02");
};
func void Rtn_GUIDEPORTALTEMPEL3_449()
{
	TA_Guide_Player	(08,00,20,00, "NW_TAVERNE_TROLLAREA_14");
	TA_Guide_Player	(20,00,08,00, "NW_TAVERNE_TROLLAREA_14");
};
func void Rtn_GUIDEPORTALTEMPEL4_449()
{
	TA_Guide_Player	(08,00,20,00, "NW_TROLLAREA_PATH_58");
	TA_Guide_Player	(20,00,08,00, "NW_TROLLAREA_PATH_58");
};
func void Rtn_GUIDEPORTALTEMPEL5_449()
{
	TA_Guide_Player	(08,00,20,00, "NW_TROLLAREA_PATH_47");
	TA_Guide_Player	(20,00,08,00, "NW_TROLLAREA_PATH_47");
};
func void Rtn_GUIDEPORTALTEMPEL6_449()
{
	TA_Guide_Player	(08,00,20,00, "NW_TROLLAREA_RUINS_02");
	TA_Guide_Player	(20,00,08,00, "NW_TROLLAREA_RUINS_02");
};
func void Rtn_GUIDEPORTALTEMPELEND_449()
{
	TA_Guide_Player	(08,00,20,00, "NW_TROLLAREA_RUINS_41");
	TA_Guide_Player	(20,00,08,00, "NW_TROLLAREA_RUINS_41");
};
func void Rtn_GUIDEMEDIUMWALD1_449()
{
	TA_Guide_Player	(08,00,20,00, "NW_CITY_TO_FARM2_04");
	TA_Guide_Player	(20,00,08,00, "NW_CITY_TO_FARM2_04");
};
func void Rtn_GUIDEMEDIUMWALD2_449()
{
	TA_Guide_Player	(08,00,20,00, "NW_FOREST_PATH_62");
	TA_Guide_Player	(20,00,08,00, "NW_FOREST_PATH_62");
};
func void Rtn_PreRangerMeeting_449()
{
	TA_RangerMeeting	(05,00,20,00, "NW_TAVERNE_03");
	TA_RangerMeeting	(20,00,05,00, "NW_TAVERNE_03");
};
func void Rtn_RangerMeeting_449()
{
	TA_RangerMeeting	(05,00,20,00, "NW_TAVERNE_IN_RANGERMEETING_LARES");
	TA_RangerMeeting	(20,00,05,00, "NW_TAVERNE_IN_RANGERMEETING_LARES");
};
func void Rtn_Parking_449()
{
	TA_Stand_WP	(05,00,20,00, "NW_TAVERNE_IN_RANGERMEETING_LARES");
	TA_Stand_WP	(20,00,05,00, "NW_TAVERNE_IN_RANGERMEETING_LARES");
};
func void Rtn_WaitForShip_449()
{
	TA_Smalltalk	(08,00,20,00, "NW_WAITFOR_SHIP_05");
	TA_Smalltalk	(20,00,08,00, "NW_WAITFOR_SHIP_05");
};
func void Rtn_ShipOff_449()
{
	TA_Stand_Guarding	(04,35,20,05, "NW_CITY_HABOUR_02_B");
    TA_Sit_Chair		(20,05,04,35, "NW_CITY_HABOUR_TAVERN01_08");
};
func void Rtn_Ship_449()
{
	TA_Smalltalk	(08,00,23,00, "SHIP_CREW_05");
	TA_Smalltalk	(23,00,08,00, "SHIP_CREW_05");
};
