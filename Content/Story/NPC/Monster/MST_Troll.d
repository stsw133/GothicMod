//******************************************************************************************
PROTOTYPE Mst_Default_Troll (C_Npc)
{
	// ------ Monster ------
	name								=	"Troll";
	guild								=	GIL_TROLL;
	aivar[AIV_MM_REAL_ID]				= 	ID_TROLL;
	bodyStateInterruptableOverride		=	true;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 60);
	protection[PROT_POINT]				=	-1;
	protection[PROT_FLY]				=	-1;

	// ------ FT ------
	damagetype 							=	DAM_FLY;
	damage[DAM_INDEX_FLY]				/=	2;
	
	fight_tactic						=	FAI_TROLL;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	false;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Troll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Tro_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_SnowTroll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Tro_Snow_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_BlackTroll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Troll_Black_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Troll (Mst_Default_Troll)
{
	B_SetVisuals_Troll();
};
INSTANCE Troll_Snow (Mst_Default_Troll)
{
	B_SetVisuals_SnowTroll();
};
//******************************************************************************************
INSTANCE Troll_Black (Mst_Default_Troll)
{
	name						=	"Czarny troll";
	aivar[AIV_MM_REAL_ID]		= 	ID_TROLL_BLACK;

	B_SetMonsterAttributes (self, 80);
	protection[PROT_POINT]				=	-1;
	protection[PROT_FLY]				=	-1;

	B_SetVisuals_BlackTroll();
};
//******************************************************************************************
INSTANCE Valley_Troll (Mst_Default_Troll)
{
	aivar[AIV_MaxDistToWp]		=	2300;
	aivar[AIV_OriginalFightTactic]	=	FAI_TROLL;
	B_SetVisuals_Troll();
};
INSTANCE Maya_Troll	(Mst_Default_Troll)
{
	aivar[AIV_MaxDistToWp]		=	1000;
	aivar[AIV_OriginalFightTactic]	=	FAI_TROLL;
	B_SetVisuals_Troll();
};
//******************************************************************************************
INSTANCE Troll_DI (Mst_Default_Troll)
{
	name						=	"Czarny troll";
	aivar[AIV_MM_REAL_ID]		= 	ID_TROLL_BLACK;

	B_SetMonsterAttributes (self, Troll_Black.level);
	protection[PROT_POINT]				=	-1;
	protection[PROT_FLY]				=	-1;

	aivar[AIV_MaxDistToWp]		=	300;
	aivar[AIV_OriginalFightTactic]	=	FAI_TROLL;
	B_SetVisuals_BlackTroll();
};
