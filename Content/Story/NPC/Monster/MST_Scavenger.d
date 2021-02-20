//******************************************************************************************
PROTOTYPE Mst_Default_Scavenger (C_Npc)
{
	// ------ Monster ------
	name								=	"Œcierwojad";
	guild								=	GIL_SCAVENGER;
	aivar[AIV_MM_REAL_ID]				=	ID_SCAVENGER;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 4);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SCAVENGER;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter] 			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart] 			=	22;	
	aivar[AIV_MM_SleepEnd]				=	6;
	aivar[AIV_MM_EatGroundStart]		=	6;
	aivar[AIV_MM_EatGroundEnd]			=	22;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Scavenger()
{
	Mdl_SetVisual		(self, "Scavenger.mds");
	Mdl_SetVisualBody	(self, "Sca_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
	Mdl_SetModelScale	(self, 1, 0.8, 1);
};
//******************************************************************************************
INSTANCE Scavenger (Mst_Default_Scavenger)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Scavenger();
};
