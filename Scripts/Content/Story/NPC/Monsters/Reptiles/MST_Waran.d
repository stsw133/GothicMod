///******************************************************************************************
prototype Mst_Default_Waran (C_Npc)
{
	/// ------ Monster ------
	name								=	"Jaszczur";
	guild								=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]				= 	ID_WARAN;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_WARAN;
	
	B_SetAttributesToLevel (self, 12);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_POINT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_FIRE]				=	level*MR_PER_LEVEL - 20;
	protection[PROT_FLY]				=	level*MR_PER_LEVEL - 20;
	protection[PROT_MAGIC]				=	level*MR_PER_LEVEL - 20;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Waran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_SetVisualBody	(self, "War_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_DesertWaran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_SetVisualBody	(self, "War_Body", 1, default, "", default, default, -1);
};
func void B_SetVisuals_MountainWaran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_SetVisualBody	(self, "War_Body", 2, default, "", default, default, -1);
};
///******************************************************************************************
instance Waran (Mst_Default_Waran)
{
	B_SetVisuals_Waran();
};
instance DesertWaran (Mst_Default_Waran)
{
	B_SetVisuals_DesertWaran();
};
instance MountainWaran (Mst_Default_Waran)
{
	B_SetVisuals_MountainWaran();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance BeachWaran1 (Mst_Default_Waran)
{
	B_SetVisuals_Waran();
};
instance BeachWaran2 (Mst_Default_Waran)
{
	B_SetVisuals_Waran();
};
