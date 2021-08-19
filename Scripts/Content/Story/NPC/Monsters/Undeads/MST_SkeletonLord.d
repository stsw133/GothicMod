///******************************************************************************************
prototype Mst_SkeletonLord (C_NPC)
{
	/// ------ Monster ------
	name								=	"Szkielet-lord";
	guild								=	GIL_SKELETON;
	aivar[AIV_MM_REAL_ID]				= 	ID_SKELETON;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_HUMAN_MASTER;	
	
	B_SetAttributesToLevel (self, 40);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
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
func void B_SetVisuals_SkeletonLord()
{
	Mdl_SetVisual		(self, "HumanS.mds");
	Mdl_ApplyOverlayMds (self, "humans_1hST2.mds");
	Mdl_ApplyOverlayMds (self, "humans_2hST2.mds");
	Mdl_ApplyOverlayMds (self, "humans_BowT2.mds");
	Mdl_ApplyOverlayMds (self, "humans_CBowT2.mds");
	B_SetNpcVisual		(self, RACE_HUMAN, MALE, BodyTex_Default, BodySkin_N, "Ske_Head", default, default, ITAR_SKELETON);
};
///******************************************************************************************
instance Skeleton_Lord (Mst_SkeletonLord)
{
	B_SetVisuals_SkeletonLord();
	EquipItem (self, ItMw_2H_Sword_M_01);
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Crypt_Skeleton_Lord (Mst_SkeletonLord)
{
	name								=	"Nieumarły dowódca, Inubis";
	
	B_SetAttributesToLevel (self, 50);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	B_SetVisuals_SkeletonLord();
	EquipItem (self, ItMw_2H_Sword_M_01);
	CreateInvItems (self, ItMi_Gold, 300);
};
///******************************************************************************************
instance Skeleton_Lord_Archol (Mst_SkeletonLord)
{
	name								=	"Nieumarły dowódca, Archol";
	
	B_SetAttributesToLevel (self, 60);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	B_SetVisuals_SkeletonLord();
	EquipItem (self, ItMw_2H_Sword_M_01);
	CreateInvItems (self, ItMi_Gold, 600);
	CreateInvItem (self, ItKe_EVT_UNDEAD_01);
};
