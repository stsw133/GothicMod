///******************************************************************************************
prototype Mst_Default_OrcWarrior (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-wojownik";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_ORCWARRIOR;
	aivar[AIV_FaceTex]					=	Hlp_Random(12);
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetFightSkills (self, 100);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
};
///******************************************************************************************
func void B_SetVisuals_OrcWarrior()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Warrior_Body", 0, default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
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
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance OrcShaman_Sit_CanyonLibraryKey (Mst_Default_OrcWarrior)
{
	name								=	"Wódz Hordy";
	
	NpcFn_SetAttributesToLevel (self, 35);
	NpcFn_SetMonsterProtection (self, level);
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
