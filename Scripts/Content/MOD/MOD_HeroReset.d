///******************************************************************************************
///	MOD_HeroReset
///******************************************************************************************
func void MOD_HeroReset (var C_Npc slf)
{
	/// ------ EXP ------
	slf.guild = GIL_NONE;
	Npc_SetTrueGuild (slf, GIL_NONE);
	
	slf.level								=	0;
	slf.exp									=	0;
	slf.exp_next							=	0;
	slf.LP									=	0;
	
	/// ------ Attributes ------
	slf.attribute[ATR_HITPOINTS_MAX]		=	DIFF_Multiplier(10, DECREASE)*HP_PER_LP + HP_PER_LEVEL;
	slf.attribute[ATR_HITPOINTS]			=	slf.attribute[ATR_HITPOINTS_MAX];
	slf.attribute[ATR_MANA_MAX]				=	DIFF_Multiplier(10, DECREASE);
	slf.attribute[ATR_MANA]					=	slf.attribute[ATR_MANA_MAX];
	slf.attribute[ATR_STRENGTH]				=	DIFF_Multiplier(10, DECREASE);
	slf.attribute[ATR_DEXTERITY]			=	DIFF_Multiplier(10, DECREASE);
	Npc_SetPowerPoints (slf, DIFF_Multiplier(10, DECREASE));
	slf.aivar[AIV_Energy_MAX]				=	100;
	slf.aivar[AIV_Energy]					=	0;
	
	/// ------ Fight ------
	slf.hitchance[NPC_TALENT_1H]			=	FightTalent_Weak;
	slf.hitchance[NPC_TALENT_2H]			=	FightTalent_Weak;
	slf.hitchance[NPC_TALENT_BOW]			=	FightTalent_Weak;
	slf.hitchance[NPC_TALENT_CROSSBOW]		=	FightTalent_Weak;
	
	/// ------ Talents ------
	Npc_SetTalentSkill (slf, NPC_TALENT_1H,				0);
	Npc_SetTalentSkill (slf, NPC_TALENT_2H,				0);
	Npc_SetTalentSkill (slf, NPC_TALENT_BOW,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_CROSSBOW,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_2ndH,			0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_MAGIC,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_LANGUAGE,		0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_SNEAK,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_ACROBATIC,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_LONGRUN,		0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_PICKLOCK,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_PICKPOCKET,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_PERSUASION,		0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_JEWELERY,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_SMITH,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_ENCHANTING,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_ALCHEMY,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_HUNTING,		0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_TYPEOFMAGIC,	0);
	Npc_SetTalentSkill (slf, NPC_TALENT_DIFFICULTY,		dLevel);
	
	AI_UnequipArmor(slf);
	
	//PrintScreen ("Postaæ zresetowana", -1, -1, FONT_Screen, 2);
};
