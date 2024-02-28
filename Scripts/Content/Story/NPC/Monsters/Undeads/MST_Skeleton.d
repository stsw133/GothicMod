///******************************************************************************************
prototype Mst_Default_Skeleton (C_Npc)
{
	/// ------ Monster ------
	name								=	"Szkielet";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SKELETON;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_HUMAN_NORMAL;
	
	NpcFn_SetAttributesToLevel (self, 20);
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
func void B_SetVisuals_Skeleton()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_SetVisualBody	(self, "Ske_Body", 0, default, "", default, default, -1);
	Mdl_ApplyOverlayMds (self, "humans_skeleton.mds");
	Mdl_ApplyOverlayMds (self, "humans_1hST1.mds");
	Mdl_ApplyOverlayMds (self, "humans_2hST1.mds");
	Mdl_ApplyOverlayMds (self, "humans_BowT1.mds");
	Mdl_ApplyOverlayMds (self, "humans_CBowT1.mds");
};
///******************************************************************************************
instance Skeleton (Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
