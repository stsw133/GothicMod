///******************************************************************************************
prototype Mst_Default_Shadowbeast (C_Npc)
{
	/// ------ Monster ------
	name								=	"Cieniostwór";
	guild								=	GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID]				= 	ID_SHADOWBEAST;

	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 35);

	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SHADOWBEAST;

	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	false;

	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart]			=	6;	
	aivar[AIV_MM_SleepEnd]				=	20;
	aivar[AIV_MM_RoamStart]				=	20;
	aivar[AIV_MM_RoamEnd]				=	6;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Shadowbeast()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Sha_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Desertbeast()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Sha_Body", 1, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Snowbeast()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Sha_Body", 2, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Shadowbeast (Mst_Default_ShadowBeast)
{
	B_SetVisuals_ShadowBeast();
};
instance Desertbeast (Mst_Default_ShadowBeast)
{
	B_SetVisuals_DesertBeast();
};
instance Snowbeast (Mst_Default_ShadowBeast)
{
	B_SetVisuals_SnowBeast();
};
///******************************************************************************************
instance BeachShadowBeast1 (Mst_Default_ShadowBeast)
{
	B_SetVisuals_ShadowBeast();
};
