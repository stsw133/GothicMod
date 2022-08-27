///******************************************************************************************
prototype Mst_Default_Addon_Alligator (C_Npc)
{
	/// ------ Monster ------
	name								=	"Aligator";
	guild								=	GIL_Alligator;
	aivar[AIV_MM_REAL_ID]				= 	ID_Alligator;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_ALLIGATOR;
	
	B_SetAttributesToLevel (self, 15);
	
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
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Alligator()
{
	Mdl_SetVisual		(self, "Alligator.mds");
	Mdl_SetVisualBody	(self, "Kro_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Alligator (Mst_Default_Addon_Alligator)
{
	B_SetVisuals_Alligator();
};
