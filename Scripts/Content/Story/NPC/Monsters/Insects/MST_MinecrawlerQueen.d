///******************************************************************************************
prototype Mst_Default_MinecrawlerQueen (C_Npc)			
{
	/// ------ Monster ------
	name								=	"Kr�lowa pe�zaczy";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				= 	ID_MINECRAWLERQUEEN;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;
	
	B_SetAttributesToLevel (self, 40);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart]			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_MinecrawlerQueen()
{
	Mdl_SetVisual		(self, "CrwQ2.mds");
	Mdl_SetVisualBody	(self, "CrwQ2_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
///******************************************************************************************
instance MinecrawlerQueen (Mst_Default_Minecrawler)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_MinecrawlerQueen();
};