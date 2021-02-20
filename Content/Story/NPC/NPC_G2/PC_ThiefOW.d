//******************************************************************************************
INSTANCE PC_ThiefOW (Npc_Default)
{
	// ------ General ------
	name								=	"Diego";
	guild 								=	GIL_NONE;
	id 									=	1;
	voice 								=	11;
	flags       						=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;

	// ------ Aivars -------
	aivar[AIV_FollowDist]				=	300;

	// ------ Attributes ------
	B_SetAttributesToLevel (self, 60);
	B_SetFightSkills (self, FightTalent_Master-10);

	// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;

	// ------ Weapons ------
	EquipItem (self, ItMw_1H_SLD_Sword);
	EquipItem (self, ItRw_Bow_M_03);

	// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, itpo_health_01, 10);

	// ------ Visuals ------
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_L, "Hum_Head_Thief", Face_Diego, 0, ITAR_STT_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");

	// ------ Rtn ------
	daily_routine 						=	Rtn_Start_1;
};

FUNC VOID Rtn_Start_1()
{
	TA_Sit_Bench	(08,00,23,00, "LOCATION_02_05");
	TA_Sit_Bench	(23,00,08,00, "LOCATION_02_05");
};
FUNC VOID Rtn_Follow_1()
{
	TA_Follow_Player	(08,00,23,00, "LOCATION_02_05");
    TA_Follow_Player	(23,00,08,00, "LOCATION_02_05");
};
FUNC VOID Rtn_Tot_1()
{
	TA_Sit_Bench	(08,00,23,00, "TOT");
    TA_Sit_Bench	(23,00,08,00, "TOT");
};
FUNC VOID Rtn_Xardas_1()
{
	TA_Stand_Eating	(08,00,23,00, "OW_PATH_129");
    TA_Stand_Eating	(23,00,08,00, "OW_PATH_129");
};
FUNC VOID Rtn_Fajeth_1()
{
	TA_Stand_Eating	(08,00,23,00, "OW_ORC_LOOKOUT_2_03");
    TA_Stand_Eating	(23,00,08,00, "OW_ORC_LOOKOUT_2_03");
};
FUNC VOID Rtn_Silvestro_1()
{
	TA_Stand_Eating	(08,00,23,00, "SPAWN_OW_SCAVENGER_01_DEMONT5");
    TA_Stand_Eating	(23,00,08,00, "SPAWN_OW_SCAVENGER_01_DEMONT5");
};
FUNC VOID Rtn_Grimes_1()
{
	TA_Smoke_Joint	(08,00,23,00, "OW_PATH_155");
    TA_Smoke_Joint	(23,00,08,00, "OW_PATH_155");
};
FUNC VOID Rtn_Pass_1()
{
	TA_Sit_Campfire	(08,00,23,00, "START");
    TA_Sit_Campfire	(23,00,08,00, "START");
};
