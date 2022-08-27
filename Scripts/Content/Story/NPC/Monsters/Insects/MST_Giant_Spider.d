///******************************************************************************************
prototype Mst_Default_GiantSpider (C_Npc)			
{
	/// ------ Monster ------
	name								=	"Olbrzymi paj¹k";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				=	ID_GIANT_SPIDER;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_EDGE;
	fight_tactic						= 	FAI_MINECRAWLER;
	
	B_SetAttributesToLevel (self, 4);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	level*AR_PER_LEVEL / 2;
	protection[PROT_EDGE]				=	level*AR_PER_LEVEL / 4;
	protection[PROT_POINT]				=	level*AR_PER_LEVEL / 2;
	protection[PROT_FIRE]				=	level*MR_PER_LEVEL / 2;
	protection[PROT_FLY]				=	level*MR_PER_LEVEL / 2;
	protection[PROT_MAGIC]				=	level*MR_PER_LEVEL / 2;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater] 		=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter] 			=	true;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_GiantSpider()
{
	Mdl_SetVisual		(self, "Spdr.mds");
	Mdl_SetVisualBody	(self, "Spdr_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Giant_Spider (Mst_Default_GiantSpider)
{
	B_SetVisuals_GiantSpider();
};
