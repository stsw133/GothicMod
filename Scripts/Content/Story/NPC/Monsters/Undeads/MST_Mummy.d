///******************************************************************************************
/// Mummy
///******************************************************************************************
prototype Mst_Default_Mummy (C_Npc)
{
	/// ------ Monster ------
	name								=	"Mumia";
	guild								=	GIL_ZOMBIE;
	aivar[AIV_MM_REAL_ID]				=	ID_MUMMY;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_ZOMBIE;
	
	NpcFn_SetAttributesToLevel (self, 30);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	bodyStateInterruptableOverride		=	true;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};

///******************************************************************************************
func void B_SetVisuals_Mummy()
{
	Mdl_SetVisual		(self, "Zombie.mds");
	Mdl_SetVisualBody	(self, "Mum_Body", self.aivar[AIV_BodyTex], default, "Mum_Head", self.aivar[AIV_BodyTex], default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Mummy (Mst_Default_Mummy)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Mummy();
};
