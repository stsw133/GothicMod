//******************************************************************************************
PROTOTYPE Mst_Default_Draconian (C_Npc)
{
	// ------ Monster ------
	name								=	"Jaszczurocz³ek";
	guild								=	GIL_DRACONIAN;
	aivar[AIV_MM_REAL_ID]				=	ID_DRACONIAN;
	aivar[AIV_Race]						=	RACE_Draconian;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 40);
	B_SetFightSkills (self, FightTalent_Medium);

	// ------ FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;

	// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
//******************************************************************************************
func void B_SetVisuals_Draconian()
{
	Mdl_SetVisual		(self, "Draconian.mds");
	Mdl_SetVisualBody	(self, "Draconian_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Draconian (Mst_Default_Draconian)
{
	B_SetVisuals_Draconian();
	EquipItem (self, ItMw_2H_Draconian);
};
