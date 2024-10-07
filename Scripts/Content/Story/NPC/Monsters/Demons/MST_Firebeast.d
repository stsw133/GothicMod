///******************************************************************************************
/// Firebeast
///******************************************************************************************
prototype Mst_Default_Firebeast (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ognista bestia";
	guild								=	GIL_SHADOWBEAST_SKELETON;
	aivar[AIV_MM_REAL_ID]				=	ID_SHADOWBEAST_FIRE;
	effect								=	"SPELLFX_FIRESWORD_HIT";
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_FIRE;
	fight_tactic						=	FAI_SHADOWBEAST;
	
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetMonsterProtection (self, level);
	
	protection[PROT_FIRE]				=	-1;
	
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
func void B_SetVisuals_Firebeast()
{
	Mdl_SetVisual		(self, "FireShadow.mds");
	Mdl_SetVisualBody	(self, "Sha_Fire_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Shadowbeast_Fire (Mst_Default_Firebeast)
{
	B_SetVisuals_Firebeast();
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Shadowbeast_Fire_CanyonLib (Mst_Default_Firebeast)
{
	aivar[AIV_EnemyOverride]			=	true;
	aivar[AIV_MaxDistToWp]				=	900;
	aivar[AIV_OriginalFightTactic]		=	FAI_SHADOWBEAST;
	B_SetVisuals_Firebeast();
};
