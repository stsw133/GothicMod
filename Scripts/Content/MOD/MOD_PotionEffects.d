///******************************************************************************************
///	MOD_PotionEffects
///******************************************************************************************

var int hpPotionPointsPerSec, hpPotionTime;	/// HP potion duration
var int mpPotionPointsPerSec, mpPotionTime;	/// MP potion duration
var int spPotionPointsPerSec, spPotionTime;	/// SP potion duration

var int timedPotionPoints[9];
var int timedPotionTime[9];

///******************************************************************************************
func void PotionRG_ADD (var int attribute, var int pointsPerSec, var int totalPoints, var int totalPercents)
{
	if (attribute == ATR_HITPOINTS)
	{
		if (hpPotionTime == 0)
		{
			Wld_PlayEffect ("SPELLFX_HEALTHPOTION", hero, hero, 0, 0, 0, false);
		};
		
		hpPotionPointsPerSec = pointsPerSec;
		if (hpPotionPointsPerSec != 0)
		{
			hpPotionTime = (totalPoints + hero.attribute[ATR_HITPOINTS_MAX]*totalPercents/100) / hpPotionPointsPerSec;
		};
	}
	else if (attribute == ATR_MANA)
	{
		if (mpPotionTime == 0)
		{
			Wld_PlayEffect ("SPELLFX_MANAPOTION", hero, hero, 0, 0, 0, false);
		};
		
		mpPotionPointsPerSec = pointsPerSec;
		if (mpPotionPointsPerSec != 0)
		{
			mpPotionTime = (totalPoints + hero.attribute[ATR_MANA_MAX]*totalPercents/100) / mpPotionPointsPerSec;
		};
	}
	else if (attribute == AIV_Stamina)
	{
		if (spPotionTime == 0)
		{
			Wld_PlayEffect ("SPELLFX_YELLOWPOTION", hero, hero, 0, 0, 0, false);
		};
		
		spPotionPointsPerSec = pointsPerSec;
		if (spPotionPointsPerSec != 0)
		{
			spPotionTime = (totalPoints + hero.aivar[AIV_Stamina_MAX]*totalPercents/100) / spPotionPointsPerSec;
		};
	};
};

