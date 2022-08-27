///******************************************************************************************
prototype Mst_Default_Troll (C_Npc)
{
	/// ------ Monster ------
	name								=	"Troll";
	guild								=	GIL_TROLL;
	aivar[AIV_MM_REAL_ID]				= 	ID_TROLL;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_FLY;
	fight_tactic						=	FAI_TROLL;
	
	B_SetAttributesToLevel (self, 60);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_POINT]				=	-1;
	protection[PROT_FIRE]				=	level*MR_PER_LEVEL - 20;
	protection[PROT_FLY]				=	-1;
	protection[PROT_MAGIC]				=	level*MR_PER_LEVEL - 20;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	bodyStateInterruptableOverride		=	true;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Troll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Tro_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_DesertTroll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Tro_Desert_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_SnowTroll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Tro_Snow_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Troll (Mst_Default_Troll)
{
	B_SetVisuals_Troll();
};
instance Troll_Desert (Mst_Default_Troll)
{
	B_SetVisuals_DesertTroll();
};
instance Troll_Snow (Mst_Default_Troll)
{
	B_SetVisuals_SnowTroll();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Valley_Troll (Mst_Default_Troll)
{
	aivar[AIV_MaxDistToWp] = 2300;
	aivar[AIV_OriginalFightTactic] = FAI_TROLL;
	B_SetVisuals_Troll();
};
instance Maya_Troll	(Mst_Default_Troll)
{
	aivar[AIV_MaxDistToWp] = 1000;
	aivar[AIV_OriginalFightTactic] = FAI_TROLL;
	B_SetVisuals_Troll();
};
