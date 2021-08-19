///******************************************************************************************
prototype Mst_Default_OrcShaman (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ork-szaman";
	voice								=	18;
	guild								=	GIL_ORC;
	aivar[AIV_MM_REAL_ID]				= 	ID_ORCSHAMAN;
	aivar[AIV_FaceTex]					=	Hlp_RandomRange(50,58);
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ORC;
	
	B_SetAttributesToLevel (self, 40);
	
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
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_OrcSitStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_OrcShaman()
{
	Mdl_SetVisual		(self, "Orc.mds");
	Mdl_SetVisualBody	(self, "Orc_Shaman_Body", 0, default, "Orc_Head_Shaman", self.aivar[AIV_FaceTex], default, -1);
};
///******************************************************************************************
instance OrcShaman_Sit (Mst_Default_OrcShaman)
{
	B_SetVisuals_OrcShaman();
	EquipItem (self, ItMw_2H_OrcStaff_01);
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance OrcShaman_Hosh_Pak (Mst_Default_OrcShaman)
{
	name								=	"Hosh-Pak";
	
	B_SetAttributesToLevel (self, 50);
	
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
	
	B_SetVisuals_OrcShaman();
	EquipItem (self, ItMw_2H_OrcStaff_01);
};
