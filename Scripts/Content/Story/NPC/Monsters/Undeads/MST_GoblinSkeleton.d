///******************************************************************************************
/// GoblinSkeleton
///******************************************************************************************
prototype Mst_Default_GoblinSkeleton (C_Npc)
{
	/// ------ Monster ------
	name								=	"Szkielet-goblin";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				=	ID_GOBBO_SKELETON;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_LONG;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};

///******************************************************************************************
func void B_SetVisuals_GoblinSkeleton()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gobbo_Skeleton_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Gobbo_Skeleton (Mst_Default_GoblinSkeleton)
{
	B_SetVisuals_GoblinSkeleton();
	EquipItem (self, ItMw_1h_Misc_Sword);
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Gobbo_SkeletonOWDemonTower (Mst_Default_GoblinSkeleton)
{
	B_SetVisuals_GoblinSkeleton();
	EquipItem (self, ItMw_1h_GobboMace_04);
};
