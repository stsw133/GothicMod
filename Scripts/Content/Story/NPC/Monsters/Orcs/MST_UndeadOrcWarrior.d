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
	
	B_SetAttributesToLevel (self, 40);
	
	hitchance[NPC_TALENT_1H]			=	100;
	hitchance[NPC_TALENT_2H]			=	100;
	hitchance[NPC_TALENT_BOW]			=	100;
	hitchance[NPC_TALENT_CROSSBOW]		=	100;
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_POINT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_FIRE]				=	level*MR_PER_LEVEL - 20;
	protection[PROT_FLY]				=	level*MR_PER_LEVEL - 20;
	protection[PROT_MAGIC]				=	level*MR_PER_LEVEL - 20;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
//	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
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
