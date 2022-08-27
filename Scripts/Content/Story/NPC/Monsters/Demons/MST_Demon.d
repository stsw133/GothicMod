///******************************************************************************************
prototype Mst_Default_Demon (C_Npc)
{
	/// ------ Monster ------
	name								=	"Demon";
	guild								=	GIL_DEMON;
	aivar[AIV_MM_REAL_ID]				=	ID_DEMON;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_FIRE;
	fight_tactic						=	FAI_DEMON;
	
	B_SetAttributesToLevel (self, 50);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_POINT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_FIRE]				=	level*MR_PER_LEVEL - 20 + 5*MR_PER_LEVEL;
	protection[PROT_FLY]				=	level*MR_PER_LEVEL - 20;
	protection[PROT_MAGIC]				=	level*MR_PER_LEVEL - 20;
	
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
func void B_SetVisuals_Demon()
{
	Mdl_SetVisual		(self, "Demon.mds");
	Mdl_SetVisualBody	(self, "Dem_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Demon (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
///******************************************************************************************
instance Summoned_Demon (Mst_Default_Demon)
{		
	name								=	"Przyzwany demon";
	guild								=	GIL_SUMMONED;
	aivar[AIV_MM_REAL_ID]				=	ID_SUMMONED;
	
	B_SetAttributesToLevel (self, level);
	B_SetVisuals_Demon();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Xardas_DT_Demon1 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon2 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon3 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon4 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon5 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
