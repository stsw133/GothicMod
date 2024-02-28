///******************************************************************************************
prototype Mst_Default_Albedo (C_Npc)
{
	/// ------ Monster ------
	name								=	"Albedo";
	guild								=	GIL_DEMON;
	aivar[AIV_MM_REAL_ID]				= 	ID_DEMON;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	NpcFn_SetAttributesToLevel (self, 80);
	NpcFn_SetFightSkills (self, 100);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_Albedo()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Albedo_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.75, 1.5, 1.75);
};
///******************************************************************************************
instance Albedo (Mst_Default_Albedo)
{
	B_SetVisuals_Albedo();
	EquipItem (self, ItMw_2H_OrcMace_02);
};
