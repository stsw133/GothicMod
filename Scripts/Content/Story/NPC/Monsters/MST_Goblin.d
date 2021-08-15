///******************************************************************************************
prototype Mst_Default_Gobbo (C_Npc)
{
	/// ------ Monster ------
	name								=	"Goblin";
	guild								=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]				=	ID_GOBBO;
	
	/// ------ Attributes & FT ------
//	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_Gobbo()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_Gobbo_Yellow()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Yellow_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.02, 1.02, 1.02);
};
func void B_SetVisuals_Gobbo_Black()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Black_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.04, 1.04, 1.04);
};
func void B_SetVisuals_Gobbo_Bandit()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Bandit_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.08, 1.08, 1.08);
};
func void B_SetVisuals_Gobbo_Warrior()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Warrior_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.12, 1.12, 1.12);
};
func void B_SetVisuals_Gobbo_Shaman()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Warrior_Body", 0, default, "", default, default, -1);
	Mdl_SetModelScale	(self, 1.14, 1.14, 1.14);
};
///******************************************************************************************
instance Gobbo (Mst_Default_Gobbo)
{
	B_SetAttributesToLevel (self, 5);
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Gobbo();
	
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Goblin_01);
};
instance Gobbo_Yellow (Mst_Default_Gobbo)
{
	name						=	"¯ó³ty goblin";
	aivar[AIV_MM_REAL_ID]		=	ID_GOBBO_YELLOW;
	
	B_SetAttributesToLevel (self, 6);
	B_SetVisuals_Gobbo_Yellow();
	
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Goblin_01);
};
instance Gobbo_Black (Mst_Default_Gobbo)
{
	name						=	"Czarny goblin";
	aivar[AIV_MM_REAL_ID]		=	ID_GOBBO_BLACK;
	
	B_SetAttributesToLevel (self, 7);
	B_SetVisuals_Gobbo_Black();
	
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Goblin_02);
};
instance Gobbo_Bandit (Mst_Default_Gobbo)
{
	name						=	"Goblin-bandyta";
	aivar[AIV_MM_REAL_ID]		=	ID_GOBBO_BANDIT;
	
	B_SetAttributesToLevel (self, 9);
	B_SetVisuals_Gobbo_Bandit();
	
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Goblin_03);
};
instance Gobbo_Warrior (Mst_Default_Gobbo)
{
	name						=	"Goblin-wojownik";
	aivar[AIV_MM_REAL_ID]		=	ID_GOBBO_WARRIOR;
	
	B_SetAttributesToLevel (self, 11);
	B_SetVisuals_Gobbo_Warrior();
	
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Misc_Sword);
};
instance Gobbo_Shaman (Mst_Default_Gobbo)
{
	name						=	"Goblin-szaman";
	aivar[AIV_MM_REAL_ID]		=	ID_GOBBO_SHAMAN;
	
	B_SetAttributesToLevel (self, 12);
	B_SetVisuals_Gobbo_Shaman();
	
	B_CreateAmbientInv(self);
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Gobbo_DaronsStatuenKlauer (Mst_Default_Gobbo)
{
	name						=	"Goblin-z³odziej";
	aivar[AIV_MM_REAL_ID]		=	ID_GOBBO_BLACK;
	
	B_SetAttributesToLevel (self, 7);
	B_SetVisuals_Gobbo_Black();
	
	B_CreateAmbientInv(self);
	EquipItem (self, ItMw_1h_Goblin_02);
	CreateInvItem (self, ItMi_LostInnosStatue_Daron);
};
