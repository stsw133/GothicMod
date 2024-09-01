///******************************************************************************************
prototype Mst_Default_Avatar (C_Npc)
{
	/// ------ Monster ------
	name								=	"Awatar";
	guild								=	GIL_GOLEM;
	aivar[AIV_MM_REAL_ID]				=	ID_AVATAR;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOLEM;
	
	NpcFn_SetAttributesToLevel (self, 50);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Avatar()
{
	Mdl_SetVisual		(self, "Avatar.mds");
	Mdl_SetVisualBody	(self, "Avatar_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.2, 1.2, 1.2);
};
///******************************************************************************************
instance Avatar (Mst_Default_Avatar)
{
	B_SetVisuals_Avatar();
};
