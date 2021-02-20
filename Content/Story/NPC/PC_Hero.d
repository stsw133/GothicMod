///******************************************************************************************
instance PC_Hero (Npc_Default)
{
	/// ------ General ------
	name								=	"Ja";
	guild								=	GIL_NONE;
	id									=	0;
	voice								=	15;
	npctype								=	NPCTYPE_MAIN;
	bodyStateInterruptableOverride		=	true;
	
	level								=	0;
	
	attribute[ATR_HITPOINTS_MAX]		=	DIFF_Multiplier(50,DECREASE)*HP_PER_LP;
	attribute[ATR_MANA_MAX]				=	DIFF_Multiplier(50,DECREASE);
	attribute[ATR_STRENGTH]				=	DIFF_Multiplier(50,DECREASE);
	attribute[ATR_DEXTERITY]			=	DIFF_Multiplier(50,DECREASE);
	aivar[AIV_Power]					=	DIFF_Multiplier(50,DECREASE);
	
	attribute[ATR_HITPOINTS]			=	attribute[ATR_HITPOINTS_MAX];
	attribute[ATR_MANA]					=	attribute[ATR_MANA_MAX];
	
	ENE_MAX_CHECK(self);
	POWER_CHECK(self);
	
	exp									=	0;
	exp_next							=	0;
	lp									=	0;
	
	/// ------ Attributes ------
	B_SetFightSkills (self, FightTalent_Weak);
	
	/// ------ Visuals ------
	B_SetHeroVisual (self, selectedHero);
	Mdl_ApplyOverlayMds (self, "Humans_Player.mds");
};
