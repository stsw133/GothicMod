///******************************************************************************************
prototype Mst_Default_Avatar (C_Npc)
{
	/// ------ Monster ------
	name								=	"Awatar";
	guild								=	GIL_FIREGOLEM;
	aivar[AIV_MM_REAL_ID]				=	ID_AVATAR;
	aivar[AIV_MagicUser]				=	MAGIC_OTHER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOLEM;
	
	B_SetAttributesToLevel (self, 50);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL - 10 * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL + 10 * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL + 10 * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater] 		=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Avatar()
{
	Mdl_SetVisual		(self, "Avatar.mds");
	Mdl_SetVisualBody	(self, "Avatar_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_AncientAvatar()
{
	Mdl_SetVisual		(self, "Avatar.mds");
	Mdl_SetVisualBody	(self, "Avatar_Ancient_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_DesertAvatar()
{
	Mdl_SetVisual		(self, "Avatar.mds");
	Mdl_SetVisualBody	(self, "Avatar_Desert_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_FireAvatar()
{
	Mdl_SetVisual		(self, "Avatar.mds");
	Mdl_SetVisualBody	(self, "Avatar_Fire_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_IceAvatar()
{
	Mdl_SetVisual		(self, "Avatar.mds");
	Mdl_SetVisualBody	(self, "Avatar_Ice_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_OreAvatar()
{
	Mdl_SetVisual		(self, "Avatar.mds");
	Mdl_SetVisualBody	(self, "Avatar_Ore_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_SteelAvatar()
{
	Mdl_SetVisual		(self, "Avatar.mds");
	Mdl_SetVisualBody	(self, "Avatar_Steel_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Avatar (Mst_Default_Avatar)
{
	B_SetVisuals_Avatar();
};
instance AncientAvatar (Mst_Default_Avatar)
{
	B_SetVisuals_AncientAvatar();
};
instance DesertAvatar (Mst_Default_Avatar)
{
	B_SetVisuals_DesertAvatar();
};
instance FireAvatar (Mst_Default_Avatar)
{
	B_SetVisuals_FireAvatar();
};
instance IceAvatar (Mst_Default_Avatar)
{
	B_SetVisuals_IceAvatar();
};
instance OreAvatar (Mst_Default_Avatar)
{
	B_SetVisuals_OreAvatar();
};
instance SteelAvatar (Mst_Default_Avatar)
{
	B_SetVisuals_SteelAvatar();
};
