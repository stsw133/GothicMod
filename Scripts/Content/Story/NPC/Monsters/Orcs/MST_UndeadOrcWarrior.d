///******************************************************************************************
prototype Mst_Default_UndeadOrcWarrior (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-o¿ywieniec";
	guild								=	GIL_UNDEADORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_UNDEADORCWARRIOR;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetFightSkills (self, 100);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_UndeadOrcWarrior()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "UOW_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance UndeadOrcWarrior (Mst_Default_UndeadOrcWarrior)
{
	B_SetVisuals_UndeadOrcWarrior();
	EquipItem (self, ItMw_2H_OrcMace_01);
};
