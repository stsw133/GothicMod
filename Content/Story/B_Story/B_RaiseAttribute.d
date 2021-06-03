///******************************************************************************************
///	B_RaiseAttribute
///******************************************************************************************
func void B_RaiseRealAttributeLearnCounter (var C_NPC oth, var int attrib, var int points)
{
	
};

///******************************************************************************************
func void B_RaiseAttribute (var C_NPC oth, var int attrib, var int points)
{
	var string concatText;
	
	if (attrib == ATR_STRENGTH)			
	{	
		oth.attribute[ATR_STRENGTH] += points;
		concatText = ConcatStrings(PRINT_LearnSTR, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	if (attrib == ATR_DEXTERITY)			
	{	
		oth.attribute[ATR_DEXTERITY] += points;
		concatText = ConcatStrings(PRINT_LearnDEX, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	if (attrib == ATR_POWER)			
	{
		oth.aivar[AIV_Power] += points;
		POWER_CHECK(oth);
		concatText = ConcatStrings(PRINT_LearnPower, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	if (attrib == ATR_MANA_MAX)			
	{	
		oth.attribute[ATR_MANA_MAX] += points;
		oth.attribute[ATR_MANA] += points;
		concatText = ConcatStrings(PRINT_LearnMP, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	if (attrib == ATR_HITPOINTS_MAX)			
	{	
		oth.attribute[ATR_HITPOINTS_MAX] += points;
		oth.attribute[ATR_HITPOINTS] += points;
		concatText = ConcatStrings(PRINT_LearnHP, IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	ENE_MAX_CHECK(hero);
};
