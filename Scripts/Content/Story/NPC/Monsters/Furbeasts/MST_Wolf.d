///******************************************************************************************
prototype Mst_Default_Wolf (C_Npc)
{
	/// ------ Monster ------
	name								=	"Wilk";
	guild								=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]				=	ID_WOLF;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_WOLF;
	
	B_SetAttributesToLevel (self, 6);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_LONG;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Wolf()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Wol_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_BlackWolf()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Wol_Black_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Wolf (Mst_Default_Wolf)
{
	aivar[AIV_BodyTex] = Hlp_Random(4);
	B_SetVisuals_Wolf();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance BlackWolf (Mst_Default_Wolf)
{
	name								=	"Czarny wilk";
	
	B_SetAttributesToLevel (self, 9);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	B_SetVisuals_BlackWolf();
};
///******************************************************************************************
instance PEPES_YWolf1 (Mst_Default_Wolf)
{
	B_SetVisuals_Wolf();
};
instance PEPES_YWolf2 (Mst_Default_Wolf)
{
	B_SetVisuals_Wolf();
};
instance PEPES_YWolf3 (Mst_Default_Wolf)
{
	B_SetVisuals_Wolf();
};
instance PEPES_YWolf4 (Mst_Default_Wolf)
{
	B_SetVisuals_Wolf();
};
