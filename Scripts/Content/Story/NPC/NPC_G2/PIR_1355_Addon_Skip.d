///******************************************************************************************
instance PIR_1355_Addon_Skip (Npc_Default)
{
	/// ------ General ------
	name								=	"Skip";
	guild								=	GIL_PIR;
	id									=	1355;
	voice								=	8;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	300;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_ShortSword2);
	EquipItem (self, ItRw0_Bow_M_01);
	
	/// ------ Inventory ------
	CreateInvItems (self, ItPo_Health_03, 2);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_N_Skip, Teeth_Normal, ItAr_PIR_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_PreStart_1355;
};

func void Rtn_PreStart_1355()
{
	TA_Stand_WP	(08,00, 21,00, "ADW_PIRATECAMP_HUT3_01");
	TA_Stand_WP	(21,00, 08,00, "ADW_PIRATECAMP_HUT3_01");
};
func void Rtn_Start_1355()
{
	TA_Stand_WP			(07,30, 11,30, "ADW_PIRATECAMP_HUT3_01");
	TA_Sit_Bench		(11,30, 20,30, "ADW_PIRATECAMP_HUT3_BENCH");
	TA_Sit_Campfire		(20,30, 01,30, "ADW_PIRATECAMP_BEACH_17");
	TA_Stand_Drinking	(01,30, 02,30, "ADW_PIRATECAMP_BEACH_17");
	TA_Sleep			(02,30, 07,30, "ADW_PIRATECAMP_HUT3_02");
};
func void Rtn_Follow_1355()
{
	TA_Follow_Player	(08,00, 20,00, "ADW_CANYON_TELEPORT_PATH_06");
	TA_Follow_Player	(20,00, 08,00, "ADW_CANYON_TELEPORT_PATH_06");
};
