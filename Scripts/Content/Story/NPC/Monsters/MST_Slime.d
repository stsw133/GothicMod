///******************************************************************************************
/// Slime
///******************************************************************************************
prototype Mst_Default_Slime (C_Npc)
{
	/// ------ Monster ------
	name								=	"Szlam";
	guild								=	GIL_SWAMPSHARK;
	aivar[AIV_MM_REAL_ID]				=	ID_SLIME;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_BLUNT;
	fight_tactic						=	FAI_SWAMPSHARK;
	
	NpcFn_SetAttributesToLevel (self, 2);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	0;
	protection[PROT_EDGE]				=	-1;
	protection[PROT_POINT]				=	-1;
	protection[PROT_FIRE]				=	0;
	protection[PROT_FLY]				=	0;
	protection[PROT_MAGIC]				=	0;
	protection[PROT_BARRIER]			=	0;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	false;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};

///******************************************************************************************
func void B_SetVisuals_Slime()
{
	Mdl_SetVisual		(self, "Irrlicht.mds");
	Mdl_SetVisualBody	(self, "Irrlicht_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Slime (Mst_Default_Slime)
{
	B_SetVisuals_Slime();
};
