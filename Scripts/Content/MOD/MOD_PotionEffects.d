///******************************************************************************************
///	MOD_PotionEffects
///******************************************************************************************

var int hpPotionPointsPerSec, hpPotionTime;	/// HP potion duration
var int mpPotionPointsPerSec, mpPotionTime;	/// MP potion duration
var int spPotionPointsPerSec, spPotionTime;	/// SP potion duration

var int hpMaxPotionTime;	/// HP_MAX potion duration
var int mpMaxPotionTime;	/// MP_MAX potion duration
var int strPotionTime;		/// STR potion duration
var int dexPotionTime;		/// DEX potion duration
var int powPotionTime;	/// POWER potion duration

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
	else if (attribute == AIV_Stamina_MAX)
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
	else if (foodTime > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, 1);
		foodTime -= 1;
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
	else if (drinkTime > 0)
	{
		hero.aivar[AIV_Stamina] += 1;
		drinkTime -= 1;
	};
	/// exp
	if (alcoholTime > 0)
	{
		alcoholTime -= 1;
		if (alcoholTime % 5 == 0)
		{
			hero.exp += 1;
			if (hero.exp >= hero.exp_next)
			{
				B_GivePlayerExp(0);
			};
		};
		if (alcoholTime == 0)
		{
			Mdl_RemoveOverlayMDS (hero, "HUMANS_DRUNKEN.MDS");
		};
	};
	
	/// TEMP MAX ATTRIBUTE POTIONS
	if (hpMaxPotionTime > 0)
	{
		hpMaxPotionTime -= 1;
		if (hpMaxPotionTime == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do zakoñczenia efektu czasowego eliksiru ¿ywotnoœci!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (hpMaxPotionTime == 0)
		{
			Npc_ChangeAttribute(hero, ATR_HITPOINTS_MAX, -10*HP_PER_LP);
			if (hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX])
			{
				hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
			};
		};
	};
	if (mpMaxPotionTime > 0)
	{
		mpMaxPotionTime -= 1;
		if (mpMaxPotionTime == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do zakoñczenia efektu czasowego eliksiru ducha!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (mpMaxPotionTime == 0)
		{
			Npc_ChangeAttribute(hero, ATR_MANA_MAX, -10*MP_PER_LP);
			Npc_AttributesRefresh();
			if (hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX])
			{
				hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
			};
		};
	};
	if (strPotionTime > 0)
	{
		strPotionTime -= 1;
		if (strPotionTime == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do zakoñczenia efektu czasowego eliksiru si³y!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (strPotionTime == 0)
		{
			Npc_ChangeAttribute(hero, ATR_STRENGTH, -10);
		};
	};
	if (dexPotionTime > 0)
	{
		dexPotionTime -= 1;
		if (dexPotionTime == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do zakoñczenia efektu czasowego eliksiru zrêcznoœci!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (dexPotionTime == 0)
		{
			Npc_ChangeAttribute(hero, ATR_DEXTERITY, -10);
		};
	};
	if (powPotionTime > 0)
	{
		powPotionTime -= 1;
		if (powPotionTime == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do zakoñczenia efektu czasowego eliksiru mocy!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (powPotionTime == 0)
		{
			Npc_AddPowerPoints(hero, -10);
		};
	};
};
