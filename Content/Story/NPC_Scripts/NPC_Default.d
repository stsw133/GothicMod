///******************************************************************************************
///	NPC Prototype
///******************************************************************************************
prototype Npc_Default (C_NPC)
{
	level								=	START_LEVEL;

	attribute[ATR_STRENGTH]				=	50;
	attribute[ATR_DEXTERITY]			=	50;
	attribute[ATR_MANA_MAX]				=	50;
	attribute[ATR_HITPOINTS_MAX]		=	50*HP_PER_LP;
	damage[DAM_INDEX_MAGIC]				=	50;
	//aivar[AIV_Power]					=	50;
	
	attribute[ATR_MANA]					=	attribute[ATR_MANA_MAX];
	attribute[ATR_HITPOINTS]			=	attribute[ATR_HITPOINTS_MAX];
	//POWER_CHECK(self);

	Npc_SetTalentSkill (self, NPC_TALENT_DIFFICULT, dLevel);

	exp									=	0;
	exp_next							=	START_LEVEL * XP_PER_LEVEL;
	lp									=	0;

	/// ------ Other ------
	damagetype 							=	DAM_BLUNT;

	senses								=	SENSE_HEAR | SENSE_SEE;
	senses_range						=	PERC_DIST_ACTIVE_MAX;

	aivar[AIV_MM_FollowTime]			=	NPC_TIME_FOLLOW;
	aivar[AIV_FightDistCancel]			=	FIGHT_DIST_CANCEL;

	bodyStateInterruptableOverride		=	false;
};
