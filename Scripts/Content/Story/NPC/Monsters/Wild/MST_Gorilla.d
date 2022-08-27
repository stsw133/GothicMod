///******************************************************************************************
prototype Mst_Default_Gorilla (C_Npc)
{
	/// ------ Monster ------
	name								=	"Goryl";
	guild								=	GIL_WILD;
	aivar[AIV_MM_REAL_ID]				= 	ID_GORILLA;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_TROLL;
	
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
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Gorilla()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Tro_Gorilla_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 0.4, 0.5, 0.4);
};
///******************************************************************************************
instance Gorilla (Mst_Default_Gorilla)
{
	B_SetVisuals_Gorilla();
};
