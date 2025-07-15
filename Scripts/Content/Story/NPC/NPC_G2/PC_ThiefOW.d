///******************************************************************************************
instance PC_ThiefOW (Npc_Default)
{
	/// ------ General ------
	name								=	"Diego";
	guild								=	GIL_NONE;
	id									=	1;
	voice								=	11;
	flags								=	NPC_FLAG_IMPORTANT;
	npctype								=	NPCTYPE_FRIEND;
	
	/// ------ AI vars -------
	aivar[AIV_FollowDist]				=	300;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_AddFightSkills (self, 80);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_1H_SLD_Sword);
	EquipItem (self, ItRw0_Bow_M_03);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	CreateInvItems (self, ItPo_Health_03, 10);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_L, "Hum_Head_Thief", Face_L_Diego, Teeth_Normal, ItAr_STT_H);
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Arrogance.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1;
};

func void Rtn_Start_1()
{
	TA_Sit_Bench	(08,00, 23,00, "LOCATION_02_05");
	TA_Sit_Bench	(23,00, 08,00, "LOCATION_02_05");
};
func void Rtn_Follow_1()
{
	TA_Follow_Player	(08,00, 23,00, "LOCATION_02_05");
	TA_Follow_Player	(23,00, 08,00, "LOCATION_02_05");
};
func void Rtn_Tot_1()
{
	TA_Sit_Bench	(08,00, 23,00, "TOT");
	TA_Sit_Bench	(23,00, 08,00, "TOT");
};
func void Rtn_Xardas_1()
{
	TA_Stand_Eating	(08,00, 23,00, "OW_PATH_129");
	TA_Stand_Eating	(23,00, 08,00, "OW_PATH_129");
};
func void Rtn_Fajeth_1()
{
	TA_Stand_Eating	(08,00, 23,00, "OW_ORC_LOOKOUT_2_03");
	TA_Stand_Eating	(23,00, 08,00, "OW_ORC_LOOKOUT_2_03");
};
func void Rtn_Silvestro_1()
{
	TA_Stand_Eating	(08,00, 23,00, "SPAWN_OW_SCAVENGER_01_DEMONT5");
	TA_Stand_Eating	(23,00, 08,00, "SPAWN_OW_SCAVENGER_01_DEMONT5");
};
func void Rtn_Grimes_1()
{
	TA_Smoke_Joint	(08,00, 23,00, "OW_PATH_155");
	TA_Smoke_Joint	(23,00, 08,00, "OW_PATH_155");
};
func void Rtn_Pass_1()
{
	TA_Sit_Campfire	(08,00, 23,00, "START");
	TA_Sit_Campfire	(23,00, 08,00, "START");
};
