//******************************************************************************************
PROTOTYPE Mst_Default_Minecrawler (C_Npc)			
{
	// ------ Monster ------
	name								=	"Pe³zacz";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				= 	ID_MINECRAWLER;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 12);

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
	aivar[AIV_MM_WuselStart]			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Minecrawler()
{
	Mdl_SetVisual		(self, "Crawler.mds");
	Mdl_SetVisualBody	(self, "Crw_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Minecrawler (Mst_Default_Minecrawler)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Minecrawler();
};
//******************************************************************************************
INSTANCE Minecrawler_Priest (Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
};
INSTANCE GoldMinecrawler (Mst_Default_Minecrawler)
{
	B_SetVisuals_Minecrawler();
};
