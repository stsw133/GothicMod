///******************************************************************************************
prototype Mst_Default_Hare (C_Npc)		
{
	/// ------ Monster ------
	name								=	"Zaj¹c";
	guild								=	GIL_WILD;
	aivar[AIV_MM_REAL_ID]				= 	ID_HARE;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	B_SetAttributesToLevel (self, 0);
	
	/// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater] 		=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Hare()
{
	Mdl_SetVisual		(self, "Zaic.mds");
	Mdl_SetVisualBody	(self, "Zaic_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Hare (Mst_Default_Hare)
{
	B_SetVisuals_Hare();
};
