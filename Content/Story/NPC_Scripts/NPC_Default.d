///******************************************************************************************
///	Npc Prototype
///******************************************************************************************
prototype Npc_Default (C_NPC)
{
	level								=	START_LEVEL;

	attribute[ATR_STRENGTH]				=	10;
	attribute[ATR_DEXTERITY]			=	10;
	Npc_SetPowerPoints(self, 10);
	attribute[ATR_MANA_MAX]				=	10;
	attribute[ATR_HITPOINTS_MAX]		=	10*HP_PER_LP;
	
	attribute[ATR_MANA]					=	attribute[ATR_MANA_MAX];
	attribute[ATR_HITPOINTS]			=	attribute[ATR_HITPOINTS_MAX];

	Npc_SetTalentSkill (self, NPC_TALENT_DIFFICULTY, dLevel);

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
