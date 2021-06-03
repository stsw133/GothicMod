///******************************************************************************************
///	B_TeachAttributePoints
///******************************************************************************************
func int B_TeachAttributePoints (var C_NPC slf, var C_NPC oth, var int attrib, var int points)
{
	var string concatText;
	
	var int kosten; 
	var int money;
	kosten = B_GetLearnCostAttribute(oth, attrib) * points;
	money = 0;
	
	if (attrib != ATR_STRENGTH)
	&& (attrib != ATR_DEXTERITY)
	&& (attrib != ATR_POWER)
	&& (attrib != ATR_MANA_MAX)
	&& (attrib != ATR_HITPOINTS_MAX)
	{
		Print ("*** B³¹d: Z³y parametr ***");
		return false;
	};
	
	if (oth.lp < kosten)
	{
		PrintScreen	(PRINT_NotEnoughLP, -1, -1, FONT_Screen, 2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		return false;
	};
	
	oth.lp -= kosten;
	
	if (attrib == ATR_HITPOINTS_MAX)	{	B_RaiseAttribute (oth, attrib, points * HP_PER_LP);	}
	else								{	B_RaiseAttribute (oth, attrib, points);				};
	
	if		(attrib == ATR_STRENGTH)		{	LearnedAttribute_STR += points;		}
	else if (attrib == ATR_DEXTERITY)		{	LearnedAttribute_DEX += points;		}
	else if (attrib == ATR_POWER)			{	LearnedAttribute_Power += points;	}
	else if (attrib == ATR_MANA_MAX)		{	LearnedAttribute_Mana += points;	}
	else if (attrib == ATR_HITPOINTS_MAX)	{	LearnedAttribute_HP += points;		};
	
	return true;
};
