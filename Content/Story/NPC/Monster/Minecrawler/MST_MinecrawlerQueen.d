//******************************************************************************************
PROTOTYPE Mst_Default_MinecrawlerQueen (C_Npc)			
{
	// ------ Monster ------
	name								=	"Królowa pe³zaczy";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				= 	ID_MINECRAWLERQUEEN;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 40);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_MinecrawlerQueen()
{
	Mdl_SetVisual		(self, "CrwQ2.mds");
	Mdl_SetVisualBody	(self, "CrwQ2_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE MinecrawlerQueen (Mst_Default_MinecrawlerQueen)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_MinecrawlerQueen();
};
