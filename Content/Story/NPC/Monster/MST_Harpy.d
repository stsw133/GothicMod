//******************************************************************************************
PROTOTYPE Mst_Default_Harpy (C_Npc)
{
	// ------ Monster ------
	name								=	"Harpia";
	guild								=	GIL_HARPY;
	aivar[AIV_MM_REAL_ID]				=	ID_HARPY;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 16);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_HARPY;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter] 			=	false;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Harpy()
{
	Mdl_SetVisual		(self, "Harpie.mds");
	Mdl_SetVisualBody	(self, "Har_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_VampHarpy()
{
	Mdl_SetVisual		(self, "Harpie.mds");
	Mdl_SetVisualBody	(self, "Har_Vamp_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_DragonHarpy()
{
	Mdl_SetVisual		(self, "Harpie.mds");
	Mdl_SetVisualBody	(self, "Har_Dragon_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Harpie (Mst_Default_Harpy)
{
	B_SetVisuals_Harpy();
};
INSTANCE VampHarpie (Mst_Default_Harpy)
{
	B_SetMonsterAttributes (self, 19);
	B_SetVisuals_VampHarpy();
};
INSTANCE DragonHarpie (Mst_Default_Harpy)
{
	B_SetMonsterAttributes (self, 22);
	B_SetVisuals_DragonHarpy();
};
