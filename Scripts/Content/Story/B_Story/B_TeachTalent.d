///******************************************************************************************
///	B_TeachTalent
///******************************************************************************************
func int B_TeachTalent (var C_Npc slf, var C_Npc oth, var int talent, var int level)
{
	var int kosten;
	
	/*if		(talent == NPC_TALENT_1H)		{	kosten = B_GetLearnCostTalent(oth, talent, level) - (SelfFightTeach_Level[NPC_TALENT_1H] * 2);			}
	else if	(talent == NPC_TALENT_2H)		{	kosten = B_GetLearnCostTalent(oth, talent, level) - (SelfFightTeach_Level[NPC_TALENT_2H] * 2);			}
	else if	(talent == NPC_TALENT_BOW)		{	kosten = B_GetLearnCostTalent(oth, talent, level) - (SelfFightTeach_Level[NPC_TALENT_BOW] * 2);			}
	else if	(talent == NPC_TALENT_CROSSBOW)	{	kosten = B_GetLearnCostTalent(oth, talent, level) - (SelfFightTeach_Level[NPC_TALENT_CROSSBOW] * 2);	}
	else									{*/	kosten = B_GetLearnCostTalent(oth, talent, level);														//};
	
	//var int money; money = kosten * GOLD_PER_LP;
	
	/// ------ check conditions ------
	if (oth.lp < kosten)
	{
		PrintScreen	(PRINT_NotEnoughLP, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		return false;
	};
	/*
	if (Npc_HasItems(oth, ItMi_Gold) < money)
	{
		PrintScreen (Print_NotEnoughGold, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$ShitNoGold");
		return false;
	};
	*/
	if (talent == NPC_TALENT_SNEAK)
	&& (oth.attribute[ATR_DEXTERITY] < 40)
	{
		PrintScreen (ConcatStrings(IntToString(40 - oth.attribute[ATR_DEXTERITY]), PRINT_DEXTERITY_MISSING), -1, -1, FONT_ScreenSmall, 2);
		return false;
	}
	else if (talent == NPC_TALENT_PRORUN)
	&& (oth.attribute[ATR_DEXTERITY] < 60)
	{
		PrintScreen (ConcatStrings(IntToString(60 - oth.attribute[ATR_DEXTERITY]), PRINT_DEXTERITY_MISSING), -1, -1, FONT_ScreenSmall, 2);
		return false;
	}
	else if (talent == NPC_TALENT_ACROBATIC)
	&& (oth.attribute[ATR_DEXTERITY] < 80)
	{
		PrintScreen (ConcatStrings(IntToString(80 - oth.attribute[ATR_DEXTERITY]), PRINT_DEXTERITY_MISSING), -1, -1, FONT_ScreenSmall, 2);
		return false;
	};
	
	
	
	oth.lp -= kosten;
	//Npc_RemoveInvItems (oth, ItMi_Gold, money);
	
	/// ------ set skill level ------
	if (talent == NPC_TALENT_1H)
	{
		B_AddFightSkill (oth, talent, level*20-oth.hitchance[NPC_TALENT_1H]);
		SelfFightTeach_Progress[NPC_TALENT_1H] = 0;
		SelfFightTeach_Level[NPC_TALENT_1H] = 0;
	}
	else if (talent == NPC_TALENT_2H)
	{
		B_AddFightSkill (oth, talent, level*20-oth.hitchance[NPC_TALENT_2H]);
		SelfFightTeach_Progress[NPC_TALENT_2H] = 0;
		SelfFightTeach_Level[NPC_TALENT_2H] = 0;
	}
	else if (talent == NPC_TALENT_BOW)
	{
		B_AddFightSkill (oth, talent, level*20-oth.hitchance[NPC_TALENT_BOW]);
		SelfFightTeach_Progress[NPC_TALENT_BOW] = 0;
		SelfFightTeach_Level[NPC_TALENT_BOW] = 0;
	}
	else if (talent == NPC_TALENT_CROSSBOW)
	{
		B_AddFightSkill (oth, talent, level*20-oth.hitchance[NPC_TALENT_CROSSBOW]);
		SelfFightTeach_Progress[NPC_TALENT_CROSSBOW] = 0;
		SelfFightTeach_Level[NPC_TALENT_CROSSBOW] = 0;
	}
	else
	{
		Npc_SetTalentSkill (oth, talent, level);
	};
	Snd_Play("LevelUp");
	
	
	
	/// ------ print texts ------
	/// FIGHT
	if (talent == NPC_TALENT_1H)
	{
		if		(level == 1)	{	PrintScreen (PRINT_LearnFight_1H_1, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 2)	{	PrintScreen (PRINT_LearnFight_1H_2, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 3)	{	PrintScreen (PRINT_LearnFight_1H_3, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 4)	{	PrintScreen (PRINT_LearnFight_1H_4, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 5)	{	PrintScreen (PRINT_LearnFight_1H_5, -1, YPOS_LogEntry, FONT_Screen, 2);	};
	}
	else if (talent == NPC_TALENT_2H)
	{
		if		(level == 1)	{	PrintScreen (PRINT_LearnFight_2H_1, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 2)	{	PrintScreen (PRINT_LearnFight_2H_2, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 3)	{	PrintScreen (PRINT_LearnFight_2H_3, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 4)	{	PrintScreen (PRINT_LearnFight_2H_4, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 5)	{	PrintScreen (PRINT_LearnFight_2H_5, -1, YPOS_LogEntry, FONT_Screen, 2);	};
	}
	else if (talent == NPC_TALENT_BOW)
	{
		if		(level == 1)	{	PrintScreen (PRINT_LearnFight_Bow_1, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 2)	{	PrintScreen (PRINT_LearnFight_Bow_2, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 3)	{	PrintScreen (PRINT_LearnFight_Bow_3, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 4)	{	PrintScreen (PRINT_LearnFight_Bow_4, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 5)	{	PrintScreen (PRINT_LearnFight_Bow_5, -1, YPOS_LogEntry, FONT_Screen, 2);	};
	}
	else if (talent == NPC_TALENT_CROSSBOW)
	{
		if		(level == 1)	{	PrintScreen (PRINT_LearnFight_Crossbow_1, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 2)	{	PrintScreen (PRINT_LearnFight_Crossbow_2, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 3)	{	PrintScreen (PRINT_LearnFight_Crossbow_3, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 4)	{	PrintScreen (PRINT_LearnFight_Crossbow_4, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(level == 5)	{	PrintScreen (PRINT_LearnFight_Crossbow_5, -1, YPOS_LogEntry, FONT_Screen, 2);	};
	}
	else if (talent == NPC_TALENT_2ndH)
	{
		if		(level == 1)	{	PrintScreen (PRINT_LearnFight_2ndH_1, -1, -1, FONT_Screen, 2);	}
		else if	(level == 2)	{	PrintScreen (PRINT_LearnFight_2ndH_2, -1, -1, FONT_Screen, 2);	};
	}
	/// MAGIC
	else if (talent == NPC_TALENT_MAGIC)
	{
		if		(level == 1)	{	PrintScreen	(PRINT_LearnMagic_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 2)	{	PrintScreen	(PRINT_LearnMagic_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 3)	{	PrintScreen	(PRINT_LearnMagic_3, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 4)	{	PrintScreen	(PRINT_LearnMagic_4, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 5)	{	PrintScreen	(PRINT_LearnMagic_5, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 6)	{	PrintScreen	(PRINT_LearnMagic_6, -1, -1, FONT_SCREEN, 2);	};
	}
	else if (talent == NPC_TALENT_ENCHANTING)
	{
		PrintScreen	(PRINT_LearnTalent_Enchanting, -1, -1, FONT_SCREEN, 2);
	}
	else if (talent == NPC_TALENT_LANGUAGE)
	{
		PrintScreen (PRINT_LearnTalent_Language, -1, -1, FONT_Screen, 2);
	}
	/// MOVEMENT
	else if (talent == NPC_TALENT_SNEAK)
	{
		PrintScreen (PRINT_LearnTalent_Sneak, -1, -1, FONT_Screen, 2);
	}
	else if (talent == NPC_TALENT_PRORUN)
	{
		Disable_HeavyArmor();
		PrintScreen (PRINT_LearnTalent_PRORUN, -1, -1, FONT_Screen, 2);
	}
	else if (talent == NPC_TALENT_ACROBATIC)
	{
		//Mdl_ApplyOverlayMds (oth, "humans_acrobatic.mds");
		PrintScreen (PRINT_LearnTalent_Acrobatic, -1, -1, FONT_Screen, 2);
	}
	/// THIEF
	else if (talent == NPC_TALENT_PICKLOCK)
	{
		PrintScreen (PRINT_LearnTalent_Picklock, -1, -1, FONT_Screen, 2);
	}
	else if (talent == NPC_TALENT_PICKPOCKET)
	{
		PrintScreen (PRINT_LearnTalent_Pickpocket, -1, -1, FONT_Screen, 2);
	}
	else if (talent == NPC_TALENT_PERSUASION)
	{
		PrintScreen (PRINT_LearnTalent_Persuasion, -1, -1, FONT_Screen, 2);
	}
	/// CRAFT
	else if (talent == NPC_TALENT_SMITH)
	{
		PrintScreen	(PRINT_LearnTalent_Smith, -1, -1, FONT_SCREEN, 2);
	}
	else if (talent == NPC_TALENT_ALCHEMY)
	{
		PrintScreen	(PRINT_LearnTalent_Alchemy, -1, -1, FONT_SCREEN, 2);
	}
	else if (talent == NPC_TALENT_HUNTING)
	{
		PrintScreen	(PRINT_LearnTalent_Hunting, -1, -1, FONT_SCREEN, 2);
	}
	/// OTHER
	else if (talent == NPC_TALENT_COOKING)
	{
		PrintScreen	(PRINT_LearnTalent_Cooking, -1, -1, FONT_SCREEN, 2);
	}
	else if (talent == NPC_TALENT_PROTPOISON)
	{
		PrintScreen	(PRINT_LearnTalent_ProtPoison, -1, -1, FONT_SCREEN, 2);
	};
	
	return true;
};
