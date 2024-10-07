///******************************************************************************************
/// GiantSpider
///******************************************************************************************
prototype Mst_Default_GiantSpider (C_Npc)
{
	/// ------ Monster ------
	name								=	"Olbrzymi paj¹k";
	guild								=	GIL_MINECRAWLER;
	aivar[AIV_MM_REAL_ID]				=	ID_GIANT_SPIDER;
	
	/// ------ Attributes & FT ------
	damagetype							=	DAM_EDGE;
	fight_tactic						=	FAI_MINECRAWLER;
	
	NpcFn_SetAttributesToLevel (self, 4);
	NpcFn_SetMonsterProtection (self, level);
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	false;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter]			=	true;
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
	Mdl_SetVisualBody	(self, "Spdr_Body", self.aivar[AIV_BodyTex], default, "", default, default, -1);
};

///******************************************************************************************
/// Monsters
///******************************************************************************************
instance Giant_Spider (Mst_Default_GiantSpider)
{
	B_SetVisuals_GiantSpider();
};
