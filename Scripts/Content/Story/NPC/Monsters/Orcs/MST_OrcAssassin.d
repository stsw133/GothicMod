///******************************************************************************************
prototype Mst_Default_OrcAssassin (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-zab�jca";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_ORCWARRIOR;
	aivar[AIV_FaceTex]					=	Hlp_Random(12);
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	B_SetAttributesToLevel (self, 30);
	
	hitchance[NPC_TALENT_1H]			=	level;
	hitchance[NPC_TALENT_2H]			=	level;
	hitchance[NPC_TALENT_BOW]			=	level;
	hitchance[NPC_TALENT_CROSSBOW]		=	level;
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
//	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
};
///******************************************************************************************
func void B_SetVisuals_OrcAssassin()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Dark_Body", 0, default, "Orc_Head_Warrior", self.aivar[AIV_FaceTex], default, -1);
};
///******************************************************************************************
instance OrcAssassin (Mst_Default_OrcAssassin)
{
	B_SetVisuals_OrcAssassin();
	EquipItem (self, ItMw_2H_OrcSword_01);
	
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] 			=	OnlyRoutine;
};