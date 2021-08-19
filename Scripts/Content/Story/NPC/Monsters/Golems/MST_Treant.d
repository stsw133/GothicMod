///******************************************************************************************
prototype Mst_Default_Treant (C_Npc)
{
	/// ------ Monster ------
	name								=	"Drzewiec";
	guild								=	GIL_TREANT;
	aivar[AIV_MM_REAL_ID]				=	ID_TREANT;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_BLUNT;
	fight_tactic						=	FAI_GOLEM;
	
	B_SetAttributesToLevel (self, 30);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level * AR_PER_LEVEL + 10 * AR_PER_LEVEL;
	protection[PROT_EDGE]				=	level * AR_PER_LEVEL - 10 * AR_PER_LEVEL;
	protection[PROT_POINT]				=	level * AR_PER_LEVEL + 10 * AR_PER_LEVEL;
	protection[PROT_FIRE]				=	level * MR_PER_LEVEL / 3;
	protection[PROT_FLY]				=	level * MR_PER_LEVEL;
	protection[PROT_MAGIC]				=	level * MR_PER_LEVEL;
	
	/// ------ Senses & Ranges ------
	senses								= 	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_Packhunter] 			=	false;
//	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_SleepStart] 			=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Treant()
{
	Mdl_SetVisual		(self, "Treant.mds");
	Mdl_SetVisualBody	(self, "Treant_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
//	Mdl_SetModelScale	(self, 1, 1.2, 1);
};
///******************************************************************************************
instance Treant (Mst_Default_Treant)
{
	aivar[AIV_BodyTex] = Hlp_Random(2);
	B_SetVisuals_Treant();
};
