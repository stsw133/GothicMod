///******************************************************************************************
prototype Mst_Default_Goat (C_Npc)		
{
	/// ------ Monster ------
	name								=	"Koza";
	guild								=	GIL_LIVESTOCK;
	aivar[AIV_MM_REAL_ID]				= 	ID_GOAT;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	
	NpcFn_SetAttributesToLevel (self, 0);
	
	/// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater] 		=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Goat()
{
	Mdl_SetVisual		(self, "Ziege.mds");
	Mdl_SetVisualBody	(self, "Ziege_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Goat (Mst_Default_Goat)
{
	B_SetVisuals_Goat();
};
