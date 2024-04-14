///******************************************************************************************
prototype Mst_Default_Wisp (C_Npc)
{
	/// ------ Monster ------
	name								=	"Ognik";
	guild								=	GIL_BLOODFLY;
	
	/// ------ AI vars ------
	aivar[AIV_MagicUser]				=	true;
	
	/// ------ Attributes & FT ------
	damagetype 							=	DAM_MAGIC;
	fight_tactic						=	FAI_BLOODFLY;
	
	NpcFn_SetAttributesToLevel (self, 5);
	
	/// ------ Protection ------
	protection[PROT_BLUNT]				=	-1;
	protection[PROT_EDGE]				=	-1;
	protection[PROT_POINT]				=	-1;
	protection[PROT_FIRE]				=	0;
	protection[PROT_FLY]				=	0;
	protection[PROT_MAGIC]				=	0;
	protection[PROT_BARRIER]			=	0;
	
	/// ------ Senses & Ranges ------
	senses								=	SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range						=	PERC_DIST_MONSTER_ACTIVE_MAX;
	
	aivar[AIV_MM_FollowInWater]			=	true;
	aivar[AIV_MM_FollowTime]			=	FOLLOWTIME_SHORT;
	aivar[AIV_MM_Packhunter]			=	false;
	aivar[AIV_MM_ThreatenBeforeAttack]	=	true;
	
	/// ------ Rtn ------
	start_aistate						=	ZS_MM_AllScheduler;
	aivar[AIV_MM_RoamStart]				=	OnlyRoutine;
	Npc_SetToFistMode(self);
};
///******************************************************************************************
func void B_SetVisuals_Wisp()
{
	Mdl_SetVisual		(self, "Irrlicht.mds");
	Mdl_SetVisualBody	(self, "Irrlicht_Body", 0, default, "", default, default, -1);
};
///******************************************************************************************
instance Wisp (Mst_Default_Wisp)
{
	B_SetVisuals_Wisp();
};
///******************************************************************************************
instance Wisp_Detector (Mst_Default_Wisp)
{
	level								=	0;
	npctype								=	NPCTYPE_MAIN;
	
	senses_range						=	3000;
	aivar[AIV_NoFightParker]			=	true;
	aivar[AIV_PartyMember]				=	true;
	start_aistate						=	ZS_MM_Rtn_Summoned;
	
	B_SetAttitude (self, ATT_FRIENDLY);
	B_SetVisuals_Wisp();
};
