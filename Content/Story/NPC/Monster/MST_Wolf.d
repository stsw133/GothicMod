///******************************************************************************************
prototype Mst_Default_Wolf (C_Npc)
{
	/// ------ Monster ------
	name								=	"Wilk";
	guild								=	GIL_WOLF;
	aivar[AIV_MM_REAL_ID]				=	ID_WOLF;

	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 6);

	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_WOLF;

	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_LONG;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter]			=	true;

	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Wolf()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Wol_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
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
func void B_SetVisuals_IceWolf()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "SnoWol_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Wolf_Skeleton()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "WOL_SKELETON_BODY", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Wolf (Mst_Default_Wolf)
{
	aivar[AIV_BodyTex] = Hlp_Random(5);
	B_SetVisuals_Wolf();
};
instance BlackWolf (Mst_Default_Wolf)
{
	name						=	"Czarny wilk";
	B_SetMonsterAttributes (self, 8);
	B_SetVisuals_BlackWolf();
};
instance Jackal (Mst_Default_Wolf)
{
	name						=	"Szakal";
	B_SetMonsterAttributes (self, Wolf.level);
	B_SetVisuals_Jackal();
};
instance IceWolf (Mst_Default_Wolf)
{
	name						=	"Lodowy wilk";
	aivar[AIV_MM_REAL_ID]		=	ID_Icewolf;
	
	B_SetMonsterAttributes (self, 12);
	B_SetVisuals_IceWolf();
};
instance Wolf_Skeleton (Mst_Default_Wolf)
{
	name						=	"Wilk-szkielet";
	guild						=	GIL_SHADOWBEAST_SKELETON;
	aivar[AIV_MM_REAL_ID]		= 	ID_SHADOWBEAST_SKELETON;
	
	B_SetMonsterAttributes (self, 15);
	B_SetVisuals_Wolf_Skeleton();
};
///******************************************************************************************
instance Summoned_Wolf (Mst_Default_Wolf)
{
	name							=	"Przyzwany wilk-szkielet";
	guild							=	GIL_SUMMONED;
	aivar[AIV_MM_REAL_ID]			= 	ID_SUMMONED;
	
	B_SetMonsterAttributes (self, Wolf_Skeleton.level);
	
	aivar[AIV_PARTYMEMBER] = true;
	B_SetAttitude (self, ATT_FRIENDLY);
	start_aistate = ZS_MM_Rtn_Summoned;
	
	B_SetVisuals_Wolf_Skeleton();
};
///******************************************************************************************
instance PEPES_YWolf1 (Mst_Default_Wolf)
{
	B_SetVisuals_Wolf();
};
instance PEPES_YWolf2 (Mst_Default_Wolf)
{
	B_SetVisuals_Wolf();
};
instance PEPES_YWolf3 (Mst_Default_Wolf)
{
	B_SetVisuals_Wolf();
};
instance PEPES_YWolf4 (Mst_Default_Wolf)
{
	B_SetVisuals_Wolf();
};
