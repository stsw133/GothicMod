///******************************************************************************************
instance PIR_1365_Addon_Matt (Npc_Default)
{
	/// ------ General ------
	name								=	"Matt";
	guild								=	GIL_PIR;
	id									=	1365;
	voice								=	10;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	500;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_AddFightSkills (self, 50);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw_Addon_PIR2hAxe);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_FatBald", Face_N_Normal14, Teeth_Normal, ItAr_PIR_L);
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1365;
};

func void Rtn_Start_1365()
{
	TA_Smalltalk		(07,05, 16,05, "ADW_PIRATECAMP_BEACH_11");
	TA_Stand_Drinking	(16,05, 20,05, "ADW_PIRATECAMP_BEACH_11");
	TA_Smalltalk		(20,05, 21,05, "ADW_PIRATECAMP_BEACH_11");
	TA_Stand_Drinking	(21,05, 07,05, "ADW_PIRATECAMP_BEACH_11");
};
func void Rtn_Follow_1365()
{
	TA_Follow_Player	(08,00, 20,00, "ADW_CANYON_TELEPORT_PATH_06");
	TA_Follow_Player	(20,00, 08,00, "ADW_CANYON_TELEPORT_PATH_06");
};
