///******************************************************************************************
prototype Mst_Default_GoblinSkeleton (C_Npc)
{
	/// ------ Monster ------
	name								=	"Szkielet-goblin";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_GOBBO_SKELETON;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	B_SetAttributesToLevel (self, 10);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL + 10 * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_LONG;
	aivar[AIV_MM_Packhunter] 			=	true;
//	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_GoblinSkeleton()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gobbo_Skeleton_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Gobbo_Skeleton (Mst_Default_GoblinSkeleton)
{
	B_SetVisuals_GoblinSkeleton();
	EquipItem (self, ItMw_1h_Goblin_04);
};
///******************************************************************************************
instance Summoned_Gobbo_Skeleton (Mst_Default_GoblinSkeleton)
{
	name								=	"Przyzwany szkielet-goblin";
	guild								=	GIL_SUMMONED;
	aivar[AIV_MM_REAL_ID]				=	ID_SUMMONED;
	
	B_SetAttributesToLevel (self, level);
	
	B_SetVisuals_GoblinSkeleton();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Gobbo_SkeletonOWDemonTower (Mst_Default_GoblinSkeleton)
{
	B_SetVisuals_GoblinSkeleton();
	EquipItem (self, ItMw_1h_Goblin_04);
};
