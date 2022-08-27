///******************************************************************************************
prototype Mst_Default_SkeletonWarrior (C_Npc)
{
	/// ------ Monster ------
	name								=	"Szkielet-wojownik";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SKELETON;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	B_SetAttributesToLevel (self, 30);
	
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
	aivar[AIV_MM_Packhunter] 			=	true;
//	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_SkeletonWarrior()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_ApplyOverlayMds (self, "humans_1hST2.mds");
	Mdl_ApplyOverlayMds (self, "humans_2hST2.mds");
	Mdl_ApplyOverlayMds (self, "humans_BowT2.mds");
	Mdl_ApplyOverlayMds (self, "humans_CBowT2.mds");
	Mdl_ApplyOverlayMds (self, "humans_skeleton.mds");
	Mdl_SetVisualBody	(self, "Ske_Body2", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Skeleton_Warrior (Mst_Default_SkeletonWarrior)
{
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
instance Skeleton_Archer (Mst_Default_SkeletonWarrior)
{
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_1h_MISC_Sword);
	EquipItem (self, ItRw_Bow_M_01);
};
///******************************************************************************************
instance Summoned_Skeleton_Warrior (Mst_Default_SkeletonWarrior)
{
	name								=	"Przyzwany szkielet-wojownik";
	guild								=	GIL_SUMMONED;
	aivar[AIV_MM_REAL_ID]				= 	ID_SUMMONED;
	
	B_SetAttributesToLevel (self, level);
	
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Crypt_Skeleton_Room_01 (Mst_Default_SkeletonWarrior)
{
	name								=	"Stra¿nik krypty";
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
	CreateInvItem (self, ItKe_EVT_CRYPT_01);
};
instance Crypt_Skeleton_Room_02 (Mst_Default_SkeletonWarrior)
{
	name								=	"Stra¿nik krypty";
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
	CreateInvItem (self, ItKe_EVT_CRYPT_02);
};
instance Crypt_Skeleton_Room_03 (Mst_Default_SkeletonWarrior)
{
	name								=	"Stra¿nik krypty";
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
	CreateInvItem (self, ItKe_EVT_CRYPT_03);
};
///******************************************************************************************
instance Skeleton_Archol1 (Mst_Default_SkeletonWarrior)
{
	aivar[AIV_EnemyOverride]			=	true;
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
instance Skeleton_Archol2 (Mst_Default_SkeletonWarrior)
{
	aivar[AIV_EnemyOverride]			=	true;
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
instance Skeleton_Archol3 (Mst_Default_SkeletonWarrior)
{
	aivar[AIV_EnemyOverride]			=	true;
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
instance Skeleton_Archol4 (Mst_Default_SkeletonWarrior)
{
	aivar[AIV_EnemyOverride]			=	true;
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
instance Skeleton_Archol5 (Mst_Default_SkeletonWarrior)
{
	aivar[AIV_EnemyOverride]			=	true;
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
instance Skeleton_Archol6 (Mst_Default_SkeletonWarrior)
{
	aivar[AIV_EnemyOverride]			=	true;
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
///******************************************************************************************
instance Skeleton_Mario1 (Mst_Default_SkeletonWarrior)
{
	aivar[AIV_EnemyOverride]			=	true;
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
instance Skeleton_Mario2 (Mst_Default_SkeletonWarrior)
{
	aivar[AIV_EnemyOverride]			=	true;
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
instance Skeleton_Mario3 (Mst_Default_SkeletonWarrior)
{
	aivar[AIV_EnemyOverride]			=	true;
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
instance Skeleton_Mario4 (Mst_Default_SkeletonWarrior)
{
	aivar[AIV_EnemyOverride]			=	true;
	B_SetVisuals_SkeletonWarrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
