///******************************************************************************************
/// NPC Prototype
///******************************************************************************************
prototype Npc_Default (C_Npc)
{
	/// ------ Attributes ------
	/// in NpcFn_SetAttributesToLevel.d
	
	/// ------ Other ------
	damagetype							=	DAM_BLUNT;
	
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ACTIVE_MAX;
	
	aivar[AIV_FightDistCancel]			=	FIGHT_DIST_CANCEL;
	aivar[AIV_MM_FollowTime]			=	NPC_TIME_FOLLOW;
	
//	bodyStateInterruptableOverride		=	false;
};
