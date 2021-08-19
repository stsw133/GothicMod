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
	Npc_SetLifeStealPoints (slf, Npc_GetLifeStealPoints(slf) + points);
};

/// ------ Power ------
func int Npc_GetPowerPoints (var C_Npc slf)
{
	return Npc_GetTalentValue (slf, NPC_TALENT_MAGIC);
};
func void Npc_SetPowerPoints (var C_Npc slf, var int points)
{
	slf.damage[DAM_INDEX_MAGIC] = points;
	if (Npc_IsPlayer(slf))	/// bufix (without it going into another location throws stack overflow error)
	{
		Npc_SetTalentValue (slf, NPC_TALENT_MAGIC, points);
	};
};
func void Npc_AddPowerPoints (var C_Npc slf, var int points)
{
	Npc_SetPowerPoints (slf, Npc_GetPowerPoints(slf) + points);
};

///******************************************************************************************
///	MOD_PotionRegenerate
///******************************************************************************************

var int hppottime;		/// HP potion duration
var int mppottime;		/// MP potion duration
var int enepottime;		/// ENE potion duration

///******************************************************************************************
func void PotionRG_ADD (var int attribute, var int points)
{
	if (attribute == ATR_HITPOINTS)
	{
		if (hppottime == 0)
		{
			Wld_PlayEffect ("SPELLFX_HEALTHPOTION", hero, hero, 0, 0, 0, false);
		};
		if (hppottime < points)
		{
			hppottime = points;
		};
	}
	else if (attribute == ATR_MANA)
	{
		if (mppottime == 0)
		{
			Wld_PlayEffect ("SPELLFX_MANAPOTION", hero, hero, 0, 0, 0, false);
		};
		if (mppottime < points)
		{
			mppottime = points;
		};
	}
	else if (attribute == ATR_ENERGY_MAX)
	{
		if (enepottime == 0)
		{
			Wld_PlayEffect ("SPELLFX_YELLOWPOTION", hero, hero, 0, 0, 0, false);
		};
		if (enepottime < points)
		{
			enepottime = points;
		};
	};
};
///******************************************************************************************
func void Potions_Process()
{
	if (hppottime > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, hero.attribute[ATR_HITPOINTS_MAX] / 10);
		hppottime -= 1;
		if (hppottime == 0)
		{
			Wld_StopEffect("SPELLFX_HEALTHPOTION");
		};
	};
	if (mppottime > 0)
	{
		Npc_ChangeAttribute (hero, ATR_MANA, hero.attribute[ATR_MANA_MAX] / 10);
		mppottime -= 1;
		if (mppottime == 0)
		{
			Wld_StopEffect("SPELLFX_MANAPOTION");
		};
	};
	if (enepottime > 0)
	{
		hero.aivar[AIV_Energy] += hero.aivar[AIV_Energy_MAX] / 10;
		enepottime -= 1;
		if (enepottime == 0)
		{
			Wld_StopEffect("SPELLFX_YELLOWPOTION");
		};
	};
};