///******************************************************************************************
func void PotionTimed_ADD (var int attribute, var int points, var int time)
{
	if (attribute == ATR_HITPOINTS_MAX)
	{
		if (timedPotionTime[ATR_HITPOINTS_MAX] > 0)
		{
			Npc_ChangeAttribute(hero, ATR_HITPOINTS_MAX, -timedPotionPoints[ATR_HITPOINTS_MAX]*HP_PER_LP);
		};
		
		timedPotionPoints[ATR_HITPOINTS_MAX] = points;
		timedPotionTime[ATR_HITPOINTS_MAX] = time;
		
		Npc_ChangeAttribute(hero, ATR_HITPOINTS_MAX, timedPotionPoints[ATR_HITPOINTS_MAX]*HP_PER_LP);
	}
	else if (attribute == ATR_MANA_MAX)
	{
		if (timedPotionTime[ATR_MANA_MAX] > 0)
		{
			Npc_ChangeAttribute(hero, ATR_MANA_MAX, -timedPotionPoints[ATR_MANA_MAX]*MP_PER_LP);
		};
		
		timedPotionPoints[ATR_MANA_MAX] = points;
		timedPotionTime[ATR_MANA_MAX] = time;
		
		Npc_ChangeAttribute(hero, ATR_MANA_MAX, timedPotionPoints[ATR_MANA_MAX]*MP_PER_LP);
	}
	else if (attribute == ATR_STRENGTH)
	{
		if (timedPotionTime[ATR_STRENGTH] > 0)
		{
			Npc_ChangeAttribute(hero, ATR_STRENGTH, -timedPotionPoints[ATR_STRENGTH]);
		};
		
		timedPotionPoints[ATR_STRENGTH] = points;
		timedPotionTime[ATR_STRENGTH] = time;
		
		Npc_ChangeAttribute(hero, ATR_STRENGTH, timedPotionPoints[ATR_STRENGTH]);
	}
	else if (attribute == ATR_DEXTERITY)
	{
		if (timedPotionTime[ATR_DEXTERITY] > 0)
		{
			Npc_ChangeAttribute(hero, ATR_DEXTERITY, -timedPotionPoints[ATR_DEXTERITY]);
		};
		
		timedPotionPoints[ATR_DEXTERITY] = points;
		timedPotionTime[ATR_DEXTERITY] = time;
		
		Npc_ChangeAttribute(hero, ATR_DEXTERITY, timedPotionPoints[ATR_DEXTERITY]);
	}
	else if (attribute == ATR_POWER)
	{
		if (timedPotionTime[ATR_POWER] > 0)
		{
			Npc_ChangeAttribute(hero, ATR_POWER, -timedPotionPoints[ATR_POWER]);
		};
		
		timedPotionPoints[ATR_POWER] = points;
		timedPotionTime[ATR_POWER] = time;
		
		Npc_ChangeAttribute(hero, ATR_POWER, timedPotionPoints[ATR_POWER]);
	}
	else if (attribute == PROT_INDEX_MAX)
	{
		if (timedPotionTime[PROT_INDEX_MAX] > 0)
		{
			hero.protection[PROT_BLUNT] -= timedPotionPoints[PROT_INDEX_MAX];
			hero.protection[PROT_EDGE] -= timedPotionPoints[PROT_INDEX_MAX];
			hero.protection[PROT_POINT] -= timedPotionPoints[PROT_INDEX_MAX];
			hero.protection[PROT_FIRE] -= timedPotionPoints[PROT_INDEX_MAX];
			hero.protection[PROT_MAGIC] -= timedPotionPoints[PROT_INDEX_MAX];
			hero.protection[PROT_BARRIER] -= timedPotionPoints[PROT_INDEX_MAX];
		};
		
		timedPotionPoints[PROT_INDEX_MAX] = points;
		timedPotionTime[PROT_INDEX_MAX] = time;
		
		hero.protection[PROT_BLUNT] += timedPotionPoints[PROT_INDEX_MAX];
		hero.protection[PROT_EDGE] += timedPotionPoints[PROT_INDEX_MAX];
		hero.protection[PROT_POINT] += timedPotionPoints[PROT_INDEX_MAX];
		hero.protection[PROT_FIRE] += timedPotionPoints[PROT_INDEX_MAX];
		hero.protection[PROT_MAGIC] += timedPotionPoints[PROT_INDEX_MAX];
		hero.protection[PROT_BARRIER] += timedPotionPoints[PROT_INDEX_MAX];
	};
};

