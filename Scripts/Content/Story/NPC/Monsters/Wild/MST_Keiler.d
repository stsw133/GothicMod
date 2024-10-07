///******************************************************************************************
/// Keiler
///******************************************************************************************
prototype Mst_Default_Keiler (C_Npc)
{
	/// ------ Monster ------
	name								=	"Dzik";
	guild								=	GIL_WILD;
	aivar[AIV_MM_REAL_ID]				=	ID_KEILER;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_WOLF;
	
	NpcFn_SetAttributesToLevel (self, 10);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_LONG;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};

///******************************************************************************************
func void B_SetVisuals_Keiler()
{
	Mdl_SetVisual		(self, "Keiler.mds");
	Mdl_SetVisualBody	(self, "Keiler_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Keiler (Mst_Default_Keiler)
{
	B_SetVisuals_Keiler();
};
