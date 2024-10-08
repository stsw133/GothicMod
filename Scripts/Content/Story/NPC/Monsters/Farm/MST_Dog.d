///******************************************************************************************
/// Dog
///******************************************************************************************
prototype Mst_Default_Dog (C_Npc)
{
	/// ------ Monster ------
	name								=	"Pies";
	guild								=	GIL_LIVESTOCK;
	aivar[AIV_MM_REAL_ID]				=	ID_DOG;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_WOLF;
	
	NpcFn_SetAttributesToLevel (self, 4);
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
func void B_SetVisuals_Dog()
{
	Mdl_SetVisual		(self, "Wolf.mds");
	Mdl_SetVisualBody	(self, "Dog_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 0.9, 0.9, 0.9);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Dog (Mst_Default_Dog)
{
	B_SetVisuals_Dog();
};
