///******************************************************************************************
prototype Mst_Default_Act (C_Npc)
{
	/// ------ Monster ------
	name								=	"Act";
	voice								=	18;
	guild								=	GIL_ZOMBIE;
	aivar[AIV_MM_REAL_ID]				=	ID_ZOMBIE;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_ZOMBIE;
	
	NpcFn_SetAttributesToLevel (self, 25);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ORC_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Act()
{
	Mdl_SetVisual		(self, "Zombie.mds");
	Mdl_SetVisualBody	(self, "Act_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
///******************************************************************************************
instance Act (Mst_Default_Act)
{
	B_SetVisuals_Act();
};
