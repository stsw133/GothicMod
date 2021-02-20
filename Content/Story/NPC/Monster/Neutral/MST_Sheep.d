//******************************************************************************************
PROTOTYPE Mst_Default_Sheep (C_Npc)		
{
	// ------ Monster ------
	name								=	"Owca";
	guild								=	GIL_SHEEP;
	aivar[AIV_MM_REAL_ID]				= 	ID_SHEEP;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 0);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;

	// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] 		=	false;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Sheep()
{
	Mdl_SetVisual		(self, "Sheep.mds");
	Mdl_SetVisualBody	(self, "Sheep_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Sheep (Mst_Default_Sheep)
{
	start_aistate				=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]		=	OnlyRoutine;
	B_SetVisuals_Sheep();
};
//******************************************************************************************
INSTANCE Follow_Sheep (Mst_Default_Sheep)
{
	name						=	"Betsy";
	aivar[AIV_ToughGuy]			=	true;
	aivar[AIV_MM_RoamStart]		=	OnlyRoutine;
	start_aistate				=	ZS_MM_Rtn_Follow_Sheep;
	B_SetVisuals_Sheep();
};
INSTANCE Follow_Sheep_AKIL (Mst_Default_Sheep)
{
	aivar[AIV_ToughGuy]			=	true;
	aivar[AIV_MM_RoamStart]		=	OnlyRoutine;
	start_aistate				=	ZS_MM_Rtn_Follow_Sheep;
	B_SetVisuals_Sheep();
};
//******************************************************************************************
INSTANCE Balthasar_Sheep1 (Mst_Default_Sheep)
{
	start_aistate				=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]		=	OnlyRoutine;
	B_SetVisuals_Sheep();
};
INSTANCE Balthasar_Sheep2 (Mst_Default_Sheep)
{
	start_aistate				=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]		=	OnlyRoutine;
	B_SetVisuals_Sheep();
};
INSTANCE Balthasar_Sheep3 (Mst_Default_Sheep)
{
	start_aistate				=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]		=	OnlyRoutine;
	B_SetVisuals_Sheep();
};
