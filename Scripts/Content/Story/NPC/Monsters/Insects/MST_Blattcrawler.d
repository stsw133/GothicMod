///******************************************************************************************
prototype Mst_Default_Blattcrawler (C_Npc)			
{
	/// ------ Monster ------
	name								=	"Polny pe³zacz";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				= 	ID_BLATTCRAWLER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;
	
	B_SetAttributesToLevel (self, 11);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_POINT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_FIRE]				=	0;
	protection[PROT_FLY]				=	level*MR_PER_LEVEL - 20;
	protection[PROT_MAGIC]				=	level*MR_PER_LEVEL - 20;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart]			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Blattcrawler()
{
	Mdl_SetVisual		(self, "Blattcrawler.mds");
	Mdl_SetVisualBody	(self, "Blattcrawler_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Blattcrawler (Mst_Default_Blattcrawler)
{
	B_SetVisuals_Blattcrawler();
};
