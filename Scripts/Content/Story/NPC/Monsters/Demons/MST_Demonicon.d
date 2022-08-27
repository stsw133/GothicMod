///******************************************************************************************
prototype Mst_Default_Demonicon (C_Npc)
{
	/// ------ Monster ------
	name								=	"Demonikon";
	guild								=	GIL_DEMON;
	aivar[AIV_MM_REAL_ID]				= 	ID_DEMONICON;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;
	
	B_SetAttributesToLevel (self, 70);
	
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
	
	aivar[AIV_MM_FollowInWater] 		=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_LONG;
	aivar[AIV_MM_Packhunter] 			=	false;
//	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	//Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Demonicon()
{
	Mdl_SetVisual		(self, "SleepKeeper.mds");
	Mdl_SetVisualBody	(self, "SleepKeeper_Body", 1, default, "", default, default, -1);
};
///******************************************************************************************
instance Demonicon (Mst_Default_Demonicon)
{
	B_SetVisuals_Demonicon();
};
