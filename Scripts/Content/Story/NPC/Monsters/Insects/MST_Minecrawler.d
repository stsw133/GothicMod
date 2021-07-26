///******************************************************************************************
prototype Mst_Default_Minecrawler (C_Npc)			
{
	/// ------ Monster ------
	name								=	"Pe³zacz";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				= 	ID_MINECRAWLER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;
	
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
func void B_SetVisuals_Minecrawler()
{
	Mdl_SetVisual		(self, "Crawler.mds");
	Mdl_SetVisualBody	(self, "Crw_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_MinecrawlerWarrior()
{
	Mdl_SetVisual		(self, "Crawler.mds");
	Mdl_SetVisualBody	(self, "Cr2_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_MinecrawlerQueen()
{
	Mdl_SetVisual		(self, "CrwQ2.mds");
	Mdl_SetVisualBody	(self, "CrwQ2_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_Blattcrawler()
{
	Mdl_SetVisual		(self, "Blattcrawler.mds");
	Mdl_SetVisualBody	(self, "Blattcrawler_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_PlagueCrawler()
{
	Mdl_SetVisual		(self, "Blattcrawler.mds");
	Mdl_SetVisualBody	(self, "Crw_Plague_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Minecrawler (Mst_Default_Minecrawler)
{
	B_SetAttributesToLevel (self, 12);
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Minecrawler();
};
instance MinecrawlerWarrior (Mst_Default_Minecrawler)
{
	name								=	"Pe³zacz-wojownik";
	aivar[AIV_MM_REAL_ID]				= 	ID_MINECRAWLERWARRIOR;
	
	B_SetAttributesToLevel (self, 22);
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_MinecrawlerWarrior();
};
instance MinecrawlerQueen (Mst_Default_Minecrawler)
{
	name								=	"Królowa pe³zaczy";
	aivar[AIV_MM_REAL_ID]				= 	ID_MINECRAWLERQUEEN;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	
	B_SetAttributesToLevel (self, 40);
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_MinecrawlerQueen();
};
instance Blattcrawler (Mst_Default_Minecrawler)
{
	name								=	"Polny pe³zacz";
	aivar[AIV_MM_REAL_ID]				= 	ID_BLATTCRAWLER;
	
	B_SetAttributesToLevel (self, 11);
	protection[PROT_FIRE] = 0;
	B_SetVisuals_Blattcrawler();
};
instance PlagueCrawler (Mst_Default_Minecrawler)
{
	name								=	"Plugawy pe³zacz";
	aivar[AIV_MM_REAL_ID]				= 	ID_BLATTCRAWLER;
	
	B_SetAttributesToLevel (self, 14);
	protection[PROT_FIRE] = 0;
	B_SetVisuals_PlagueCrawler();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Minecrawler_Priest (Mst_Default_Minecrawler)
{
	B_SetAttributesToLevel (self, 13);
	B_SetVisuals_Minecrawler();
};
instance GoldMinecrawler (Mst_Default_Minecrawler)
{
	B_SetAttributesToLevel (self, 12);
	B_SetVisuals_Minecrawler();
};
