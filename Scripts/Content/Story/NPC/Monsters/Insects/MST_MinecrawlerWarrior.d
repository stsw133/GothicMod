///******************************************************************************************
prototype Mst_Default_MinecrawlerWarrior (C_Npc)
{
	/// ------ Monster ------
	name								=	"Pe³zacz-wojownik";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				=	ID_MINECRAWLERWARRIOR;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;
	
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart]			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_MinecrawlerWarrior()
{
	Mdl_SetVisual		(self, "Crawler.mds");
	Mdl_SetVisualBody	(self, "Cr2_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_DesertcrawlerWarrior()
{
	Mdl_SetVisual		(self, "Crawler.mds");
	Mdl_SetVisualBody	(self, "Cr2_Desert_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
///******************************************************************************************
instance MinecrawlerWarrior (Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_MinecrawlerWarrior();
};
instance DesertcrawlerWarrior (Mst_Default_MinecrawlerWarrior)
{
	B_SetVisuals_DesertcrawlerWarrior();
};
