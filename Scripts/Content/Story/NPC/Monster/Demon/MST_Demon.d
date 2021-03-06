///******************************************************************************************
prototype Mst_Default_Demon (C_Npc)
{
	/// ------ Monster ------
	name								=	"Demon";
	guild								=	GIL_DEMON;
	aivar[AIV_MM_REAL_ID]				=	ID_DEMON;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 55);
	
	/// ------ FT ------
	damagetype 							=	DAM_FIRE;
	damage[DAM_INDEX_FIRE]				/=	2;
	fight_tactic						=	FAI_DEMON;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] 		=	true;
	aivar[AIV_MM_Packhunter] 			=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Demon()
{
	Mdl_SetVisual		(self, "Demon.mds");
	Mdl_SetVisualBody	(self, "Dem_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_DemonLord()
{
	Mdl_SetVisual		(self, "Demon.mds");
	Mdl_SetVisualBody	(self, "Dem2_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Demon (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance DemonLord (Mst_Default_Demon)
{
	name						=	"Lord demonów";
	aivar[AIV_MM_REAL_ID]		=	ID_DEMON_LORD;
	
	B_SetMonsterAttributes (self, 70);
	B_SetVisuals_DemonLord();
};
///******************************************************************************************
instance Summoned_Demon (Mst_Default_Demon)
{
	name						=	"Przyzwany demon";
	guild						=	GIL_SUMMONED;
	aivar[AIV_MM_REAL_ID]		=	ID_SUMMONED;
	
	aivar[AIV_PARTYMEMBER]		=	true;
	start_aistate				=	ZS_MM_Rtn_Summoned;
	B_SetAttitude (self, ATT_FRIENDLY); 
	
	B_SetMonsterAttributes (self, Demon.level);
	B_SetVisuals_Demon();
};
///******************************************************************************************
instance Xardas_DT_DemonLord (Mst_Default_Demon)
{
	name						=	"Lord demonów";
	aivar[AIV_MM_REAL_ID]		=	ID_DEMON_LORD;
	
	B_SetMonsterAttributes (self, DemonLord.level);
	B_SetVisuals_DemonLord();
};
instance Xardas_DT_Demon1 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon2 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon3 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon4 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
instance Xardas_DT_Demon5 (Mst_Default_Demon)
{
	B_SetVisuals_Demon();
};
