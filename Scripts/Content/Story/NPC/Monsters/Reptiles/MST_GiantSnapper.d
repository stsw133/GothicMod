///******************************************************************************************
prototype Mst_Default_GiantSnapper (C_Npc)
{
	/// ------ Monster ------
	name								=	"Olbrzymi zêbacz";
	guild								=	GIL_SNAPPER;
	aivar[AIV_MM_REAL_ID]				=	ID_GIANTSNAPPER;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_SNAPPER;
	
	NpcFn_SetAttributesToLevel (self, 50);
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
func void B_SetVisuals_GiantSnapper()
{
	Mdl_SetVisual		(self, "DragonSnapper.mds");
	Mdl_SetVisualBody	(self, "Sna_Giant_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 2, 1.8, 2);
};
///******************************************************************************************
instance GiantSnapper (Mst_Default_GiantSnapper)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_GiantSnapper();
};
