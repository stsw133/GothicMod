///******************************************************************************************
prototype Mst_Default_Swampdrone (C_Npc)
{
	/// ------ Monster ------
	name								=	"Bagienny truteñ";
	guild								=	GIL_BLOODFLY;
	aivar[AIV_MM_REAL_ID]				=	ID_SWAMPDRONE;
	
	/// ------ Attributes ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						= 	FAI_BLOODFLY;
	
	NpcFn_SetAttributesToLevel (self, 9);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_WuselStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Swampdrone()
{
	Mdl_SetVisual		(self, "Swampdrone.mds");
	Mdl_SetVisualBody	(self, "Swampdrone_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Swampdrone (Mst_Default_SwampDrone)
{
	B_SetVisuals_SwampDrone();
};
