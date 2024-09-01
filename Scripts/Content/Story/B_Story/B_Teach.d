///******************************************************************************************
/// B_TeachAttribute
///******************************************************************************************
func int B_TeachAttribute (var C_Npc slf, var C_Npc oth, var int attrib, var int points)
{
	var int kosten; kosten = B_GetLearnCostAttribute(oth, attrib) * points;
	
	if (!Npc_IsPlayer(slf) && MEM_ReadStatArr(oth.attribute, attrib) + points >= MEM_ReadStatArr(slf.attribute, attrib))
	{
		PrintScreen	(ConcatStrings(PRINT_NoLearnOverPersonalMAX, IntToString(MEM_ReadStatArr(oth.attribute, attrib))), -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNOVERPERSONALMAX");
		return false;
	};
	
	if (oth.lp < kosten)
	{
		PrintScreen	(PRINT_NotEnoughLP, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		return false;
	};
	
	/// FUNC
	oth.lp -= kosten;
	
	if		(attrib == ATR_STRENGTH)		{	LearnedAttribute_Str += points;	}
	else if	(attrib == ATR_DEXTERITY)		{	LearnedAttribute_Dex += points;	}
	else if	(attrib == ATR_POWER)			{	LearnedAttribute_Pow += points;	}
	else if	(attrib == ATR_MANA_MAX)		{	LearnedAttribute_Mp += points;	}
	else if	(attrib == ATR_HITPOINTS_MAX)	{	LearnedAttribute_Hp += points;	};
	
	if		(attrib == ATR_HITPOINTS_MAX)	{	B_RaiseAttribute (oth, attrib, points*HP_PER_LP);	}
	else if	(attrib == ATR_MANA_MAX)		{	B_RaiseAttribute (oth, attrib, points*MP_PER_LP);	}
	else									{	B_RaiseAttribute (oth, attrib, points);				};
	
	return true;
};

///******************************************************************************************
/// B_TeachHitchance
///******************************************************************************************
func int B_TeachHitchance (var C_Npc slf, var C_Npc oth, var int talent, var int points)
{
	var int kosten; kosten = B_GetLearnCostHitchance(oth, talent) * points;
	var int money; money = kosten * GOLD_PER_LP/2;
	
	if (!Npc_IsPlayer(slf) && MEM_ReadStatArr(oth.hitchance, talent) + points >= MEM_ReadStatArr(slf.hitchance, talent))
	{
		PrintScreen	(ConcatStrings(PRINT_NoLearnOverPersonalMAX, IntToString(MEM_ReadStatArr(oth.hitchance, talent))), -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNOVERPERSONALMAX");
		return false;
	};
	
	if (oth.lp < kosten)
	{
		PrintScreen	(PRINT_NotEnoughLP, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		return false;
	};
	
	/// FUNC
	oth.lp -= kosten;
	B_GiveInvItems (oth, slf, ItMi_Gold, money);
	
	B_AddFightSkill (oth, talent, points);
	
	if		(talent == NPC_TALENT_THROW)	{	LearnedHitchance_Throw += points;	}
	else if	(talent == NPC_TALENT_1H)		{	LearnedHitchance_1h += points;		}
	else if	(talent == NPC_TALENT_2H)		{	LearnedHitchance_2h += points;		}
	else if	(talent == NPC_TALENT_BOW)		{	LearnedHitchance_Bow += points;		}
	else if	(talent == NPC_TALENT_CROSSBOW)	{	LearnedHitchance_Cbow += points;	};
	
	return true;
};

///******************************************************************************************
/// B_TeachTalent
///******************************************************************************************
func int B_TeachTalent (var C_Npc slf, var C_Npc oth, var int talent, var int skill)
{
	var int kosten; kosten = B_GetLearnCostTalent(oth, talent, skill);
	var int money; money = kosten * GOLD_PER_LP;
	
	if (oth.lp < kosten)
	{
		PrintScreen	(PRINT_NotEnoughLP, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		return false;
	};
	
	if (Npc_HasItems(oth, ItMi_Gold) < money)
	{
		PrintScreen (Print_NotEnoughGold, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$ShitNoGold");
		return false;
	};
	/*
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
	*/
	/// FUNC
	oth.lp -= kosten;
	B_GiveInvItems (oth, slf, ItMi_Gold, money);
	
	/// FIGHT
	/*
	if (talent == NPC_TALENT_1H)
	{
		B_AddFightSkill (oth, talent, skill*20-oth.hitchance[NPC_TALENT_1H]);
		SelfFightTeach_Progress[NPC_TALENT_1H] = 0;
		SelfFightTeach_Level[NPC_TALENT_1H] = 0;
		
		if		(skill == 1)	{	PrintScreen (PRINT_LearnFight_1H_1, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 2)	{	PrintScreen (PRINT_LearnFight_1H_2, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 3)	{	PrintScreen (PRINT_LearnFight_1H_3, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 4)	{	PrintScreen (PRINT_LearnFight_1H_4, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 5)	{	PrintScreen (PRINT_LearnFight_1H_5, -1, YPOS_LogEntry, FONT_Screen, 2);	};
	}
	else if (talent == NPC_TALENT_2H)
	{
		B_AddFightSkill (oth, talent, skill*20-oth.hitchance[NPC_TALENT_2H]);
		SelfFightTeach_Progress[NPC_TALENT_2H] = 0;
		SelfFightTeach_Level[NPC_TALENT_2H] = 0;
		
		if		(skill == 1)	{	PrintScreen (PRINT_LearnFight_2H_1, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 2)	{	PrintScreen (PRINT_LearnFight_2H_2, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 3)	{	PrintScreen (PRINT_LearnFight_2H_3, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 4)	{	PrintScreen (PRINT_LearnFight_2H_4, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 5)	{	PrintScreen (PRINT_LearnFight_2H_5, -1, YPOS_LogEntry, FONT_Screen, 2);	};
	}
	else if (talent == NPC_TALENT_BOW)
	{
		B_AddFightSkill (oth, talent, skill*20-oth.hitchance[NPC_TALENT_BOW]);
		SelfFightTeach_Progress[NPC_TALENT_BOW] = 0;
		SelfFightTeach_Level[NPC_TALENT_BOW] = 0;
		
		if		(skill == 1)	{	PrintScreen (PRINT_LearnFight_Bow_1, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 2)	{	PrintScreen (PRINT_LearnFight_Bow_2, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 3)	{	PrintScreen (PRINT_LearnFight_Bow_3, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 4)	{	PrintScreen (PRINT_LearnFight_Bow_4, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 5)	{	PrintScreen (PRINT_LearnFight_Bow_5, -1, YPOS_LogEntry, FONT_Screen, 2);	};
	}
	else if (talent == NPC_TALENT_CROSSBOW)
	{
		B_AddFightSkill (oth, talent, skill*20-oth.hitchance[NPC_TALENT_CROSSBOW]);
		SelfFightTeach_Progress[NPC_TALENT_CROSSBOW] = 0;
		SelfFightTeach_Level[NPC_TALENT_CROSSBOW] = 0;
		
		if		(skill == 1)	{	PrintScreen (PRINT_LearnFight_Crossbow_1, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 2)	{	PrintScreen (PRINT_LearnFight_Crossbow_2, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 3)	{	PrintScreen (PRINT_LearnFight_Crossbow_3, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 4)	{	PrintScreen (PRINT_LearnFight_Crossbow_4, -1, YPOS_LogEntry, FONT_Screen, 2);	}
		else if	(skill == 5)	{	PrintScreen (PRINT_LearnFight_Crossbow_5, -1, YPOS_LogEntry, FONT_Screen, 2);	};
	}
	else*/ if (talent == NPC_TALENT_DUAL)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen	(PRINT_LearnDual, -1, -1, FONT_SCREEN, 2);
	}
	else if (talent == NPC_TALENT_SHIELD)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen	(PRINT_LearnShield, -1, -1, FONT_SCREEN, 2);
	}
	/// MAGIC
	else if (talent == NPC_TALENT_MAGIC)
	{
		Npc_SetTalentSkill (oth, talent, skill);
		
		if		(skill == 1)	{	PrintScreen	(PRINT_LearnMagic_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 2)	{	PrintScreen	(PRINT_LearnMagic_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 3)	{	PrintScreen	(PRINT_LearnMagic_3, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 4)	{	PrintScreen	(PRINT_LearnMagic_4, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 5)	{	PrintScreen	(PRINT_LearnMagic_5, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 6)	{	PrintScreen	(PRINT_LearnMagic_6, -1, -1, FONT_SCREEN, 2);	};
	}
	else if (talent == NPC_TALENT_LANGUAGE)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen (PRINT_LearnLanguage, -1, -1, FONT_Screen, 2);
	}
	/*
	/// MOVEMENT
	else if (talent == NPC_TALENT_SNEAK)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen (PRINT_LearnSneak, -1, -1, FONT_Screen, 2);
	}
	else if (talent == NPC_TALENT_ACROBATIC)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen (PRINT_LearnAcrobatic, -1, -1, FONT_Screen, 2);
	}
	*/
	/// THIEF
	else if (talent == NPC_TALENT_PICKLOCK)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen (PRINT_LearnPicklock, -1, -1, FONT_Screen, 2);
	}
	else if (talent == NPC_TALENT_PICKPOCKET)
	{
		Npc_SetTalentSkill (oth, talent, true);
		
		if		(skill == 1)	{	PrintScreen	(PRINT_LearnPickpocket_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 2)	{	PrintScreen	(PRINT_LearnPickpocket_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 3)	{	PrintScreen	(PRINT_LearnPickpocket_3, -1, -1, FONT_SCREEN, 2);	};
	}
	else if (talent == NPC_TALENT_PERSUASION)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen (PRINT_LearnPersuasion, -1, -1, FONT_Screen, 2);
	}
	/// FLETCHERY
	else if (talent == NPC_TALENT_FLETCHERY)
	{
		Npc_SetTalentSkill (oth, talent, true);
		
		if		(skill == 1)	{	PrintScreen	(PRINT_LearnFletchery_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 2)	{	PrintScreen	(PRINT_LearnFletchery_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 3)	{	PrintScreen	(PRINT_LearnFletchery_3, -1, -1, FONT_SCREEN, 2);	};
	}
	/// SMITH
	else if (talent == NPC_TALENT_SMITH)
	{
		Npc_SetTalentSkill (oth, talent, true);
		
		if		(skill == 1)	{	PrintScreen	(PRINT_LearnSmith_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 2)	{	PrintScreen	(PRINT_LearnSmith_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 3)	{	PrintScreen	(PRINT_LearnSmith_3, -1, -1, FONT_SCREEN, 2);	};
	}
	/// ALCHEMY
	else if (talent == NPC_TALENT_ALCHEMY)
	{
		Npc_SetTalentSkill (oth, talent, true);
		
		if		(skill == 1)	{	PrintScreen	(PRINT_LearnAlchemy_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 2)	{	PrintScreen	(PRINT_LearnAlchemy_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 3)	{	PrintScreen	(PRINT_LearnAlchemy_3, -1, -1, FONT_SCREEN, 2);	};
	}
	/// ENCHANTING
	else if (talent == NPC_TALENT_ENCHANTING)
	{
		Npc_SetTalentSkill (oth, talent, skill);
		
		if		(skill == 1)	{	PrintScreen	(PRINT_LearnEnchanting_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 2)	{	PrintScreen	(PRINT_LearnEnchanting_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 3)	{	PrintScreen	(PRINT_LearnEnchanting_3, -1, -1, FONT_SCREEN, 2);	};
	}
	/// HUNTING
	else if (talent == NPC_TALENT_HUNTING)
	{
		Npc_SetTalentSkill (oth, talent, true);
		MEM_WriteStatArr(PLAYER_TALENT_HUNTING, skill, true);
		PrintScreen	(PRINT_LearnHunting, -1, -1, FONT_SCREEN, 2);
	}
	/// COOKING
	else if (talent == NPC_TALENT_COOKING)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen	(PRINT_LearnCooking, -1, -1, FONT_SCREEN, 2);
	}
	/// MINING
	else if (talent == NPC_TALENT_MINING)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen	(PRINT_LearnMining, -1, -1, FONT_SCREEN, 2);
	}
	/// ARMORY
	else if (talent == NPC_TALENT_ARMORY)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen	(PRINT_LearnArmory, -1, -1, FONT_SCREEN, 2);
	}
	/// ...
	else
	{
		Npc_SetTalentSkill (oth, talent, skill);
	};
	
	Snd_Play("LevelUp");	/// new!!!
	
	return true;
};
