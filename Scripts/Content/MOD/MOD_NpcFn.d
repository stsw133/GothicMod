///******************************************************************************************
///	MOD_NpcFn
///******************************************************************************************
func void Npc_AttributesRefresh()
{
	if (self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
	if (self.attribute[ATR_MANA] > self.attribute[ATR_MANA_MAX])
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
	};
	//Npc_AddEnergyMaxPoints(self, 0);
	//Npc_AddPowerPoints(self, 0);
};

/// ------ Power ------
func void Npc_SetPowerPoints (var C_Npc slf, var int points)
{
	slf.attribute[ATR_POWER] = points;
	if (Npc_IsPlayer(slf))	/// bufix (without it going into another location throws stack overflow error)
	{
		Npc_SetTalentValue (slf, NPC_TALENT_MAGIC, slf.attribute[ATR_POWER]);
	};
};
func void Npc_AddPowerPoints (var C_Npc slf, var int points)
{
	slf.attribute[ATR_POWER] = slf.attribute[ATR_POWER] + points;
	if (Npc_IsPlayer(slf))
	{
		Npc_SetTalentValue (slf, NPC_TALENT_MAGIC, slf.attribute[ATR_POWER]);
	};
};

/// ------ Energy ------
func void Npc_EnergyRefresh (var C_Npc slf)
{
	if (slf.aivar[AIV_Energy] < 0)
	{
		slf.aivar[AIV_Energy] = 0;
	}
	else if (slf.aivar[AIV_Energy] > slf.aivar[AIV_Energy_MAX])
	{
		slf.aivar[AIV_Energy] = slf.aivar[AIV_Energy_MAX];
	};
};

/// ------ LifeSteal ------
func int Npc_GetLifeStealPoints (var C_Npc slf)
{
	return Npc_GetTalentValue (slf, NPC_TALENT_2ndH);
};
func void Npc_SetLifeStealPoints (var C_Npc slf, var int points)
{
	Npc_SetTalentValue (slf, NPC_TALENT_2ndH, points);
};
func void Npc_AddLifeStealPoints (var C_Npc slf, var int points)
{
	Npc_SetTalentValue (slf, NPC_TALENT_2ndH, Npc_GetTalentValue(slf, NPC_TALENT_2ndH) + points);
};

///******************************************************************************************
///	MOD_PotionRegenerate
///******************************************************************************************

var int hpPotionPoints, hpPotionPromiles, hpPotionTime;		/// HP potion duration
var int mpPotionPoints, mpPotionPromiles, mpPotionTime;		/// MP potion duration
var int enePotionPoints, enePotionPromiles, enePotionTime;	/// ENE potion duration

var int hpMaxPotionTime;	/// HP_MAX potion duration
var int mpMaxPotionTime;	/// MP_MAX potion duration
var int strPotionTime;		/// STR potion duration
var int dexPotionTime;		/// DEX potion duration
var int powerPotionTime;	/// POWER potion duration

///******************************************************************************************
func void PotionRG_ADD (var int attribute, var int points, var int promiles, var int time)
{
	if (attribute == ATR_HITPOINTS)
	{
		if (hpPotionTime == 0)
		{
			Wld_PlayEffect ("SPELLFX_HEALTHPOTION", hero, hero, 0, 0, 0, false);
		};
		
		hpPotionPoints = points;
		hpPotionPromiles = promiles;
		hpPotionTime = time;
	}
	else if (attribute == ATR_MANA)
	{
		if (mpPotionTime == 0)
		{
			Wld_PlayEffect ("SPELLFX_MANAPOTION", hero, hero, 0, 0, 0, false);
		};
		
		mpPotionPoints = points;
		mpPotionPromiles = promiles;
		mpPotionTime = time;
	}
	else if (attribute == ATR_ENERGY_MAX)
	{
		if (enePotionTime == 0)
		{
			Wld_PlayEffect ("SPELLFX_YELLOWPOTION", hero, hero, 0, 0, 0, false);
		};
		
		enePotionPoints = points;
		enePotionPromiles = promiles;
		enePotionTime = time;
	};
};
///******************************************************************************************
func void Potions_Process()
{
	if (hpPotionTime > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, hpPotionPoints + hero.attribute[ATR_HITPOINTS_MAX]*hpPotionPromiles/1000);
		hpPotionTime -= 1;
		if (hpPotionTime == 0)
		{
			Wld_StopEffect("SPELLFX_HEALTHPOTION");
		};
	};
	if (mpPotionTime > 0)
	{
		Npc_ChangeAttribute (hero, ATR_MANA, mpPotionPoints + hero.attribute[ATR_MANA_MAX]*mpPotionPromiles/1000);
		mpPotionTime -= 1;
		if (mpPotionTime == 0)
		{
			Wld_StopEffect("SPELLFX_MANAPOTION");
		};
	};
	if (enePotionTime > 0)
	{
		hero.aivar[AIV_Energy] += enePotionPoints + hero.aivar[AIV_Energy_MAX]*enePotionPromiles/1000;
		enePotionTime -= 1;
		if (enePotionTime == 0)
		{
			Wld_StopEffect("SPELLFX_YELLOWPOTION");
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
			Npc_ChangeAttribute(hero, ATR_MANA_MAX, -10);
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
	if (powerPotionTime > 0)
	{
		powerPotionTime -= 1;
		if (powerPotionTime == 10)
		{
			Print_ExtPrcnt (-1, YPOS_ExpGained, "Pozosta³o 10 sekund do zakoñczenia efektu czasowego eliksiru mocy!", FONT_ScreenSmall, COL_Negative, TIME_Print);
		}
		else if (powerPotionTime == 0)
		{
			Npc_AddPowerPoints(hero, -10);
		};
	};
};
