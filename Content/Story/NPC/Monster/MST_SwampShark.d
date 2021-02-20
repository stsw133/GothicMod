//******************************************************************************************
PROTOTYPE Mst_Default_SwampShark (C_Npc)
{
	// ------ Monster ------
	name								=	"W嘀 b這tny";
	guild								=	GIL_SWAMPSHARK;
	aivar[AIV_MM_REAL_ID]				=	ID_SWAMPSHARK;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 28);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_SWAMPSHARK;

	// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter] 			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_SwampShark()
{
	Mdl_SetVisual		(self, "Swampshark.mds");
	Mdl_SetVisualBody	(self, "Swa_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_DesertShark()
{
	Mdl_SetVisual		(self, "Swampshark.mds");
	Mdl_SetVisualBody	(self, "Swa_Body", 1, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE SwampShark	(Mst_Default_SwampShark)
{
	B_SetVisuals_SwampShark();
};
INSTANCE DesertShark (Mst_Default_SwampShark)
{
	name						=	"W嘀 piaskowy";
	B_SetMonsterAttributes (self, SwampShark.level);
	B_SetVisuals_DesertShark();
};
//******************************************************************************************
INSTANCE MIS_Addon_SwampShark_01 (Mst_Default_SwampShark)
{
	name								=	"W嘀 b這tny";
	B_SetMonsterAttributes (self, 22);
	B_SetVisuals_Swampshark();
};
INSTANCE MIS_Addon_SwampShark_02 (Mst_Default_SwampShark)
{
	name								=	"W嘀 b這tny";
	B_SetMonsterAttributes (self, 22);
	B_SetVisuals_Swampshark();
};
INSTANCE MIS_Addon_SwampShark_03 (Mst_Default_SwampShark)
{
	name								=	"W嘀 b這tny";
	B_SetMonsterAttributes (self, 22);
	B_SetVisuals_Swampshark();
};
INSTANCE MIS_Addon_SwampShark_Lou (Mst_Default_SwampShark)
{
	B_SetMonsterAttributes (self, 22);
	B_SetVisuals_Swampshark();
	CreateInvItem (self, ITKE_Addon_Tavern_01);
};
