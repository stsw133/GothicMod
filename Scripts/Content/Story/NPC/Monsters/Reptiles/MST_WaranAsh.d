///******************************************************************************************
prototype Mst_Default_WaranAsh (C_Npc)
{
	/// ------ Monster ------
	name								=	"Jaszczur popielny";
	guild								=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]				= 	ID_WARAN;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_WARAN;
	
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetMonsterProtection (self, level);
	
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
func void B_SetVisuals_WaranAsh()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_SetVisualBody	(self, "War_Ash_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.2, 1.2, 1.2);
};
///******************************************************************************************
instance AshWaran (Mst_Default_Waran)
{
	B_SetVisuals_WaranAsh();
};
