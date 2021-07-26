///******************************************************************************************
prototype Mst_Default_OrcWarrior (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-wojownik";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_ORCWARRIOR;
//	aivar[AIV_Race]						= 	RACE_Orc;
	aivar[AIV_FaceTex]					=	Hlp_Random(12);
	
	/// ------ Attributes & FT ------
//	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	B_SetAttributesToLevel (self, 30);
	B_SetFightSkills (self, FightTalent_Medium);
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
//	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
};
///******************************************************************************************
func void B_SetVisuals_OrcSoldier()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Soldier_Body", 0, default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};
func void B_SetVisuals_OrcWarrior()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Warrior_Body", 0, default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};
func void B_SetVisuals_OrcGuardian()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Guardian_Body", 0, default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};
func void B_SetVisuals_OrcTempler()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Templer_Body", 0, default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};
///******************************************************************************************
instance OrcWarrior_Rest (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcSoldier();
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
instance OrcWarrior_Roam (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
};
instance OrcWarrior_Sit (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcSoldier();
	EquipItem (self, ItMw_2H_OrcAxe_02);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] 			=	OnlyRoutine;
};
instance OrcWarrior_Guardian (Mst_Default_OrcWarrior)
{
	name								=	"Ork-stra¿nik";
	
	B_SetVisuals_OrcGuardian();
	EquipItem (self, ItMw_2H_OrcSword_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] 			=	OnlyRoutine;
};
instance OrcWarrior_Templer (Mst_Default_OrcWarrior)
{
	name								=	"Ork œwi¹tynny";
	
	B_SetAttributesToLevel (self, 35);
	
	aivar[AIV_FaceTex] = Hlp_RandomRange(50,58);
	B_SetVisuals_OrcTempler();
	EquipItem (self, ItMw_2H_OrcSword_02);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance OrcWarrior_Harad (Mst_Default_OrcWarrior)
{
	name								=	"Ork-zwiadowca";
	
	B_SetAttributesToLevel (self, 20);
	
	B_SetVisuals_OrcSoldier();
	EquipItem (self, ItMw_2H_OrcAxe_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
instance OrcShaman_Sit_CanyonLibraryKey (Mst_Default_OrcWarrior)
{
	name								=	"Wódz Hordy";
	
	B_SetAttributesToLevel (self, 35);
	
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcSword_02);
	CreateInvItem (self, ITKE_CANYONLIBRARY_HIERARCHY_BOOKS_ADDON);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] 			=	OnlyRoutine;
};
///******************************************************************************************
instance OrcWarrior_Lobart1 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
instance OrcWarrior_Lobart2 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
instance OrcWarrior_Lobart3 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
instance OrcWarrior_Lobart4 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
instance OrcWarrior_Lobart5 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
instance OrcWarrior_Lobart6 (Mst_Default_OrcWarrior)
{
	B_SetVisuals_OrcWarrior();
	EquipItem (self, ItMw_2H_OrcAxe_03);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
