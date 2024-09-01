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
	slf.attribute[ATR_HITPOINTS_MAX]		=	10*HP_PER_LP;
	slf.attribute[ATR_MANA_MAX]				=	10*MP_PER_LP;
	slf.attribute[ATR_STRENGTH]				=	10;
	slf.attribute[ATR_DEXTERITY]			=	10;
	slf.attribute[ATR_POWER]				=	10;
	slf.aivar[AIV_Stamina_MAX]				=	100;
	
	slf.attribute[ATR_HITPOINTS]			=	slf.attribute[ATR_HITPOINTS_MAX];
	slf.attribute[ATR_MANA]					=	slf.attribute[ATR_MANA_MAX];
	
	/// ------ Fight ------
	slf.hitchance[NPC_TALENT_THROW]			=	0; //FightTalent_Weak;
	slf.hitchance[NPC_TALENT_1H]			=	0; //FightTalent_Weak;
	slf.hitchance[NPC_TALENT_2H]			=	0; //FightTalent_Weak;
	slf.hitchance[NPC_TALENT_BOW]			=	0; //FightTalent_Weak;
	slf.hitchance[NPC_TALENT_CROSSBOW]		=	0; //FightTalent_Weak;
	
	/// ------ Talents ------
	Npc_SetTalentSkill (slf, NPC_TALENT_THROW,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_1H,				0);
	Npc_SetTalentSkill (slf, NPC_TALENT_2H,				0);
	Npc_SetTalentSkill (slf, NPC_TALENT_BOW,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_CROSSBOW,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_DUAL,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_SHIELD,			0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_MAGIC,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_LANGUAGE,		0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_SNEAK,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_ACROBATIC,		0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_PICKLOCK,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_PICKPOCKET,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_PERSUASION,		0);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_FLETCHERY,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_SMITH,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_ALCHEMY,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_ENCHANTING,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_HUNTING,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_COOKING,		0);
	Npc_SetTalentSkill (slf, NPC_TALENT_MINING,			0);
	Npc_SetTalentSkill (slf, NPC_TALENT_ARMORY,			0);
	
	if (Npc_IsPlayer(slf))
	{
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
