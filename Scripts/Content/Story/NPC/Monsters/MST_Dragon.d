///******************************************************************************************
prototype Mst_Default_Dragon (C_Npc)
{
	/// ------ Monster ------
	name								=	"Smok";
	guild								=	GIL_DRAGON;
	aivar[AIV_MM_REAL_ID]				=	ID_DRAGON;
	npctype								=	NPCTYPE_MAIN;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_FIRE;
	fight_tactic						=	FAI_DRAGON;
	B_SetAttributesToLevel (self, 90);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_DRAGON_ACTIVE_MAX;
	
	bodyStateInterruptableOverride		=	true;
	
	aivar[AIV_MM_FollowInWater] 		=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
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
	Mdl_SetVisualBody	(self, "Dragon_Body", 1, default, "", default, default, -1);
};
func void B_SetVisuals_RockDragon()
{
	Mdl_SetVisual		(self, "Dragon_Rock.mds");
	Mdl_SetVisualBody	(self, "Dragon_Body", 2, default, "", default, default, -1);
};
func void B_SetVisuals_FireDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Dragon_Body", 3, default, "", default, default, -1);
};
func void B_SetVisuals_IceDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Dragon_Body", 4, default, "", default, default, -1);
};
func void B_SetVisuals_GoldDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Dragon_Body", 5, default, "", default, default, -1);
};
func void B_SetVisuals_BlackDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Dragon_Body", 6, default, "", default, default, -1);
};
func void B_SetVisuals_UndeadDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Dragon_Undead_Body", 0, default, "", default, default, -1);
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
	name						=	"Z³oty smok";
	B_SetVisuals_GoldDragon();
};
instance Dragon_Black (Mst_Default_Dragon)
{
	name						=	"Czarny smok";
	aivar[AIV_MaxDistToWp]		=	0;
	
	B_SetAttributesToLevel (self, 120);
	B_SetVisuals_BlackDragon();
};
instance Dragon_Undead (Mst_Default_Dragon)
{
	name						=	"Smok-o¿ywieniec";
	aivar[AIV_MM_REAL_ID]		=	ID_DRAGON_UNDEAD;
	effect						=	"spellfx_undead_dragon";
	
	B_SetAttributesToLevel (self, 150);
	B_SetVisuals_UndeadDragon();
};
