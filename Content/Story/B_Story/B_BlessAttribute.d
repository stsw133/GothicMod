func void B_BlessAttribute (var C_NPC oth, var int attrib, var int points)
{
	var string concatText;
	
	// ------ STR steigern ------
	if (attrib == ATR_STRENGTH)			
	{	
		oth.attribute[ATR_STRENGTH] = oth.attribute[ATR_STRENGTH] + points;				//bzw. Npc_ChangeAttribute (oth, attrib, points);

		concatText = ConcatStrings("Innos zwiększył twoją siłę o + ", IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	// ------ DEX steigern ------
	if (attrib == ATR_DEXTERITY)			
	{	
		oth.attribute[ATR_DEXTERITY] = oth.attribute[ATR_DEXTERITY] + points;

		concatText = ConcatStrings("Innos zwiększył twoją zręczność o + ", IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	// ------ MANA_MAX steigern ------
	if (attrib == ATR_MANA_MAX)			
	{	
		oth.attribute[ATR_MANA_MAX] = oth.attribute[ATR_MANA_MAX] + points;
		oth.attribute[ATR_MANA] = oth.attribute[ATR_MANA_MAX];
		
		concatText = ConcatStrings("Innos zwiększył twoją manę o + ", IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	// ------ HITPOINTS_MAX steigern ------
	if (attrib == ATR_HITPOINTS_MAX)			
	{	
		oth.attribute[ATR_HITPOINTS_MAX] = oth.attribute[ATR_HITPOINTS_MAX] + points;
		oth.attribute[ATR_HITPOINTS] = oth.attribute[ATR_HITPOINTS_MAX];
		
		concatText = ConcatStrings("Innos zwiększył twoje punkty trafień o + ", IntToString(points));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
	
	// ----- Hitpoints heilen -----
	if (attrib == ATR_HITPOINTS)			
	{	
		oth.attribute[ATR_HITPOINTS] = oth.attribute[ATR_HITPOINTS_MAX];

		PrintScreen	("Innos wysłuchał twe prośby i uleczył cię.", -1, -1, FONT_SCREEN, 2);
	};
	
	// ----- Mana refreshen ------
	if (attrib == ATR_MANA)			
	{	
		oth.attribute[ATR_MANA] = oth.attribute[ATR_MANA_MAX];
		PrintScreen	("Innos oczyścił twego ducha.", -1, -1, FONT_SCREEN, 2);
	};
};
