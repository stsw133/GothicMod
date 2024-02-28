///******************************************************************************************
prototype Mst_Default_MinecrawlerQueen (C_Npc)			
{
	/// ------ Monster ------
	name								=	"Królowa pe³zaczy";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				= 	ID_MINECRAWLERQUEEN;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;
	
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetMonsterProtection (self, level);
	
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
	Mdl_SetVisualBody	(self, "CrwQ2_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_DesertcrawlerQueen()
{
	Mdl_SetVisual		(self, "CrwQ2.mds");
	Mdl_SetVisualBody	(self, "CrwQ2_Body", 1, default, "", default, default, -1);
};
///******************************************************************************************
instance MinecrawlerQueen (Mst_Default_MinecrawlerQueen)
{
	B_SetVisuals_MinecrawlerQueen();
};
instance DesertcrawlerQueen (Mst_Default_MinecrawlerQueen)
{
	B_SetVisuals_DesertcrawlerQueen();
};
