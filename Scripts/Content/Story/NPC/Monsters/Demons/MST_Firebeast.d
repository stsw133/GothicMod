///******************************************************************************************
prototype Mst_Default_Firebeast (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ognisty demon";
	guild								=	GIL_SHADOWBEAST_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SHADOWBEAST_DEMON;
	effect								=	"SPELLFX_FIRESWORD_HIT";
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_FIRE;
	fight_tactic						=	FAI_SHADOWBEAST;
	
	B_SetAttributesToLevel (self, 50);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_POINT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_FIRE]				=	-1;
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
	aivar[AIV_MM_SleepStart]			=	6;
	aivar[AIV_MM_SleepEnd]				=	20;
	aivar[AIV_MM_RoamStart]				=	20;
	aivar[AIV_MM_RoamEnd]				=	6;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Firebeast()
{
	Mdl_SetVisual		(self, "FireShadow.mds");
	Mdl_SetVisualBody	(self, "Shadowbeast_Skeleton_Body", 1, default, "", default, default, -1);
};
///******************************************************************************************
instance Shadowbeast_Fire (Mst_Default_Firebeast)
{
	B_SetVisuals_Firebeast();
};
///******************************************************************************************
instance Shadowbeast_Fire_CanyonLib (Mst_Default_Firebeast)
{
	aivar[AIV_EnemyOverride]			=	true;
	aivar[AIV_MaxDistToWp]				=	900;
	aivar[AIV_OriginalFightTactic]		=	FAI_SHADOWBEAST;
	B_SetVisuals_Firebeast();
};
