///******************************************************************************************
///	G_CanNotUse
///******************************************************************************************

const int COND_Level				=	31;

///******************************************************************************************
func void G_CanNotUse (var int bIsPlayer, var int nAttribute, var int nValue)
{
	var string strMessage;
	var string strAttributeMissing;
	var int nAttributeValue;
	
	if (nAttribute == ATR_MANA_MAX)
	&& (nValue == 666666)
	{
		strMessage = "Tej broni nie mo¿na za³o¿yæ.";
		B_BlitzInArsch();
		SC_FailedToEquipBeliarsWeapon = true;
	}
	else
	{
		if 		(nAttribute == ATR_HITPOINTS)		{	strAttributeMissing = PRINT_HITPOINTS_MISSING;		nAttributeValue = self.attribute[ATR_HITPOINTS]; 		}
		else if (nAttribute == ATR_HITPOINTS_MAX)	{	strAttributeMissing = PRINT_HITPOINTS_MAX_MISSING;	nAttributeValue = self.attribute[ATR_HITPOINTS_MAX]; 	}
		else if (nAttribute == ATR_MANA)			{	strAttributeMissing = PRINT_MANA_MISSING;			nAttributeValue = self.attribute[ATR_MANA]; 			}
		else if (nAttribute == ATR_MANA_MAX)		{	strAttributeMissing = PRINT_MANA_MAX_MISSING;		nAttributeValue = self.attribute[ATR_MANA_MAX]; 		}
		else if (nAttribute == ATR_STRENGTH)		{	strAttributeMissing = PRINT_STRENGTH_MISSING;		nAttributeValue = self.attribute[ATR_STRENGTH]; 		}
		else if (nAttribute == ATR_DEXTERITY)		{	strAttributeMissing = PRINT_DEXTERITY_MISSING;		nAttributeValue = self.attribute[ATR_DEXTERITY]; 		}
		else if (nAttribute == COND_Level)			{	strAttributeMissing = PRINT_LEVEL_MISSING;			nAttributeValue = self.level; 							}
		else										{	strAttributeMissing = "";							nAttributeValue = 0; 									};
		
		var int nDifference; nDifference = nValue - nAttributeValue;
		var string strDifference; strDifference = IntToString(nDifference);
		
		strMessage = ConcatStrings(strDifference, strAttributeMissing);
	};
	
	if (bIsPlayer)
	{
		Print(strMessage);
	};
};
