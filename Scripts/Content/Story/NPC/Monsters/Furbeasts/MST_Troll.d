///******************************************************************************************
prototype Mst_Default_Troll (C_Npc)
{
	/// ------ Monster ------
	name								=	"Troll";
	guild								=	GIL_TROLL;
	aivar[AIV_MM_REAL_ID]				= 	ID_TROLL;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_FLY;
	fight_tactic						=	FAI_TROLL;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	bodyStateInterruptableOverride		=	true;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Troll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Tro_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_SnowTroll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Tro_Snow_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_BlackTroll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Troll_Black_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_DemonTroll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Tro_Demon_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Troll (Mst_Default_Troll)
{
	B_SetAttributesToLevel (self, 60);
	protection[PROT_FLY]				=	-1;
	protection[PROT_POINT]				=	-1;
	
	B_SetVisuals_Troll();
};
instance Troll_Snow (Mst_Default_Troll)
{
	B_SetAttributesToLevel (self, 60);
	protection[PROT_FLY]				=	-1;
	protection[PROT_POINT]				=	-1;
	
	B_SetVisuals_SnowTroll();
};
instance Troll_Black (Mst_Default_Troll)
{
	name								=	"Czarny troll";
	aivar[AIV_MM_REAL_ID]				= 	ID_TROLL_BLACK;
	
	B_SetAttributesToLevel (self, 70);
	protection[PROT_FLY]				=	-1;
	protection[PROT_POINT]				=	-1;
	
	B_SetVisuals_BlackTroll();
};
instance Troll_Demon (Mst_Default_Troll)
{
	name								=	"Demoniczny troll";
	aivar[AIV_MM_REAL_ID]				= 	ID_TROLL_DEMON;
	
	B_SetAttributesToLevel (self, 80);
	protection[PROT_FLY]				=	-1;
	protection[PROT_POINT]				=	-1;
	
	B_SetVisuals_DemonTroll();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Valley_Troll (Mst_Default_Troll)
{
	B_SetAttributesToLevel (self, 60);
	protection[PROT_FLY]				=	-1;
	protection[PROT_POINT]				=	-1;
	
	aivar[AIV_MaxDistToWp] = 2300;
	aivar[AIV_OriginalFightTactic] = FAI_TROLL;
	B_SetVisuals_Troll();
};
instance Maya_Troll	(Mst_Default_Troll)
{
	B_SetAttributesToLevel (self, 60);
	protection[PROT_FLY]				=	-1;
	protection[PROT_POINT]				=	-1;
	
	aivar[AIV_MaxDistToWp] = 1000;
	aivar[AIV_OriginalFightTactic] = FAI_TROLL;
	B_SetVisuals_Troll();
};
///******************************************************************************************
instance Troll_DI (Mst_Default_Troll)
{
	name								=	"Czarny troll";
	aivar[AIV_MM_REAL_ID]				= 	ID_TROLL_BLACK;
	
	B_SetAttributesToLevel (self, 70);
	protection[PROT_FLY]				=	-1;
	protection[PROT_POINT]				=	-1;
	
	aivar[AIV_MaxDistToWp] = 300;
	aivar[AIV_OriginalFightTactic] = FAI_TROLL;
	B_SetVisuals_BlackTroll();
};
