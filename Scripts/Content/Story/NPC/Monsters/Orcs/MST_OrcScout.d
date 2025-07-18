///******************************************************************************************
/// OrcScout
///******************************************************************************************
prototype Mst_Default_OrcScout (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-zwiadowca";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				=	ID_ORCSOLDIER;
	aivar[AIV_FaceTex]					=	Hlp_Random(12);
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_AddFightSkills (self, 50);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
};

///******************************************************************************************
func void B_SetVisuals_OrcScout()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Soldier_Body", self.aivar[AIV_BodyTex], default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance OrcScout_Rest (Mst_Default_OrcScout)
{
	B_SetVisuals_OrcScout();
	EquipItem (self, ItMw_2H_OrcAxe_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
instance OrcScout_Roam (Mst_Default_OrcScout)
{
	B_SetVisuals_OrcScout();
	EquipItem (self, ItMw_2H_OrcAxe_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
};
instance OrcScout_Sit (Mst_Default_OrcScout)
{
	B_SetVisuals_OrcScout();
	EquipItem (self, ItMw_2H_OrcAxe_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart]			=	OnlyRoutine;
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance OrcWarrior_Harad (Mst_Default_OrcScout)
{
	B_SetVisuals_OrcScout();
	EquipItem (self, ItMw_2H_OrcAxe_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
