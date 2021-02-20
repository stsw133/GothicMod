//******************************************************************************************
PROTOTYPE Mst_Default_Giant_Bug (C_Npc)			
{
	// ------ Monster ------
	name								=	"Polna bestia";
	guild								=	GIL_GIANT_BUG;
	aivar[AIV_MM_REAL_ID]				=	ID_GIANT_BUG;
 
	// ------ Attributes ------
	B_SetMonsterAttributes (self, 8);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_GIANT_BUG;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Giant_Bug()
{
	Mdl_SetVisual		(self, "Giant_Bug.mds");
	Mdl_SetVisualBody	(self, "Giant_Bug_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Giant_Bug (Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
};
//******************************************************************************************
INSTANCE Giant_Bug_VinoRitual1 (Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
};
INSTANCE Giant_Bug_VinoRitual2 (Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
};
//******************************************************************************************
INSTANCE Lobarts_Giant_Bug1 (Mst_Default_Giant_Bug)	
{
	B_SetVisuals_Giant_Bug();
};
INSTANCE Lobarts_Giant_Bug2 (Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
};
INSTANCE Lobarts_Giant_Bug3 (Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
};
INSTANCE Lobarts_Giant_Bug4 (Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
};
INSTANCE Lobarts_Giant_Bug5 (Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
};
INSTANCE Lobarts_Giant_Bug6 (Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
};
INSTANCE Lobarts_Giant_Bug7 (Mst_Default_Giant_Bug)
{
	B_SetVisuals_Giant_Bug();
};
