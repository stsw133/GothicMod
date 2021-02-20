//******************************************************************************************
PROTOTYPE Mst_Default_Molerat (C_Npc)
{
	// ------ Monster ------
	name								=	"Kretoszczur";
	guild								=	GIL_MOLERAT;
	aivar[AIV_MM_REAL_ID]				= 	ID_MOLERAT;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 3);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_MOLERAT;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter] 			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Molerat()
{
	Mdl_SetVisual		(self, "Molerat.mds");
	Mdl_SetVisualBody	(self, "Mol_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Molerat (Mst_Default_Molerat)
{
	B_SetVisuals_Molerat();
};
