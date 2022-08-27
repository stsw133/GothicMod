///******************************************************************************************
prototype Mst_Default_GiantBug (C_Npc)
{
	/// ------ Monster ------
	name								=	"Polna bestia";
	guild								=	GIL_GIANT_BUG;
	aivar[AIV_MM_REAL_ID]				=	ID_GIANT_BUG;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_GIANT_BUG;
	
	B_SetAttributesToLevel (self, 8);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL / 2;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL / 4;
	protection[PROT_POINT]				=	level*AR_PER_LEVEL / 2;
	protection[PROT_FIRE]				=	level*MR_PER_LEVEL / 2;
	protection[PROT_FLY]				=	level*MR_PER_LEVEL / 2;
	protection[PROT_MAGIC]				=	level*MR_PER_LEVEL / 2;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_GiantBug()
{
	Mdl_SetVisual		(self, "Giant_Bug.mds");
	Mdl_SetVisualBody	(self, "Giant_Bug_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Giant_Bug (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Giant_Bug_VinoRitual1 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Giant_Bug_VinoRitual2 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
///******************************************************************************************
instance Lobarts_Giant_Bug1 (Mst_Default_GiantBug)	
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug2 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug3 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug4 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug5 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug6 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
instance Lobarts_Giant_Bug7 (Mst_Default_GiantBug)
{
	B_SetVisuals_GiantBug();
};
