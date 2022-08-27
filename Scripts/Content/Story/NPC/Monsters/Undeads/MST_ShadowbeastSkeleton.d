///******************************************************************************************
prototype Mst_Default_ShadowbeastSkeleton (C_Npc)
{
	/// ------ Monster ------
	name								=	"Szkielet-cieniostwór";
	guild								=	GIL_SKELETON_MONSTER;
	aivar[AIV_MM_REAL_ID]				= 	ID_SHADOWBEAST_SKELETON;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SHADOWBEAST;
	
	B_SetAttributesToLevel (self, 40);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_POINT]				=	level*AR_PER_LEVEL - 20 + 10*AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level*MR_PER_LEVEL - 20;
	protection[PROT_FLY]				=	level*MR_PER_LEVEL - 20;
	protection[PROT_MAGIC]				=	level*MR_PER_LEVEL - 20;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_ShadowbeastSkeleton()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Shadowbeast_Skeleton_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Shadowbeast_Skeleton (Mst_Default_ShadowbeastSkeleton)
{
	B_SetVisuals_ShadowbeastSkeleton();
};
