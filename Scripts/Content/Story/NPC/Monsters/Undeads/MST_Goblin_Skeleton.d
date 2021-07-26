///******************************************************************************************
prototype Mst_Default_Gobbo_Skeleton (C_Npc)
{
	/// ------ Monster ------
	name								=	"Szkielet-goblin";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_GOBBO_SKELETON;
	
	/// ------ Attributes & FT ------
//	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
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
func void B_SetVisuals_Gobbo_Skeleton()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gobbo_Skeleton_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Gobbo_Skeleton (Mst_Default_Gobbo_Skeleton)
{
	B_SetAttributesToLevel (self, 10);
	B_SetVisuals_Gobbo_Skeleton();
	
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Goblin_04);
};
///******************************************************************************************
instance Summoned_Gobbo_Skeleton (Mst_Default_Gobbo_Skeleton)
{
	name								=	"Przyzwany szkielet-goblin";
	guild								=	GIL_SUMMONED;
	aivar[AIV_MM_REAL_ID]				=	ID_SUMMONED;
	
	B_SetAttributesToLevel (self, 10);
	B_SetVisuals_Gobbo_Skeleton();
	
	EquipItem (self, ItMw_1h_MISC_Sword);
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Gobbo_SkeletonOWDemonTower (Mst_Default_Gobbo_Skeleton)
{
	B_SetAttributesToLevel (self, 10);
	B_SetVisuals_Gobbo_Skeleton();
	
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Goblin_04);
};
