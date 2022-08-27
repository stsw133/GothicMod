///******************************************************************************************
prototype Mst_Default_TrollDemon (C_Npc)
{
	/// ------ Monster ------
	name								=	"Demoniczny troll";
	guild								=	GIL_TROLL;
	aivar[AIV_MM_REAL_ID]				= 	ID_TROLL_DEMON;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_FLY;
	fight_tactic						=	FAI_TROLL;
	
	B_SetAttributesToLevel (self, 80);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_POINT]				=	-1;
	protection[PROT_FIRE]				=	level*MR_PER_LEVEL - 20 + 5*MR_PER_LEVEL;
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
func void B_SetVisuals_DemonTroll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Tro_Demon_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Troll_Demon (Mst_Default_TrollDemon)
{
	B_SetVisuals_DemonTroll();
};
