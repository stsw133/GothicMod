///******************************************************************************************
prototype Mst_Default_Spint (C_Npc)
{
	/// ------ Monster ------
	name								=	"Spint";
//	guild								=	GIL_NEUTRAL;
	guild								=	GIL_MEATBUG;
	aivar[AIV_MM_REAL_ID]				=	ID_SPINT;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_SCAVENGER;
	
	NpcFn_SetAttributesToLevel (self, 3);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart]			=	22;	
	aivar[AIV_MM_SleepEnd]				=	6;
	aivar[AIV_MM_EatGroundStart]		=	6;
	aivar[AIV_MM_EatGroundEnd]			=	22;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Spint()
{
	Mdl_SetVisual		(self, "Scavenger.mds");
	Mdl_SetVisualBody	(self, "Spint_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
///******************************************************************************************
instance Spint (Mst_Default_Spint)
{
	B_SetVisuals_Spint();
};
