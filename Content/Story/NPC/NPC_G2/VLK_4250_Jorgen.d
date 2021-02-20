//******************************************************************************************
instance VLK_4250_Jorgen (Npc_Default)
{
	// ------ General ------
	name								=	"Jorgen";
	guild 								=	GIL_NONE;
	id 									=	4250;
	voice 								=	7;
	flags       						=	0;
	npctype								=	NPCTYPE_MAIN;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Strong);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_COWARD;

	// ------ Weapons ------
	EquipItem (self, ItMw_1h_Bau_Mace);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thief", Face_Normal04, 0, ITAR_VLK_L_03);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_4250;
};

FUNC VOID Rtn_Start_4250()
{
	TA_Stand_ArmsCrossed	(08,00,20,00, "NW_MONASTERY_BRIDGE_01");
    TA_Stand_ArmsCrossed	(20,00,08,00, "NW_MONASTERY_BRIDGE_01");
};
FUNC VOID Rtn_Kloster_4250()
{
	TA_Stand_ArmsCrossed	(08,00,20,00, "NW_MONASTERY_PLACE_06");
    TA_Sleep				(20,00,08,00, "NW_MONASTERY_NOVICE04_06");
};
FUNC VOID Rtn_RausAusKloster_4250()
{
	TA_Stand_ArmsCrossed	(08,00,20,00, "NW_BIGFARM_KITCHEN_OUT_06");
    TA_Stand_ArmsCrossed	(20,00,08,00, "NW_BIGFARM_KITCHEN_OUT_06");
};
FUNC VOID Rtn_WaitForShipCaptain_4250()
{
	TA_Sit_Bench	(08,00,20,00, "NW_WAITFOR_SHIP_CAPTAIN");
    TA_Sit_Bench	(20,00,08,00, "NW_WAITFOR_SHIP_CAPTAIN");
};
FUNC VOID Rtn_AllOnBoard_4250()
{
	TA_Stand_WP	(08,00,23,00, "SHIP_CREW_CAPTAIN");
	TA_Sleep	(23,00,08,00, "SHIP_IN_06");
};
