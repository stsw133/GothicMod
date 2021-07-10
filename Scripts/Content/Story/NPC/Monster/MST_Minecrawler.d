///******************************************************************************************
prototype Mst_Default_Minecrawler (C_Npc)			
{
	/// ------ Monster ------
	name								=	"Pe³zacz";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				= 	ID_MINECRAWLER;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 12);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart]			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Minecrawler()
{
	Mdl_SetVisual		(self, "Crawler.mds");
	Mdl_SetVisualBody	(self, "Crw_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_MinecrawlerWarrior()
{
	Mdl_SetVisual		(self, "Crawler.mds");
	Mdl_SetVisualBody	(self, "Cr2_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_MinecrawlerQueen()
{
	Mdl_SetVisual		(self, "CrwQ2.mds");
	Mdl_SetVisualBody	(self, "CrwQ2_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Blattcrawler()
{
	Mdl_SetVisual		(self, "Blattcrawler.mds");
	Mdl_SetVisualBody	(self, "Blattcrawler_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Minecrawler (Mst_Default_Minecrawler)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Minecrawler();
};
instance MinecrawlerWarrior (Mst_Default_Minecrawler)
{
	name						=	"Pe³zacz-wojownik";
	aivar[AIV_MM_REAL_ID]		= 	ID_MINECRAWLERWARRIOR;
	
	B_SetMonsterAttributes (self, 24);
	
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_MinecrawlerWarrior();
};
instance MinecrawlerQueen (Mst_Default_Minecrawler)
{
	name						=	"Królowa pe³zaczy";
	aivar[AIV_MM_REAL_ID]		= 	ID_MINECRAWLERQUEEN;
	aivar[AIV_MM_FollowTime]	=	FOLLOWTIME_SHORT;
	
	B_SetMonsterAttributes (self, 40);
	
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_MinecrawlerQueen();
};
instance Blattcrawler (Mst_Default_Minecrawler)
{
	name						=	"Leœny pe³zacz";
	aivar[AIV_MM_REAL_ID]		= 	ID_BLATTCRAWLER;
	
	B_SetMonsterAttributes (self, 11);
	protection[PROT_FIRE]		=	0;
	
	B_SetVisuals_Blattcrawler();
};
///******************************************************************************************
instance Minecrawler_Priest (Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
};
instance GoldMinecrawler (Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
};
