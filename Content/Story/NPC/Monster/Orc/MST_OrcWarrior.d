//******************************************************************************************
PROTOTYPE Mst_Default_OrcWarrior (C_Npc)
{
	// ------ Monster ------
	name								=	"Ork-wojownik";
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_ORCWARRIOR;
	aivar[AIV_Race]						= 	RACE_Orc;
	voice								=	18;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 30);
	B_SetFightSkills (self, FightTalent_Medium);

	aivar[AIV_FaceTex] = Hlp_Random(12);

	// ------ FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;

	// ------ Inventory ------
	B_CreateAmbientInv(self);

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;
};
//******************************************************************************************
func void B_SetVisuals_OrcSoldier()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Soldier_Body", 0, DEFAULT, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], DEFAULT, -1);
};
func void B_SetVisuals_OrcWarrior()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Warrior_Body", 0, DEFAULT, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], DEFAULT, -1);
};
func void B_SetVisuals_OrcGuardian()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Guardian_Body", 0, DEFAULT, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], DEFAULT, -1);
};
func void B_SetVisuals_OrcTempler()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Templer_Body", 0, DEFAULT, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], DEFAULT, -1);
};
//******************************************************************************************
INSTANCE OrcWarrior_Rest (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcSoldier();
	EquipItem (self, ItMw_2H_OrcAxe_02);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
INSTANCE OrcWarrior_Roam (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcSoldier();
	EquipItem (self, ItMw_2H_OrcAxe_03);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
};
INSTANCE OrcWarrior_Sit (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcSoldier();
	EquipItem (self, ItMw_2H_OrcAxe_02);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] 			=	OnlyRoutine;
};
INSTANCE OrcWarrior_Guardian (Mst_Default_OrcWarrior)
{
	name								=	"Ork-stra¿nik";

	B_SetVisuals_OrcGuardian();
	EquipItem (self, ItMw_2H_OrcSword_01);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] 			=	OnlyRoutine;
};
INSTANCE OrcWarrior_Templer (Mst_Default_OrcWarrior)
{
	name								=	"Ork œwi¹tynny";

	B_SetMonsterAttributes (self, 40);

	aivar[AIV_FaceTex] = Hlp_RandomRange(50,58);
	B_SetVisuals_OrcTempler();
	EquipItem (self, ItMw_2H_OrcSword_02);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
//******************************************************************************************
INSTANCE OrcWarrior_Harad (Mst_Default_OrcWarrior)
{
	name								=	"Ork-zwiadowca";

	B_SetMonsterAttributes (self, 20);

	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_01);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
//******************************************************************************************
INSTANCE OrcShaman_Sit_CanyonLibraryKey (Mst_Default_OrcWarrior)
{
	name								=	"Wódz Hordy";

	B_SetMonsterAttributes (self, OrcWarrior_Rest.level+10);

	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);
	CreateInvItem (self, ITKE_CANYONLIBRARY_HIERARCHY_BOOKS_ADDON);									

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] 			=	OnlyRoutine;
};
//******************************************************************************************
INSTANCE OrcWarrior_Lobart1 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
INSTANCE OrcWarrior_Lobart2 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
INSTANCE OrcWarrior_Lobart3 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
INSTANCE OrcWarrior_Lobart4 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
INSTANCE OrcWarrior_Lobart5 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
INSTANCE OrcWarrior_Lobart6 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);

	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
