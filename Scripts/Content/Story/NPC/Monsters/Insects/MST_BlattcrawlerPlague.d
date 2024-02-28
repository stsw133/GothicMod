///******************************************************************************************
prototype Mst_Default_BlattcrawlerPlague (C_Npc)			
{
	/// ------ Monster ------
	name								=	"Plugawy pe³zacz";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				= 	ID_BLATTCRAWLER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;
	
	NpcFn_SetAttributesToLevel (self, 14);
	NpcFn_SetMonsterProtection (self, level);
	
	protection[PROT_FIRE]				=	0;
	
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
func void B_SetVisuals_PlagueCrawler()
{
	Mdl_SetVisual		(self, "Blattcrawler.mds");
	Mdl_SetVisualBody	(self, "Crw_Plague_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance PlagueCrawler (Mst_Default_BlattcrawlerPlague)
{
	B_SetVisuals_PlagueCrawler();
};
