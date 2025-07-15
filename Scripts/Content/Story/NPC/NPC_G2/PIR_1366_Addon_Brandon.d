///******************************************************************************************
instance PIR_1366_Addon_Brandon (Npc_Default)
{
	/// ------ General ------
	name								=	"Brandon";
	guild								=	GIL_PIR;
	id									=	1366;
	voice								=	4;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ AI vars ------
	aivar[AIV_FollowDist]				=	400;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_AddFightSkills (self, 70);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_MASTER;
	
	/// ------ Weapons ------
	EquipItem (self, ItMw0_Schiffsaxt);
	
	/// ------ Inventory ------
	CreateInvItem (self, ItPo_Health_03);
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Pony", Face_N_Tough_Okyl, Teeth_Normal, ItAr_PIR_M);
	Mdl_SetModelFatness	(self, 1.1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds");
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_1366;
};

func void Rtn_Start_1366()
{
	TA_Smalltalk		(07,03, 21,03, "ADW_PIRATECAMP_BEACH_06");
	TA_Stand_Drinking	(21,03, 22,03, "ADW_PIRATECAMP_BEACH_18");
	TA_Sit_Campfire		(22,03, 01,03, "ADW_PIRATECAMP_BEACH_18");
	TA_Stand_Drinking	(01,03, 03,03, "ADW_PIRATECAMP_BEACH_18");
	TA_Sit_Campfire		(03,03, 04,03, "ADW_PIRATECAMP_BEACH_18");
	TA_Pee				(04,03, 04,09, "ADW_PIRATECAMP_BEACH_18");
	TA_Stand_Drinking	(04,09, 04,14, "ADW_PIRATECAMP_BEACH_18");
	TA_Sit_Campfire		(04,14, 07,03, "ADW_PIRATECAMP_BEACH_18");
};
func void Rtn_Follow_1366()
{
	TA_Follow_Player	(08,00, 20,00, "ADW_CANYON_TELEPORT_PATH_06");
	TA_Follow_Player	(20,00, 08,00, "ADW_CANYON_TELEPORT_PATH_06");
};
