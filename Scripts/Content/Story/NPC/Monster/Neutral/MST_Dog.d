///******************************************************************************************
prototype Mst_Default_Dog (C_Npc)
{
	/// ------ Monster ------
	name								=	"Pies";
	guild								=	GIL_SHEEP;
	aivar[AIV_MM_REAL_ID]				=	ID_DOG;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 4);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_WOLF;
	
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
func void B_SetVisuals_Dog()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Dog_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
	Mdl_SetModelScale	(self, 0.9, 0.9, 0.9);
};
///******************************************************************************************
instance Dog (Mst_Default_Dog)
{
	B_SetVisuals_Dog();
};
