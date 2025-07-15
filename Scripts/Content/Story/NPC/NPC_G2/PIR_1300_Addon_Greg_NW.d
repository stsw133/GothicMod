///******************************************************************************************
instance PIR_1300_Addon_Greg_NW (Npc_Default)
{
	/// ------ General ------
	name								=	"Greg";
	guild								=	GIL_NONE;
	id									=	1300;
	voice								=	1;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars -------
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller;
	aivar[AIV_ToughGuy]					=	true;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_AddFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_Piratensaebel);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Thief", Face_N_Greg, Teeth_Normal, ItAr_PIR_H);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1300;
};

func void Rtn_Start_1300()
{
	TA_Stand_ArmsCrossed	(08,00, 22,00, "NW_FARM1_PATH_SPAWN_05");
	TA_Stand_ArmsCrossed	(22,00, 08,00, "NW_FARM1_PATH_SPAWN_05");
};
func void Rtn_Markt_1300()
{
	TA_Stand_Eating	(08,00, 23,00, "MARKT");
	TA_Stand_Eating	(23,00, 08,00, "MARKT");
};
func void Rtn_Taverne_1300()
{
	TA_Sit_Bench	(08,00, 23,00, "NW_TAVERNE_GREGSBENCH");
	TA_Sit_Bench	(23,00, 08,00, "NW_TAVERNE_GREGSBENCH");
};
func void Rtn_RakeCave_1300()
{
	TA_RangerMeeting	(08,00, 23,00, "NW_BIGFARM_LAKE_CAVE_01");
	TA_RangerMeeting	(23,00, 08,00, "NW_BIGFARM_LAKE_CAVE_01");
};
func void Rtn_Bigcross_1300()
{
	TA_Stand_Eating	(08,00, 23,00, "BIGCROSS");
	TA_Stand_Eating	(23,00, 08,00, "BIGCROSS");
};
func void Rtn_Dexter_1300()
{
	TA_Stand_WP	(08,00, 23,00, "NW_CASTLEMINE_TOWER_CAMPFIRE_03");
	TA_Stand_WP	(23,00, 08,00, "NW_CASTLEMINE_TOWER_CAMPFIRE_03");
};
func void Rtn_DexterHouseRun_1300()
{
	TA_RunToWP	(00,00, 12,00, "NW_CASTLEMINE_HUT_10");
	TA_RunToWP	(12,00, 00,00, "NW_CASTLEMINE_HUT_10");
};
func void Rtn_DexterHouseWalk_1300()
{
	TA_Stand_WP	(00,00, 12,00, "NW_CASTLEMINE_HUT_10");
	TA_Stand_WP	(12,00, 00,00, "NW_CASTLEMINE_HUT_10");
};
func void Rtn_DexterThrone_1300()
{
	TA_Sit_Throne	(00,00, 12,00, "NW_CASTLEMINE_HUT_10");
	TA_Sit_Throne	(12,00, 00,00, "NW_CASTLEMINE_HUT_10");
};
func void Rtn_Tot_1300()
{
	TA_Sleep	(08,00, 23,00, "TOT");
	TA_Sleep	(23,00, 08,00, "TOT");
};
