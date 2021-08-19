///******************************************************************************************
///	NPC Prototype
///******************************************************************************************
prototype Npc_Default (C_NPC)
{
	/// ------ Attributes ------
	/// in B_SetAttributesToLevel.d
/*
	attribute[ATR_HITPOINTS_MAX]		=	10*HP_PER_LP;
	attribute[ATR_HITPOINTS]			=	attribute[ATR_HITPOINTS_MAX];
	attribute[ATR_MANA_MAX]				=	10;
	attribute[ATR_MANA]					=	attribute[ATR_MANA_MAX];
	attribute[ATR_STRENGTH]				=	10;
	attribute[ATR_DEXTERITY]			=	10;
	Npc_SetPowerPoints (self, 10);
	aivar[AIV_Energy_MAX]				=	100;
*/
	/// ------ Other ------
	damagetype 							=	DAM_INVALID;	//DAM_BLUNT
	
	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ACTIVE_MAX;
	
	aivar[AIV_FightDistCancel]			=	FIGHT_DIST_CANCEL;
	aivar[AIV_MM_FollowTime]			=	NPC_TIME_FOLLOW;
	
//	bodyStateInterruptableOverride		=	false;
	
	Npc_SetTalentSkill (self, NPC_TALENT_DIFFICULTY, dLevel);
};
