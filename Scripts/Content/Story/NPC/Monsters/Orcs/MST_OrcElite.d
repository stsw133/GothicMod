///******************************************************************************************
/// OrcElite
///******************************************************************************************
prototype Mst_Default_OrcElite (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-elita";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				=	ID_ORCELITE;
	aivar[AIV_FaceTex]					=	Hlp_Random(12);
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	NpcFn_SetAttributesToLevel (self, 45);
	NpcFn_AddFightSkills (self, 70);
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
func void B_SetVisuals_OrcElite()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Elite_Body", self.aivar[AIV_BodyTex], default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance OrcElite_Rest (Mst_Default_OrcElite)
{
	B_SetVisuals_OrcElite();
	EquipItem (self, ItMw_2H_OrcElite_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
};
instance OrcElite_Roam (Mst_Default_OrcElite)
{
	B_SetVisuals_OrcElite();
	EquipItem (self, ItMw_2H_OrcElite_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance OrcElite_DIOberst1_Rest (Mst_Default_OrcElite)
{
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcElite();
	EquipItem (self, ItMw_2H_OrcElite_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
instance OrcElite_DIOberst2_Rest (Mst_Default_OrcElite)
{
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcElite();
	EquipItem (self, ItMw_2H_OrcElite_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
instance OrcElite_DIOberst3_Rest (Mst_Default_OrcElite)
{
	aivar[AIV_EnemyOverride]			=	true;
	
	B_SetVisuals_OrcElite();
	EquipItem (self, ItMw_2H_OrcElite_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
