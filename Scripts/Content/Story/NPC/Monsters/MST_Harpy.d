///******************************************************************************************
/// Harpy
///******************************************************************************************
prototype Mst_Default_Harpy (C_Npc)
{
	/// ------ Monster ------
	name								=	"Harpia";
	guild								=	GIL_HARPY;
	aivar[AIV_MM_REAL_ID]				=	ID_HARPY;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_HARPY;
	
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
func void B_SetVisuals_Harpy()
{
	Mdl_SetVisual		(self, "Harpie.mds");
	Mdl_SetVisualBody	(self, "Har_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_VampHarpy()
{
	Mdl_SetVisual		(self, "Harpie.mds");
	Mdl_SetVisualBody	(self, "Har_Vamp_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.05, 1.1, 1.05);
};
func void B_SetVisuals_DragonHarpy()
{
	Mdl_SetVisual		(self, "Harpie.mds");
	Mdl_SetVisualBody	(self, "Har_Dragon_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.2, 1.15, 1.2);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Harpie (Mst_Default_Harpy)
{
	NpcFn_SetAttributesToLevel (self, 15);
	NpcFn_SetMonsterProtection (self, level);
	B_SetVisuals_Harpy();
};
instance VampHarpie (Mst_Default_Harpy)
{
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetMonsterProtection (self, level);
	B_SetVisuals_VampHarpy();
	
	aivar[AIV_LifeSteal] = 5;
};
instance DragonHarpie (Mst_Default_Harpy)
{
	NpcFn_SetAttributesToLevel (self, 25);
	NpcFn_SetMonsterProtection (self, level);
	B_SetVisuals_DragonHarpy();
};
