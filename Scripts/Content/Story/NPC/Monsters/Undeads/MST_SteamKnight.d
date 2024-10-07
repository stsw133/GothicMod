///******************************************************************************************
/// SteamKnight
///******************************************************************************************
prototype Mst_Default_SteamKnight (C_Npc)
{
	/// ------ Monster ------
	name								=	"Parowy rycerz";
	guild								=	GIL_SKELETON;
//	aivar[AIV_MM_REAL_ID]				=	ID_SKELETON;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	NpcFn_SetAttributesToLevel (self, 40);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};

///******************************************************************************************
func void B_SetVisuals_SteamKnight()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_SetVisualBody	(self, "Ske_Body", self.aivar[AIV_BodyTex], default, "", default, default, ITAR_SteamKnight);
	Mdl_ApplyOverlayMds (self, "humans_1hST2.mds");
	Mdl_ApplyOverlayMds (self, "humans_2hST2.mds");
	Mdl_ApplyOverlayMds (self, "humans_BowT2.mds");
	Mdl_ApplyOverlayMds (self, "humans_CbowT2.mds");
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance SteamKnight (Mst_Default_SteamKnight)
{
	B_SetVisuals_SteamKnight();
	EquipItem (self, ItMw_2h_Sld_Sword);
};
