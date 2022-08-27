///******************************************************************************************
prototype Mst_Default_SkeletonMage (C_Npc)			
{
	/// ------ Monster ------
	name								=	"Szkielet-mag";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SKELETON_MAGE;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	
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
func void B_SetVisuals_SkeletonMage()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_ApplyOverlayMds (self, "humans_skeleton_fly.mds");
	Mdl_SetVisualBody	(self, "Ske_Fly_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Skeleton_Mage (Mst_Default_SkeletonMage)
{
	B_SetVisuals_SkeletonMage();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Skeleton_Mage_Angar (Mst_Default_SkeletonMage)
{
 	B_SetVisuals_SkeletonMage();
	CreateInvItem (self, ItAm_Mana_Angar_MIS);
	CreateInvItem (self, ItPo_Perm_Mana);
};
///******************************************************************************************
instance SecretLibrarySkeleton (Mst_Default_SkeletonMage)
{
	B_SetVisuals_SkeletonMage();
};
