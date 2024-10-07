///******************************************************************************************
/// Gargoyle
///******************************************************************************************
prototype Mst_Default_Gargoyle (C_Npc)
{
	/// ------ Monster ------
	name								=	"Gargulec";
	guild								=	GIL_GARGOYLE;
	aivar[AIV_MM_REAL_ID]				=	ID_GARGOYLE;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_HARPY;
	
	NpcFn_SetAttributesToLevel (self, 30);
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
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};

///******************************************************************************************
func void B_SetVisuals_Gargoyle()
{
	Mdl_SetVisual		(self, "Harpie.mds");
	Mdl_SetVisualBody	(self, "Gol_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Gargoyle (Mst_Default_Gargoyle)
{
	B_SetVisuals_Gargoyle();
};
