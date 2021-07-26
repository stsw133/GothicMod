///******************************************************************************************
prototype Mst_Default_Swampshark (C_Npc)
{
	/// ------ Monster ------
	name								=	"W¹¿ b³otny";
	guild								=	GIL_SWAMPSHARK;
	aivar[AIV_MM_REAL_ID]				=	ID_SWAMPSHARK;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SWAMPSHARK;
	
	/// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Swampshark()
{
	Mdl_SetVisual		(self, "Swampshark.mds");
	Mdl_SetVisualBody	(self, "Swa_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_Desertshark()
{
	Mdl_SetVisual		(self, "Swampshark.mds");
	Mdl_SetVisualBody	(self, "Swa_Body", 1, default, "", default, default, -1);
};
///******************************************************************************************
instance Swampshark (Mst_Default_Swampshark)
{
	B_SetAttributesToLevel (self, 30);
	B_SetVisuals_Swampshark();
};
instance Desertshark (Mst_Default_Swampshark)
{
	name								=	"W¹¿ piaskowy";
	B_SetAttributesToLevel (self, 30);
	B_SetVisuals_Desertshark();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance MIS_Addon_Swampshark_01 (Mst_Default_Swampshark)
{
	B_SetAttributesToLevel (self, 25);
	B_SetVisuals_Swampshark();
};
instance MIS_Addon_Swampshark_02 (Mst_Default_Swampshark)
{
	B_SetAttributesToLevel (self, 25);
	B_SetVisuals_Swampshark();
};
instance MIS_Addon_Swampshark_03 (Mst_Default_Swampshark)
{
	B_SetAttributesToLevel (self, 25);
	B_SetVisuals_Swampshark();
};
instance MIS_Addon_Swampshark_Lou (Mst_Default_Swampshark)
{
	B_SetAttributesToLevel (self, 30);
	B_SetVisuals_Swampshark();
	CreateInvItem (self, ITKE_Addon_Tavern_01);
};
