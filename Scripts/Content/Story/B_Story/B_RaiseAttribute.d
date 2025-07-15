///******************************************************************************************
/// B_RaiseAttribute
///******************************************************************************************
func void B_RaiseAttribute (var C_Npc slf, var int attrib, var int points)
{
	var string concatText;
	
	/// LP
	if (attrib == default)
	{	
		slf.lp += points;
		concatText = ConcatStrings(PRINT_LearnLp, IntToString(points));
	}
	/// HP
	else if (attrib == ATR_HITPOINTS_MAX)
	{	
		slf.attribute[ATR_HITPOINTS_MAX] += points;
		slf.attribute[ATR_HITPOINTS] += points;
		concatText = ConcatStrings(PRINT_LearnHp, IntToString(points));
		
		if (slf.attribute[ATR_HITPOINTS_MAX] >= (100*HP_PER_LP - slf.level*HP_PER_LEVEL))
		&& (bsPoison != IMMUNE)
		{
			MOD_SetPoison(IMMUNE);
			PrintScreen	("Premia do odpornoœci na trucizny!", -1, 55, FONT_Screen, TIME_ShortPrint);
		}
		else if (slf.attribute[ATR_HITPOINTS_MAX] >= (50*HP_PER_LP - slf.level*HP_PER_LEVEL))
		&& (bsArmor != IMMUNE)
		{
			Disable_HeavyArmor();
			PrintScreen	("Premia do lekkoœci pancerzy!", -1, 55, FONT_Screen, TIME_ShortPrint);
		};
	}
	/// MP
	else if (attrib == ATR_MANA_MAX)
	{	
		slf.attribute[ATR_MANA_MAX] += points;
		slf.attribute[ATR_MANA] += points;
		concatText = ConcatStrings(PRINT_LearnMp, IntToString(points));
		/*
		if (slf.attribute[ATR_MANA_MAX] >= (100*MP_PER_LP))
		//&& (!bsCanMeditate)
		{
			// ???
			PrintScreen	("Premia do ???!", -1, 55, FONT_Screen, TIME_ShortPrint);
		}
		else if (slf.attribute[ATR_MANA_MAX] >= (50*MP_PER_LP))
		&& (bsRested != IMMUNE)
		{
			bsRested = IMMUNE;
			PrintScreen	("Premia do zasypiania!", -1, 55, FONT_Screen, TIME_ShortPrint);
		};
		*/
	}
	/// SP
	else if (attrib == AIV_Stamina_MAX)
	{
		slf.aivar[AIV_Stamina_MAX] += points;
		slf.aivar[AIV_Stamina] += points;
		concatText = ConcatStrings(PRINT_LearnSp, IntToString(points));
	}
	/// STR
	else if (attrib == ATR_STRENGTH)
	{	
		slf.attribute[ATR_STRENGTH] += points;
		concatText = ConcatStrings(PRINT_LearnStr, IntToString(points));
	}
	/// DEX
	else if (attrib == ATR_DEXTERITY)
	{	
		slf.attribute[ATR_DEXTERITY] += points;
		concatText = ConcatStrings(PRINT_LearnDex, IntToString(points));
		
		if (slf.attribute[ATR_DEXTERITY] >= 100)
		&& (!Npc_GetTalentSkill(slf, NPC_TALENT_ACROBATIC))
		{
			Npc_SetTalentSkill (slf, NPC_TALENT_ACROBATIC, true);
			PrintScreen	("Premia do akrobatyki!", -1, 55, FONT_Screen, TIME_ShortPrint);
		}
		else if (slf.attribute[ATR_DEXTERITY] >= 50)
		&& (!Npc_GetTalentSkill(slf, NPC_TALENT_SNEAK))
		{
			Npc_SetTalentSkill (slf, NPC_TALENT_SNEAK, true);
			PrintScreen	("Premia do skradania!", -1, 55, FONT_Screen, TIME_ShortPrint);
		};
	}
	/// POW
	else if (attrib == ATR_POWER)
	{
		slf.attribute[ATR_POWER] += points;
		concatText = ConcatStrings(PRINT_LearnPow, IntToString(points));
	}
	/// PROT
	else if (attrib == ATR_PROT)
	{
		slf.protection[PROT_BLUNT] += points;
		slf.protection[PROT_EDGE] += points;
		slf.protection[PROT_POINT] += points;
		slf.protection[PROT_FIRE] += points;
		slf.protection[PROT_MAGIC] += points;
		slf.protection[PROT_BARRIER] += points;
		concatText = ConcatStrings(PRINT_LearnProt, IntToString(points));
	};
	
	
	
	if (Npc_IsPlayer(slf))
	{
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, TIME_ShortPrint);
	};
};

///******************************************************************************************
var int RandomizedAttributesOrder[5];

func void InitRandomizedAttributesOrder()
{
	const int values[5] = { ATR_HITPOINTS_MAX, ATR_MANA_MAX, ATR_STRENGTH, ATR_DEXTERITY, ATR_POWER };
	var int used[5];
	
	var int i;
	repeat(i, 5);
		var int index; index = Hlp_Random(5);
		var int foundUnused; foundUnused = false;
		
		var int j;
		repeat(j, 5);
			if (MEM_ReadStatArr(used, index))
			{
				index = (index + 1) % 5;
			};
		end;
		
		MEM_WriteStatArr(RandomizedAttributesOrder, i, MEM_ReadStatArr(values, index));
		MEM_WriteStatArr(used, index, true);
	end;
};

func void PfxRandomizedAttributesOrder(var int attributeIndex)
{
	if		(attributeIndex == ATR_HITPOINTS_MAX)	{	B_RaiseAttribute(self, ATR_HITPOINTS_MAX, 1*HP_PER_LP); Wld_PlayEffect("spellFX_LearnHP", hero, hero, 0, 0, 0, false);	}
	else if	(attributeIndex == ATR_MANA_MAX)		{	B_RaiseAttribute(self, ATR_MANA_MAX, 1*MP_PER_LP); Wld_PlayEffect("spellFX_LearnMP", hero, hero, 0, 0, 0, false);		}
	else if	(attributeIndex == AIV_STAMINA_MAX)		{	B_RaiseAttribute(self, AIV_STAMINA_MAX, 1*SP_PER_LP); Wld_PlayEffect("spellFX_LearnSP", hero, hero, 0, 0, 0, false);		}
	else if	(attributeIndex == ATR_STRENGTH)		{	B_RaiseAttribute(self, ATR_STRENGTH, 1); Wld_PlayEffect("spellFX_LearnSTR", hero, hero, 0, 0, 0, false);					}
	else if	(attributeIndex == ATR_DEXTERITY)		{	B_RaiseAttribute(self, ATR_DEXTERITY, 1); Wld_PlayEffect("spellFX_LearnDEX", hero, hero, 0, 0, 0, false);				}
	else if	(attributeIndex == ATR_POWER)			{	B_RaiseAttribute(self, ATR_POWER, 1); Wld_PlayEffect("spellFX_LearnPOW", hero, hero, 0, 0, 0, false);					}
	else											{	B_RaiseAttribute(self, attributeIndex, 1); Wld_PlayEffect ("spellFX_HealShrine", hero, hero, 0, 0, 0, false);			};
};
