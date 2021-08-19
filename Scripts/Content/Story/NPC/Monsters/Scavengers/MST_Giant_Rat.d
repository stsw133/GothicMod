///******************************************************************************************
prototype Mst_Default_GiantRat (C_Npc)			
{
	/// ------ Monster ------
	name								=	"Olbrzymi szczur";
	guild								=	GIL_GIANT_RAT;
	aivar[AIV_MM_REAL_ID]				=	ID_GIANT_RAT;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						= 	FAI_GIANT_RAT;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_GiantRat()
{
	Mdl_SetVisual		(self, "Giant_Rat.mds");
	Mdl_SetVisualBody	(self, "Giant_Rat_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_GiantDesertRat()
{
	Mdl_SetVisual		(self, "Giant_Rat.mds");
	Mdl_SetVisualBody	(self, "Giant_DesertRat_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.15, 1.15, 1);
};
///******************************************************************************************
instance Giant_Rat (Mst_Default_GiantRat)
{
	B_SetAttributesToLevel (self, 2);
	B_SetVisuals_GiantRat();
};
instance Giant_DesertRat (Mst_Default_GiantRat)
{
	name						=	"Pustynny szczur";
//	aivar[AIV_MM_FollowInWater]	=	true;
	B_SetAttributesToLevel (self, 4);
	B_SetVisuals_GiantDesertRat();
};
