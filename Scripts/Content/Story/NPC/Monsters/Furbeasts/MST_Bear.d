///******************************************************************************************
/// Bear
///******************************************************************************************
prototype Mst_Default_Bear (C_Npc)
{
	/// ------ Monster ------
	name								=	"Niedüwiedü";
	guild								=	GIL_SHADOWBEAST;
	aivar[AIV_MM_REAL_ID]				=	ID_BEAR;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_SHADOWBEAST;
	
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart]			=	6;
	aivar[AIV_MM_SleepEnd]				=	20;
	aivar[AIV_MM_RoamStart]				=	20;
	aivar[AIV_MM_RoamEnd]				=	6;
	Npc_SetToFistMode(self);
};

///******************************************************************************************
func void B_SetVisuals_Bear()
{
	Mdl_SetVisual		(self, "Bear.mds");
	Mdl_SetVisualBody	(self, "Bear_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Bear (Mst_Default_Bear)
{
	B_SetVisuals_Bear();
};
