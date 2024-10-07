///******************************************************************************************
/// Alligator
///******************************************************************************************
prototype Mst_Default_Addon_Alligator (C_Npc)
{
	/// ------ Monster ------
	name								=	"Aligator";
	guild								=	GIL_Alligator;
	aivar[AIV_MM_REAL_ID]				=	ID_Alligator;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_ALLIGATOR;
	
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};

///******************************************************************************************
func void B_SetVisuals_Alligator()
{
	Mdl_SetVisual		(self, "Alligator.mds");
	Mdl_SetVisualBody	(self, "Kro_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Alligator (Mst_Default_Addon_Alligator)
{
	B_SetVisuals_Alligator();
};
