///******************************************************************************************
prototype Mst_Default_Dragon (C_Npc)
{
	/// ------ Monster ------
	name								=	"Smok";
	guild								=	GIL_DRAGON;
	aivar[AIV_MM_REAL_ID]				=	ID_DRAGON;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 90+(MIS_KilledDragons*5));
	
	/// ------ FT ------
	damagetype 							=	DAM_FIRE;
	damage[DAM_INDEX_FIRE]				/=	2;
	fight_tactic						=	FAI_DRAGON;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_DRAGON_ACTIVE_MAX;
	
	bodyStateInterruptableOverride		=	true;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] 		=	false;
	aivar[AIV_MM_Packhunter] 			=	false;
	
	aivar[AIV_MaxDistToWp]				=	1000;
	aivar[AIV_OriginalFightTactic] 		=	FAI_DRAGON;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_SwampDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Dragon_Body", 1, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_RockDragon()
{
	Mdl_SetVisual		(self, "Dragon_Rock.mds");
	Mdl_SetVisualBody	(self, "Dragon_Body", 2, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_FireDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Dragon_Body", 3, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_IceDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Dragon_Body", 4, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_GoldDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Dragon_Body", 5, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_BlackDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Dragon_Body", 6, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_UndeadDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Dragon_Undead_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
///******************************************************************************************
instance Dragon_Swamp (Mst_Default_Dragon)
{
	name						=	"Bagienny smok";
	B_SetVisuals_SwampDragon();
};
instance Dragon_Rock (Mst_Default_Dragon)
{
	name						=	"Kamienny smok";
	B_SetVisuals_RockDragon();
};
instance Dragon_Fire (Mst_Default_Dragon)
{
	name						=	"Ognisty smok";
	B_SetVisuals_FireDragon();
};
instance Dragon_Ice (Mst_Default_Dragon)
{
	name						=	"Lodowy smok";
	aivar[AIV_MaxDistToWp]		=	0;
	B_SetVisuals_IceDragon();
};
instance Dragon_Gold (Mst_Default_Dragon)
{
	name						=	"Z�oty smok";
	B_SetVisuals_GoldDragon();
};
instance Dragon_Black (Mst_Default_Dragon)
{
	name						=	"Czarny smok";
	aivar[AIV_MaxDistToWp]		=	0;
	B_SetMonsterAttributes (self, 120);
	B_SetVisuals_BlackDragon();
};
instance Dragon_Undead (Mst_Default_Dragon)
{
	name						=	"Smok-o�ywieniec";
	aivar[AIV_MM_REAL_ID]		=	ID_DRAGON_UNDEAD;
	effect						=	"spellfx_undead_dragon";
	B_SetMonsterAttributes (self, 150);
	B_SetVisuals_UndeadDragon();
};
