//******************************************************************************************
PROTOTYPE Mst_Default_Tiger (C_Npc)
{
	// ------ Monster ------
	name								=	"Tygrys";
	guild								=	GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID]				= 	ID_TIGER;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 20);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SHADOWBEAST;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart]			=	6;	
	aivar[AIV_MM_SleepEnd]				=	20;
	aivar[AIV_MM_RoamStart]				=	20;
	aivar[AIV_MM_RoamEnd]				=	6;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Tiger()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Tiger_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
	Mdl_SetModelScale	(self, 0.9, 0.9, 0.9);
};
func void B_SetVisuals_SnowTiger()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Tiger_Body", 1, DEFAULT, "", DEFAULT, DEFAULT, -1);
	Mdl_SetModelScale	(self, 0.9, 0.9, 0.9);
};
func void B_SetVisuals_Leopard()
{
	Mdl_SetVisual		(self, "Shadow.mds");
	Mdl_SetVisualBody	(self, "Tiger_Body", 2, DEFAULT, "", DEFAULT, DEFAULT, -1);
	Mdl_SetModelScale	(self, 0.9, 0.9, 0.9);
};
//******************************************************************************************
INSTANCE Tiger (Mst_Default_Tiger)
{
	B_SetVisuals_Tiger();
};
INSTANCE Tiger_Snow (Mst_Default_Tiger)
{
	B_SetVisuals_SnowTiger();
};
INSTANCE Leopard (Mst_Default_Tiger)
{
	name								=	"Lampart";
	B_SetMonsterAttributes (self, Tiger.level);
	B_SetVisuals_Leopard();
};
