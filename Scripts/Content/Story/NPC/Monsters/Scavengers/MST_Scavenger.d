///******************************************************************************************
prototype Mst_Default_Scavenger (C_Npc)
{
	/// ------ Monster ------
	name								=	"Œcierwojad";
	guild								=	GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID]				=	ID_SCAVENGER;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_SCAVENGER;
	
	NpcFn_SetAttributesToLevel (self, 5);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart]			=	22;	
	aivar[AIV_MM_SleepEnd]				=	6;
	aivar[AIV_MM_EatGroundStart]		=	6;
	aivar[AIV_MM_EatGroundEnd]			=	22;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Scavenger()
{
	Mdl_SetVisual		(self, "Scavenger.mds");
	Mdl_SetVisualBody	(self, "Sca_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 0.9, 0.9, 0.9);
};
func void B_SetVisuals_DesertScavenger()
{
	Mdl_SetVisual		(self, "Scavenger.mds");
	Mdl_SetVisualBody	(self, "Sca_Desert_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 0.9, 0.9, 0.9);
};
func void B_SetVisuals_SnowScavenger()
{
	Mdl_SetVisual		(self, "Scavenger.mds");
	Mdl_SetVisualBody	(self, "Sca_Snow_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 0.9, 0.9, 0.9);
};
func void B_SetVisuals_DemonScavenger()
{
	Mdl_SetVisual		(self, "ScavengerGL.mds");
	Mdl_SetVisualBody	(self, "Sca_Demon_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.15, 1.15, 1.15);
};
///******************************************************************************************
instance Scavenger (Mst_Default_Scavenger)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Scavenger();
};
instance DesertScavenger (Mst_Default_Scavenger)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_DesertScavenger();
};
instance SnowScavenger (Mst_Default_Scavenger)
{
	B_SetVisuals_SnowScavenger();
};
instance Scavenger_Demon (Mst_Default_Scavenger)
{
	name						=	"Demoniczny œcierwojad";
	aivar[AIV_MM_REAL_ID]		=	ID_SCAVENGER_DEMON;
	
	NpcFn_SetAttributesToLevel (self, 15);
	NpcFn_SetMonsterProtection (self, level);
	B_SetVisuals_DemonScavenger();
};
