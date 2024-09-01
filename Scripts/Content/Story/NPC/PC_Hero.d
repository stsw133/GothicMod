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
	
	/// ------ XP ------
	level								=	0;
	exp									=	0;
	exp_next							=	0;
	lp									=	0;
	
	/// ------ Attributes ------
	attribute[ATR_HITPOINTS_MAX]		=	10*HP_PER_LP;
	attribute[ATR_MANA_MAX]				=	10*MP_PER_LP;
	attribute[ATR_STRENGTH]				=	10;
	attribute[ATR_DEXTERITY]			=	10;
	attribute[ATR_POWER]				=	10;
	aivar[AIV_Stamina_MAX]				=	100;
	
	attribute[ATR_HITPOINTS]			=	attribute[ATR_HITPOINTS_MAX];
	attribute[ATR_MANA]					=	attribute[ATR_MANA_MAX];
	
	/// ------ Fight ------
	//NpcFn_SetFightSkills (self, 10);
	
	/// ------ Visuals ------
	NpcFn_SetHeroVisual (self, selectedHero);
	
	/// ------ Other ------
	/*
	if (!MovieMode)
	{
		Mdl_ApplyOverlayMds (self, "Humans_Player.mds");
	};
	*/
};
