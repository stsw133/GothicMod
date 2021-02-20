//******************************************************************************************
PROTOTYPE Mst_Default_Skeleton (C_Npc)
{
	// ------ Monster ------
	name								=	"Szkielet-wojownik";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SKELETON;

	// ------ Attributes ------
	B_SetMonsterAttributes (self, 30);

	// ------ FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_HUMAN_STRONG;

	// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;

	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;

	// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
//******************************************************************************************
func void B_SetVisuals_Skeleton_Gobbo()
{
	Mdl_SetVisual		(self, "Gobbo.mds");
	Mdl_SetVisualBody	(self, "Gobbo_Skeleton_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Skeleton()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_ApplyOverlayMds (self, "humans_1hST1.mds"); Mdl_ApplyOverlayMds (self, "humans_2hST1.mds");
	Mdl_ApplyOverlayMds (self, "humans_BowT1.mds"); Mdl_ApplyOverlayMds (self, "humans_CBowT1.mds");
	Mdl_ApplyOverlayMds (self, "humans_skeleton.mds");
	Mdl_SetVisualBody	(self, "Ske_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_Skeleton_Warrior()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_ApplyOverlayMds (self, "humans_1hST2.mds"); Mdl_ApplyOverlayMds (self, "humans_2hST2.mds");
	Mdl_ApplyOverlayMds (self, "humans_BowT2.mds"); Mdl_ApplyOverlayMds (self, "humans_CBowT2.mds");
	Mdl_ApplyOverlayMds (self, "humans_skeleton.mds");
	Mdl_SetVisualBody	(self, "Ske_Body2", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
//******************************************************************************************
INSTANCE Skeleton_Gobbo (Mst_Default_Skeleton)
{
	name						=	"Szkielet-goblin";
	guild						=	GIL_GOBBO_SKELETON;

	B_SetMonsterAttributes (self, 10);
	fight_tactic				=	FAI_GOBBO;

	B_SetVisuals_Skeleton_Gobbo();
	Npc_SetToFightMode (self, ItMw_1h_Bau_Mace);
};
INSTANCE Skeleton (Mst_Default_Skeleton)
{
	name						=	"Szkielet";

	B_SetMonsterAttributes (self, 20);
	fight_tactic				=	FAI_HUMAN_NORMAL;

	B_SetVisuals_Skeleton();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
INSTANCE Skeleton_Warrior (Mst_Default_Skeleton)
{
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
//******************************************************************************************
INSTANCE Summoned_Skeleton (Mst_Default_Skeleton)
{
	name						=	"Przyzwany szkielet";
	guild						=	GIL_SUMMONED_SKELETON;
	aivar[AIV_MM_REAL_ID]		=	ID_MOROK;

	B_SetMonsterAttributes (self, Skeleton.level);
	level						=	0;
	fight_tactic				=	FAI_HUMAN_NORMAL;

	B_SetVisuals_Skeleton();
	aivar[AIV_PARTYMEMBER]		=	true;
	B_SetAttitude (self, ATT_FRIENDLY); 
	start_aistate				=	ZS_MM_Rtn_Summoned;
	EquipItem (self, ItMw_2H_Sword_M_01);
};
//******************************************************************************************
INSTANCE Crypt_Skeleton_Room_01 (Mst_Default_Skeleton)
{
	name						=	"Stra¿nik krypty";

	B_SetMonsterAttributes (self, Skeleton_Warrior.level);

	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
	CreateInvItem (self, ItKe_EVT_CRYPT_01);
};
INSTANCE Crypt_Skeleton_Room_02 (Mst_Default_Skeleton)
{
	name						=	"Stra¿nik krypty";

	B_SetMonsterAttributes (self, Skeleton_Warrior.level);

	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
	CreateInvItem (self, ItKe_EVT_CRYPT_02);
};
INSTANCE Crypt_Skeleton_Room_03 (Mst_Default_Skeleton)
{
	name						=	"Stra¿nik krypty";

	B_SetMonsterAttributes (self, Skeleton_Warrior.level);

	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
	CreateInvItem (self, ItKe_EVT_CRYPT_03);
};
//******************************************************************************************
INSTANCE Skeleton_Archol1 (Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
INSTANCE Skeleton_Archol2 (Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
INSTANCE Skeleton_Archol3 (Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
INSTANCE Skeleton_Archol4 (Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
INSTANCE Skeleton_Archol5 (Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
INSTANCE Skeleton_Archol6 (Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
//******************************************************************************************
INSTANCE Skeleton_Mario1 (Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
INSTANCE Skeleton_Mario2 (Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
INSTANCE Skeleton_Mario3 (Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_1h_MISC_Sword);
};
INSTANCE Skeleton_Mario4 (Mst_Default_Skeleton)
{
	aivar[AIV_EnemyOverride]	=	true;
	B_SetVisuals_Skeleton_Warrior();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
