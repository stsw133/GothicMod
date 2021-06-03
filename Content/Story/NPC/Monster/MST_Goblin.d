///******************************************************************************************
prototype Mst_Default_Gobbo (C_NPC)
{
	/// ------ Monster ------
	name								=	"Goblin";
	guild								=	GIL_GOBBO;
	aivar[AIV_MM_REAL_ID]				=	ID_GOBBO;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 5);
	
	/// ------ FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOBBO;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter]			=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_Gobbo()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Body", self.aivar[AIV_BodyTex], DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Gobbo_Black()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Body", 2, DEFAULT, "", DEFAULT, DEFAULT, -1);
	Mdl_SetModelScale	(self, 1.04, 1.04, 1.04);
};
func void B_SetVisuals_Gobbo_Bandit()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Body", 3, DEFAULT, "", DEFAULT, DEFAULT, -1);
	Mdl_SetModelScale	(self, 1.06, 1.06, 1.06);
};
func void B_SetVisuals_Gobbo_Warrior()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gob_Body", 4, DEFAULT, "", DEFAULT, DEFAULT, -1);
	Mdl_SetModelScale	(self, 1.1, 1.1, 1.1);
};
///******************************************************************************************
instance Gobbo (Mst_Default_Gobbo)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Gobbo();
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace);
};
instance Gobbo_Black (Mst_Default_Gobbo)
{
	name						=	"Czarny goblin";

	B_SetMonsterAttributes (self, 8);

	B_SetVisuals_Gobbo_Black();
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace);
};
instance Gobbo_Bandit (Mst_Default_Gobbo)
{
	name						=	"Goblin-bandyta";

	B_SetMonsterAttributes (self, 9);

	damagetype 					=	DAM_EDGE;

	B_SetVisuals_Gobbo_Bandit();
	Npc_SetToFightMode (self, ItMw_1h_Misc_Sword);
};
instance Gobbo_Warrior (Mst_Default_Gobbo)
{
	name						=	"Goblin-wojownik";

	B_SetMonsterAttributes (self, 10);

	damagetype 					=	DAM_EDGE;

	B_SetVisuals_Gobbo_Warrior();
	Npc_SetToFightMode (self, ItMw_1h_Misc_Sword);
};
///******************************************************************************************
instance Gobbo_DaronsStatuenKlauer (Mst_Default_Gobbo)
{
	name						=	"Goblin-z³odziej";

	B_SetMonsterAttributes (self, Gobbo_Black.level);

	B_SetVisuals_Gobbo_Black();
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace);
	CreateInvItem (self, ItMi_LostInnosStatue_Daron);
};
