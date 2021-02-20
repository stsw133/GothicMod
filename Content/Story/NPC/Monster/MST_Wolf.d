//******************************************************************************************
PROTOTYPE Mst_Default_Wolf (C_Npc)
{
	// ------ Monster ------
	name								=	"Wilk";
	guild								=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]				=	ID_WOLF;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 6);

	// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_WOLF;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter]			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
//******************************************************************************************
func void B_SetVisuals_Wolf()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Wol_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_SnowWolf()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Wol_Body", 4, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_BlackWolf()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Wol_Body", 5, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Jackal()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Jackal_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Wolf_Skeleton()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "WOL_SKELETON_BODY", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Wolf (Mst_Default_Wolf)
{
	aivar[AIV_BodyTex] = Hlp_Random(4);
	B_SetVisuals_Wolf();
};
INSTANCE Wolf_Snow (Mst_Default_Wolf)
{
	B_SetMonsterAttributes (self, 10);
	B_SetVisuals_SnowWolf();
};
INSTANCE Wolf_Black (Mst_Default_Wolf)
{
	name								=	"Czarny wilk";
	B_SetMonsterAttributes (self, 8);
	B_SetVisuals_BlackWolf();
};
INSTANCE Jackal (Mst_Default_Wolf)
{
	name								=	"Szakal";
	B_SetMonsterAttributes (self, Wolf.level);
	B_SetVisuals_Jackal();
};
INSTANCE Wolf_Skeleton (Mst_Default_Wolf)
{
	name								=	"Wilk-szkielet";
	guild								=	GIL_SHADOWBEAST_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SHADOWBEAST_SKELETON;

	B_SetMonsterAttributes (self, Wolf.level+6);
	B_SetVisuals_Wolf_Skeleton();
};
//******************************************************************************************
INSTANCE PEPES_YWolf1 (Mst_Default_Wolf)
{	B_SetVisuals_Wolf();	};
INSTANCE PEPES_YWolf2 (Mst_Default_Wolf)
{	B_SetVisuals_Wolf();	};
INSTANCE PEPES_YWolf3 (Mst_Default_Wolf)
{	B_SetVisuals_Wolf();	};
INSTANCE PEPES_YWolf4 (Mst_Default_Wolf)
{	B_SetVisuals_Wolf();	};
