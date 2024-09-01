///******************************************************************************************
prototype Mst_Default_IceWolf (C_Npc)
{
	/// ------ Monster ------
	name								=	"Lodowy wilk";
	guild								=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]				=	ID_ICEWOLF;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_WOLF;
	
	NpcFn_SetAttributesToLevel (self, 12);
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
func void B_SetVisuals_IceWolf()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "SnoWol_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
///******************************************************************************************
instance IceWolf (Mst_Default_IceWolf)
{
	B_SetVisuals_IceWolf();
};
