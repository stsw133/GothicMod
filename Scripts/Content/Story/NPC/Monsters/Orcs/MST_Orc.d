///******************************************************************************************
prototype Mst_Default_Orc (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_ORCWARRIOR;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	B_SetAttributesToLevel (self, 15);
	
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
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
//	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_Orc()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Orc_Body", 0, default, "Orc_Head_Warrior", 0, default, -1);
};
///******************************************************************************************
instance Orc (Mst_Default_Orc)
{
	B_SetVisuals_Orc();
//	EquipItem (self, ItMw_2H_OrcAxe_01);
};
