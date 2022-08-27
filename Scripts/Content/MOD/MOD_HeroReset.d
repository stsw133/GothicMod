///******************************************************************************************
///	MOD_HeroReset
///******************************************************************************************
func void MOD_HeroReset (var C_Npc slf)
{
	AI_UnequipArmor(slf);
	
	/// ------ EXP ------
	slf.guild = GIL_NONE;
	Npc_SetTrueGuild (slf, GIL_NONE);
	
	slf.level								=	0;
	slf.exp									=	0;
	slf.exp_next							=	0;
	slf.LP									=	0;
	
	/// ------ Attributes ------
	slf.attribute[ATR_HITPOINTS_MAX]		=	20*HP_PER_LP + HP_PER_LEVEL;
	slf.attribute[ATR_MANA_MAX]				=	20;
	slf.attribute[ATR_STRENGTH]				=	20;
	slf.attribute[ATR_DEXTERITY]			=	20;
	slf.attribute[ATR_POWER]				=	20;
	slf.aivar[AIV_Energy_MAX]				=	100;
	
	slf.attribute[ATR_HITPOINTS]			=	slf.attribute[ATR_HITPOINTS_MAX];
	slf.attribute[ATR_MANA]					=	slf.attribute[ATR_MANA_MAX];
	
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
	Npc_SetTalentSkill (slf, NPC_TALENT_LONGRUN,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_ACROBATIC,		0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_PICKLOCK,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_PICKPOCKET,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_PERSUASION,		0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_SMITH,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_ENCHANTING,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_ALCHEMY,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_HUNTING,		0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_TYPEOFMAGIC,	0);
	Npc_SetTalentSkill (slf, NPC_TALENT_ADDITIONAL,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_DIFFICULTY,		dLevel);
	
	if (Npc_IsPlayer(slf))
	{
		Npc_SetTalentValue (slf, NPC_TALENT_MAGIC,		slf.attribute[ATR_POWER]);
		
		Mdl_RemoveOverlayMDS (slf, "HUMANS_1HST1.MDS");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_1HST2.MDS");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_2HST1.MDS");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_2HST2.MDS");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_BOWT1.MDS");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_BOWT2.MDS");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_CBOWT1.MDS");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_CBOWT2.MDS");
	};
	
	PrintScreen ("Postaæ zresetowana", -1, -1, FONT_Screen, TIME_ShortPrint);
};
