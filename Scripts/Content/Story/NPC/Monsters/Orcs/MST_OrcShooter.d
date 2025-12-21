///******************************************************************************************
/// OrcShooter
///******************************************************************************************
prototype Mst_Default_OrcShooter (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-kusznik";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				=	ID_ORCWARRIOR;
	aivar[AIV_FaceTex]					=	Hlp_Random(12);
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	NpcFn_SetAttributesToLevel (self, 30);
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
func void B_SetVisuals_OrcShooter()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Shooter_Body", 1, default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance OrcShooter_Rest (Mst_Default_OrcShooter)
{
	B_SetVisuals_OrcShooter();
	EquipItem (self, ItMw_2h_OrcAxe_01);
	EquipItem (self, ItRw0_Crossbow_M_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
instance OrcShooter_Roam (Mst_Default_OrcShooter)
{
	B_SetVisuals_OrcShooter();
	EquipItem (self, ItMw_2h_OrcAxe_01);
	EquipItem (self, ItRw0_Crossbow_M_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
};
instance OrcShooter_Sit (Mst_Default_OrcShooter)
{
	B_SetVisuals_OrcShooter();
	EquipItem (self, ItMw_2h_OrcAxe_01);
	EquipItem (self, ItRw0_Crossbow_M_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart]			=	OnlyRoutine;
};
