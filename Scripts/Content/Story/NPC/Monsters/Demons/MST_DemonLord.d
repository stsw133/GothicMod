///******************************************************************************************
/// DemonLord
///******************************************************************************************
prototype Mst_Default_DemonLord (C_Npc)
{
	/// ------ Monster ------
	name								=	"Lord demonów";
	guild								=	GIL_DEMON;
	aivar[AIV_MM_REAL_ID]				=	ID_DEMON_LORD;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_FIRE;
	fight_tactic						=	FAI_DEMON;
	
	NpcFn_SetAttributesToLevel (self, 60);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RestStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};

///******************************************************************************************
func void B_SetVisuals_DemonLord()
{
	Mdl_SetVisual		(self, "Demon.mds");
	Mdl_SetVisualBody	(self, "Dem2_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance DemonLord (Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
};

///******************************************************************************************
/// QuestMonsters
///******************************************************************************************
instance Xardas_DT_DemonLord (Mst_Default_DemonLord)
{
	B_SetVisuals_DemonLord();
};
