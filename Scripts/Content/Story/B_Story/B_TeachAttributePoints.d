///******************************************************************************************
///	B_TeachAttributePoints
///******************************************************************************************
func int B_TeachAttributePoints (var C_Npc slf, var C_Npc oth, var int attrib, var int points)
{
	var int kosten; kosten = B_GetLearnCostAttribute(oth, attrib) * points;
	
	if (oth.lp < kosten)
	{
		PrintScreen	(PRINT_NotEnoughLP, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		return false;
	};
	
	oth.lp -= kosten;
	
	if		(attrib == ATR_HITPOINTS_MAX)	{	B_RaiseAttribute (oth, attrib, points*HP_PER_LP);	}
	else									{	B_RaiseAttribute (oth, attrib, points);				};
	
	if		(attrib == ATR_STRENGTH)		{	LearnedAttribute_STR += points;		}
	else if (attrib == ATR_DEXTERITY)		{	LearnedAttribute_DEX += points;		}
	else if (attrib == ATR_POWER)			{	LearnedAttribute_Power += points;	}
	else if (attrib == ATR_MANA_MAX)		{	LearnedAttribute_Mana += points;	}
	else if (attrib == ATR_HITPOINTS_MAX)	{	LearnedAttribute_HP += points;		};
	
	return true;
};
