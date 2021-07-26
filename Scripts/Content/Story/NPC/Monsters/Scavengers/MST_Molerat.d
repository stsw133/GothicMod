///******************************************************************************************
prototype Mst_Default_Molerat (C_Npc)
{
	/// ------ Monster ------
	name								=	"Kretoszczur";
	guild								=	GIL_MOLERAT;
	aivar[AIV_MM_REAL_ID]				= 	ID_MOLERAT;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						=	FAI_MOLERAT;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Molerat()
{
	Mdl_SetVisual		(self, "Molerat.mds");
	Mdl_SetVisualBody	(self, "Mol_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_Swamprat()
{
	Mdl_SetVisual		(self, "Swamprat.mds");
	Mdl_SetVisualBody	(self, "Fot_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Molerat (Mst_Default_Molerat)
{
	B_SetAttributesToLevel (self, 3);
	B_SetVisuals_Molerat();
};
instance Swamprat (Mst_Default_Molerat)
{
	name								=	"Bagnoszczur";
	B_SetAttributesToLevel (self, 6);
	B_SetVisuals_Swamprat();
};
