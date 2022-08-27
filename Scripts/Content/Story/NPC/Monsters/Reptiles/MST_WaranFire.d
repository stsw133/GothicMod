///******************************************************************************************
prototype Mst_Default_WaranFire (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ognisty jaszczur";
	guild								=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]				= 	ID_FIREWARAN;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_FIRE;
	fight_tactic						=	FAI_WARAN;
	
	B_SetAttributesToLevel (self, 20);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_POINT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_FIRE]				=	level*MR_PER_LEVEL - 20 + 10*MR_PER_LEVEL;
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
func void B_SetVisuals_FireWaran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_ApplyOverlayMds	(self, "Firewaran.mds");
	Mdl_SetVisualBody	(self, "War_Fire_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance FireWaran (Mst_Default_WaranFire)
{
	B_SetVisuals_FireWaran();
};
