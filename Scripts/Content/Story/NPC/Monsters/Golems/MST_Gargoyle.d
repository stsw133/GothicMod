///******************************************************************************************
prototype Mst_Default_Gargoyle (C_Npc)
{
	/// ------ Monster ------
	name								=	"Gargulec";
	guild								=	GIL_GARGOYLE;
	aivar[AIV_MM_REAL_ID]				=	ID_GARGOYLE;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_HARPY;
	
	B_SetAttributesToLevel (self, 30);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL - 10 * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL + 10 * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL + 10 * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater] 		=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Gargoyle()
{
	Mdl_SetVisual		(self, "Harpie.mds");
	Mdl_SetVisualBody	(self, "Gol_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Gargoyle (Mst_Default_Gargoyle)
{
	B_SetVisuals_Gargoyle();
};
