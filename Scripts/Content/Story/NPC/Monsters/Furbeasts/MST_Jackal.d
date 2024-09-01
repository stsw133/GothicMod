///******************************************************************************************
prototype Mst_Default_Jackal (C_Npc)
{
	/// ------ Monster ------
	name								=	"Szakal";
	guild								=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]				=	ID_WOLF;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_WOLF;
	
	NpcFn_SetAttributesToLevel (self, 5);
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
func void B_SetVisuals_Jackal()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Jackal_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 0.95, 0.95, 0.95);
};
///******************************************************************************************
instance Jackal (Mst_Default_Jackal)
{
	B_SetVisuals_Jackal();
};
