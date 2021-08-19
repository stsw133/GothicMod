///******************************************************************************************
prototype Mst_Default_Golem (C_Npc)
{
	/// ------ Monster ------
	name								=	"Golem";
	guild								=	GIL_GOLEM;
	aivar[AIV_MM_REAL_ID]				=	ID_GOLEM;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOLEM;
	
	B_SetAttributesToLevel (self, 40);
	
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
func void B_SetVisuals_Golem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_AncientGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Ancient_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_DesertGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Desert_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_FireGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Fire_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_IceGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Ice_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_OreGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Ore_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_CrystalGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Crystal_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_SteelGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Steel_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_SwampGolem()
{
	Mdl_SetVisual		(self, "SwampGolem.mds");
	Mdl_SetVisualBody	(self, "Gol_Swamp_Body", 0, default, "", default, default, -1);
};
func void B_SetVisuals_DarkmudGolem()
{
	Mdl_SetVisual		(self, "SwampGolem.mds");
	Mdl_SetVisualBody	(self, "Gol_Darkmud_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Golem (Mst_Default_Golem)
{
	B_SetVisuals_Golem();
};
instance AncientGolem (Mst_Default_Golem)
{
	B_SetVisuals_AncientGolem();
};
instance DesertGolem (Mst_Default_Golem)
{
	B_SetVisuals_DesertGolem();
};
instance FireGolem (Mst_Default_Golem)
{
	B_SetVisuals_FireGolem();
};
instance IceGolem (Mst_Default_Golem)
{
	B_SetVisuals_IceGolem();
};
instance OreGolem (Mst_Default_Golem)
{
	B_SetVisuals_OreGolem();
};
instance CrystalGolem (Mst_Default_Golem)
{
	effect = "SPELLFX_CRYSTALGLOW";
	
	B_SetAttributesToLevel (self, 30);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL - 10 * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL + 10 * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL + 10 * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	B_SetVisuals_CrystalGolem();
};
instance SteelGolem (Mst_Default_Golem)
{
	B_SetVisuals_SteelGolem();
};
instance SwampGolem (Mst_Default_Golem)
{
	B_SetVisuals_SwampGolem();
};
instance DarkmudGolem (Mst_Default_Golem)
{
	B_SetVisuals_DarkmudGolem();
};
///******************************************************************************************
/// Summoned_Golem
///******************************************************************************************
instance Summoned_Golem (Mst_Default_Golem)
{
	name								=	"Przyzwany golem";
	guild								=	GIL_SUMMONED;
	aivar[AIV_MM_REAL_ID]				=	ID_SUMMONED;
	
	B_SetAttributesToLevel (self, level);
	B_SetVisuals_Golem();
};
///******************************************************************************************
/// Shattered_Golem
///******************************************************************************************
func void ZS_GolemDown()
{
	self.senses							=	SENSE_SMELL;
	self.senses_range					=	2000;
	self.aivar[AIV_TAPOSITION]			=	NOTINPOS;
	
	Npc_SetPercTime	(self, 1);
	Npc_PercEnable	(self, PERC_ASSESSPLAYER, B_GolemRise);
};
func int ZS_GolemDown_LOOP()
{
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
  	{
  		AI_PlayAni (self, "T_DEAD");
  		self.aivar[AIV_TAPOSITION]		=	ISINPOS;
  	};
	return LOOP_CONTINUE;
};
func void ZS_GolemDown_END()
{
};
func void B_GolemRise()
{
	if (Npc_GetDistToNpc (self, hero) <= 700)
	&& (Mob_HasItems("NW_GOLEMCHEST", ItSe_GolemChest_Mis) == 0)
	{
		AI_PlayAni (self, "T_RISE");
		self.noFocus					=	false;
		self.name						=	"Golem";
		self.flags						=	0;
		
		AI_StartState (self, ZS_MM_Attack, 0, "");
		self.bodyStateInterruptableOverride	= false;
		self.start_aistate				=	ZS_MM_AllScheduler;
		self.aivar[AIV_MM_RestStart] 	=	OnlyRoutine;
	};	
};
///******************************************************************************************
instance Shattered_Golem (Mst_Default_Golem)
{
	name								=	"";
	guild								=	GIL_GOLEM;
	aivar[AIV_MM_REAL_ID]				= 	ID_GOLEM;
	noFocus								=	true;
	flags				   				=	NPC_FLAG_IMMORTAL;
	
	bodyStateInterruptableOverride		=	true;
	
	B_SetVisuals_Golem();
	start_aistate						=	ZS_GolemDown;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
};
///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Golem_Magic (Mst_Default_Golem)
{
	name								=	"Magiczny golem";
	
	B_SetAttributesToLevel (self, 30);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL - 10 * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL + 10 * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL + 10 * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL / 3;
	
	B_SetVisuals_Golem();
	Mdl_SetModelScale (self, 0.9, 0.9, 0.9);
};
///******************************************************************************************
instance Golem_Valley (Mst_Default_Golem)
{
	B_SetVisuals_SwampGolem();
	aivar[AIV_MaxDistToWp]				=	1500;
	aivar[AIV_OriginalFightTactic]		=	FAI_GOLEM;
};
///******************************************************************************************
instance Golem_Sylvio1 (Mst_Default_Golem)
{
	B_SetVisuals_IceGolem();
};
instance Golem_Sylvio2 (Mst_Default_Golem)
{
	B_SetVisuals_IceGolem();
};
