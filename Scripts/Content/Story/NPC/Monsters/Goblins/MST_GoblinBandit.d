///******************************************************************************************
/// GoblinBandit
///******************************************************************************************
prototype Mst_Default_GoblinBandit (C_Npc)
{
	/// ------ Monster ------
	name								=	"Goblin-bandyta";
	guild								=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]				=	ID_GOBBO_BANDIT;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	NpcFn_SetAttributesToLevel (self, 8);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	
	/// ------ Inventory ------
	B_CreateAmbientInv(self);
};

///******************************************************************************************
func void B_SetVisuals_GoblinBandit()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Bandit_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.05, 1.05, 1.05);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Gobbo_Bandit (Mst_Default_GoblinBandit)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_GoblinBandit();
	EquipItem (self, ItMw_1h_Goblin_03);
};