///******************************************************************************************
func void Potions_Process()
{
	/// REGEN POTIONS or FOOD, DRINKS, ALCOHOL
	/// hp
	if (hpPotionTime > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, hpPotionPointsPerSec);
		hpPotionTime -= 1;
		if (hpPotionTime == 0)
		{
			Wld_StopEffect("SPELLFX_HEALTHPOTION");
		};
	}
	else if (foodTime[0] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, 1);
		foodTime[0] -= 1;
	};
	/// mp
	if (mpPotionTime > 0)
	{
		Npc_ChangeAttribute (hero, ATR_MANA, mpPotionPointsPerSec);
		mpPotionTime -= 1;
		if (mpPotionTime == 0)
		{
			Wld_StopEffect("SPELLFX_MANAPOTION");
		};
	}
	else if (foodTime[1] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_MANA, 1);
		foodTime[1] -= 1;
	};
	/// sp
	if (spPotionTime > 0)
	{
		hero.aivar[AIV_Stamina] += spPotionPointsPerSec;
		spPotionTime -= 1;
		if (spPotionTime == 0)
		{
			Wld_StopEffect("SPELLFX_YELLOWPOTION");
		};
	}
	else if (foodTime[2] > 0)
	{
		hero.aivar[AIV_Stamina] += 1;
		foodTime[2] -= 1;
	};
	/// xp
	if (foodTime[3] > 0)
	{
		hero.exp += 1;
		if (hero.exp >= hero.exp_next)
		{
			B_GivePlayerExp(0);
		};
		foodTime[3] -= 1;
	};
	if (alcoholTime > 0)
	{
		alcoholTime -= 1;
		if (alcoholTime == 0)
		{
			Mdl_RemoveOverlayMDS (hero, "HUMANS_DRUNKEN.MDS");
		};
	};
	
	/// TIMED MAX ATTRIBUTE POTIONS
	if (timedPotionTime[ATR_HITPOINTS_MAX] > 0)
	{
		timedPotionTime[ATR_HITPOINTS_MAX] -= 1;
		if (timedPotionTime[ATR_HITPOINTS_MAX] == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do koñca czasowego eliksiru ¿ywotnoœci!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (timedPotionTime[ATR_HITPOINTS_MAX] == 0)
		{
			Npc_ChangeAttribute(hero, ATR_HITPOINTS_MAX, -timedPotionPoints[ATR_HITPOINTS_MAX]*HP_PER_LP);
			//if (hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
			//{
			//	hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
			//};
		};
	};
	if (timedPotionTime[ATR_MANA_MAX] > 0)
	{
		timedPotionTime[ATR_MANA_MAX] -= 1;
		if (timedPotionTime[ATR_MANA_MAX] == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do koñca czasowego eliksiru ducha!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (timedPotionTime[ATR_MANA_MAX] == 0)
		{
			Npc_ChangeAttribute(hero, ATR_MANA_MAX, -timedPotionPoints[ATR_MANA_MAX]*MP_PER_LP);
			//Npc_AttributesRefresh();
			//if (hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
			//{
			//	hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
			//};
		};
	};
	if (timedPotionTime[ATR_STRENGTH] > 0)
	{
		timedPotionTime[ATR_STRENGTH] -= 1;
		if (timedPotionTime[ATR_STRENGTH] == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do koñca czasowego eliksiru si³y!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (timedPotionTime[ATR_STRENGTH] == 0)
		{
			Npc_ChangeAttribute(hero, ATR_STRENGTH, -timedPotionPoints[ATR_STRENGTH]);
		};
	};
	if (timedPotionTime[ATR_DEXTERITY] > 0)
	{
		timedPotionTime[ATR_DEXTERITY] -= 1;
		if (timedPotionTime[ATR_DEXTERITY] == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do koñca czasowego eliksiru zrêcznoœci!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (timedPotionTime[ATR_DEXTERITY] == 0)
		{
			Npc_ChangeAttribute(hero, ATR_DEXTERITY, -timedPotionPoints[ATR_DEXTERITY]);
		};
	};
	if (timedPotionTime[ATR_POWER] > 0)
	{
		timedPotionTime[ATR_POWER] -= 1;
		if (timedPotionTime[ATR_POWER] == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do koñca czasowego eliksiru mocy!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (timedPotionTime[ATR_POWER] == 0)
		{
			Npc_ChangeAttribute(hero, ATR_POWER, -timedPotionPoints[ATR_POWER]);
		};
	};
	if (timedPotionTime[PROT_INDEX_MAX] > 0)
	{
		timedPotionTime[PROT_INDEX_MAX] -= 1;
		if (timedPotionTime[PROT_INDEX_MAX] == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do koñca czasowego eliksiru ochrony!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (timedPotionTime[PROT_INDEX_MAX] == 0)
		{
			hero.protection[PROT_BLUNT] -= timedPotionPoints[PROT_INDEX_MAX];
			hero.protection[PROT_EDGE] -= timedPotionPoints[PROT_INDEX_MAX];
			hero.protection[PROT_POINT] -= timedPotionPoints[PROT_INDEX_MAX];
			hero.protection[PROT_FIRE] -= timedPotionPoints[PROT_INDEX_MAX];
			hero.protection[PROT_MAGIC] -= timedPotionPoints[PROT_INDEX_MAX];
			hero.protection[PROT_BARRIER] -= timedPotionPoints[PROT_INDEX_MAX];
		};
	};
};
