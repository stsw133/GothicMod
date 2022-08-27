///******************************************************************************************
prototype Mst_Default_GoblinBlack (C_Npc)
{
	/// ------ Monster ------
	name								=	"Czarny goblin";
	guild								=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]				=	ID_GOBBO_BLACK;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	B_SetAttributesToLevel (self, 6);
	
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
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_GoblinBlack()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Black_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.05, 1.05, 1.05);
};
///******************************************************************************************
instance Gobbo_Black (Mst_Default_GoblinBlack)
{
	B_SetVisuals_GoblinBlack();
	EquipItem (self, ItMw_1h_Goblin_02);
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Gobbo_DaronsStatuenKlauer (Mst_Default_GoblinBlack)
{
	name								=	"Goblin-z�odziej";
	
	B_SetVisuals_GoblinBlack();
	EquipItem (self, ItMw_1h_Goblin_02);
	CreateInvItem (self, ItMi_LostInnosStatue_Daron);
};
