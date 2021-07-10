///******************************************************************************************
prototype Mst_Default_Troll (C_Npc)
{
	/// ------ Monster ------
	name								=	"Troll";
	guild								=	GIL_TROLL;
	aivar[AIV_MM_REAL_ID]				= 	ID_TROLL;

	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 60);
	protection[PROT_POINT]				=	-1;
	protection[PROT_FLY]				=	-1;

	/// ------ FT ------
	damagetype 							=	DAM_FLY;
	damage[DAM_INDEX_FLY]				/=	2;
	fight_tactic						=	FAI_TROLL;

	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	bodyStateInterruptableOverride		=	true;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	false;

	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
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
///******************************************************************************************
instance Troll (Mst_Default_Troll)
{
	B_SetVisuals_Troll();
};
instance Troll_Snow (Mst_Default_Troll)
{
	B_SetVisuals_SnowTroll();
};
instance Troll_Black (Mst_Default_Troll)
{
	name						=	"Czarny troll";
	aivar[AIV_MM_REAL_ID]		= 	ID_TROLL_BLACK;
	
	B_SetMonsterAttributes (self, 80);
	protection[PROT_POINT]				=	-1;
	protection[PROT_FLY]				=	-1;
	damage[DAM_INDEX_FLY]				/=	2;
	
	B_SetVisuals_BlackTroll();
};
///******************************************************************************************
instance Valley_Troll (Mst_Default_Troll)
{
	aivar[AIV_MaxDistToWp]		=	2300;
	aivar[AIV_OriginalFightTactic]	=	FAI_TROLL;
	B_SetVisuals_Troll();
};
instance Maya_Troll	(Mst_Default_Troll)
{
	aivar[AIV_MaxDistToWp]		=	1000;
	aivar[AIV_OriginalFightTactic]	=	FAI_TROLL;
	B_SetVisuals_Troll();
};
///******************************************************************************************
instance Troll_DI (Mst_Default_Troll)
{
	name						=	"Czarny troll";
	aivar[AIV_MM_REAL_ID]		= 	ID_TROLL_BLACK;
	
	B_SetMonsterAttributes (self, Troll_Black.level);
	protection[PROT_POINT]				=	-1;
	protection[PROT_FLY]				=	-1;
	damage[DAM_INDEX_FLY]				/=	2;
	
	aivar[AIV_MaxDistToWp]		=	300;
	aivar[AIV_OriginalFightTactic]	=	FAI_TROLL;
	B_SetVisuals_BlackTroll();
};
