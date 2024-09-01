///******************************************************************************************
prototype Mst_Default_DemonFirewaran (C_Npc)
{
	/// ------ Monster ------
	name								=	"Demoniczny jaszczur";
	guild								=	GIL_WARAN;
	aivar[AIV_MM_REAL_ID]				=	ID_FIREWARAN;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_FIRE;
	fight_tactic						=	FAI_WARAN;
	
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetMonsterProtection (self, level);
	
	protection[PROT_FIRE]				=	-1;
	
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
func void B_SetVisuals_DemonFirewaran()
{
	Mdl_SetVisual		(self, "Waran.mds");
	Mdl_SetVisualBody	(self, "War_DemonFire_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_ApplyOverlayMds	(self, "Firewaran.mds");
};
///******************************************************************************************
instance DemonFirewaran (Mst_Default_DemonFirewaran)
{
	B_SetVisuals_DemonFirewaran();
};
