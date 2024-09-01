///******************************************************************************************
prototype Mst_Default_SkeletonMage (C_Npc)			
{
	/// ------ Monster ------
	name								=	"Szkielet-mag";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				=	ID_SKELETON_MAGE;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_SkeletonMage()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_SetVisualBody	(self, "Ske_Fly_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_ApplyOverlayMds (self, "humans_skeleton_fly.mds");
};
///******************************************************************************************
instance Skeleton_Mage (Mst_Default_SkeletonMage)
{
	B_SetVisuals_SkeletonMage();
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Skeleton_Mage_Angar (Mst_Default_SkeletonMage)
{
	B_SetVisuals_SkeletonMage();
	CreateInvItem (self, ItAm_Mana_Angar_MIS);
	CreateInvItem (self, ItPo_Perm_Pow);
};
///******************************************************************************************
instance SecretLibrarySkeleton (Mst_Default_SkeletonMage)
{
	B_SetVisuals_SkeletonMage();
};
