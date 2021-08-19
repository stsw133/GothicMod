///******************************************************************************************
prototype Mst_Default_Scavenger (C_Npc)
{
	/// ------ Monster ------
	name								=	"Œcierwojad";
	guild								=	GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID]				=	ID_SCAVENGER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SCAVENGER;
	
	B_SetAttributesToLevel (self, 5);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart] 			=	22;	
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
	Mdl_SetModelScale	(self, 1, 0.9, 1);
};
func void B_SetVisuals_AlphaScavenger()
{
	Mdl_SetVisual		(self, "Scavenger.mds");
	Mdl_SetVisualBody	(self, "Sca_Alpha_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_DemonScavenger()
{
	Mdl_SetVisual		(self, "ScavengerGL.mds");
	Mdl_SetVisualBody	(self, "Scavenger_Demon_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.15, 1.15, 1.15);
};
///******************************************************************************************
instance Scavenger (Mst_Default_Scavenger)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Scavenger();
};
instance Scavenger_Alpha (Mst_Default_Scavenger)
{
	name						=	"Preriowy œcierwojad";
	B_SetAttributesToLevel (self, 9);
	B_SetVisuals_AlphaScavenger();
};
instance Scavenger_Demon (Mst_Default_Scavenger)
{
	name						=	"Demoniczny œcierwojad";
	aivar[AIV_MM_REAL_ID]		= 	ID_SCAVENGER_DEMON;
	
	B_SetAttributesToLevel (self, 13);
	B_SetVisuals_DemonScavenger();
};
