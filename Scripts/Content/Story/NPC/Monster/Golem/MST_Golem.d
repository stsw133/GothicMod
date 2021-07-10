///******************************************************************************************
prototype Mst_Default_Golem (C_Npc)
{
	/// ------ Monster ------
	name								=	"Golem";
	guild								=	GIL_STONEGOLEM;
	aivar[AIV_MM_REAL_ID]				=	ID_GOLEM;
	
	/// ------ Attributes ------
	B_SetMonsterAttributes (self, 40);
	
	/// ------ FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOLEM;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FollowInWater] 		=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Golem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_AncientGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Ancient_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_DesertGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Desert_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_FireGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Fire_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_IceGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Ice_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_OreGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Ore_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_SteelGolem()
{
	Mdl_SetVisual		(self, "Golem.mds");
	Mdl_SetVisualBody	(self, "Gol_Steel_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
};
func void B_SetVisuals_SwampGolem()
{
	Mdl_SetVisual		(self, "SwampGolem.mds");
	Mdl_SetVisualBody	(self, "Gol_Swamp_Body", 0, DEFAULT, "", DEFAULT, DEFAULT, -1);
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
instance SteelGolem (Mst_Default_Golem)
{
	B_SetVisuals_SteelGolem();
};
instance SwampGolem (Mst_Default_Golem)
{
	B_SetVisuals_SwampGolem();
};
///******************************************************************************************
/// Summoned_Golem
///******************************************************************************************
instance Summoned_Golem (Mst_Default_Golem)
{
	name						=	"Przyzwany golem";
	guild						=	GIL_SUMMONED;
	
	B_SetMonsterAttributes (self, Golem.level);
	
	B_SetVisuals_Golem();
	aivar[AIV_SummonTime]		=	-1;
	start_aistate				=	ZS_MM_Rtn_Summoned;
};
///******************************************************************************************
/// Shattered_Golem
///******************************************************************************************
func void ZS_GolemDown()
{
	self.senses					=	SENSE_SMELL;
	self.senses_range			=	2000;	
	Npc_SetPercTime (self, 1);	
	Npc_PercEnable (self, PERC_ASSESSPLAYER, B_GolemRise); 

	self.aivar[AIV_TAPOSITION]	=	NOTINPOS;
};
func int ZS_GolemDown_LOOP()	
{
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
  	{
  		AI_PlayAni (self, "T_DEAD");
  		self.aivar[AIV_TAPOSITION]	=	ISINPOS;
  	};
	return LOOP_CONTINUE;
};
func void ZS_GolemDown_END()
{
};
func void B_GolemRise()
{
	if (Npc_GetDistToNpc (self, hero) <= 700)
	&& (Mob_HasItems ("NW_GOLEMCHEST", ItSe_GolemChest_Mis) == 0)
	{
		AI_PlayAni (self, "T_RISE");
		self.NoFocus			=	false;
		self.name				=	"Kamienny golem";
		self.flags				=	0;

		AI_StartState (self, ZS_MM_Attack, 0, "");
		self.bodyStateInterruptableOverride	= false;
		self.start_aistate				=	ZS_MM_AllScheduler;
		self.aivar[AIV_MM_RestStart] 	=	OnlyRoutine;
	};	
};
///******************************************************************************************
instance Shattered_Golem (Mst_Default_Golem)
{
	name						=	"";
	guild						=	GIL_STONEGOLEM;
	aivar[AIV_MM_REAL_ID]		= 	ID_GOLEM;
	NoFocus						=	true;
	flags				   		=	NPC_FLAG_IMMORTAL;

	bodyStateInterruptableOverride	=	true;

	B_SetVisuals_Golem();
	start_aistate				=	ZS_GolemDown;
	aivar[AIV_MM_RestStart] 	=	OnlyRoutine;
};
///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Golem_Magic (Mst_Default_Golem)
{
	name						=	"Magiczny golem";
	B_SetMonsterAttributes (self, Golem.level-10);
	B_SetVisuals_OreGolem();
};
///******************************************************************************************
instance Golem_Valley (Mst_Default_Golem)
{
	B_SetVisuals_SwampGolem();
	aivar[AIV_MaxDistToWp]		=	1500;
	aivar[AIV_OriginalFightTactic]	=	FAI_GOLEM;
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
