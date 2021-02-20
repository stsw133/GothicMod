//******************************************************************************************
PROTOTYPE Mst_Default_ShadowBeast_Demon (C_Npc)
{
	// ------ Monster ------
	name								=	"Ognisty demon";
	guild								=	GIL_SHADOWBEAST_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SHADOWBEAST_SKELETON;
	effect								=	"SPELLFX_FIRESWORD_HIT";

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 50);
	protection[PROT_FIRE]				=	-1;

	// ------ FT ------
	damagetype 							=	DAM_FIRE;
	damage[DAM_INDEX_FIRE]				/=	2;
	
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
func void B_SetVisuals_ShadowBeast_Demon()
{
	Mdl_SetVisual		(self, "FireShadow.mds");
	Mdl_SetVisualBody	(self, "Shadowbeast_Skeleton_Body", 1, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE ShadowBeast_Fire (Mst_Default_ShadowBeast_Demon)
{
	B_SetVisuals_ShadowBeast_Demon();
};
//******************************************************************************************
INSTANCE ShadowBeast_Fire_CanyonLib (Mst_Default_ShadowBeast_Demon)
{
	aivar[AIV_EnemyOverride]	=	true;
	aivar[AIV_MaxDistToWp]		=	800;
	aivar[AIV_OriginalFightTactic]	=	FAI_SHADOWBEAST;
	B_SetVisuals_ShadowBeast_Demon();
};
