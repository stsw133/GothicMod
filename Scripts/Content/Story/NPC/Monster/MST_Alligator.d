///******************************************************************************************
prototype Mst_Default_Addon_Alligator (C_Npc)
{
	/// ------ Monster ------
	name								=	"Aligator";
	guild								=	GIL_Alligator;
	aivar[AIV_MM_REAL_ID]				= 	ID_Alligator;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 15);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_ALLIGATOR;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_Packhunter]			=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Alligator()
{
	Mdl_SetVisual		(self, "Alligator.mds");
	Mdl_SetVisualBody	(self, "Kro_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Alligator (Mst_Default_Addon_Alligator)
{
	B_SetVisuals_Alligator();
};
///******************************************************************************************
instance Alligator_PortalDead (Mst_Default_Addon_Alligator)
{
	B_SetVisuals_Alligator();
};
