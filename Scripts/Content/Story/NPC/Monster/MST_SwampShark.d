///******************************************************************************************
prototype Mst_Default_Swampshark (C_Npc)
{
	/// ------ Monster ------
	name								=	"W�� b�otny";
	guild								=	GIL_SWAMPSHARK;
	aivar[AIV_MM_REAL_ID]				=	ID_SWAMPSHARK;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 28);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SWAMPSHARK;
	
	/// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter] 			=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Swampshark()
{
	Mdl_SetVisual		(self, "Swampshark.mds");
	Mdl_SetVisualBody	(self, "Swa_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Desertshark()
{
	Mdl_SetVisual		(self, "Swampshark.mds");
	Mdl_SetVisualBody	(self, "Swa_Body", 1, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Swampshark (Mst_Default_Swampshark)
{
	B_SetVisuals_Swampshark();
};
instance Desertshark (Mst_Default_Swampshark)
{
	name						=	"W�� piaskowy";
	B_SetMonsterAttributes (self, Swampshark.level);
	B_SetVisuals_Desertshark();
};
///******************************************************************************************
instance MIS_Addon_Swampshark_01 (Mst_Default_Swampshark)
{
	B_SetMonsterAttributes (self, 22);
	B_SetVisuals_Swampshark();
};
instance MIS_Addon_Swampshark_02 (Mst_Default_Swampshark)
{
	B_SetMonsterAttributes (self, 22);
	B_SetVisuals_Swampshark();
};
instance MIS_Addon_Swampshark_03 (Mst_Default_Swampshark)
{
	B_SetMonsterAttributes (self, 22);
	B_SetVisuals_Swampshark();
};
instance MIS_Addon_Swampshark_Lou (Mst_Default_Swampshark)
{
	B_SetMonsterAttributes (self, 22);
	B_SetVisuals_Swampshark();
	CreateInvItem (self, ITKE_Addon_Tavern_01);
};
