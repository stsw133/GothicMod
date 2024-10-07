///******************************************************************************************
/// Minecrawler
///******************************************************************************************
prototype Mst_Default_Minecrawler (C_Npc)
{
	/// ------ Monster ------
	name								=	"Pe³zacz";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				=	ID_MINECRAWLER;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;
	
	NpcFn_SetAttributesToLevel (self, 15);
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
func void B_SetVisuals_Minecrawler()
{
	Mdl_SetVisual		(self, "Crawler.mds");
	Mdl_SetVisualBody	(self, "Crw_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_Desertcrawler()
{
	Mdl_SetVisual		(self, "Crawler.mds");
	Mdl_SetVisualBody	(self, "Crw_Desert_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Minecrawler (Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
};
instance Desertcrawler (Mst_Default_Minecrawler)
{
	B_SetVisuals_Desertcrawler();
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Minecrawler_Priest (Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
};
instance GoldMinecrawler (Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
};
