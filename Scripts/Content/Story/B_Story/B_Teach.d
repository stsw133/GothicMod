///******************************************************************************************
/// B_TeachAttribute
///******************************************************************************************
func int B_TeachAttribute (var C_Npc slf, var C_Npc oth, var int attrib, var int points, var int moneyPerLp)
{
	var int kosten; kosten = B_GetLearnCostAttribute(oth, attrib, points);
	var int money; money = kosten * moneyPerLp;
	
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
	
	if (Npc_HasItems(oth, ItMi_Gold) < money)
	{
		PrintScreen (Print_NotEnoughGold, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$ShitNoGold");
		return false;
	};
	
	/// FUNC
	oth.lp -= kosten;
	B_GiveInvItems (oth, slf, ItMi_Gold, money);
	
	if		(attrib == ATR_HITPOINTS_MAX)	{	LearnedAttribute[ATR_HITPOINTS_MAX] += points;		}
	else if	(attrib == ATR_MANA_MAX)		{	LearnedAttribute[ATR_MANA_MAX] += points;			}
	else if	(attrib == ATR_STRENGTH)		{	LearnedAttribute[ATR_STRENGTH] += points;			}
	else if	(attrib == ATR_DEXTERITY)		{	LearnedAttribute[ATR_DEXTERITY] += points;			}
	else if	(attrib == ATR_POWER)			{	LearnedAttribute[ATR_POWER] += points;				};
	
	if		(attrib == ATR_HITPOINTS_MAX)	{	B_RaiseAttribute (oth, attrib, points*HP_PER_LP);	}
	else if	(attrib == ATR_MANA_MAX)		{	B_RaiseAttribute (oth, attrib, points*MP_PER_LP);	}
	else if	(attrib == AIV_STAMINA_MAX)		{	B_RaiseAttribute (oth, attrib, points*SP_PER_LP);	}
	else									{	B_RaiseAttribute (oth, attrib, points);				};
	
	return true;
};

///******************************************************************************************
/// B_TeachTalent
///******************************************************************************************
func int B_TeachTalent (var C_Npc slf, var C_Npc oth, var int talent, var int skill, var int moneyPerLp)
{
	var int kosten; kosten = B_GetLearnCostTalent(oth, talent, skill);
	var int money; money = kosten * moneyPerLp;
	
	if (talent < MAX_HITCHANCE)
	{
		if (!Npc_IsPlayer(slf) && MEM_ReadStatArr(oth.hitchance, talent) + skill > MEM_ReadStatArr(slf.hitchance, talent))
		{
			PrintScreen	(ConcatStrings(PRINT_NoLearnOverPersonalMAX, IntToString(MEM_ReadStatArr(oth.hitchance, talent))), -1, -1, FONT_Screen, 2);
			B_Say (slf, oth, "$NOLEARNOVERPERSONALMAX");
			return false;
		};
	};
	
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
	&& (oth.attribute[ATR_DEXTERITY] < 50)
	{
		PrintScreen (ConcatStrings(IntToString(40 - oth.attribute[ATR_DEXTERITY]), PRINT_DEXTERITY_MISSING), -1, -1, FONT_ScreenSmall, 2);
		return false;
	}
	else if (talent == NPC_TALENT_ACROBATIC)
	&& (oth.attribute[ATR_DEXTERITY] < 100)
	{
		PrintScreen (ConcatStrings(IntToString(80 - oth.attribute[ATR_DEXTERITY]), PRINT_DEXTERITY_MISSING), -1, -1, FONT_ScreenSmall, 2);
		return false;
	};
	*/
	/// FUNC
	oth.lp -= kosten;
	B_GiveInvItems (oth, slf, ItMi_Gold, money);
	
	/// EXTRACTION
	if (talent == NPC_TALENT_MAGIC)
	{
		slf.hitchance[NPC_TALENT_EXTRACTION] += skill;
		PrintScreen (ConcatStrings(PRINT_LearnExtraction, IntToString(skill)), -1, -1, FONT_Screen, 2);
	}
	/// FIGHT
	else if (talent < MAX_HITCHANCE)
	{
		B_AddFightSkill (oth, talent, skill);
	}
	else if (talent == NPC_TALENT_DUAL)
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
	/// THIEVERY
	else if (talent == NPC_TALENT_PICKLOCK)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen (PRINT_LearnPicklock, -1, -1, FONT_Screen, 2);
	}
	else if (talent == NPC_TALENT_PICKPOCKET)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen	(PRINT_LearnPickpocket, -1, -1, FONT_SCREEN, 2);
	}
	else if (talent == NPC_TALENT_PERSUASION)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen (PRINT_LearnPersuasion, -1, -1, FONT_Screen, 2);
	}
	/// FLETCHERY
	else if (talent == NPC_TALENT_FLETCHERY)
	{
		Npc_SetTalentSkill (oth, talent, skill);
		
		if		(skill == 1)	{	PrintScreen	(PRINT_LearnFletchery_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 2)	{	PrintScreen	(PRINT_LearnFletchery_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 3)	{	PrintScreen	(PRINT_LearnFletchery_3, -1, -1, FONT_SCREEN, 2);	};
	}
	/// SMITH
	else if (talent == NPC_TALENT_SMITH)
	{
		Npc_SetTalentSkill (oth, talent, skill);
		
		if		(skill == 1)	{	PrintScreen	(PRINT_LearnSmith_1, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 2)	{	PrintScreen	(PRINT_LearnSmith_2, -1, -1, FONT_SCREEN, 2);	}
		else if	(skill == 3)	{	PrintScreen	(PRINT_LearnSmith_3, -1, -1, FONT_SCREEN, 2);	};
	}
	/// ALCHEMY
	else if (talent == NPC_TALENT_ALCHEMY)
	{
		Npc_SetTalentSkill (oth, talent, skill);
		
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
	/*
	/// COOKING
	else if (talent == NPC_TALENT_17)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen	(PRINT_LearnCooking, -1, -1, FONT_SCREEN, 2);
	}
	/// MINING
	else if (talent == NPC_TALENT_18)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen	(PRINT_LearnMining, -1, -1, FONT_SCREEN, 2);
	}
	/// ARMORY
	else if (talent == NPC_TALENT_19)
	{
		Npc_SetTalentSkill (oth, talent, true);
		PrintScreen	(PRINT_LearnArmory, -1, -1, FONT_SCREEN, 2);
	}
	*/
	/// ...
	else
	{
		Npc_SetTalentSkill (oth, talent, skill);
	};
	
	Snd_Play("LevelUp");	/// new!!!
	
	return true;
};
