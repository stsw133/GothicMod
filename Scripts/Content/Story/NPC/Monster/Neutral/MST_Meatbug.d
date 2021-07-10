///******************************************************************************************
prototype Mst_Default_Meatbug (C_Npc)			
{
	/// ------ Monster ------
	name								=	"Chrz�szcz";
	guild								=	GIL_MEATBUG;
	aivar[AIV_MM_REAL_ID]				= 	ID_MEATBUG;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 0);
	
	/// ------ FT ------
	damagetype 							=	DAM_EDGE;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Meatbug()
{
	Mdl_SetVisual		(self, "Meatbug.mds");
	Mdl_SetVisualBody	(self, "Mbg_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
func void B_SetVisuals_Inkbug()
{
	Mdl_SetVisual		(self, "Meatbug.mds");
	Mdl_SetVisualBody	(self, "Mbg_Ink_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Meatbug (Mst_Default_Meatbug)
{
	B_SetVisuals_Meatbug();
};
instance Inkbug (Mst_Default_Meatbug)
{
	name						=	"Prekolumbijczyk";
	aivar[AIV_MM_REAL_ID]		= 	ID_INKBUG;
	B_SetVisuals_Inkbug();
};
///******************************************************************************************
instance Meatbug_Brutus1 (Mst_Default_Meatbug)
{
	B_SetVisuals_Meatbug();
};
instance Meatbug_Brutus2 (Mst_Default_Meatbug)
{
	B_SetVisuals_Meatbug();
};
instance Meatbug_Brutus3 (Mst_Default_Meatbug)
{
	B_SetVisuals_Meatbug();
};
instance Meatbug_Brutus4 (Mst_Default_Meatbug)
{
	B_SetVisuals_Meatbug();
};
