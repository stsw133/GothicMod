///******************************************************************************************
prototype Mst_Default_Bloodfly (C_Npc)
{
	/// ------ Monster ------
	name								=	"Krwiopijca";
	guild								=	GIL_BLOODFLY;
	aivar[AIV_MM_REAL_ID]				= 	ID_BLOODFLY;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_BLOODFLY;
	B_SetAttributesToLevel (self, 5);
	
	/// ------ Protection ------
	protection[PROT_POINT]				=	0;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter]			=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart]			=	OnlyRoutine;	
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Bloodfly()
{
	Mdl_SetVisual		(self, "Bloodfly.mds");
	Mdl_SetVisualBody	(self, "Blo_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_Desertfly()
{
	Mdl_SetVisual		(self, "Bloodfly.mds");
	Mdl_SetVisualBody	(self, "Blo_Desert_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_Swampfly()
{
	Mdl_SetVisual		(self, "Bloodfly.mds");
	Mdl_SetVisualBody	(self, "Blo_Swamp_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Bloodfly (Mst_Default_Bloodfly)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Bloodfly();
};
instance Desertfly (Mst_Default_Bloodfly)
{
	B_SetVisuals_Desertfly();
};
instance Swampfly (Mst_Default_Bloodfly)
{
	B_SetVisuals_Swampfly();
};
///******************************************************************************************
instance Sleepfly (Mst_Default_Bloodfly)
{
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart] 			=	OnlyRoutine;
	B_SetVisuals_Bloodfly();
};
