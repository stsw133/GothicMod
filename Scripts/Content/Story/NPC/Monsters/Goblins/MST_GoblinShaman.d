///******************************************************************************************
prototype Mst_Default_GoblinShaman (C_Npc)
{
	/// ------ Monster ------
	name								=	"Goblin-szaman";
	guild								=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]				=	ID_GOBBO_SHAMAN;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	B_SetAttributesToLevel (self, 12);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL / 2;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL / 2;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL / 2;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL / 2;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL / 2;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL / 2;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_GoblinShaman()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Shaman_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.05, 1.05, 1.05);
};
///******************************************************************************************
instance Gobbo_Shaman (Mst_Default_GoblinShaman)
{
	B_SetVisuals_GoblinShaman();
};
