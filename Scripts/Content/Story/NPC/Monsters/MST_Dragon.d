///******************************************************************************************
/// Dragon
///******************************************************************************************
prototype Mst_Default_Dragon (C_Npc)
{
	/// ------ Monster ------
	name								=	"Smok";
	guild								=	GIL_DRAGON;
	aivar[AIV_MM_REAL_ID]				=	ID_DRAGON;
	npctype								=	NPCTYPE_MAIN;
	bodyStateInterruptableOverride		=	true;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_FIRE;
	fight_tactic						=	FAI_DRAGON;
	
	NpcFn_SetAttributesToLevel (self, 80);
	NpcFn_SetMonsterProtection (self, level);
	level *= 5;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_DRAGON_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	aivar[AIV_MaxDistToWp]				=	1000;
	aivar[AIV_OriginalFightTactic]		=	FAI_DRAGON;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_Rtn_DragonRest;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};

///******************************************************************************************
func void B_SetVisuals_SwampDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Drg_Swamp_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_RockDragon()
{
	Mdl_SetVisual		(self, "Dragon_Rock.mds");
	Mdl_SetVisualBody	(self, "Drg_Rock_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_FireDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Drg_Fire_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_IceDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Drg_Ice_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_GoldDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Drg_Gold_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_BlackDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Drg_Black_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};
func void B_SetVisuals_UndeadDragon()
{
	Mdl_SetVisual		(self, "Dragon.mds");
	Mdl_SetVisualBody	(self, "Drg_Undead_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
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
	
	NpcFn_SetAttributesToLevel (self, 90);
	level *= 5;
	
	aivar[AIV_MaxDistToWp]		=	0;
	B_SetVisuals_BlackDragon();
};
instance Dragon_Undead (Mst_Default_Dragon)
{
	name						=	"Smok-o¿ywieniec";
	aivar[AIV_MM_REAL_ID]		=	ID_DRAGON_UNDEAD;
	effect						=	"spellfx_undead_dragon";
	
	NpcFn_SetAttributesToLevel (self, 100);
	level *= 5;
	
	B_SetVisuals_UndeadDragon();
};
