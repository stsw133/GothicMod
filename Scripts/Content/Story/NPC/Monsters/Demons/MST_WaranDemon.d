///******************************************************************************************
prototype Mst_Default_WaranDemon (C_Npc)
{
	/// ------ Monster ------
	name								=	"Demoniczny jaszczur";
	guild								=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]				= 	ID_FIREWARAN;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_FIRE;
	fight_tactic						=	FAI_WARAN;
	
	B_SetAttributesToLevel (self, 40);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	-1;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
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
func void B_SetVisuals_DemonFireWaran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_ApplyOverlayMds	(self, "Firewaran.mds");
	Mdl_SetVisualBody	(self, "War_DemonFire_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance DemonFireWaran (Mst_Default_WaranDemon)
{
	B_SetVisuals_DemonFireWaran();
};
