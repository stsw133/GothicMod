///******************************************************************************************
instance BAU_961_Gaan (Npc_Default)
{
	/// ------ General ------
	name								=	"Gaan";
	guild 								=	GIL_NONE;
	id 									=	961;
	voice 								=	3;
	npctype								=	NPCTYPE_MAIN;

	/// ------ AI vars ------
	aivar[AIV_NPCIsRanger]				=	true;

	/// ------ Attributes ------
	B_SetAttributesToLevel (self, 20);
	B_SetFightSkills (self, FightTalent_Initiate-5);

	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);
	EquipItem (self, ItRw_Sld_Bow);

	/// ------ Inventory ------
	B_CreateAmbientInv(self);

	/// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Bald", Face_Normal10, 0, ITAR_Leather_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Militia.mds");

	/// ------ Rtn ------
	daily_routine 						=	Rtn_PreStart_961;
};

func void Rtn_PreStart_961()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_FARM3_PATH_LEVELCHANGE_02");	
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_FARM3_PATH_LEVELCHANGE_02");
};
func void Rtn_Start_961()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_FARM3_GAAN");
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_FARM3_STABLE_REST_01");
};
func void Rtn_PreRangerMeeting_961()
{
	TA_RangerMeeting	(05,00,20,00, "NW_TAVERNE_03");
	TA_RangerMeeting	(20,00,05,00, "NW_TAVERNE_03");
};
func void Rtn_RangerMeeting_961()
{
	TA_RangerMeeting	(05,00,20,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_RangerMeeting	(20,00,05,00, "NW_TAVERNE_IN_RANGERMEETING");
};
func void Rtn_Parking_961()
{
	TA_Stand_ArmsCrossed	(05,00,20,00, "NW_TAVERNE_IN_RANGERMEETING");
	TA_Stand_ArmsCrossed	(20,00,05,00, "NW_TAVERNE_IN_RANGERMEETING");
};
