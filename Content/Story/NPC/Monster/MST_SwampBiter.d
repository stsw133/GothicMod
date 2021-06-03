///******************************************************************************************
prototype Mst_Default_Swampbiter (C_Npc)
{
	/// ------ Monster ------
	name								=	"Bagienny k¹sacz";
	guild								=	GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID]				= 	ID_BITER;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 10);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SCAVENGER;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter] 			=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Swampbiter()
{
	Mdl_SetVisual		(self, "Scavenger.mds");
	Mdl_ApplyOverlayMds (self, "Orcbiter.mds");
	Mdl_SetVisualBody	(self, "Sc2_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Orcbiter()
{
	Mdl_SetVisual		(self, "Scavenger.mds");
	Mdl_ApplyOverlayMds (self, "Orcbiter.mds");
	Mdl_SetVisualBody	(self, "Sc2_Body", 1, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Swampbiter (Mst_Default_Swampbiter)
{
	B_SetVisuals_Swampbiter();
};
instance Orcbiter (Mst_Default_Swampbiter)
{
	name						=	"Orkowy k¹sacz";
	aivar[AIV_MM_REAL_ID]		= 	ID_BITER;
	B_SetVisuals_Orcbiter();
};
