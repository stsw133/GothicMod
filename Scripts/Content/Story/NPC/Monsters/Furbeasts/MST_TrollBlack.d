///******************************************************************************************
prototype Mst_Default_TrollBlack (C_Npc)
{
	/// ------ Monster ------
	name								=	"Czarny troll";
	guild								=	GIL_TROLL;
	aivar[AIV_MM_REAL_ID]				= 	ID_TROLL_BLACK;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_FLY;
	fight_tactic						=	FAI_TROLL;
	
	NpcFn_SetAttributesToLevel (self, 70);
	NpcFn_SetMonsterProtection (self, level);
	
	aivar[AIV_AreaDmg]					=	100;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	bodyStateInterruptableOverride		=	true;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_BlackTroll()
{
	Mdl_SetVisual		(self, "Troll.mds");
	Mdl_SetVisualBody	(self, "Tro_Black_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Troll_Black (Mst_Default_TrollBlack)
{
	B_SetVisuals_BlackTroll();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Troll_DI (Mst_Default_TrollBlack)
{
	aivar[AIV_MaxDistToWp] = 300;
	aivar[AIV_OriginalFightTactic] = FAI_TROLL;
	B_SetVisuals_BlackTroll();
};
