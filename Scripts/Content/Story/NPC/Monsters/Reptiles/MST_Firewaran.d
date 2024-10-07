///******************************************************************************************
/// Firewaran
///******************************************************************************************
prototype Mst_Default_Firewaran (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ognisty jaszczur";
	guild								=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]				=	ID_FIREWARAN;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_FIRE;
	fight_tactic						=	FAI_WARAN;
	
	NpcFn_SetAttributesToLevel (self, 20);
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
func void B_SetVisuals_Firewaran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_SetVisualBody	(self, "War_Fire_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_ApplyOverlayMds	(self, "Firewaran.mds");
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance FireWaran (Mst_Default_Firewaran)
{
	B_SetVisuals_Firewaran();
};
