///******************************************************************************************
prototype Mst_Default_SnapperDragon (C_Npc)
{
	/// ------ Monster ------
	name								=	"Smoczy zêbacz";
	guild								=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]				= 	ID_DRAGONSNAPPER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SNAPPER;
	
	B_SetAttributesToLevel (self, 40);
	
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
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_DragonSnapper()
{
	Mdl_SetVisual		(self, "DragonSnapper.mds");
	Mdl_SetVisualBody	(self, "Razor_Demon_Body", 1, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.2, 1.2, 1.2);
};
///******************************************************************************************
instance DragonSnapper (Mst_Default_SnapperDragon)
{
	B_SetVisuals_DragonSnapper();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Gaans_Snapper (Mst_Default_Snapper)
{
	name								=	"Prychaj¹cy smoczy zêbacz";
	
	B_SetAttributesToLevel (self, 30);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_POINT]				=	level*AR_PER_LEVEL - 20;
	protection[PROT_FIRE]				=	level*MR_PER_LEVEL - 20;
	protection[PROT_FLY]				=	level*MR_PER_LEVEL - 20;
	protection[PROT_MAGIC]				=	level*MR_PER_LEVEL - 20;
	
	B_SetVisuals_DragonSnapper();
	Mdl_SetModelScale(self, 1, 1, 1);
};
