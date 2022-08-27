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
	
	/// ------ EXP ------
	guild = GIL_NONE;
	Npc_SetTrueGuild (self, GIL_NONE);
	
	level								=	0;
	exp									=	0;
	exp_next							=	0;
	LP									=	0;
	
	/// ------ Attributes ------
	attribute[ATR_HITPOINTS_MAX]		=	20*HP_PER_LP + HP_PER_LEVEL;
	attribute[ATR_MANA_MAX]				=	20;
	attribute[ATR_STRENGTH]				=	20;
	attribute[ATR_DEXTERITY]			=	20;
	attribute[ATR_POWER]				=	20;
	aivar[AIV_Energy_MAX]				=	100;
	
	attribute[ATR_HITPOINTS]			=	attribute[ATR_HITPOINTS_MAX];
	attribute[ATR_MANA]					=	attribute[ATR_MANA_MAX];
	
	/// ------ Fight ------
	B_SetFightSkills (self, FightTalent_Weak);
	
	/// ------ Talents ------
	Npc_SetTalentValue (self, NPC_TALENT_MAGIC, attribute[ATR_POWER]);
	
	/// ------ Visuals ------
	B_SetHeroVisual (self, selectedHero);
	/*
	if (!MovieMode)
	{
		Mdl_ApplyOverlayMds (self, "Humans_Player.mds");
	};
	*/
};
