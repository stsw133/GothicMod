///******************************************************************************************
prototype Mst_Default_SkeletonDark (C_Npc)
{
	/// ------ Monster ------
	name								=	"Mroczny szkielet";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SKELETON_DARK;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	NpcFn_SetAttributesToLevel (self, 35);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_SkeletonDark()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_SetVisualBody	(self, "Chs_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.15, 1.25, 1.15);
	Mdl_ApplyOverlayMds (self, "humans_skeleton.mds");
	Mdl_ApplyOverlayMds (self, "humans_1hST1.mds");
	Mdl_ApplyOverlayMds (self, "humans_2hST3.mds");
	Mdl_ApplyOverlayMds (self, "humans_BowT1.mds");
	Mdl_ApplyOverlayMds (self, "humans_CBowT1.mds");
};
///******************************************************************************************
instance Skeleton_Dark (Mst_Default_SkeletonDark)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_SkeletonDark();
	EquipItem (self, ItMw_2H_OldScythe);
};
