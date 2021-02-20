//******************************************************************************************
PROTOTYPE Mst_Default_Giant_Spider (C_Npc)			
{
	// ------ Monster ------
	name								=	"Olbrzymi paj¹k";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				=	ID_GIANT_SPIDER;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 4);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						= 	FAI_MINECRAWLER;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater] 		=	false;
	aivar[AIV_MM_Packhunter] 			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Giant_Spider()
{
	Mdl_SetVisual		(self, "Spdr.mds");
	Mdl_SetVisualBody	(self, "Spdr_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Giant_Spider (Mst_Default_Giant_Spider)
{
	B_SetVisuals_Giant_Spider();
};
