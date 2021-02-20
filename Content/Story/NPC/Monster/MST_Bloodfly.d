//******************************************************************************************
PROTOTYPE Mst_Default_Bloodfly (C_Npc)
{
	// ------ Monster ------
	name								=	"Krwiopijca";
	guild								=	GIL_BLOODFLY;
	aivar[AIV_MM_REAL_ID]				= 	ID_BLOODFLY;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 5);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_BLOODFLY;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter]			=	false;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Bloodfly()
{
	Mdl_SetVisual		(self, "Bloodfly.mds");
	Mdl_SetVisualBody	(self, "Blo_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Desertfly()
{
	Mdl_SetVisual		(self, "Bloodfly.mds");
	Mdl_SetVisualBody	(self, "Blo_Desert_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Bloodfly (Mst_Default_Bloodfly)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Bloodfly();
};
INSTANCE Desertfly (Mst_Default_Bloodfly)
{
	B_SetVisuals_Desertfly();
};
//******************************************************************************************
INSTANCE Sleepfly (Mst_Default_Bloodfly)
{
	start_aistate				=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart] 	=	OnlyRoutine;
	B_SetVisuals_Bloodfly();
};
