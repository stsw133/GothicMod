///******************************************************************************************
///	B_RaiseAttribute
///******************************************************************************************
func void B_RaiseAttribute (var C_NPC oth, var int attrib, var int points)
{
	var string concatText;
	
	if (attrib == 0)
	{	
		oth.lp += points;
		concatText = ConcatStrings(PRINT_LearnLP, IntToString(points));
	};
	
	if (attrib == ATR_HITPOINTS_MAX)
	{	
		oth.attribute[ATR_HITPOINTS_MAX] += points;
		oth.attribute[ATR_HITPOINTS] += points;
		concatText = ConcatStrings(PRINT_LearnHP, IntToString(points));
	};
	
	if (attrib == ATR_MANA_MAX)
	{	
		oth.attribute[ATR_MANA_MAX] += points;
		oth.attribute[ATR_MANA] += points;
		concatText = ConcatStrings(PRINT_LearnMP, IntToString(points));
	};
	
	if (attrib == ATR_STRENGTH)
	{	
		oth.attribute[ATR_STRENGTH] += points;
		concatText = ConcatStrings(PRINT_LearnSTR, IntToString(points));
	};
	
	if (attrib == ATR_DEXTERITY)
	{	
		oth.attribute[ATR_DEXTERITY] += points;
		concatText = ConcatStrings(PRINT_LearnDEX, IntToString(points));
	};
	
	if (attrib == ATR_ENERGY_MAX)
	{
		oth.aivar[AIV_Energy_MAX] += points;
		concatText = ConcatStrings(PRINT_LearnENE, IntToString(points));
	};
	
	if (attrib == ATR_LIFESTEAL)
	{
		Npc_AddPowerPoints(oth, points);
		concatText = ConcatStrings(PRINT_LearnLS, IntToString(points));
	};
	
	if (attrib == ATR_POWER)
	{
		Npc_AddPowerPoints(oth, points);
		concatText = ConcatStrings(PRINT_LearnPower, IntToString(points));
	};
	
	if (Npc_IsPlayer(oth))
	{
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
};
