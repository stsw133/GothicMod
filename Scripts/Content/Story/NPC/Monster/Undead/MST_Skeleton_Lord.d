///******************************************************************************************
prototype Mst_Skeleton_Lord (C_NPC)
{
	/// ------ Monster ------
	name								=	"Szkielet-lord";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SKELETON;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 40);
	B_SetFightSkills (self, FightTalent_Medium);
	
	/// ------ FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_HUMAN_MASTER;	
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_Packhunter] 			=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
};
///******************************************************************************************
func void B_SetVisuals_Skeleton_Lord()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_ApplyOverlayMds (self, "humans_1hST2.mds"); Mdl_ApplyOverlayMds (self, "humans_2hST2.mds");
	Mdl_ApplyOverlayMds (self, "humans_BowT2.mds"); Mdl_ApplyOverlayMds (self, "humans_CBowT2.mds");
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_NORMAL, BodySkin_N, "Ske_Head", 0, 0, ITAR_SKELETON);
};
///******************************************************************************************
instance Skeleton_Lord (Mst_Skeleton_Lord)
{
	B_SetVisuals_Skeleton_Lord();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
///******************************************************************************************
instance Crypt_Skeleton_Lord (Mst_Skeleton_Lord)
{
	name						=	"Nieumarły dowódca, Inubis";
	
	B_SetMonsterAttributes (self, 50);
	B_SetVisuals_Skeleton_Lord();
	
	EquipItem (self, ItMw_2H_Sword_M_01);
	CreateInvItems (self, ItMi_Gold, 300);
};
///******************************************************************************************
instance Skeleton_Lord_Archol (Mst_Skeleton_Lord)
{
	name						=	"Nieumarły dowódca, Archol";
	
	B_SetMonsterAttributes (self, 60);
	B_SetVisuals_Skeleton_Lord();
	
	EquipItem (self, ItMw_2H_Sword_M_01);
	CreateInvItems (self, ItMi_Gold, 600);
	CreateInvItem (self, ItKe_EVT_UNDEAD_01);
};
