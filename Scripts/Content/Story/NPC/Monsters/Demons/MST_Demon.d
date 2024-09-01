///******************************************************************************************
prototype Mst_Default_Demon (C_Npc)
{
	/// ------ Monster ------
	name								=	"Demon";
	guild								=	GIL_DEMON;
	aivar[AIV_MM_REAL_ID]				=	ID_DEMON;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_FIRE;
	fight_tactic						=	FAI_DEMON;
	
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Demon()
{
	Mdl_SetVisual		(self, "Demon.mds");
	Mdl_SetVisualBody	(self, "Dem_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
///******************************************************************************************
instance Demon (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Xardas_DT_Demon1 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon2 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon3 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon4 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon5 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
