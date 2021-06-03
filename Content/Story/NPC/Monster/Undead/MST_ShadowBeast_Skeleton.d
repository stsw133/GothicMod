///******************************************************************************************
prototype Mst_Default_Shadowbeast_Skeleton (C_Npc)
{
	/// ------ Monster ------
	name								=	"Szkielet-cieniostwór";
	guild								=	GIL_SHADOWBEAST_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SHADOWBEAST_SKELETON;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 40);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SHADOWBEAST;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Shadowbeast_Skeleton()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Shadowbeast_Skeleton_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Shadowbeast_Skeleton (Mst_Default_Shadowbeast_Skeleton)
{
	B_SetVisuals_Shadowbeast_Skeleton();
};
