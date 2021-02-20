//******************************************************************************************
PROTOTYPE Mst_Default_MinecrawlerWarrior (C_Npc)
{
	// ------ Monster ------
	name								=	"Pe�zacz-wojownik";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				= 	ID_MINECRAWLERWARRIOR;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 24);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_MinecrawlerWarrior()
{
	Mdl_SetVisual		(self, "Crawler.mds");
	Mdl_SetVisualBody	(self, "Cr2_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};

//******************************************************************************************
INSTANCE MinecrawlerWarrior	(Mst_Default_MinecrawlerWarrior)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_MinecrawlerWarrior();
};
