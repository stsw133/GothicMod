///******************************************************************************************
PROTOTYPE Mst_Default_Treant (C_Npc)
{
	/// ------ Monster ------
	name								=	"Drzewiec";
	guild								=	GIL_STONEGOLEM;
	aivar[AIV_MM_REAL_ID]				=	ID_TREANT;

	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 30);

	/// ------ FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOLEM;

	/// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	true;

	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Treant()
{
	Mdl_SetVisual		(self, "Treant.mds");
	Mdl_SetVisualBody	(self, "Treant_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
//	Mdl_SetModelScale	(self, 1, 1.2, 1);
};
///******************************************************************************************
INSTANCE Treant (Mst_Default_Treant)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Treant();
};
