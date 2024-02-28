///******************************************************************************************
prototype Mst_Default_GoblinPirate (C_Npc)
{
	/// ------ Monster ------
	name								=	"Goblin-pirat";
	guild								=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]				=	ID_GOBBO_BANDIT;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	NpcFn_SetAttributesToLevel (self, 8);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_GoblinPirate()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Pirate_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.05, 1.05, 1.05);
};
///******************************************************************************************
instance Gobbo_Pirate (Mst_Default_GoblinPirate)
{
	B_SetVisuals_GoblinPirate();
	EquipItem (self, ItMw_1h_Goblin_03);
};
