//******************************************************************************************
prototype Mst_Default_Gobbo_Skeleton (C_NPC)
{
	/// ------ Monster ------
	name								=	"Szkielet-goblin";
	guild								=	GIL_GOBBO_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_GOBBO_SKELETON;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 10);
	
	/// ------ FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;
	
	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_Gobbo_Skeleton()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gobbo_Skeleton_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Gobbo_Skeleton (Mst_Default_Gobbo_Skeleton)
{
	B_SetVisuals_Gobbo_Skeleton();
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace);
};
///******************************************************************************************
instance Summoned_Gobbo_Skeleton (Mst_Default_Gobbo_Skeleton)
{
	name							= "Przyzwany szkielet-goblin";
	guild							= GIL_SUMMONED;
	aivar[AIV_MM_REAL_ID]			= ID_SUMMONED;
	
	B_SetMonsterAttributes (self, Gobbo_Skeleton.level);
	
	aivar[AIV_PARTYMEMBER] = true;
	start_aistate = ZS_MM_Rtn_Summoned;
	B_SetAttitude (self, ATT_FRIENDLY);
	
	B_SetVisuals_Gobbo_Skeleton();
	Npc_SetToFightMode (self, ItMw_1H_Bau_Mace);
};
///******************************************************************************************
instance Gobbo_SkeletonOWDemonTower (Mst_Default_Gobbo_Skeleton)
{
	B_SetVisuals_Gobbo_Skeleton();
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace);
};
