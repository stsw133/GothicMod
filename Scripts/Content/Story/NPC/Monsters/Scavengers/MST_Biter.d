///******************************************************************************************
prototype Mst_Default_Biter (C_Npc)
{
	/// ------ Monster ------
	name								=	"K¹sacz";
	guild								=	GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID]				= 	ID_BITER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SCAVENGER;
	
	B_SetAttributesToLevel (self, 10);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL / 2;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL / 2;
	protection[PROT_POINT]				=	level*AR_PER_LEVEL / 2;
	protection[PROT_FIRE]				=	level*MR_PER_LEVEL / 2;
	protection[PROT_FLY]				=	level*MR_PER_LEVEL / 2;
	protection[PROT_MAGIC]				=	level*MR_PER_LEVEL / 2;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Orcbiter()
{
	Mdl_SetVisual		(self, "Scavenger.mds");
	Mdl_ApplyOverlayMds (self, "Orcbiter.mds");
	Mdl_SetVisualBody	(self, "Sc2_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_Swampbiter()
{
	Mdl_SetVisual		(self, "Scavenger.mds");
	Mdl_ApplyOverlayMds (self, "Orcbiter.mds");
	Mdl_SetVisualBody	(self, "Sc2_Swamp_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_Demonbiter()
{
	Mdl_SetVisual		(self, "Scavenger.mds");
	Mdl_ApplyOverlayMds (self, "Orcbiter.mds");
	Mdl_SetVisualBody	(self, "Sc2_Demon_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Orcbiter (Mst_Default_Biter)
{
	B_SetVisuals_Orcbiter();
};
instance Swampbiter (Mst_Default_Biter)
{
	B_SetVisuals_Swampbiter();
};
instance Demonbiter (Mst_Default_Biter)
{
	B_SetVisuals_Demonbiter();
};
