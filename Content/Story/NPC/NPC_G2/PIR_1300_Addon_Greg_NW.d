//******************************************************************************************
instance PIR_1300_Addon_Greg_NW (Npc_Default)
{
	// ------ General ------
	name								=	"Greg";
	guild 								=	GIL_NONE;
	id 									=	1300;
	voice 								=	1;
	flags      							=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;

	// ------ Aivars -------
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder|IGNORE_Theft|IGNORE_Sheepkiller;
	self.aivar[AIV_ToughGuy]			=	true;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 50);
	B_SetFightSkills (self, FightTalent_Master-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_Piratensaebel);

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Hum_Head_Thief", Face_Greg, 0, ITAR_PIR_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1300;
};

FUNC VOID Rtn_Start_1300()
{
	TA_Stand_ArmsCrossed	(08,00,22,00, "NW_FARM1_PATH_SPAWN_05");
    TA_Stand_ArmsCrossed	(22,00,08,00, "NW_FARM1_PATH_SPAWN_05");
};
FUNC VOID Rtn_Markt_1300()
{
	TA_Stand_Eating	(08,00,23,00, "MARKT");
    TA_Stand_Eating	(23,00,08,00, "MARKT");
};
FUNC VOID Rtn_Taverne_1300()
{
	TA_Sit_Bench	(08,00,23,00, "NW_TAVERNE_GREGSBENCH");
    TA_Sit_Bench	(23,00,08,00, "NW_TAVERNE_GREGSBENCH");
};
FUNC VOID Rtn_RakeCave_1300()
{
	TA_RangerMeeting	(08,00,23,00, "NW_BIGFARM_LAKE_CAVE_01");
    TA_RangerMeeting	(23,00,08,00, "NW_BIGFARM_LAKE_CAVE_01");
};
FUNC VOID Rtn_Bigcross_1300()
{
	TA_Stand_Eating	(08,00,23,00, "BIGCROSS");
    TA_Stand_Eating	(23,00,08,00, "BIGCROSS");
};
FUNC VOID Rtn_Dexter_1300()
{
	TA_Stand_WP	(08,00,23,00, "NW_CASTLEMINE_TOWER_CAMPFIRE_03");
    TA_Stand_WP	(23,00,08,00, "NW_CASTLEMINE_TOWER_CAMPFIRE_03");
};
FUNC VOID Rtn_DexterHouseRun_1300()
{
	TA_RunToWP	(00,00,12,00, "NW_CASTLEMINE_HUT_10");
	TA_RunToWP	(12,00,00,00, "NW_CASTLEMINE_HUT_10");
};
FUNC VOID Rtn_DexterHouseWalk_1300()
{
	TA_Stand_WP	(00,00,12,00, "NW_CASTLEMINE_HUT_10");
	TA_Stand_WP	(12,00,00,00, "NW_CASTLEMINE_HUT_10");
};
FUNC VOID Rtn_DexterThrone_1300()
{
	TA_Sit_Throne	(00,00,12,00, "NW_CASTLEMINE_HUT_10");
	TA_Sit_Throne	(12,00,00,00, "NW_CASTLEMINE_HUT_10");
};
FUNC VOID Rtn_Tot_1300()
{
	TA_Sleep	(08,00,23,00, "TOT");
    TA_Sleep	(23,00,08,00, "TOT");
};
