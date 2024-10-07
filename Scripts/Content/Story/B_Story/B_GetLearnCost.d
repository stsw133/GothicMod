///******************************************************************************************

var int LearnedAttribute[ATR_INDEX_MAX];

///******************************************************************************************
/// B_GetLearnCostAttribute
///******************************************************************************************
func int B_GetLearnCostAttribute (var C_Npc oth, var int attrib, var int points)
{
	var int kosten; kosten = 0;
	var int currentValue;
	var int multiplier;
	
	if (attrib >= 0 && attrib < ATR_INDEX_MAX)
	{
		currentValue = MEM_ReadStatArr(LearnedAttribute, attrib);
	}
	else
	{
		return points;
	};
	
	var int i; i = 0;
	repeat(i, points);
		if (currentValue >= 200)
		{
			if (oth.guild == GIL_MIL && attrib == ATR_HITPOINTS_MAX)
			|| (oth.guild == GIL_PAL && attrib == ATR_MANA_MAX)
			|| (oth.guild == GIL_DJG && attrib == ATR_STRENGTH)
			|| (oth.guild == GIL_SLD && attrib == ATR_DEXTERITY)
			|| (oth.guild == GIL_KDF && attrib == ATR_POWER)
			{
				multiplier = 4;
			}
			else
			{
				multiplier = 5;
			};
		}
		else if (currentValue >= 150)
		{
			multiplier = 4;
		}
		else if (currentValue >= 100)
		{
			multiplier = 3;
		}
		else if (currentValue >= 50)
		{
			multiplier = 2;
		}
		else
		{
			multiplier = 1;
		};
		kosten += multiplier;
		currentValue += 1;
	end;
	
	return kosten;
};

///******************************************************************************************
/// B_GetLearnCostTalent
///******************************************************************************************
func int B_GetLearnCostTalent (var C_Npc oth, var int talent, var int skill)
{
	var int kosten; kosten = 0;
	
	/// FIGHT
	if (talent < MAX_HITCHANCE)
	{
		kosten = 1;
	}
	else if (talent == NPC_TALENT_DUAL)
	{
		kosten = 30;
	}
	else if (talent == NPC_TALENT_SHIELD)
	{
		kosten = 30;
	}
	/// MAGIC
	else if (talent == NPC_TALENT_MAGIC)
	{
		kosten = 25;
	}
	else if (talent == NPC_TALENT_LANGUAGE)
	{
		kosten = 10;
	}
	/*
	else if (talent == NPC_TALENT_WISPDETECTOR)
	{
		if		(skill == WISPSKILL_NF)				{	kosten = 0;		}
		else if	(skill == WISPSKILL_FF)				{	kosten = 1;		}
		else if	(skill == WISPSKILL_NONE)			{	kosten = 1;		}
		else if	(skill == WISPSKILL_RUNE)			{	kosten = 1;		}
		else if	(skill == WISPSKILL_MAGIC)			{	kosten = 1;		}
		else if	(skill == WISPSKILL_FOOD)			{	kosten = 1;		}
		else if	(skill == WISPSKILL_POTIONS)		{	kosten = 1;		};
	}
	/// MOVEMENT
	else if (talent == NPC_TALENT_SNEAK)
	{
		kosten = 5;
	}
	else if (talent == NPC_TALENT_ACROBATIC)
	{
		kosten = 5;
	}
	*/
	/// THIEF
	else if (talent == NPC_TALENT_PICKLOCK)
	{
		kosten = 10;
	}
	else if (talent == NPC_TALENT_PICKPOCKET)
	{
		kosten = 10;
	}
	else if (talent == NPC_TALENT_PERSUASION)
	{
		kosten = 10;
	}
	/// FLETCHERY
	else if (talent == NPC_TALENT_FLETCHERY)
	{
		kosten = 1;
		/*
		if		(skill == 1)	{	kosten = 5;		}
		else if	(skill == 2)	{	kosten = 10;	}
		else if	(skill == 3)	{	kosten = 15;	};
		*/
	}
	/// SMITH
	else if (talent == NPC_TALENT_SMITH)
	{
		kosten = 1;
		/*
		if		(skill == 1)	{	kosten = 5;		}
		else if	(skill == 2)	{	kosten = 10;	}
		else if	(skill == 3)	{	kosten = 15;	};
		*/
	}
	/// ENCHANTING
	else if (talent == NPC_TALENT_ENCHANTING)
	{
		kosten = 1;
		/*
		if		(skill == 1)	{	kosten = 5;		}
		else if	(skill == 2)	{	kosten = 10;	}
		else if	(skill == 3)	{	kosten = 15;	};
		*/
	}
	/// ALCHEMY
	else if (talent == NPC_TALENT_ALCHEMY)
	{
		kosten = 1;
		/*
		if		(skill == 1)	{	kosten = 5;		}
		else if	(skill == 2)	{	kosten = 10;	}
		else if	(skill == 3)	{	kosten = 15;	};
		*/
	}
	/// HUNTING
	else if (talent == NPC_TALENT_HUNTING)
	{
		if		(skill == HUNTING_Blood) 			{	kosten = 3;		}
		else if	(skill == HUNTING_Claws)			{	kosten = 3;		}
		else if	(skill == HUNTING_Furs) 			{	kosten = 5;		}
		else if	(skill == HUNTING_Hearts)			{	kosten = 3;		}
		else if	(skill == HUNTING_Horns)			{	kosten = 2;		}
		else if	(skill == HUNTING_Mandibles)		{	kosten = 2;		}
		else if	(skill == HUNTING_Plates)			{	kosten = 1;		}
		else if	(skill == HUNTING_Scales)			{	kosten = 2;		}
		else if	(skill == HUNTING_Skins)			{	kosten = 3;		}
		else if	(skill == HUNTING_Stings)			{	kosten = 1;		}
		else if	(skill == HUNTING_Teeth)			{	kosten = 3;		}
		else if	(skill == HUNTING_Tongues)			{	kosten = 1;		}
		else if	(skill == HUNTING_Wings)			{	kosten = 1;		};
	}
	/// COOKING
	else if (talent == NPC_TALENT_COOKING)
	{
		kosten = 10;
	}
	/// MINING
	else if (talent == NPC_TALENT_MINING)
	{
		kosten = 10;
	}
	/// ARMORY
	else if (talent == NPC_TALENT_ARMORY)
	{
		kosten = 10;
	};
	
	return kosten;
};

