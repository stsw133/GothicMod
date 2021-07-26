///******************************************************************************************
prototype Mst_Default_Skeleton_Dark (C_Npc)
{
	/// ------ Monster ------
	name								=	"Mroczny szkielet";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SKELETON_DARK;
	
	/// ------ Attributes & FT ------
//	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_HUMAN_STRONG;
	B_SetAttributesToLevel (self, 35);
	
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
func void B_SetVisuals_Skeleton_Dark()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_ApplyOverlayMds (self, "humans_1hST1.mds");
	Mdl_ApplyOverlayMds (self, "humans_2hST3.mds");
	Mdl_ApplyOverlayMds (self, "humans_BowT1.mds");
	Mdl_ApplyOverlayMds (self, "humans_CBowT1.mds");
	Mdl_ApplyOverlayMds (self, "humans_skeleton.mds");
	Mdl_SetVisualBody	(self, "Chs_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.15, 1.25, 1.15);
};
///******************************************************************************************
instance Skeleton_Dark (Mst_Default_Skeleton)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Skeleton_Dark();
	EquipItem (self, ItMw_2H_OldScythe);
};
