///******************************************************************************************
prototype Mst_Default_Goblin (C_Npc)
{
	/// ------ Monster ------
	name								=	"Goblin";
	guild								=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]				=	ID_GOBBO;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	B_SetAttributesToLevel (self, 4);
	
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
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_Goblin()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_GoblinYellow()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Yellow_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Gobbo (Mst_Default_Goblin)
{
	B_SetVisuals_Goblin();
	EquipItem (self, ItMw_1h_Goblin_01);
};
instance Gobbo_Yellow (Mst_Default_Goblin)
{
	name								=	"¯ó³ty goblin";
	aivar[AIV_MM_REAL_ID]				=	ID_GOBBO_YELLOW;
	
	B_SetVisuals_GoblinYellow();
	EquipItem (self, ItMw_1h_Goblin_01);
};
