///******************************************************************************************
prototype Mst_Default_Zombie (C_Npc)
{
	/// ------ Monster ------
	name								=	"Zombie";
	guild								=	GIL_ZOMBIE;
	aivar[AIV_MM_REAL_ID]				= 	ID_ZOMBIE;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_ZOMBIE;
	
	NpcFn_SetAttributesToLevel (self, 20);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	bodyStateInterruptableOverride		=	true;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Zombie()
{
	Mdl_SetVisual		(self, "Zombie.mds");
	Mdl_SetVisualBody	(self, "Zom_Body", 0, self.aivar[AIV_SkinTex], "Zom_Head", self.aivar[AIV_FaceTex], default, -1);
};
func void B_SetVisuals_MayaZombie()
{
	Mdl_SetVisual		(self, "Zombie.mds");
	Mdl_SetVisualBody	(self, "Zom_Body", 0, self.aivar[AIV_SkinTex], "Zom_Head", self.aivar[AIV_FaceTex], default, ITAR_SKELETON);
};
///******************************************************************************************
instance Zombie (Mst_Default_Zombie)
{
	aivar[AIV_SkinTex] = Hlp_Random(2);
	aivar[AIV_FaceTex] = Hlp_Random(2);
	B_SetVisuals_Zombie();
};
instance MayaZombie (Mst_Default_Zombie)
{
//	start_aistate						=	ZS_Pal_ZOMBIE;
//	aivar[AIV_MM_RestStart] 			=	OnlyRoutine;
	aivar[AIV_SkinTex] = Hlp_Random(2);
	aivar[AIV_FaceTex] = Hlp_Random(2);
	B_SetVisuals_MayaZombie();
};
///******************************************************************************************
///	QuestMonsters
///******************************************************************************************
instance Zombie_RavenGuard (Mst_Default_Zombie)
{
	name 								=	"S³uga Kruka";
	
	aivar[AIV_SkinTex] = Hlp_Random(2);
	aivar[AIV_FaceTex] = Hlp_Random(2);
	Mdl_SetVisual		(self, "Zombie.mds");
	Mdl_SetVisualBody 	(self, "Zom_Body", 0, self.aivar[AIV_SkinTex], "Zom_Head", self.aivar[AIV_FaceTex], default, ITAR_RVN_M);
	
	Npc_SetToFightMode (self, ItMw_1h_Mil_Sword);
	damagetype 							=	DAM_EDGE;
};
instance Zombie_Bloodwyn (Mst_Default_Zombie)
{
	name								=	"O¿ywiony Bloodwyn";
	
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetMonsterProtection (self, level);
	
	Mdl_SetVisual		(self, "Zombie.mds");
	Mdl_SetVisualBody	(self, "Zom_Body", 0, default, "Zom_Head", 0, default, ITAR_RVN_M);
	
	Npc_SetToFightMode (self, ItMw_1h_Mil_Sword);
	damagetype 							=	DAM_EDGE;
};
///******************************************************************************************
/*
func void ZS_Pal_ZOMBIE()
{
	self.senses							=	SENSE_SMELL;
	self.senses_range					=	2000;
	self.aivar[AIV_TAPOSITION]			=	NOTINPOS;
	
	Npc_SetPercTime	(self, 1);
	Npc_PercEnable	(self, PERC_ASSESSPLAYER, B_Pal_ZOMBIE_RISE);
};
func int ZS_Pal_ZOMBIE_Loop()
{
	if (self.aivar[AIV_TAPOSITION] == NOTINPOS)
  	{
  		AI_PlayAni (self, "T_DOWN");
  		self.aivar[AIV_TAPOSITION] = ISINPOS;
  	};
	return LOOP_CONTINUE;
};
func void ZS_Pal_ZOMBIE_END()
{
};
func void B_Pal_ZOMBIE_RISE()
{
	if (Npc_GetDistToNpc(self, hero) <= 1400)
	{
		AI_PlayAni (self, "T_RISE");
		
		AI_StartState (self, ZS_MM_Attack, 0, "");
		self.bodyStateInterruptableOverride	=	false;
		self.start_aistate				=	ZS_MM_AllScheduler;
		self.aivar[AIV_MM_RestStart]	=	OnlyRoutine;
	};
};
*/
///******************************************************************************************
instance MayaZombie_Totenw (Mst_Default_Zombie)
{
	B_SetVisuals_MayaZombie();
};
