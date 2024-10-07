///******************************************************************************************
/// MOD_PotionEffects
///******************************************************************************************
func void PotionRG_ADD (var int attribute, var int pointsPerSec, var int totalPoints, var int totalPercents)
{
	if (attribute == ATR_HITPOINTS)
	{
		if (regenPotionTime[BarOrderHP] == 0)
		{
			Wld_PlayEffect ("SPELLFX_HEALTHPOTION", hero, hero, 0, 0, 0, false);
		};
		
		regenPotionPointsPerSec[BarOrderHP] = pointsPerSec;
		if (regenPotionPointsPerSec[BarOrderHP] != 0)
		{
			regenPotionTime[BarOrderHP] = (totalPoints + hero.attribute[ATR_HITPOINTS_MAX]*totalPercents/100) / regenPotionPointsPerSec[BarOrderHP];
		};
	}
	else if (attribute == ATR_MANA)
	{
		if (regenPotionTime[BarOrderMP] == 0)
		{
			Wld_PlayEffect ("SPELLFX_MANAPOTION", hero, hero, 0, 0, 0, false);
		};
		
		regenPotionPointsPerSec[BarOrderMP] = pointsPerSec;
		if (regenPotionPointsPerSec[BarOrderMP] != 0)
		{
			regenPotionTime[BarOrderMP] = (totalPoints + hero.attribute[ATR_MANA_MAX]*totalPercents/100) / regenPotionPointsPerSec[BarOrderMP];
		};
	}
	else if (attribute == AIV_Stamina)
	{
		if (regenPotionTime[BarOrderSP] == 0)
		{
			Wld_PlayEffect ("SPELLFX_YELLOWPOTION", hero, hero, 0, 0, 0, false);
		};
		
		regenPotionPointsPerSec[BarOrderSP] = pointsPerSec;
		if (regenPotionPointsPerSec[BarOrderSP] != 0)
		{
			regenPotionTime[BarOrderSP] = (totalPoints + hero.aivar[AIV_Stamina_MAX]*totalPercents/100) / regenPotionPointsPerSec[BarOrderSP];
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
	else if (attribute == ATR_PROT)
	{
		if (timedPotionTime[ATR_PROT] > 0)
		{
			hero.protection[PROT_BLUNT] -= timedPotionPoints[ATR_PROT];
			hero.protection[PROT_EDGE] -= timedPotionPoints[ATR_PROT];
			hero.protection[PROT_POINT] -= timedPotionPoints[ATR_PROT];
			hero.protection[PROT_FIRE] -= timedPotionPoints[ATR_PROT];
			hero.protection[PROT_MAGIC] -= timedPotionPoints[ATR_PROT];
			hero.protection[PROT_BARRIER] -= timedPotionPoints[ATR_PROT];
		};
		
		timedPotionPoints[ATR_PROT] = points;
		timedPotionTime[ATR_PROT] = time;
		
		hero.protection[PROT_BLUNT] += timedPotionPoints[ATR_PROT];
		hero.protection[PROT_EDGE] += timedPotionPoints[ATR_PROT];
		hero.protection[PROT_POINT] += timedPotionPoints[ATR_PROT];
		hero.protection[PROT_FIRE] += timedPotionPoints[ATR_PROT];
		hero.protection[PROT_MAGIC] += timedPotionPoints[ATR_PROT];
		hero.protection[PROT_BARRIER] += timedPotionPoints[ATR_PROT];
	};
};

///******************************************************************************************
func void Potions_Process()
{
	/// REGEN POTIONS or FOOD & DRINKS
	/// hp
	if (regenPotionTime[BarOrderHP] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, regenPotionPointsPerSec[BarOrderHP]);
		regenPotionTime[BarOrderHP] -= 1;
		if (regenPotionTime[BarOrderHP] == 0)
		{
			Wld_StopEffect("SPELLFX_HEALTHPOTION");
		};
	}
	else if (foodTime[BarOrderHP] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, 1);
		foodTime[BarOrderHP] -= 1;
	};
	/// mp
	if (regenPotionTime[BarOrderMP] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_MANA, regenPotionPointsPerSec[BarOrderMP]);
		regenPotionTime[BarOrderMP] -= 1;
		if (regenPotionTime[BarOrderMP] == 0)
		{
			Wld_StopEffect("SPELLFX_MANAPOTION");
		};
	}
	else if (foodTime[BarOrderMP] > 0)
	{
		Npc_ChangeAttribute (hero, ATR_MANA, 1);
		foodTime[BarOrderMP] -= 1;
	};
	/// sp
	if (regenPotionTime[BarOrderSP] > 0)
	{
		hero.aivar[AIV_Stamina] += regenPotionPointsPerSec[BarOrderSP];
		regenPotionTime[BarOrderSP] -= 1;
		if (regenPotionTime[BarOrderSP] == 0)
		{
			Wld_StopEffect("SPELLFX_YELLOWPOTION");
		};
	}
	else if (foodTime[BarOrderSP] > 0)
	{
		hero.aivar[AIV_Stamina] += 1;
		foodTime[BarOrderSP] -= 1;
	};
	/// xp
	if (foodTime[BarOrderXP] > 0)
	{
		hero.exp += 1;
		if (hero.exp >= hero.exp_next)
		{
			B_GivePlayerExp(0);
		};
		foodTime[BarOrderXP] -= 1;
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
	if (timedPotionTime[ATR_PROT] > 0)
	{
		timedPotionTime[ATR_PROT] -= 1;
		if (timedPotionTime[ATR_PROT] == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do koñca czasowego eliksiru ochrony!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (timedPotionTime[ATR_PROT] == 0)
		{
			hero.protection[PROT_BLUNT] -= timedPotionPoints[ATR_PROT];
			hero.protection[PROT_EDGE] -= timedPotionPoints[ATR_PROT];
			hero.protection[PROT_POINT] -= timedPotionPoints[ATR_PROT];
			hero.protection[PROT_FIRE] -= timedPotionPoints[ATR_PROT];
			hero.protection[PROT_MAGIC] -= timedPotionPoints[ATR_PROT];
			hero.protection[PROT_BARRIER] -= timedPotionPoints[ATR_PROT];
		};
	};
};
