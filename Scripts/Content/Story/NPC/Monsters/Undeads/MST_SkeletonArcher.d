///******************************************************************************************
/// SkeletonArcher
///******************************************************************************************
prototype Mst_Default_SkeletonArcher (C_Npc)
{
	/// ------ Monster ------
	name								=	"Szkielet-³ucznik";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				=	ID_SKELETON;
	
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
func void B_SetVisuals_SkeletonArcher()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_SetVisualBody	(self, "Ske_Body2", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_ApplyOverlayMds (self, "humans_skeleton.mds");
	Mdl_ApplyOverlayMds (self, "humans_1hST1.mds");
	Mdl_ApplyOverlayMds (self, "humans_2hST1.mds");
	Mdl_ApplyOverlayMds (self, "humans_BowT2.mds");
	Mdl_ApplyOverlayMds (self, "humans_CbowT2.mds");
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Skeleton_Archer (Mst_Default_SkeletonArcher)
{
	B_SetVisuals_SkeletonArcher();
	EquipItem (self, ItMw_1h_MISC_Sword);
	EquipItem (self, ItRw0_Bow_M_01);
};
