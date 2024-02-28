///******************************************************************************************
prototype Mst_Default_WolfSkeleton (C_Npc)
{
	/// ------ Monster ------
	name								=	"Wilk-szkielet";
	guild								=	GIL_SHADOWBEAST_SKELETON;
	aivar[AIV_MM_REAL_ID]				=	ID_WOLF_SKELETON;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_WOLF;
	
	NpcFn_SetAttributesToLevel (self, 15);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_LONG;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_WolfSkeleton()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Wol_Skeleton_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Wolf_Skeleton (Mst_Default_WolfSkeleton)
{
	B_SetVisuals_WolfSkeleton();
};
