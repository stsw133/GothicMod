//******************************************************************************************
PROTOTYPE Mst_Default_ShadowBeast (C_Npc)
{
	// ------ Monster ------
	name								=	"Cieniostwór";
	guild								=	GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID]				= 	ID_SHADOWBEAST;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 30);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SHADOWBEAST;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	false;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart]			=	6;	
	aivar[AIV_MM_SleepEnd]				=	20;
	aivar[AIV_MM_RoamStart]				=	20;
	aivar[AIV_MM_RoamEnd]				=	6;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_ShadowBeast()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Sha_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_DesertBeast()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Sha_Body", 1, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_SnowBeast()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Sha_Body", 2, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE ShadowBeast (Mst_Default_ShadowBeast)
{
	B_SetVisuals_ShadowBeast();
};
INSTANCE DesertBeast (Mst_Default_ShadowBeast)
{
	B_SetVisuals_DesertBeast();
};
INSTANCE SnowBeast (Mst_Default_ShadowBeast)
{
	B_SetVisuals_SnowBeast();
};
//******************************************************************************************
INSTANCE BeachShadowBeast1 (Mst_Default_ShadowBeast)
{
	B_SetVisuals_ShadowBeast();
};
