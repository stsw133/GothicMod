///******************************************************************************************
///	B_RaiseAttribute
///******************************************************************************************
func void B_RaiseAttribute (var C_Npc oth, var int attrib, var int points)
{
	var string concatText;
	
	/// LP
	if (attrib == 0)
	{	
		oth.lp += points;
		concatText = ConcatStrings(PRINT_LearnLP, IntToString(points));
	}
	/// HP
	else if (attrib == ATR_HITPOINTS_MAX)
	{	
		oth.attribute[ATR_HITPOINTS_MAX] += points;
		oth.attribute[ATR_HITPOINTS] += points;
		concatText = ConcatStrings(PRINT_LearnHP, IntToString(points));
	}
	/// MP
	else if (attrib == ATR_MANA_MAX)
	{	
		oth.attribute[ATR_MANA_MAX] += points;
		oth.attribute[ATR_MANA] += points;
		concatText = ConcatStrings(PRINT_LearnMP, IntToString(points));
	}
	/// SP
	else if (attrib == AIV_Stamina_MAX)
	{
		oth.aivar[AIV_Stamina_MAX] += points;
		oth.aivar[AIV_Stamina] += points;
		concatText = ConcatStrings(PRINT_LearnSP, IntToString(points));
	}
	/// STR
	else if (attrib == ATR_STRENGTH)
	{	
		oth.attribute[ATR_STRENGTH] += points;
		concatText = ConcatStrings(PRINT_LearnSTR, IntToString(points));
	}
	/// DEX
	else if (attrib == ATR_DEXTERITY)
	{	
		oth.attribute[ATR_DEXTERITY] += points;
		concatText = ConcatStrings(PRINT_LearnDEX, IntToString(points));
	}
	/// Power
	else if (attrib == ATR_POWER)
	{
		Npc_AddPowerPoints(oth, points);
		concatText = ConcatStrings(PRINT_LearnPOW, IntToString(points));
	}
	/// LS
	else if (attrib == AIV_LifeSteal)
	{
		oth.aivar[AIV_LifeSteal] += points;
		concatText = ConcatStrings(PRINT_LearnLS, IntToString(points));
	}
	/// DR
	else if (attrib == AIV_DmgReflection)
	{
		oth.aivar[AIV_DmgReflection] += points;
		concatText = ConcatStrings(PRINT_LearnDR, IntToString(points));
	}
	/// AD
	else if (attrib == AIV_AreaDmg)
	{
		oth.aivar[AIV_AreaDmg] += points;
		concatText = ConcatStrings(PRINT_LearnAD, IntToString(points));
	};
	
	if (Npc_IsPlayer(oth))
	{
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
};
