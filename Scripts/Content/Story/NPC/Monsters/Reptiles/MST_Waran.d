///******************************************************************************************
/// Waran
///******************************************************************************************
prototype Mst_Default_Waran (C_Npc)
{
	/// ------ Monster ------
	name								=	"Jaszczur";
	guild								=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]				=	ID_WARAN;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_WARAN;
	
	NpcFn_SetAttributesToLevel (self, 12);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};

///******************************************************************************************
func void B_SetVisuals_Waran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_SetVisualBody	(self, "War_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_DesertWaran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_SetVisualBody	(self, "War_Desert_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_MountainWaran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_SetVisualBody	(self, "War_Mountain_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Waran (Mst_Default_Waran)
{
	B_SetVisuals_Waran();
};
instance DesertWaran (Mst_Default_Waran)
{
	B_SetVisuals_DesertWaran();
};
instance MountainWaran (Mst_Default_Waran)
{
	B_SetVisuals_MountainWaran();
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance BeachWaran1 (Mst_Default_Waran)
{
	B_SetVisuals_Waran();
};
instance BeachWaran2 (Mst_Default_Waran)
{
	B_SetVisuals_Waran();
};
