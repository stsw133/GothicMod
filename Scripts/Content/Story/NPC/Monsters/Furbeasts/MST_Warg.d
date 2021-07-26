///******************************************************************************************
prototype Mst_Default_Warg (C_Npc)
{
	/// ------ Monster ------
	name								=	"Warg";
	guild								=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]				=	ID_WARG;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_WOLF;
	B_SetAttributesToLevel (self, 18);
	
	/// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_LONG;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Warg()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Warg_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
///******************************************************************************************
instance Warg (Mst_Default_Warg)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Warg();
};
