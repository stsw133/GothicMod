///******************************************************************************************
/// GoblinBlack
///******************************************************************************************
prototype Mst_Default_GoblinBlack (C_Npc)
{
	/// ------ Monster ------
	name								=	"Czarny goblin";
	guild								=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]				=	ID_GOBBO_BLACK;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	NpcFn_SetAttributesToLevel (self, 6);
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
func void B_SetVisuals_GoblinBlack()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Black_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.05, 1.05, 1.05);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Gobbo_Black (Mst_Default_GoblinBlack)
{
	B_SetVisuals_GoblinBlack();
	EquipItem (self, ItMw_1h_GobboMace_02);
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Gobbo_DaronsStatuenKlauer (Mst_Default_GoblinBlack)
{
	name								=	"Goblin-z³odziej";
	
	B_SetVisuals_GoblinBlack();
	EquipItem (self, ItMw_1h_GobboMace_02);
	CreateInvItem (self, ItMi_LostInnosStatue_Daron);
};
