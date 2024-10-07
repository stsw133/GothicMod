///******************************************************************************************
/// MOD_HeroReset
///******************************************************************************************
func void MOD_HeroReset (var C_Npc slf)
{
	AI_UnequipArmor(slf);
	
	/// ------ EXP ------
	slf.guild = GIL_NONE;
	Npc_SetTrueGuild (slf, GIL_NONE);
	
	slf.level								=	default;
	slf.exp									=	0;
	slf.exp_next							=	500;
	slf.lp									=	default;
	
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
	slf.hitchance[NPC_TALENT_THROW]			=	default;
	slf.hitchance[NPC_TALENT_1H]			=	default;
	slf.hitchance[NPC_TALENT_2H]			=	default;
	slf.hitchance[NPC_TALENT_BOW]			=	default;
	slf.hitchance[NPC_TALENT_CROSSBOW]		=	default;
	
	/// ------ Talents ------
	Npc_SetTalentSkill (slf, NPC_TALENT_THROW, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_1H, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_2H, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_BOW, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_CROSSBOW, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_DUAL, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_SHIELD, default);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_MAGIC, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_LANGUAGE, default);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_SNEAK, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_ACROBATIC, default);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_PICKLOCK, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_PICKPOCKET, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_PERSUASION, default);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_FLETCHERY, default);
	Npc_SetTalentValue (slf, NPC_TALENT_FLETCHERY, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_SMITH, default);
	Npc_SetTalentValue (slf, NPC_TALENT_SMITH, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_ALCHEMY, default);
	Npc_SetTalentValue (slf, NPC_TALENT_ALCHEMY, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_ENCHANTING, default);
	Npc_SetTalentValue (slf, NPC_TALENT_ENCHANTING, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_HUNTING, default);
	Npc_SetTalentValue (slf, NPC_TALENT_HUNTING, default);
	
	Npc_SetTalentSkill (slf, NPC_TALENT_COOKING, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_MINING, default);
	Npc_SetTalentSkill (slf, NPC_TALENT_ARMORY, default);
	
	if (Npc_IsPlayer(slf))
	{
		Mdl_RemoveOverlayMDS (slf, "HUMANS_1HST1.mds");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_1HST2.mds");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_2HST1.mds");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_2HST2.mds");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_BOWT1.mds");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_BOWT2.mds");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_CBOWT1.mds");
		Mdl_RemoveOverlayMDS (slf, "HUMANS_CBOWT2.mds");
	};
	
	PrintScreen ("Postaæ zresetowana", -1, -1, FONT_Screen, TIME_ShortPrint);
};
