///******************************************************************************************
prototype Mst_Default_Razor (C_Npc)
{
	/// ------ Monster ------
	name								=	"Brzytwiak";
	guild								=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]				= 	ID_RAZOR;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SNAPPER;
	
	B_SetAttributesToLevel (self, 18);
	
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
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter]			=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Razor()
{
	Mdl_SetVisual		(self, "Razor.mds");
	Mdl_SetVisualBody	(self, "Sna_Body", 2, default, "", default, default, -1);
};
///******************************************************************************************
instance Razor (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance CanyonRazor01 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor02 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor03 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor04 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor05 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor06 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor07 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor08 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor09 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
instance CanyonRazor10 (Mst_Default_Razor)
{
	B_SetVisuals_Razor();
};
