///******************************************************************************************
PROTOTYPE Mst_Default_Keiler (C_Npc)
{
	/// ------ Monster ------
	name								=	"Dzik";
	guild								=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]				=	ID_KEILER;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 6);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_WOLF;
	
	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter]			=	true;
	
	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Keiler()
{
	Mdl_SetVisual		(self, "Keiler.mds");
	Mdl_SetVisualBody	(self, "Keiler_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Keiler (Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
};
