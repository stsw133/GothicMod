///******************************************************************************************
///	B_TeachTalents
///******************************************************************************************
func int B_TeachTalents (var C_NPC slf, var C_NPC oth, var int talent, var int level)
{
	var int kosten;
	var int money;
	
	if		(talent == NPC_TALENT_1H)		{	kosten = B_GetLearnCostTalent(oth, talent, level) - (SelfFightTeach_Level[NPC_TALENT_1H] * 2);			}
	else if	(talent == NPC_TALENT_2H)		{	kosten = B_GetLearnCostTalent(oth, talent, level) - (SelfFightTeach_Level[NPC_TALENT_2H] * 2);			}
	else if	(talent == NPC_TALENT_BOW)		{	kosten = B_GetLearnCostTalent(oth, talent, level) - (SelfFightTeach_Level[NPC_TALENT_BOW] * 2);			}
	else if	(talent == NPC_TALENT_CROSSBOW)	{	kosten = B_GetLearnCostTalent(oth, talent, level) - (SelfFightTeach_Level[NPC_TALENT_CROSSBOW] * 2);	}
	else									{	kosten = B_GetLearnCostTalent(oth, talent, level);														};
	
	money = kosten * DIFF_Multiplier(GOLD_PER_LP, INCREASE);
	
	if (talent < 0)
	&& (talent > NPC_TALENT_MAX)
	{
		Print("*** B³¹d: Z³y parametr ***");
		return false;
	};
	
	if (level < 1) || (level > 5)
	{
		Print("*** B³¹d: Z³y parametr ***");
		return false;
	};
	
	if (oth.lp < kosten)
	{
		PrintScreen	(PRINT_NotEnoughLP, -1,-1, FONT_ScreenSmall, 2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		return false;
	};
	
	if (Npc_HasItems(oth, ItMi_Gold) < money)
	{
		PrintScreen (Print_NotEnoughGold, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$ShitNoGold");
		return false;
	};
	
	if (talent == NPC_TALENT_SNEAK)
	&& (oth.attribute[ATR_DEXTERITY] < 100)
	{
		PrintScreen (ConcatStrings(IntToString(100 - oth.attribute[ATR_DEXTERITY]), PRINT_DEXTERITY_MISSING), -1, -1, FONT_ScreenSmall, 2);
		return false;
	}
	else if (talent == NPC_TALENT_ACROBATIC)
	&& (oth.attribute[ATR_DEXTERITY] < 200)
	{
		PrintScreen (ConcatStrings(IntToString(200 - oth.attribute[ATR_DEXTERITY]), PRINT_DEXTERITY_MISSING), -1, -1, FONT_ScreenSmall, 2);
		return false;
	};
	
	
	
	oth.lp -= kosten;
	Npc_RemoveInvItems (oth, ItMi_Gold, money);
	
	if (talent == NPC_TALENT_1H)
	{
		B_AddFightSkill (oth, talent, (20 - SelfFightTeach_Level[NPC_TALENT_1H]));
		SelfFightTeach_Progress[NPC_TALENT_1H] = 0;
		SelfFightTeach_Level[NPC_TALENT_1H] = 0;
	}
	else if (talent == NPC_TALENT_2H)
	{
		B_AddFightSkill (oth, talent, (20 - SelfFightTeach_Level[NPC_TALENT_2H]));
		SelfFightTeach_Progress[NPC_TALENT_2H] = 0;
		SelfFightTeach_Level[NPC_TALENT_2H] = 0;
	}
	else if (talent == NPC_TALENT_BOW)
	{
		B_AddFightSkill (oth, talent, (20 - SelfFightTeach_Level[NPC_TALENT_BOW]));
		SelfFightTeach_Progress[NPC_TALENT_BOW] = 0;
		SelfFightTeach_Level[NPC_TALENT_BOW] = 0;
	}
	else if (talent == NPC_TALENT_CROSSBOW)
	{
		B_AddFightSkill (oth, talent, (20 - SelfFightTeach_Level[NPC_TALENT_CROSSBOW]));
		SelfFightTeach_Progress[NPC_TALENT_CROSSBOW] = 0;
		SelfFightTeach_Level[NPC_TALENT_CROSSBOW] = 0;
	}
	else
	{
		Npc_SetTalentSkill (oth, talent, level);
	};
	Snd_Play("LevelUp");
	
	
	
	/// FIGHT
	if (talent == NPC_TALENT_1H)
	{
		if		(level == 1)	{	PrintScreen (PRINT_LearnFight_1H_1, -1, -1, FONT_Screen, 2);	}
		else if	(level == 2)	{	PrintScreen (PRINT_LearnFight_1H_2, -1, -1, FONT_Screen, 2);	}
		else if	(level == 3)	{	PrintScreen (PRINT_LearnFight_1H_3, -1, -1, FONT_Screen, 2);	}
		else if	(level == 4)	{	PrintScreen (PRINT_LearnFight_1H_4, -1, -1, FONT_Screen, 2);	};
	}
	else if (talent == NPC_TALENT_2H)
	{
		if		(level == 1)	{	PrintScreen (PRINT_LearnFight_2H_1, -1, -1, FONT_Screen, 2);	}
		else if	(level == 2)	{	PrintScreen (PRINT_LearnFight_2H_2, -1, -1, FONT_Screen, 2);	}
		else if	(level == 3)	{	PrintScreen (PRINT_LearnFight_2H_3, -1, -1, FONT_Screen, 2);	}
		else if	(level == 4)	{	PrintScreen (PRINT_LearnFight_2H_4, -1, -1, FONT_Screen, 2);	};
	}
	else if (talent == NPC_TALENT_BOW)
	{
		if		(level == 1)	{	PrintScreen (PRINT_LearnFight_Bow_1, -1, -1, FONT_Screen, 2);	}
		else if	(level == 2)	{	PrintScreen (PRINT_LearnFight_Bow_2, -1, -1, FONT_Screen, 2);	}
		else if	(level == 3)	{	PrintScreen (PRINT_LearnFight_Bow_3, -1, -1, FONT_Screen, 2);	}
		else if	(level == 4)	{	PrintScreen (PRINT_LearnFight_Bow_4, -1, -1, FONT_Screen, 2);	};
	}
	else if (talent == NPC_TALENT_CROSSBOW)
	{
		if		(level == 1)	{	PrintScreen (PRINT_LearnFight_Crossbow_1, -1, -1, FONT_Screen, 2);	}
		else if	(level == 2)	{	PrintScreen (PRINT_LearnFight_Crossbow_2, -1, -1, FONT_Screen, 2);	}
		else if	(level == 3)	{	PrintScreen (PRINT_LearnFight_Crossbow_3, -1, -1, FONT_Screen, 2);	}
		else if	(level == 4)	{	PrintScreen (PRINT_LearnFight_Crossbow_4, -1, -1, FONT_Screen, 2);	};
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
		else if	(level == 5)	{	PrintScreen	(PRINT_LearnMagic_5, -1, -1, FONT_SCREEN, 2);	};
	}
	else if (talent == NPC_TALENT_LANGUAGE)
	{
		PrintScreen (PRINT_LearnTalent_Language, -1, -1, FONT_Screen, 2);
	}
	/// THIEF
	else if (talent == NPC_TALENT_SNEAK)
	{
		PrintScreen (PRINT_LearnTalent_Sneak, -1, -1, FONT_Screen, 2);
	}
	else if (talent == NPC_TALENT_ACROBATIC)
	{
		Mdl_ApplyOverlayMds (oth, "humans_acrobatic.mds");
		PrintScreen (PRINT_LearnTalent_Acrobatic, -1, -1, FONT_Screen, 2);
	}
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
	else if (talent == NPC_TALENT_JEWELERY)
	{
		if		(level == 1)	{	PrintScreen	(PRINT_LearnTalent_Jewelery_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 2)	{	PrintScreen	(PRINT_LearnTalent_Jewelery_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 3)	{	PrintScreen	(PRINT_LearnTalent_Jewelery_3, -1, -1, FONT_SCREEN, 2);	};
	}
	else if (talent == NPC_TALENT_SMITH)
	{
		if		(level == 1)	{	PrintScreen	(PRINT_LearnTalent_Smith_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 2)	{	PrintScreen	(PRINT_LearnTalent_Smith_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 3)	{	PrintScreen	(PRINT_LearnTalent_Smith_3, -1, -1, FONT_SCREEN, 2);	};
	}
	else if (talent == NPC_TALENT_ENCHANTING)
	{
		if		(level == 1)	{	PrintScreen	(PRINT_LearnTalent_Enchanting_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 2)	{	PrintScreen	(PRINT_LearnTalent_Enchanting_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 3)	{	PrintScreen	(PRINT_LearnTalent_Enchanting_3, -1, -1, FONT_SCREEN, 2);	};
	}
	else if (talent == NPC_TALENT_ALCHEMY)
	{
		if		(level == 1)	{	PrintScreen	(PRINT_LearnTalent_Alchemy_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 2)	{	PrintScreen	(PRINT_LearnTalent_Alchemy_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 3)	{	PrintScreen	(PRINT_LearnTalent_Alchemy_3, -1, -1, FONT_SCREEN, 2);	};
	}
	else if (talent == NPC_TALENT_HUNTING)
	{
		if		(level == 1)	{	PrintScreen	(PRINT_LearnTalent_Hunting_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 2)	{	PrintScreen	(PRINT_LearnTalent_Hunting_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(level == 3)	{	PrintScreen	(PRINT_LearnTalent_Hunting_3, -1, -1, FONT_SCREEN, 2);	};
	};
	
	return true;
};
