///******************************************************************************************
prototype Mst_Default_DragonSnapper (C_Npc)
{
	/// ------ Monster ------
	name								=	"Smoczy zêbacz";
	guild								=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]				= 	ID_DRAGONSNAPPER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SNAPPER;
	
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetMonsterProtection (self, level);
	
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
func void B_SetVisuals_DemonSnapper()
{
	Mdl_SetVisual		(self, "DragonSnapper.mds");
	Mdl_SetVisualBody	(self, "Raz_Demon_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.2, 1.2, 1.2);
};
func void B_SetVisuals_DragonSnapper()
{
	Mdl_SetVisual		(self, "DragonSnapper.mds");
	Mdl_SetVisualBody	(self, "Raz_Dragon_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.2, 1.2, 1.2);
};
///******************************************************************************************
instance DemonSnapper (Mst_Default_DragonSnapper)
{
	B_SetVisuals_DemonSnapper();
};
instance DragonSnapper (Mst_Default_DragonSnapper)
{
	B_SetVisuals_DragonSnapper();
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Gaans_Snapper (Mst_Default_DragonSnapper)
{
	name								=	"Prychaj¹cy smoczy zêbacz";
	
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetMonsterProtection (self, level);
	
	B_SetVisuals_DragonSnapper();
	Mdl_SetModelScale(self, 1, 1, 1);
};