///******************************************************************************************
/// B_BuildLearnString
///******************************************************************************************
func string B_BuildLearnString (var string text, var int kosten, var int payMoney)
{
	var string concatText; concatText = ConcatStrings(text, PRINT_Kosten);
	
	if (kosten > 0)
	{
		concatText = ConcatStrings(concatText, IntToString(kosten));
		concatText = ConcatStrings(concatText, PRINT_LP);
	};
	
	if (payMoney)
	{
		concatText = ConcatStrings(concatText, IntToString(kosten * GOLD_PER_LP));
		concatText = ConcatStrings(concatText, PRINT_MONEY);
	};
	
	return concatText;
};

/*
///******************************************************************************************
/// B_GetMostLearnAttribute
///******************************************************************************************
func int B_GetMostLearnAttribute()
{
	if (LearnedAttribute_HP >= LearnedAttribute_MP)
	&& (LearnedAttribute_HP >= LearnedAttribute_STR)
	&& (LearnedAttribute_HP >= LearnedAttribute_DEX)
	&& (LearnedAttribute_HP >= LearnedAttribute_POW)
	{
		return ATR_HITPOINTS_MAX;
	}
	else if (LearnedAttribute_MP >= LearnedAttribute_HP)
	&& (LearnedAttribute_MP >= LearnedAttribute_STR)
	&& (LearnedAttribute_MP >= LearnedAttribute_DEX)
	&& (LearnedAttribute_MP >= LearnedAttribute_POW)
	{
		return ATR_MANA_MAX;
	}
	else if (LearnedAttribute_STR >= LearnedAttribute_HP)
	&& (LearnedAttribute_STR >= LearnedAttribute_MP)
	&& (LearnedAttribute_STR >= LearnedAttribute_DEX)
	&& (LearnedAttribute_STR >= LearnedAttribute_POW)
	{
		return ATR_STRENGTH;
	}
	else if (LearnedAttribute_DEX >= LearnedAttribute_HP)
	&& (LearnedAttribute_DEX >= LearnedAttribute_MP)
	&& (LearnedAttribute_DEX >= LearnedAttribute_STR)
	&& (LearnedAttribute_DEX >= LearnedAttribute_POW)
	{
		return ATR_DEXTERITY;
	}
	else if (LearnedAttribute_POW >= LearnedAttribute_HP)
	&& (LearnedAttribute_POW >= LearnedAttribute_MP)
	&& (LearnedAttribute_POW >= LearnedAttribute_STR)
	&& (LearnedAttribute_POW >= LearnedAttribute_DEX)
	{
		return ATR_POWER;
	};
	
	return default;
};
*/
