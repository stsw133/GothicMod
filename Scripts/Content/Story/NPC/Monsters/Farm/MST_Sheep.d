///******************************************************************************************
/// Sheep
///******************************************************************************************
prototype Mst_Default_Sheep (C_Npc)
{
	/// ------ Monster ------
	name								=	"Owca";
	guild								=	GIL_LIVESTOCK;
	aivar[AIV_MM_REAL_ID]				=	ID_SHEEP;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	
	NpcFn_SetAttributesToLevel (self, 1);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	
	Npc_SetToFistMode(self);
};

///******************************************************************************************
func void B_SetVisuals_Sheep()
{
	Mdl_SetVisual		(self, "Sheep.mds");
	Mdl_SetVisualBody	(self, "Sheep_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_Hammel()
{
	Mdl_SetVisual		(self, "Sheep.mds");
	Mdl_SetVisualBody	(self, "Hammel_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Sheep (Mst_Default_Sheep)
{
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	B_SetVisuals_Sheep();
};
instance Hammel (Mst_Default_Sheep)
{
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	B_SetVisuals_Hammel();
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Follow_Sheep (Mst_Default_Sheep)
{
	name								=	"Betsy";
	
	aivar[AIV_ToughGuy]					=	true;
	start_aistate						=	ZS_MM_Rtn_Follow_Sheep;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	
	B_SetVisuals_Sheep();
};
instance Follow_Sheep_AKIL (Mst_Default_Sheep)
{
	aivar[AIV_ToughGuy]					=	true;
	start_aistate						=	ZS_MM_Rtn_Follow_Sheep;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	
	B_SetVisuals_Sheep();
};

///******************************************************************************************
instance Balthasar_Sheep1 (Mst_Default_Sheep)
{
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	B_SetVisuals_Sheep();
};
instance Balthasar_Sheep2 (Mst_Default_Sheep)
{
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	B_SetVisuals_Sheep();
};
instance Balthasar_Sheep3 (Mst_Default_Sheep)
{
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	B_SetVisuals_Sheep();
};
