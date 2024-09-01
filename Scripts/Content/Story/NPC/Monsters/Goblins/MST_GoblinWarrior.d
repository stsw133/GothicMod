///******************************************************************************************
prototype Mst_Default_GoblinWarrior (C_Npc)
{
	/// ------ Monster ------
	name								=	"Goblin-wojownik";
	guild								=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]				=	ID_GOBBO_WARRIOR;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	NpcFn_SetAttributesToLevel (self, 12);
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
func void B_SetVisuals_GoblinWarrior()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Warrior_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.1, 1.1, 1.1);
};
///******************************************************************************************
instance Gobbo_Warrior (Mst_Default_GoblinWarrior)
{
	B_SetVisuals_GoblinWarrior();
	EquipItem (self, ItMw_1h_Misc_Sword);
};
